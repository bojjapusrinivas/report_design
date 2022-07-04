<!--include file="ADOVBS.asp"-->
<!--include file="ASPIncludes/DBopen.asp"-->

	<%
				sqlcpcodes="'" & Replace(cpcodes,"; ","','") & "'"
				sql1="SELECT  top 1 dbo.GetCompaniesCountByMCP('" & code & "') as companies,DBO.GetDomainExpertsByMCP('" & code & "') as PEOPLE_CNT, MCPCODES FROM InfluencersCompanies WHERE MCPCODES LIKE '%" & code & "%' " '' and company_status='Y'"
				
				''Filename like ('%" & Replace(cpcodes,"; ","%') or Filename like ('%")  & "%')" 
				''response.write sql1
				Set RSInfluncer = Server.CreateObject("ADODB.Recordset")						
				Set Conn1 = Server.CreateObject("ADODB.Connection")
				Conn1.Open DataSource4
				RSInfluncer.ActiveConnection = conn1
				'RSInfluncer.CursorType = 3
				'response.write sql1
				RSInfluncer.OPEN sql1
				MCPCODES_lIST = ""
				If not RSInfluncer.EOF Then
					companies=RSInfluncer("companies")
					PEOPLE_CNT=RSInfluncer("PEOPLE_CNT")
					While not RSInfluncer.EOF
						MCPCODES_lIST = MCPCODES_lIST &"; "& RSInfluncer(0)
					RSInfluncer.movenext
					Wend
				End If
				Set RSInfluncer = Nothing
				Set Conn1 = nothing
				
				if left(MCPCODES_lIST,1)=";" then
					''dim LnthVAR22
					LnthVAR22 = len(MCPCODES_lIST)-1
					MCPCODES_lIST = right(MCPCODES_lIST,LnthVAR22)
				End If
				
				VARBuldStrMCPs = ""
				VARBuldStrMCPs1 = ""
				VARBuldStrMCPs = "MCPCODES Like ('%"&MCPCODES_lIST&"%')"
				VARBuldStrMCPs = Replace (VARBuldStrMCPs,", ","%') OR MCPCODES Like ('%")
				VARBuldStrMCPs1 =" mcpcodes like ('%" & Replace(MCPCODES_lIST,"; ","%') or mcpcodes like ('%")  & "%')"
				''BuldStrMCPs1="MCPCODES IN ('" & Replace(MCPCODES_lIST,", ","','") &"')"

				
			
			
	IF trim(ucase(code)) ="MCP17067" then
		companies = "460"
	End if
	
	''''ALGORITHM TO TWEEK THE BRAND COUNT'''''
	'''' ADDED ON JUNE 30, 2020''''''''''''''''
	'''' IF BRANDS COUNT IS MORE THAN 500 THAN 70% TO BE SHOWN''''
	'''' IF BRANDS ARE 15 - 500 THAN 805 TO BE SHOWN''''''''''''''
	'''' IF LESS THAN 15 DON'T SHOW THE WORLD BRANDS BUTTON'''''''
	
	If cdbl(brandcount) > 500 then
		brandcount = 0.4*brandcount
	elseIf (cdbl(brandcount) <= 500 AND cdbl(brandcount) <= 15) then
		brandcount = 0.6*brandcount
	End If
%>

