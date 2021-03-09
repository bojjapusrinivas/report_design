
                <% 
				
				If Trim(request("encID"))<>"" then
		If session("security_code") ="" then
		   session("security_code") = Trim(request("encID"))
		End If
	Else
		session("security_code") = ""
	End If
'''User_Type = "Collaborator" [Sent email to collaborate on the report]
'''User_Type = "Customer" [how bought a report or have registered on the StrategyR portal]
'''User_Type = "Influencer" [850K Influencers profiled on the website]
'''User_Type = "User" [general user from APP or any other source will be this]

 Dim User_Type, CMP_logo, Projects_Count, Expert_Count, Report_Purchase_status
 User_Type = "User" 
 CMP_logo = "https://www.strategyr.com/images/gia_smalllogo.png"
 Expert_Count = "NA"
 Projects_Count = "NA"
 Session("First_Name")=""
 Session("Last_Name")=""
 Session("company")=""
 Report_Purchase_status = "NO"
 
 If trim(session("security_code"))<>"" Then
	If trim(Request("Email_ID"))="" Then
						'' send mail to sales@strategyr.com and rsd@strategyr.com , Subject: Interested in Research Partnership Program.
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3					
						SQL9="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; SELECT Company_CP_Code,UserId,user_SurName,LastName,firstname,user_company,address1 +' '+ Address2 +' '+ city +' '+ state +' '+ zip as Address,country,user_website,telephone,fax,jobfunction,user_position,CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID FROM [user_master] WHERE security_code='" & session("security_code")& "'"
						'''response.write SQL9
						rs9.open sql9, conn9
						if not rs9.eof then
						''''response.write "USER"
							UserId = trim(rs9("UserId"))
							company = trim(rs9("User_company"))
							address = trim(rs9("address"))
							country = trim(rs9("country"))
							url = trim(rs9("user_website"))
							phone = trim(rs9("telephone"))
							fax = trim(rs9("fax"))
							JobFunction = trim(rs9("JobFunction"))
							userposition= trim(rs9("user_position"))
							Company_CP_Code = trim(rs9("Company_CP_Code"))
							First_Name = trim(rs9("firstname"))
							Last_Name = trim(rs9("LastName"))
							Session("First_Name")=First_Name
							Session("Last_Name")=Last_Name
							Session("company")=company
							User_Type = "Customer"
							session("EID")=trim(rs9("emailid"))
							session("UserID") = trim(rs9("UserId"))
							'''response.write "Company_CP_Code"& Company_CP_Code
							If instr(trim(ucase(Company_CP_Code)),"CP-")>0 then
								Set Conn6 = Server.CreateObject("ADODB.Connection")
								Set RS6 = Server.CreateObject("ADODB.Recordset")
								Conn6.Open DataSource4
								RS6.CursorType = 3
								
								SQL6="select [Filename],[Company],Logo_local,[Country],[Website],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[Cmp_hidden_code],[Filename_MD5],[code_MD5] from Stat_Globind.dbo.Company_Interface_Variables a, InfluencersCompanies  b where a.company_cp_code=b.filename and b.filename='"&Company_CP_Code&"'"
								''SQL6="SELECT [sno],[Filename],stat_globind.dbo.DistinctList((select (select distinct string_agg( ecosystems,', ') from stat_globind.dbo.mcpnewtopic where code in (select distinct token from dbo.string_split(mcpcodes,';'))) from gia_mc_program.dbo.InfluencersCompanies where filename=[GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople].filename),', ') as ecosystems ,[Company],Logo_local,[Country],[Website],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[Cmp_hidden_code],[Filename_MD5],[code_MD5]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE app_login_code='" & session("security_code")& "'"
								rs6.open sql6, conn6
								''response.write SQL6
								if not rs6.eof then
									company = trim(rs6("Company"))
									country = trim(rs6("country"))
									url = trim(rs6("Website"))
									Company_CP_Code = trim(rs6("Filename"))
									CMP_logo = trim(rs6("Logo_local"))
									Expert_Count = trim(rs6("cmp_Expert_Pool_Count"))
									Projects_Count = trim(rs6("cmp_Projects_Count"))
									Competitors_Count = trim(rs6("cmp_Competitors_Count"))
									ecosystems = "" ''trim(rs6("ecosystems"))
								End If								
								Set RS6 = Nothing
								Set Conn6 = Nothing
							End If
							
							''''''' ALSO CHECK IF USER HAS PURCHASED THIS Report - check the trasanction table
							Set Conn7 = Server.CreateObject("ADODB.Connection")
							Set RS7 = Server.CreateObject("ADODB.Recordset")
								Conn7.Open DataSource
								RS7.CursorType = 3
															  
								SQL7="select * from [Stat_Globind].[dbo].[TBL_User_Transaction] where [Trans_Status]='M' and Report_ID='"&trim(RPT_MCP_CODE)&"' and Report_Type='Report' and user_id="&UserId&""
								rs7.open sql7, conn7
								if not rs7.eof then
									Report_Purchase_status = "YES"
								End If								
							Set RS7 = Nothing
							Set Conn7 = Nothing
							'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
							''response.write "RPT_MCP_CODE = "&Report_Purchase_status
						else
							company = "-"
							address = "-"
							country = "-"
							url = "-"
							phone = "-"
							fax = "-"
							JobFunction = "-"
							userposition= "-"
							First_Name = "-"
							Last_Name = "-"
							''''' CHEKC TO SEE IF THE USER IS FROM INFLUENCERPEOPLE TABLE
							Set Conn6 = Server.CreateObject("ADODB.Connection")
							Set RS6 = Server.CreateObject("ADODB.Recordset")
							Conn6.Open DataSource4
							RS6.CursorType = 3
							SQL6="SELECT [sno],[Filename],stat_globind.dbo.DistinctList((select (select distinct string_agg( ecosystems,', ') from stat_globind.dbo.mcpnewtopic where code in (select distinct token from dbo.string_split(mcpcodes,';'))) from gia_mc_program.dbo.InfluencersCompanies where filename=[GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople].filename),', ') as ecosystems ,[Address],[CompanyName],[PhoneNumber],[FaxNumber],Logo_local,[Country],[Website],[First_Name],[Last_Name],[Title],[JobFunction],[Email],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[CMPCountry],[Influencer_Tier],[Logo_local],[Market_Acumen],[Cmp_hidden_code],[Filename_MD5],[Sending_Status],[code_MD5],[company_website],[app_login_code]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE app_login_code='" & session("security_code")& "'"
							rs6.open sql6, conn6
							''response.write "sql = "&SQL6
							if not rs6.eof then
								company = trim(rs6("CompanyName"))
								address = trim(rs6("address"))
								country = trim(rs6("country"))
								url = trim(rs6("Website"))
								phone = trim(rs6("PhoneNumber"))
								fax = trim(rs6("FaxNumber"))
								JobFunction = trim(rs6("JobFunction"))
								userposition= trim(rs6("Title"))
								Company_CP_Code = trim(rs6("Filename"))
								First_Name = trim(rs6("First_Name"))
								Last_Name = trim(rs6("Last_Name"))
								Session("First_Name")=First_Name
								Session("Last_Name")=Last_Name
								Session("company")=company
								User_Type = "Influencer"
								session("EID")=trim(rs6("Email"))
								session("UserID") = trim(rs6("sno"))
								CMP_logo = trim(rs6("Logo_local"))
								Expert_Count = trim(rs6("cmp_Expert_Pool_Count"))
								Projects_Count = trim(rs6("cmp_Projects_Count"))
								Competitors_Count = trim(rs6("cmp_Competitors_Count"))
								ecosystems=trim(rs6("ecosystems"))
							End If
							
							Set RS6 = Nothing
							Set Conn6 = Nothing
						end if
						
						if trim(First_Name)<>"" then
							uname = Trim(First_Name) & " " & Trim(Last_Name)
						else
							uname = "New User"
						end if
						set rs9 = nothing
						set conn9 = Nothing
	else
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3					
						SQL9="SELECT *  FROM [App_User_Collaborate] WHERE [Email_ID]='" & trim(request("Email_ID"))& "' and Report_ID='"&trim(session("ReportCode"))&"'"		
						'''response.write SQL9
						rs9.open sql9, conn9
						if not rs9.eof then						
							''''' Create session variables here
							''''' First_Name,Last_Name,Email_ID,Report_ID,Collaborate_Type,Segment_Name,Region_Name,Report_Table_Code,Date_Added,Collaborate_Status,Source_Email_ID,Collaborate_Password
							First_Name = trim(rs9("First_Name"))
							Last_Name = trim(rs9("Last_Name"))
							Report_ID = trim(rs9("Report_ID"))
							Region_Name = trim(rs9("Region_Name"))
							Segment_Name= trim(rs9("Segment_Name"))
							EncID= trim(rs9("EncID"))
							company = trim(rs9("company"))
							User_Type = "Collaborator"
							Session("First_Name") = trim(First_Name)
							Session("Last_Name") = trim(Last_Name)
							Session("Report_ID") = trim(Report_ID)
							session("EID")=trim(request("Email_ID"))
							session("UserID") = trim(rs9("collborate_id"))
							Session("company")=company
						End IF
						
						if trim(First_Name)<>"" then
							uname = Trim(First_Name) & " " & Trim(Last_Name)
						else
							uname = "New User"
						end if
						''response.write "EMAIL ID = "&trim(uname)
						Set RS9 = Nothing
						Set Conn9 = Nothing
						
						'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
						''''''CHECK IF THE USER HOW SENT THE INVITE CODE HAS PURCHASED A REPORT''''''''''''
						'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
						'' send mail to sales@strategyr.com and rsd@strategyr.com , Subject: Interested in Research Partnership Program.
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3					
						SQL9="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; SELECT Company_CP_Code,UserId,user_SurName,LastName,firstname,user_company,address1 +' '+ Address2 +' '+ city +' '+ state +' '+ zip as Address,country,user_website,telephone,fax,jobfunction,user_position,CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID FROM [user_master] WHERE security_code='" & session("security_code")& "'"
						'''response.write SQL9
						rs9.open sql9, conn9
						if not rs9.eof then
						''''response.write "USER"
							UserId = trim(rs9("UserId"))							
							Company_CP_Code = trim(rs9("Company_CP_Code"))
							
							''response.write "Company_CP_Code"& Company_CP_Code
							If instr(trim(ucase(Company_CP_Code)),"CP-")>0 then
								Set Conn6 = Server.CreateObject("ADODB.Connection")
								Set RS6 = Server.CreateObject("ADODB.Recordset")
								Conn6.Open DataSource4
								RS6.CursorType = 3
								
								SQL6="select [Filename],[Company],Logo_local,[Country],[Website],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[Cmp_hidden_code],[Filename_MD5],[code_MD5], from Stat_Globind.dbo.Company_Interface_Variables a, InfluencersCompanies  b where a.company_cp_code=b.filename and b.filename='"&Company_CP_Code&"'"
								''SQL6="SELECT [sno],[Filename],stat_globind.dbo.DistinctList((select (select distinct string_agg( ecosystems,', ') from stat_globind.dbo.mcpnewtopic where code in (select distinct token from dbo.string_split(mcpcodes,';'))) from gia_mc_program.dbo.InfluencersCompanies where filename=[GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople].filename),', ') as ecosystems ,[Company],Logo_local,[Country],[Website],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[Cmp_hidden_code],[Filename_MD5],[code_MD5]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE app_login_code='" & session("security_code")& "'"
								rs6.open sql6, conn6
								if not rs6.eof then
									company = trim(rs6("Company"))
									country = trim(rs6("country"))
									url = trim(rs6("Website"))
									Company_CP_Code = trim(rs6("Filename"))
									CMP_logo = trim(rs6("Logo_local"))
									Expert_Count = trim(rs6("cmp_Expert_Pool_Count"))
									Projects_Count = trim(rs6("cmp_Projects_Count"))
									Competitors_Count = trim(rs6("cmp_Competitors_Count")) 
									ecosystems = trim(rs6("ecosystems")) 
								End If								
								Set RS6 = Nothing
								Set Conn6 = Nothing
							End If
							
							
							''''''' ALSO CHECK IF USER HAS PURCHASED THIS Report - check the trasanction table
							Set Conn7 = Server.CreateObject("ADODB.Connection")
							Set RS7 = Server.CreateObject("ADODB.Recordset")
								Conn7.Open DataSource
								RS7.CursorType = 3
															  
								SQL7="select * from [Stat_Globind].[dbo].[TBL_User_Transaction] where [Trans_Status]='M' and Report_ID='"&trim(RPT_MCP_CODE)&"' and Report_Type='Report' and user_id="&UserId&""
								rs7.open sql7, conn7
								if not rs7.eof then
									Report_Purchase_status = "YES"
								End If								
							Set RS7 = Nothing
							Set Conn7 = Nothing
						End If
						Set RS9 = Nothing
						Set Conn9 = Nothing                              
	End If
					if ecosystems <> "" then
					Set Conn7 = Server.CreateObject("ADODB.Connection")
					Set RSEcosystem = Server.CreateObject("ADODB.Recordset")
						Conn7.Open DataSource
						RSEcosystem.CursorType = 3
						SQLeco="select string_Agg( Industry,', ') as ecoSystemsDetails  from industrycode where code in (select token from string_split('" & ecosystems & "',','))"
								RSEcosystem.open SQLeco, conn7
								if not RSEcosystem.eof then
									allecosystems = trim(RSEcosystem("ecoSystemsDetails")) 
								End If								
							Set RSEcosystem = Nothing
							Set Conn7 = Nothing
				end if
				'''response.write "Project count ="&trim(Projects_Count)
				If trim(Projects_Count)="NA" Then
				
							''''' CHEKC TO SEE IF THE USER IS FROM INFLUENCERPEOPLE TABLE
							Set Conn6 = Server.CreateObject("ADODB.Connection")
							Set RS6 = Server.CreateObject("ADODB.Recordset")
							Conn6.Open DataSource4
							RS6.CursorType = 3
							SQL6="SELECT [sno],[Filename],stat_globind.dbo.DistinctList((select (select distinct string_agg( ecosystems,', ') from stat_globind.dbo.mcpnewtopic where code in (select distinct token from dbo.string_split(mcpcodes,';'))) from gia_mc_program.dbo.InfluencersCompanies where filename=[GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople].filename),', ') as ecosystems ,[Address],[CompanyName],[PhoneNumber],[FaxNumber],Logo_local,[Country],[Website],[First_Name],[Last_Name],[Title],[JobFunction],[Email],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[CMPCountry],[Influencer_Tier],[Logo_local],[Market_Acumen],[Cmp_hidden_code],[Filename_MD5],[Sending_Status],[code_MD5],[company_website],[app_login_code]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE app_login_code='" & session("security_code")& "'"
							rs6.open sql6, conn6
							''response.write "sql = "&SQL6
							if not rs6.eof then
								
								Expert_Count = trim(rs6("cmp_Expert_Pool_Count"))
								Projects_Count = trim(rs6("cmp_Projects_Count"))
								Competitors_Count = trim(rs6("cmp_Competitors_Count"))
								ecosystems=trim(rs6("ecosystems"))
							End If
							
							Set RS6 = Nothing
							Set Conn6 = Nothing
				
				End If
				''response.write allecosystems
						
						daydisplay=WeekDayName(Weekday(Now())) & ","
						''EMP_logo=CMP_logo		
						daydisplay=WeekDayName(Weekday(Now())) & ","
						''CMP_logo=""
					''	EMP_logo=""
					Set Conn7 = Server.CreateObject("ADODB.Connection")
					Set RSMCPReport = Server.CreateObject("ADODB.Recordset")
						Conn7.Open DataSource
						RSMCPReport.CursorType = 3
						SQLMCP="select  Sno, code, newcode, Pool_Outreach, Interactions, Participants, Validations from Enterprise_Executive_Engagements where code='" & trim(RPT_MCP_CODE) & "'"
						'response.write SQLMCP
								RSMCPReport.open SQLMCP, con
								if not RSMCPReport.eof then
									Pool_Outreach = trim(RSMCPReport("Pool_Outreach")) 
									Interactions=trim(RSMCPReport("Interactions"))
									Participants=trim(RSMCPReport("Participants"))
									Validations=trim(RSMCPReport("Validations"))
								End If								
							Set RSMCPReport = Nothing
							''Set Conn7 = Nothing
				
  %>
<style>

@media only screen and (max-width:479px) {
    .imodule {
        font-size: 12px;
    }
}
@media only screen and (min-width: 768px) and (max-width: 959px){
.right_column .six.columns {
    width: 350px !important;
}
}

</style>

						<%
						dim RankType, RankPosition, starVal
						RankType = "Top 5%"
						RankPosition = trim(ucase(userposition))
							starVal=3
						if instr(RankPosition,"MANAGER")>0 Then
							RankType = "Top 10%"
							starVal = 3
						elseif instr(RankPosition,"DIRECTOR")>0 Then
							RankType = "Top 5%"
							starVal = 2
						elseif instr(RankPosition,"CHIEF")>0 Then
							RankType = "Top 1%"
							starVal = 1
						elseif instr(RankPosition,"PRESIDENT")>0 Then
							RankType = "Top 1%"
							starVal = 1
						End If
						%>
						
					<%if CMP_logo = "" and  EMP_logo ="" then%>
                 <!--   <h4 class="text-center bg-dark text-white p-1">L3: WITHOUT LOGO AND PHOTO</h4>-->
					<div class="d-flex flex-xl-row flex-lg-row flex-md-row flex-sm-column border-bottom  border-top justify-content-around mt-2 py-2">
					<div class="w-xl-50  w-lg-50  w-md-50  w-sm-100 ">
                    <div id="label_container" class="bg-white  cards  ">

                        <div class="top_block mt-2">
                            <h3 class="font-weight-bold  mb-1 pb-1  text-center"> <%=trim(ucase(uname))%></h3>
                        </div>
                       

                        <div class="label_middle_block d-flex text-center">
                            <div class="  d-flex flex-row flex-md-row position-relative align-content-center w-100">

                                <div class="mb-1 w-35">
                                    &nbsp;
                                </div>
                                <div class="text-left   label_aside w-65" style="margin-left: 2px; margin-bottom:2px">
                                    <h4 class="text-dark mb-2 p-0 texttrim "><strong><%=userposition%></strong></h4>
                                    <h4 class="text-dark mb-1 p-0 mx-0 px-0 texttrim"><%=company%></h4>


                                </div>
                            </div>

                        </div>
						
                        <div class="label_bottom_block d-flex text-center">
                            <div class="  d-flex flex-row flex-md-row position-relative align-content-center w-100">
                                <div class="mb-1 w-xl-45 w-lg-45 w-md-30 w-sm-50">
                                    <div class="d-flex justify-content-end">
                                        <div>
                                            <h4 class="text-dark mb-1 p-0 mx-0 px-0 mr-lg-3 mr-xl-3 mr-md-2 mr-sm-3"> <%=RankType%> </h4>
                                            <h4>Expert Pool: <%=Expert_Count%></h4>
                                            <h4 style="margin-right: 10px;">Competition: <%=Competitors_Count%></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-left   label_aside  w-xl-55 w-lg-55 w-md-70 w-sm-50">
                                    <div class="d-flex text-left ">
                                        <div>
                                            <h4 class=" d-flex px-0 mr-2 ml-0 ">Influence:<i class="star_rating"> 
                 <img src="images/star_rating_<%=starVal%>.0.jpg" class="img-fluid"></i><a herf="javascript:void(0)" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle info i5 message"  title="More stars signify more influence"></i></a>
                </h4>
                                            <h4>Projects:&nbsp;<%=Projects_Count%></h4>
                                            <h4 class="texttrim">Eco: Hybrid Cloud & Edge</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
					</div>
					<div class="w-xl-50 w-lg-50  w-md-50  w-sm-100 " id="stats">
                            <div class=" mx-0 px-0 w-100">
                                <!---title--->
                                <div class=" mb-1 py-1 text-center">
                                    <h3 class="text_orange font-weight-bold m-0 line-height-normal mt-1" style="color:#900; ">ENGAGEMENT STATS</h3> </div>
                                <!---poll data--->
                                <div class="d-flex w-100 flex-xl-row flex-lg-row flex-md-row flex-wrap  justify-content-xl-center justify-content-lg-center justify-content-md-center justify-content-sm-around ">
                                    <!--- DATA-BLOCK-1--->
                                    <div class="mx-xl-4 mx-lg-4 mx-md-3 mx-sm-2 w-xl-25 w-lg-25 w-md-30 w-sm-40">

                                        <div class="mx-1 my-0 d-flex mb-xl-2 mb-lg-2 mb-md-1">
                                            <h4 class="py-0 my-0 line-height-normal  mr-1">Outreach:</h4>
                                            <h4 class=" py-0 my-0 text-primary  "><%=Pool_Outreach%></h4>

                                        </div>
                                    </div>
                                    <!--- DATA-BLOCK-1--->
                                    <div class="mx-xl-4 mx-lg-4 mx-md-3 mx-sm-2 w-xl-25 w-lg-25 w-md-30 w-sm-40">

                                        <div class="mx-1 my-0 d-flex mb-xl-2 mb-lg-2 mb-md-1">
                                            <h4 class="py-0 my-0 line-height-normal  mr-1">Interactions:</h4>
                                            <h4 class=" py-0 my-0 text-primary   "><%=Interactions%></h4>

                                        </div>
                                    </div>
                                    <!--- DATA-BLOCK-3--->
                                    <div class="mx-xl-4 mx-lg-4 mx-md-3 mx-sm-2 w-xl-25 w-lg-25 w-md-30 w-sm-40">

                                        <div class="mx-1 my-0 d-flex mb-xl-2 mb-lg-2 mb-md-1">
                                            <h4 class="py-0 my-0 line-height-normal  mr-1">Participants:</h4>
                                            <h4 class=" py-0 my-0 text-primary   "><%=Participants%></h4>

                                        </div>
                                    </div>
                                    <!--- DATA-BLOCK-4--->
                                    <div class="mx-xl-4 mx-lg-4 mx-md-3 mx-sm-2 w-xl-25 w-lg-25 w-md-30 w-sm-40">

                                        <div class="mx-1 my-0 d-flex mb-xl-2 mb-lg-2 mb-md-1">
                                            <h4 class="py-0 my-0 line-height-normal  mr-1">Validations:</h4>
                                            <h4 class="py-0 my-0 text-primary   "><%=Validations%></h4>

                                        </div>
                                    </div>
                                </div>
                                <!--- message--->




                            </div>
                        </div>
					</div>
				<%else%>
				
					


                    <!--<h4 class="text-center bg-dark text-white p-1">L4: WITH COMPANY LOGO & PHOTO</h4>-->
					<div class="d-flex flex-xl-row flex-lg-row flex-md-row flex-sm-column border-bottom  border-top justify-content-around mt-2 py-2">
					<div class="w-xl-50  w-lg-50  w-md-50  w-sm-100 ">
                    <div id="label_container" class="bg-white cards  ">

                        <div class="top_block mt-2 ">
                            <h3 class="font-weight-bold  mb-1 pb-1  text-center"> <%=trim(ucase(uname))%></h3>
                        </div>
						
                        

                        <div class="label_middle_block d-flex text-center">
                            <div class="  d-flex flex-row flex-md-row position-relative align-content-center w-100">

                                 <div class="mb-1 w-xl-45 w-lg-45 w-md-30 w-sm-40">
                                    <div class="d-flex justify-content-end">
										<%if CMP_logo <> "" then%>
                                        <div class="img-block l4">
                                            <div class="w-100 h-100  d-flex justify-content-center align-items-center" style="overflow: hidden">
                                                <img src="<%=CMP_logo%>"  class="img-fluid"></div>

                                        </div>
										<%end if%>
										<%if EMP_logo <> "" then%>
                                        <div class="img-block l4">
                                            <div class="w-100 h-100 d-flex justify-content-center align-items-center" style="overflow: hidden">
                                                <img src="<%=EMP_logo%>"  class="img-fluid"></div>

                                        </div>
										<%end if%>
										
                                    </div>
                                </div>
                                <div class="text-left   label_aside  w-xl-55 w-lg-55 w-md-70 w-sm-60">
                                    <h4 class="text-dark mb-1 p-0 texttrim "><%=userposition%></h4>
                                    <h4 class="text-dark mb-1 p-0 mx-0 px-0 texttrim"><%=company%></h4>
									<div class="d-flex flex-lg-nowrap flex-xl-nowrap flex-md-nowrap flex-sm-wrap">
                                    <h4 class="text-dark mb-1 p-0 mx-0 px-0 mr-lg-3 mr-xl-3 mr-md-2 mr-sm-3"> <%=RankType%> </h4>
									<h4 class="mb-0 d-flex  columns px-0 mr-2 ml-0 ">Influence:<i class="star_rating"> 
									 <img src="images/star_rating_<%=starVal%>.0.jpg" class="img-fluid"></i><a herf="javascript:void(0)" class='text-primary' style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle info i5 message" title="More stars signify more influence"></i></a>
									</h4>
				</div>
				<h4 class="text-dark mb-1 p-0 mx-0 px-0">Projects: <span style="color:#169Fe6;"><%=Projects_Count%></span></h4>
                                </div>
                            </div>

                        </div>

                       <!-- <div class="label_bottom_block d-flex text-center">
                            <div class="  d-flex flex-row flex-md-row position-relative align-content-center w-100">
                                <div class="mb-1 w-50">
                                    <div class="d-flex justify-content-end">
                                        <div>
                                            <h4>Expert Pool: <%=Expert_Count%></h4>
                                            <h4 style="margin-right: 10px;">Competition: <%=Competitors_Count%></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-1 w-50 label_aside">
                                    <div class="d-flex text-left ">
                                        <div>
                                            <h4>Projects: <%=Projects_Count%></h4>
                                            <h4 class="textlimit" style="text-transform: capitalize"><%=lcase(allecosystems)%></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>-->
                    </div>
					</div>
					<div class="w-xl-50 w-lg-50  w-md-50  w-sm-100 " id="stats">
                            <div class=" mx-0 px-0 w-100">
                                <!---title--->
                                <div class=" mb-1 py-1 text-center">
                                    <h3 class="text_orange font-weight-bold m-0 line-height-normal mt-1" style="color:#900; ">ENGAGEMENT STATS</h3> </div>
                                <!---poll data--->
                                <div class="d-flex w-100 flex-xl-row flex-lg-row flex-md-row flex-wrap  justify-content-xl-center justify-content-lg-center justify-content-md-center justify-content-sm-around ">
                                    <!--- DATA-BLOCK-1--->
                                     <div class="mx-xl-4 mx-lg-4 mx-md-3 mx-sm-2 w-xl-25 w-lg-25 w-md-30 w-sm-40">

                                        <div class="mx-1 my-0 d-flex mb-xl-2 mb-lg-2 mb-md-1">
                                            <h4 class="py-0 my-0 line-height-normal  mr-2">Outreach:</h4>
                                            <h4 class=" py-0 my-0 text-primary  "><%=Pool_Outreach%></h4>

                                        </div>
                                    </div>
                                    <!--- DATA-BLOCK-1--->
                                    <div class="mx-xl-4 mx-lg-4 mx-md-3 mx-sm-2 w-xl-25 w-lg-25 w-md-30 w-sm-40">

                                        <div class="mx-1 my-0 d-flex mb-xl-2 mb-lg-2 mb-md-1">
                                            <h4 class="py-0 my-0 line-height-normal  mr-1">Interactions:</h4>
                                            <h4 class=" py-0 my-0 text-primary   "><%=Interactions%></h4>

                                        </div>
                                    </div>
                                    <!--- DATA-BLOCK-3--->
                                    <div class="mx-xl-4 mx-lg-4 mx-md-3 mx-sm-2 w-xl-25 w-lg-25 w-md-30 w-sm-40">

                                        <div class="mx-1 my-0 d-flex mb-xl-2 mb-lg-2 mb-md-1">
                                            <h4 class="py-0 my-0 line-height-normal  mr-2">Participants:</h4>
                                            <h4 class=" py-0 my-0 text-primary   "><%=Participants%></h4>

                                        </div>
                                    </div>
                                    <!--- DATA-BLOCK-4--->
                                    <div class="mx-xl-4 mx-lg-4 mx-md-3 mx-sm-2 w-xl-25 w-lg-25 w-md-30 w-sm-40">

                                        <div class="mx-1 my-0 d-flex mb-xl-2 mb-lg-2 mb-md-1">
                                            <h4 class="py-0 my-0 line-height-normal  mr-2">Validations:</h4>
                                            <h4 class="py-0 my-0 text-primary   "><%=Validations%></h4>

                                        </div>
                                    </div>
                                </div>
                                <!--- message--->




                            </div>
                        </div>
					</div>
					<%end if%>

				
<%end if%>