<%
''response.write mcp_companiesCount & "T"
if trim(completed) ="Y" then
	''report completed so we are display direct companies
	if mcp_companiesCount <> "" then
		companies=mcp_companiesCount
	end if
  'response.write completed &  " N " & mcp_companiesCounts
  else
	''companies
	''''ALGORITHM TO TWEEK THE companies COUNT'''''
	'''' ADDED ON JUNE 30, 2020''''''''''''''''
	'''' IF companies COUNT IS MORE THAN 500 THAN 70% TO BE SHOWN''''
	'''' IF companies ARE 15 - 500 THAN 805 TO BE SHOWN''''''''''''''
	'''' IF LESS THAN 15 DON'T SHOW THE WORLD companies BUTTON'''''''
	
	If cdbl(companies) > 500 then
		companies = 0.4*companies
	elseIf (cdbl(companies) <= 500 AND cdbl(companies) <= 15) then
		companies = 0.6*companies
	End If
  end if
 '''response.write completed &  " Y " & trim(Rptcompanies)
  
									''If trim(ucase(code)) ="MCP14598" then
									''	companies = "81"
									''End If
									%>
	<div class="row  mt-1 mb-0">
                    <div class="w-100 mt-3">
                        <div id="main">
                            <span class="d-flex flex-md-row flex-sm-column flex-wrap flex-md-wrap flex-lg-nowrap flex-xl-nowrap  justify-content-around">
                            <button class="btn btn-gia-primary rounded-0 shadow-sm m-1  m-md-2  text-white font-weight-bold font-size-15 w-xl-25 w-lg-25 w-md-45 " type="button" data-toggle="collapse" data-target="#collapseExample01" aria-expanded="flase" aria-controls="collapseExample">
                                COMPANIES <%'=round(companies)%>
                            </button>
                            <button class="btn btn-gia-primary rounded-0 shadow-sm m-1 m-md-2  text-white font-weight-bold font-size-15 w-xl-25 w-lg-25 w-md-45 " type="button" data-toggle="collapse" data-target="#collapseExample02" aria-expanded="flase" aria-controls="collapseExample">
                                WORLD  BRANDS <%'=round(brandcount)%> 
                            </button>
                            <button class="btn btn-gia-primary rounded-0 shadow-sm m-1 m-md-2 w-sm-100   text-white font-weight-bold font-size-15 w-xl-25 w-lg-25 w-md-45 " type="button" data-toggle="collapse" data-target="#collapseExample03" aria-expanded="flase" aria-controls="collapseExample">
                                EXECUTIVES <%'=PEOPLE_CNT%>
                            </button>
                            <button class="btn btn-gia-primary rounded-0 shadow-sm m-1 m-md-2 w-sm-100   text-white font-weight-bold font-size-15 w-xl-25 w-lg-25 w-md-45 " type="button" data-toggle="collapse" data-target="#collapseExample04" aria-expanded="flase" aria-controls="collapseExample">
                                DIFFERENTIATORS
                            </button>
                            </span>
                            <div class="collapse my-3 shadow" id="collapseExample01" data-parent="#main">
                                <div class="card card-body rounded-0 p-2">
                                    <div class="w-100 text-center mb-2 ">
                                        <h4 class="font-weight-bold font-size-20 my-0 border-bottom">  FEATURED COMPANIES </h4>
                                    </div>
									
									<%If Trim(session("EID"))="" Then%>		
										<div class="w-100 text-center">
											<a href="javascript:OpenWin(2)" class="text-danger">YOUR PRIVACY MATTERS!</a>
										</div>
										<div class="w-100 text-center">
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 " name="btnlogin" onclick="location.href='LoginRepeat.asp?code=<%=code%>'" value="LOGIN" >
                                            <span class="btn-label  h-100 t-0">
                                             <i class="fa fa-sign-in" aria-hidden="true"></i>
                                         </span>LogIn</button>
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 py-1 rounded-0  my-2 my-md-4 btn-125" name="btnregister"  onclick="location.href='https://strategyr.com/GIA_Register_NEW.asp'" value="REGISTER">
                                            <span class="btn-label h-100 t-0">
                                             <i  class="fa fa-user"  aria-hidden="true"></i>
                                         </span> &nbsp; &nbsp;Register</button>
                                    </div>
                                    <div class="w-100">
                                        <p class="text-dark text-center">Registration is required to access our data stacks.</p>
                                    </div>
										
										
									<%Else%>
										<%If Trim(session("userType"))="A" Then%>
										 <% 			
											If (isnull(cpcodes)) Then
												sqlcpcodes="''"
											Else		
												sqlcpcodes="'" & Replace(cpcodes,"; ","','") & "'"
											End If%>
											
											
											<!--#include file="ReportCompanies.asp" -->
											<!--include file="ReportCompanies_WithoutLogos.asp" -->
										<%Else%>
												<div class="w-100 text-center">
													<a href="javascript:OpenWin(2)" class="text-danger">YOUR PRIVACY MATTERS!</a>
												</div>
												<div class="w-100 text-center">
													<button type="button" class="btn btn-labeled btn-secondary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 " name="btnlogin" onclick="location.href='LoginRepeat.asp?code=<%=code%>'" value="LOGIN" >
														<span class="btn-label  h-100 t-0">
														 <i class="fa fa-sign-in" aria-hidden="true"></i>
													 </span>LogIn</button>
													<button type="button" class="btn btn-labeled btn-secondary mx-3 py-1 rounded-0  my-2 my-md-4 btn-125" name="btnregister"  onclick="location.href='https://strategyr.com/GIA_Register_NEW.asp'" value="REGISTER">
														<span class="btn-label h-100 t-0">
														 <i  class="fa fa-user"  aria-hidden="true"></i>
													 </span> &nbsp; &nbsp;Register</button>
												</div>
												<div class="w-100">
													<p class="text-dark text-center">Your account is not active yet to view this option. Please contact info411@strategyr.com for more details.</p>
												</div>
										<%End If%>
									<%End if%>
									
									
                                    
                                    
                                </div>
                            </div>
                            <div class="collapse  my-3 shadow" id="collapseExample02" data-parent="#main">
                                <div class="card card-body rounded-0 p-2">
                                    <div class="w-100 text-center mb-2 ">
                                        <h4 class="font-weight-bold font-size-20 my-0 border-bottom">   WORLD BRANDS </h4>
                                    </div>
									
									<%If Trim(session("EID"))="" Then%>		
										<div class="w-100 text-center">
											<a href="javascript:OpenWin(2)" class="text-danger">YOUR PRIVACY MATTERS!</a>
										</div>
										<div class="w-100 text-center">
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 " name="btnlogin" onclick="location.href='LoginRepeat.asp?code=<%=code%>'" value="LOGIN" >
                                            <span class="btn-label  h-100 t-0">
                                             <i class="fa fa-sign-in" aria-hidden="true"></i>
                                         </span>LogIn</button>
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 py-1 rounded-0  my-2 my-md-4 btn-125" name="btnregister"  onclick="location.href='https://strategyr.com/GIA_Register_NEW.asp'" value="REGISTER">
                                            <span class="btn-label h-100 t-0">
                                             <i  class="fa fa-user"  aria-hidden="true"></i>
                                         </span> &nbsp; &nbsp;Register</button>
										</div>
										<div class="w-100">
											<p class="text-dark text-center">Registration is required to access our data stacks.</p>
										</div>
										
									<%Else%>
										<%If Trim(session("userType"))="A" Then%>
											
											<!--#include file="ReportBrands.asp" -->
										<%Else%>		
												<div class="w-100 text-center">
											<a href="javascript:OpenWin(2)" class="text-danger">YOUR PRIVACY MATTERS!</a>
										</div>
										<div class="w-100 text-center">
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 " name="btnlogin" onclick="location.href='LoginRepeat.asp?code=<%=code%>'" value="LOGIN" >
                                            <span class="btn-label  h-100 t-0">
                                             <i class="fa fa-sign-in" aria-hidden="true"></i>
                                         </span>LogIn</button>
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 py-1 rounded-0  my-2 my-md-4 btn-125" name="btnregister"  onclick="location.href='https://strategyr.com/GIA_Register_NEW.asp'" value="REGISTER">
                                            <span class="btn-label h-100 t-0">
                                             <i  class="fa fa-user"  aria-hidden="true"></i>
                                         </span> &nbsp; &nbsp;Register</button>
                                    </div>
										<div class="w-100">
											<p class="text-dark text-center">Your account is not active yet to view this option. Please contact info411@strategyr.com for more details.</p>
										</div>
										<%End If%>
									<%End if%>
								   
                                </div>
                            </div>
                            <div class="collapse  my-3 shadow" id="collapseExample03" data-parent="#main">
                                <div class="card card-body rounded-0 p-2">
                                    <div class="w-100 text-center mb-2 ">
                                        <h4 class="font-weight-bold font-size-20 my-0 border-bottom">   EXECUTIVES ENGAGED </h4>
                                    </div>
									<%If Trim(session("EID"))="" Then%>
		
									<div class="w-100 text-center">
											<a href="javascript:OpenWin(2)" class="text-danger">YOUR PRIVACY MATTERS!</a>
										</div>
										<div class="w-100 text-center">
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 " name="btnlogin" onclick="location.href='LoginRepeat.asp?code=<%=code%>'" value="LOGIN" >
                                            <span class="btn-label  h-100 t-0">
                                             <i class="fa fa-sign-in" aria-hidden="true"></i>
                                         </span>LogIn</button>
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 py-1 rounded-0  my-2 my-md-4 btn-125" name="btnregister"  onclick="location.href='https://strategyr.com/GIA_Register_NEW.asp'" value="REGISTER">
                                            <span class="btn-label h-100 t-0">
                                             <i  class="fa fa-user"  aria-hidden="true"></i>
                                         </span> &nbsp; &nbsp;Register</button>
										</div>
										<div class="w-100">
											<p class="text-dark text-center">Registration is required to access our data stacks.</p>
										</div>
								<%Else %>
									<%If Trim(session("userType"))="A" Then
											
											Function EncodeGIA_String(sIn)
												''Response.Write "sIn: " & sIn
												Dim x, y, abfrom, abto
												EncodeGIA_String = "" : abfrom = ""
												For x = 0 To 25 : abfrom = abfrom & Chr(65 + x) : Next
												'Response.Write "ABFrom 1: " & abfrom
												For x = 0 To 25 : abfrom = abfrom & Chr(97 + x) : Next
												'Response.Write "ABFrom 2: " & abfrom
												For x = 0 To 9 : abfrom = abfrom & CStr(x) : Next
												'Response.Write "ABFrom 3: " & abfrom
												abto = Mid(abfrom, 17, Len(abfrom) - 16) & Left(abfrom, 16)
												'Response.Write "abto: " & abto
												For x = 1 To Len(sIn) : y = InStr(abfrom, Mid(sIn, x, 1))
													''Response.Write "y: " & y
												If y = 0 Then
														EncodeGIA_String = EncodeGIA_String & Mid(sIn, x, 1)
													Else
														EncodeGIA_String = EncodeGIA_String & Mid(abto, y, 1)
													End If
												Next
												''Response.Write "Encode: " & EncodeGIA_String
											End Function

											
												''dim EncryptSTR1					
												EncString = "GIA-"&MonthName(Month(Date))&"-"&day(Date)&"-"&Year(date)&"-H3lly3r95138"
												
												EncryptSTR = EncodeGIA_String(EncString)
												
											%>	
											 <!--include file="Reportinfluencer_search_List.asp" -->
											 <iframe class="Executiveframe" src="Influencer_report_List.asp?PEOPLE_CNT=<%=PEOPLE_CNT%>&SRCWord=[A-D]&code=<%=code%>&EncryptSTR=<%=EncryptSTR%>" width="100%" height="870" style="border-top:1px solid lightgrey;"></iframe> 
									<%Else%>
											<div class="w-100 text-center">
											<a href="javascript:OpenWin(2)" class="text-danger">YOUR PRIVACY MATTERS!</a>
										</div>
										<div class="w-100 text-center">
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 " name="btnlogin" onclick="location.href='LoginRepeat.asp?code=<%=code%>'" value="LOGIN" >
                                            <span class="btn-label  h-100 t-0">
                                             <i class="fa fa-sign-in" aria-hidden="true"></i>
                                         </span>LogIn</button>
                                        <button type="button" class="btn btn-labeled btn-secondary mx-3 py-1 rounded-0  my-2 my-md-4 btn-125" name="btnregister"  onclick="location.href='https://strategyr.com/GIA_Register_NEW.asp'" value="REGISTER">
                                            <span class="btn-label h-100 t-0">
                                             <i  class="fa fa-user"  aria-hidden="true"></i>
                                         </span> &nbsp; &nbsp;Register</button>
										</div>
										<div class="w-100">
											<p class="text-dark text-center">Your account is not active yet to view this option. Please contact info411@strategyr.com for more details.</p>
										</div>
														
									<%End If%>
								<%End if%>
                                </div>
                            </div>
                            <div class="collapse  my-3 shadow" id="collapseExample04" data-parent="#main">
                                <div class="card card-body rounded-0 p-2">
                                    <div class="w-100 text-center mb-2 ">
                                        <h4 class="font-weight-bold font-size-20 my-0 border-bottom">  KEY DIFFERENTIATORS
                                        </h4>
                                    </div>
                                    <div class="w-100">
                                        We are firmly committed to build upon perspectives from global executive insights. These engagements enrich our projects. Our primary research programs are fully validated and accessible by clients. <i>(Its a common industry-wide<span class="text-danger font-weight-bold">*</span></i> practice that no validated primary research is done! For the most part, remote resident analysts curate and write reports drawing on search engine research and data modeling.
                                        <p class="py-2 mb-0 font-italic " style="font-style: italic"><span class="text-danger font-weight-bold">*</span> A review of 262 off-the-shelf market report publishers worldwide. </p>
                                    </div>
                                    <div class="w-100">
                                        <h4 class="pt-0  text-center  my-2 line-height-normal"><span class="font-weight-bold font-size-15 my-2">WHAT SETS US APART</span>
                                                    <br> Client companies can access multiple features on our MarketGlass™ platform. </h4>
                                    </div>
                                    <div class="d-flex  flex-md-row flex-row flex-sm-column border p-2">
                                        <div class=" w-sm-100 w-50">
                                            <div class="accordion_new  my-0 p-2 p-sm-0">
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset">Primary Research </button>
                                                <div class="panel3 border">
                                                    <p class="mb-0">Clients have full-stack insider access to our ongoing primary research program. We have a very successful incentive driven primary research program that benefits participating executives regardless of their purchase decision. Our platform presents a unique opportunity to collaborate with peers and review competitors’ inputs and response clusters.</p>
                                                </div>
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset">Transparency</button>
                                                <div class="panel3 border ">
                                                    <p class="mb-0">Detailed engagement stats are presented for every company and executive contacted. This is made available for our client reviews. (no other publisher offers this!)</p>
                                                </div>
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset"> Data Stack Access</button>
                                                <div class="panel3 border ">
                                                    <p class="mb-0">A full-stack access to clients of all primary and secondary source content. This can often run into thousands of pages. </p>
                                                </div>
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset">Global Brand Intelligence</button>
                                                <div class="panel3 border ">
                                                    <!--p>We present competitive brand intelligence that’s seldom covered by other publishers.</p-->
                                                    <p class="mb-0">Where relevent and possible we present competitive brands.</p>
                                                </div>
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset">Peer Collaborations </button>
                                                <div class="panel3 border ">
                                                    <p class="mb-0">Peer-to-peer online interactive collaborations. Allows for team curated bespoke analytics.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=" w-sm-100 w-50 ">
                                            <div class="accordion_new  my-0 p-2 p-sm-0">
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset">Bespoke Updates</button>
                                                <div class="panel3 border">
                                                    <p class="mb-0">Customers can update and build bespoke versions of our analytics. Bespoke updates are fulfilled within a two-day turnaround.</p>
                                                </div>
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset">Enterprise EcoConnect</button>
                                                <div class="panel3 border">
                                                    <p class="mb-0">Discretely bounce off queries to participant pool of executives. Our embedded AI selectively pings participants geographically and by domain acumen. </p>
                                                </div>
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset">Support Beyond Scope</button>
                                                <div class="panel3 border">
                                                    <p class="mb-0">We pride in our commitment to provide support to our clients. We go beyond the scope of the study to get you timely answers. </p>
                                                </div>
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset">Extended Shelf Life</button>
                                                <div class="panel3 border ">
                                                    <p class="mb-0">Unlike the industry’s published PDF’s that are frozen in time from date of release, our research programs are ongoing and dynamic. Our reports are updated whenever there’s a major event impacting the marketplace. Your license offers seamless updates for one year. </p>
                                                </div>
                                                <button class="accordion_key border mt-1 ui-accordion ui-widget ui-helper-reset">Complimentary Updates</button>
                                                <div class="panel3 border">
                                                    <p class="mb-0">All updates are offered for one year from date of your purchase without charge. Clients can opt for annual auto renewal and stay current without interruption. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>								
									
									
									
									
