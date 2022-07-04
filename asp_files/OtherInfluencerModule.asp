
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]>
<!-->
<html lang="en">
<!--<![endif]-->

<head>
    <!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8">
    <title>Market Research Report Collections - Leading Market Research Reports Firm</title>
    <!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS
================================================== -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/gia.css">
    <link rel="stylesheet" href="css/colors/blue.css" id="colors">
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel='stylesheet' href="css/all-ie-only.css" />
    <link rel='stylesheet' href="css/tri_page.css" />
    <link rel='stylesheet' href="css/gia_switches.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/wedges_effect.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <link rel="stylesheet" href="css/simulator_styles.css" />
    <link rel="stylesheet" href="css/input_style.css" />
    <link rel="stylesheet" href="css/example-styles.css" />
    <link rel="stylesheet" href="css/labels.css" />
    <!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <!--[if IE]>
	<link rel="stylesheet" type="text/css" href="all-ie-only.css" />
<![endif]-->
    <!-- Java Script
================================================== -->
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/jquery.selectnav.js"></script>
    <script src="scripts/jquery.modernizr.js"></script>
    <script src="scripts/jquery.easing.1.3.js"></script>
    <script src="scripts/jquery.contact.js"></script>
    <script src="scripts/jquery.isotope.min.js"></script>
    <script src="scripts/custom.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
   
    <!--- accordion2 script ---->

    <style>
        #label_container h4 {
            line-height: 14px !important;
        }

    </style>
</head>
<%Server.ScriptTimeout=2000%>

<%	''Response.Buffer = True
	Response.ExpiresAbsolute = 0
	
	session("security_code") = ""
	session("ReportCode") = ""
	'If trim(session("ReportCode"))="" Then
		session("ReportCode") = trim(request("code"))	
	'End If
	
	If Trim(request("encID"))<>"" then
		If session("security_code") ="" then
		   session("security_code") = Trim(request("encID"))
		End If
	Else
		session("security_code") = ""
	End If
		
	strReportTitle = trim(session("ReportTitle"))
	strReportCode = trim(session("ReportCode"))
	intRptID = trim(session("ReportID"))
Function SelectRadio(val1,val2)
 	IF trim(val1) = trim(val2) then
		SelectRadio = " Checked"
	else
		SelectRadio = ""
	End IF
END Function
	
'''IF Seeions expires log out to main screen'''''
IF trim(session("EID"))="" THEN
	''response.redirect "https://www.strategyr.com/GIA_Research_Program.asp?code="&Trim(request("code"))&"&SessOUT=True"
End If

If Trim(session("isMCP"))="" then
	If Trim(request("code"))<>"" Then
	  ''isMCPCnt = InStr("MCP-1001","-")
	 isMCPCnt = InStr(request("code"),"-")
	 If (isMCPCnt>0) then
		session("isMCP") = "Y"
	 Else
		session("isMCP") = "N"
	 End if
	''response.write session("isMCP")
	End If
End If	



%>
<!--#include file="adovbs.asp"-->
<!--#INCLUDE FILE="aspincludes/dbopen.asp" -->

<%
	DIM RPT_MCP_CODE
	RPT_MCP_CODE = ""
	Set Conn = Server.CreateObject("ADODB.Connection")
	Set RS = Server.CreateObject("ADODB.Recordset")
	Conn.Open DataSource

	
	If session("isMCP") = "N" then
		SQL = "SELECT * FROM MCPNewTopic WHERE NewCODE='" & session("ReportCode") & "'"
	Else
		SQL = "SELECT * FROM MCPNewTopic WHERE newCODE='" & session("ReportCode") & "'"
	End If
	''response.write sql
	RS.Open SQL, conn,1,2
	If Not RS.EOF Then
			giacode=Trim(RS("newcode"))
			strReportTitle = Trim(RS("title"))
			Companies_List = Trim(RS("companyNames"))
			CpCodes=Trim(RS("CPCodes"))
			region=Trim(RS("region"))
			''If session("isMCP") = "Y" Then
			  Segment_List = Trim(RS("Segments_Covered"))
			''End if
			session("ReportTitle") = ucase(Trim(RS("title")))
			RPT_MCP_CODE = Trim(RS("code"))
	End If
	set RS = nothing
	set conn = Nothing
	session("giacode")=giacode
	
	intRptID = Trim(request("code"))
	code = Trim(request("code"))
	strReportTitle = trim(ucase(strReportTitle)) 
	''intReportCode = session("ReportCode") 
	CMP_SPLT = Split(Companies_List,";")
	
'response.write Companies_List
	
	
	If Trim(request("code"))<>"" Then
		If session("ReportCode") ="" then
		   session("ReportCode") = Trim(request("code"))		   
		End If
	Else
		session("ReportCode") = ""
	End If

	''''FE471CA7EA '''security_code

	If Trim(request("encID"))<>"" then
		If session("security_code") ="" then
		   session("security_code") = Trim(request("encID"))
		End If
	Else
		session("security_code") = ""
	End If

daydisplay=WeekDayName(Weekday(Now())) & ","
'''response.write trim(session("security_code"))
%>
<script>
function Addinfluence_moduletoDB(sno,code,encid,relval,cpcode)
{
	
	var vsno= sno;
	var vGiaCode = code;
	var vencID = encid;
	var relval=relval;
	var vcpcode=cpcode;
//alert(vcpcode);
//alert(sno);
	
		if((relval!="") && (relval!==undefined) && (vencID!="") && (vGiaCode!=""))
		{ 
			//alert (vtxtRegionVal);
			//alert (RegionName);
			///ReportCode = '"&trim(request("vGiaCode"))&"' and eNcID ='"&trim(request("vencID"))&"' and Country_Name ='"&trim(request("vRegion"))&"'" 
			$.ajax({
					url: "Ajax_AddGIA_Research_Influencer_CompetitiveRanking.asp",
					type: "POST",
					data:'vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&vcpcode='+encodeURIComponent(vcpcode)+'&relval='+encodeURIComponent(relval)+'&vsno='+encodeURIComponent(vsno)+'', 		
					success: function(data){
					//alert(data);
					alert("Influencer Rank Added Sucessfully");
					parent.location.reload();
					},
					error: function (xhr, ajaxOptions, thrownError) {
					alert(xhr.status);
					alert(thrownError);
					alert(xhr.responseText);
					}
				  });
		} 
		  else
		{
			alert('Rank not selected');
		}
}
	</script>
<body id="simulator_page">
    <!-- Wrapper / Start -->
    <div id="wrapper" class="bor-radius">
        <div id="top-line" style="box-shadow:none; height:5px;"> </div>
        <!-- Content
================================================== -->
        <!---BEGN REPORT TITLE--->
        <!---END REPORT TITLE--->
        <!---BEGIN:PAGE CONTENT--->
        <div class="page-content">
            <div class="container">
                <!---- BEGIN : HEADER SECTION ---->
                <header>
                    <div class="row" style="margin-bottom:0px;">
                         <!---- BEGIN : HEADER SECTION ---->
                
                       <div class="logo_text px-4">
                            
							<img src="images/strategyr_logo.svg" class="strategyrR_logo text-center mx-auto" style="width:210px !important;">
							
                         </div>
                        <div class="sixteen columns head_title_block text-center  d-flex justify-content-center">
                            <h2 style="font-weight:bold; color:#900;line-height: 23px;" class="mt-2 font-size-20"> <%=strReportTitle%>&nbsp; (<%=code%>)</h2>
                        </div>
                        <div class="mobile_display" style="text-align:center; width:100% !important"> <img src="https://www.strategyr.com/resize_img/sig_100.jpg" alt="GIA" class="logo signatrue_logo" style="width:90px; height:auto; margin:0 auto; padding-top:10px"> </div>
                    </div>
               
                <!---- END : HEADER SECTION ---->

                        <div class=" head_title_block text-center  d-flex justify-content-center border-bottom">
                            <h3 style="font-weight:bold; color:#900;line-height: 23px;" class="mt-2">
                             COMPETITIVE INFLUENCER MODULE<a herf="javascript:void(0)" class='text-primary'  style="position: relative;">&nbsp;<i class="fa fa-info-circle info i5 tooltippopup" title="Credibility level of influencers in competitive firms"></i></a>
                            </h3>
                        </div>
                    </div>
                </header>
                <!---- END : HEADER SECTION ---->
                <!---Begin: Main Content--->
				<div class="container">
                <main>
		<form name="frmadd" method="post" action="Ancillaries_2.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>">			

	<!--include file="Lables.asp"-->
	
                    <section>
					<%''select * from REPORTS_GSA_REGIONS$  SELECT * FROM GIA_REGIONS_COUNTRIES$
					'''' GET total employee count
					Dim totalCompanyCount
					totalCompanyCount = 1
					PeopleTotalCNT = "SELECT count(*) as CMP_Count FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE filename='" & Company_CP_Code & "'"
					''CountryQryBrNSA = "select distinct b.res_brand_name, (select top 1  a.res_brand_image_url from vw_RESX_WIPO_FULL_AND_REST a where a.res_brand_name=b.res_brand_name and a.mcp_code=b.mcp_code and a.res_brand_image_url is not null ) as res_brand_image_url from vw_RESX_WIPO_FULL_AND_REST b where b.mcp_code='" & RPT_MCP_CODE & "' and b.res_brand_image_url is not null and b.res_brand_status='Active' order by b.res_brand_name"
					Set RSPeopleRS = Server.CreateObject("ADODB.Recordset")
					RSPeopleRS.Open PeopleTotalCNT, Datasource7,3
							
					If not RSPeopleRS.EOF then
						totalCompanyCount = RSPeopleRS("CMP_Count")
					End IF
					Set RSPeopleRS = nothing
											'CountryQryOPeople = "SELECT distinct top 100 [Filename],[CompanyName]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE filename<>'" & Company_CP_Code & "' and mcpcodes like ('%"& RPT_MCP_CODE &"%') and (Title like '%Manager%Marketing%' or title like '%Marketing%Manager%' or title like '%Manager%Product%' or title like '%Product%Manager%' or title like '%Director Marketing%' or title like '%Marketing Director%'  or title like '%President%' or title like '%CEO%' or title like 'CTO%' or title like '%CFO%' or title like '%CMO%' ) and [Sending_Status]='Y' order by companyname"
											CountryQryBrNSA = "SELECT [sno],[Filename],[Address],[CompanyName],[PhoneNumber],[FaxNumber],Logo_local,[Country],[Website],[First_Name],[Last_Name],[Title],[JobFunction],[Email],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[CMPCountry],[Influencer_Tier],[Logo_local],[Market_Acumen][Sending_Status],[app_login_code]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE  filename='" & trim(request("cp")) & "' and mcpcodes like ('%"& trim(request("code")) &"%') and (Title like '%Manager%' or title like '%Marketing%' or title like '%Product%' or title like '%Director%' or title like '%President%' or title like 'CEO%' or title like 'CTO%' or title like 'CFO%' or title like 'CMO%') and [Sending_Status]='Y' order by companyname"
											''	CountryQryBrNSA = "SELECT   [sno],[Filename],[Address],[CompanyName],[PhoneNumber],[FaxNumber],Logo_local,[Country],[Website],[First_Name],[Last_Name],[Title],[JobFunction],[Email],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[CMPCountry],[Influencer_Tier],[Logo_local],[Market_Acumen],[Cmp_hidden_code],[Filename_MD5],[Sending_Status],[code_MD5],[company_website],[app_login_code]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE filename='" & Company_CP_Code & "' and (Title like '%Manager%Marketing%' or title like '%Marketing%Manager%' or title like '%Manager%Product%' or title like '%Product%Manager%' or title like '%DirectorMarketing%' or title like '%Marketing%Director%' or title like '%President%' or title like '%CEO%' or title like 'CTO%' or title like '%CFO%' or title like '%CMO%' or title like '%chief%' ) and [Sending_Status]='Y'"
												''CountryQryBrNSA = "select distinct b.res_brand_name, (select top 1  a.res_brand_image_url from vw_RESX_WIPO_FULL_AND_REST a where a.res_brand_name=b.res_brand_name and a.mcp_code=b.mcp_code and a.res_brand_image_url is not null ) as res_brand_image_url from vw_RESX_WIPO_FULL_AND_REST b where b.mcp_code='" & RPT_MCP_CODE & "' and b.res_brand_image_url is not null and b.res_brand_status='Active' order by b.res_brand_name"
												Set RSwBrands = Server.CreateObject("ADODB.Recordset")
												RSwBrands.Open CountryQryBrNSA, Datasource7,3  
												infcount=RSwBrands.recordcount
												''response.write CountryQryBrNSA
												
												if cint(infcount)<=0 then%>
												<script>
													alert("No Records  exists.");
													window.close();
													
												</script>
												<%end if
														
									
												If Not RSwBrands.EOF Then 
												company=RSwBrands("CompanyName")
												%> 
                        <div class="row  mx-0  mt-3 px-lg-3 px-sm-0 px-md-2 px-xl-3 ">
                            <h3 class="font-weight-bold mb-0"><%=ucase(company)%>  [<span style="color:#169fe6; font-weight:bold;"><%=infcount%></span>] </h3>
                        </div>

                        <div class="row  mx-0  mt-3 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                            Please <i class="fa fa-check-square" aria-hidden="true" style="color:#008000;"></i> select and rate influencers from your company who are relevant to this project or product.
                        </div>
                        <hr/>
							<div class="w-lg-100 w-xl-100 border-bottom d-flex flex-wrap justify-content-around" style="align-items: baseline !important;">
                       
                            
																	
																
												<% while not RSwBrands.EOF
												
											''	response.write("<tr class='table-row' id='table-row-"& RSwBrands("res_brand_name") &"'><td ><input type='checkbox' name='BrandRelev" & b &"' id='BrandRelev" & b &"' value='R'  ></td><td><input class='border-0 w-100' style='background:rgba( 255,255,255,0.5);' type='textbox' readonly value='"&Trim(RSwBrands("res_brand_name"))&"' name=brand_"&B&" size='45' id=brand_"&b&"><img src='" & Trim(RSwBrands("res_brand_image_url")) & "' class='w-20 img-fluid'></td><td  align='center'><input type='radio' id='brandPlayer_"&b&"' name='brandPlayer_"&b&"' "&SelectRadio(trim(vbrandPlayer),"D")&" onClick='addToDatabasebrandNew("&b&")'  value='D'></td><td  align='center'><input type='radio' id='brandPlayer_"&b&"' name='Player_"&b&"' "&SelectRadio(trim(vbrandPlayer),"KP")&" onClick='addToDatabasebrandNew("&b&")'  value='KP'></td><td  align='center'><input type='radio' id='brandPlayer_"&b&"'name='brandPlayer_"&b&"' "&SelectRadio(trim(vbrandPlayer),"NP")&" onClick='addToDatabasebrandNew("&b&")'  value='NP'></td><td  align='center'><input type='radio' "&SelectRadio(trim(vbrandPlayer),"UP")&"  name='brandPlayer_"&b&"' id='brandPlayer_"&b&"' onClick='addToDatabasebrandNew("&b&")' value='UP'></td><td><input type='number' name='M2021brandShare"&b&"' step='1' min='1' max='100' maxlength='3' size='10' tabindex='3' class='textbox_border border  w-100 p-1'></td><td><input type='number' name='M2027brandShare"&b&"' step='1' min='1' max='100' maxlength='3' size='10' tabindex='3' class='textbox_border border  w-100 p-1'></td><!--<a onClick='addToDatabasebrand("&b&")' class='ajax-action-links'><button type='button'>SAVE</button></a>--></tr>")
																B= B+1%>
																
																<%
						'''dim RankType, RankPosition, starVal
						RankType = "Top 5%"
						RankPosition = trim(ucase(RSwBrands("Title")))
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
					
						<div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column shadow my-2 border p-2">				
							<div class="w-100 ">
                                <div id="label_container" class="bg-white cards m-0 p-0 ">
                                    <div class="label_middle_block d-flex text-center">
                                        <div class="  d-flex flex-row border-bottom flex-md-row position-relative align-content-center w-100 ">

                                            <div class="mb-1 w-xl-40 w-lg-40 w-md-40 w-sm-40 ">
                                                <div class="d-flex justify-content-center">
                                                    <div class="img-block" style="margin-right: 0px">
                                                        <div class="w-100 h-100  d-flex justify-content-center align-items-center" style="overflow: hidden">
                                                            <img src="<%=RSwBrands("Logo_local")%>" class="img-fluid"> </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-left   label_aside mt-xl-2 mt-lg-2 mt-md-2 mt-sm-0"  style="margin-left:5px">
                                                <h4 class="text-dark mb-1 p-0 texttrim "><%=RSwBrands("First_Name")%>&nbsp;<%=RSwBrands("Last_Name")%></h4>
                                                <h4 class="text-dark mb-1 p-0 textlimit "><%=RSwBrands("Title")%></h4>

                                                <h4 class="mb-0 d-flex  columns px-0 mr-2 ml-0  ">Influence:<i class="star_rating"> 
												<img src="https://bojjapusrinivas.github.io/report_design/images/beer/star_rating_<%=starVal%>.0.jpg" class="img-fluid mt-0"></i>
												</h4>
                                            </div>
                                        </div>

                                    </div>


                                </div> 
                            </div>
																				
							  <%
											
											    Set Conn = Server.CreateObject("ADODB.Connection")
												Conn.Open Datasource10
												RecChkSQL = "SELECT * FROM Ancillaries_InfluencerModule WHERE Code = '"&trim(request("code"))&"' and encid ='"&trim(request("encid"))&"' and cpcode ='"&RSwBrands("Filename")&"' and type = 'Competitive' and email_id='"&session("EID")&"' and Influencer_sno='"&RSwBrands("sno")&"'"
											   '' response.write RecChkSQL
												Dim CompChekedValue
												CompChekedValue =""
												Set RecChkRS = Server.CreateObject("ADODB.Recordset")
												RecChkRS.Open RecChkSQL, Conn
												If Not RecChkRS.EOF Then
													CompChekedValue=RecChkRS("Scale")
												End If	 
												' response.write(RecChkSQL)&"<br>"
											     ' response.write(CompChekedValue)
												set Conn = Nothing
												Dim CompChkBox
												CompChkBox = ""
												
												if CompChekedValue <>"" then
												   CompChkBox="checked"
												else
												   CompChkBox="" 
												end if
												
							%>
					
											

                            <div class="w-100 mb-0 mt-2">
                                <div class="row other_influencer_relevance_block mb-0">
                                    <div class="form-group w-100 ">
                                        <div class="checkbox">
                                            <label data-toggle="collapse" data-target="#collapseOne<%=RSwBrands("sno")%>" aria-expanded="false" aria-controls="collapseOne">
                                                <input type="checkbox" id="rel<%=RSwBrands("sno")%>" name="rel<%=RSwBrands("sno")%>" <%=CompChkBox%> value="R"/> <span >Relevance to Project</span>
                                            </label>
                                        </div>
                                    </div>
                                     
									<% if CompChkBox <>"" then %>
                                      <div id="collapseOne<%=RSwBrands("sno")%>" aria-expanded="false" class="collapse show">
									<%else%>
									  <div id="collapseOne<%=RSwBrands("sno")%>" aria-expanded="false" class="collapse">
									<%end if %>
                                    
                                        <div class="w-100 mt-2">
                                            <h4 class="text-left">Market Influence 5-Scale</h4>
                                            <div class="d-flex flex-wrap flex-row justify-content-around">
                                                <div class=" w-xl-20 w-lg-20 w-mb-20 w-sm-20">
                                                    <input type="radio" name="star_rating<%=RSwBrands("sno")%>" <%=SelectRadio(CompChekedValue,1)%> id="<%=RSwBrands("sno")%>star_1" value="1" onClick='Addinfluence_moduletoDB("<%=RSwBrands("sno")%>","<%=Trim(request("code"))%>","<%=Trim(request("encID"))%>","1","<%=RSwBrands("filename")%>");'>1  </div>
												<div class="w-xl-20 w-lg-20 w-mb-20 w-sm-20">
                                                    <input type="radio" name="star_rating<%=RSwBrands("sno")%>" <%=SelectRadio(CompChekedValue,2)%> id="<%=RSwBrands("sno")%>star_2" value="2" onClick='Addinfluence_moduletoDB("<%=RSwBrands("sno")%>","<%=Trim(request("code"))%>","<%=Trim(request("encID"))%>","2","<%=RSwBrands("filename")%>");'>2  </div>
													<div class="w-xl-20 w-lg-20 w-mb-20 w-sm-20">
                                                    <input type="radio" name="star_rating<%=RSwBrands("sno")%>" <%=SelectRadio(CompChekedValue,3)%> id="<%=RSwBrands("sno")%>star_3" value="3" onClick='Addinfluence_moduletoDB("<%=RSwBrands("sno")%>","<%=Trim(request("code"))%>","<%=Trim(request("encID"))%>","3","<%=RSwBrands("filename")%>");'>3  </div>
													 <div class="w-xl-20 w-lg-20 w-mb-20 w-sm-20">
                                                    <input type="radio" name="star_rating<%=RSwBrands("sno")%>" <%=SelectRadio(CompChekedValue,4)%> id="<%=RSwBrands("sno")%>star_4" value="4" onClick='Addinfluence_moduletoDB("<%=RSwBrands("sno")%>","<%=Trim(request("code"))%>","<%=Trim(request("encID"))%>","4","<%=RSwBrands("filename")%>");'>4  </div>
                                                <div class="w-xl-20 w-lg-20 w-mb-20 w-sm-20">
                                                    <input type="radio" name="star_rating<%=RSwBrands("sno")%>" <%=SelectRadio(CompChekedValue,5)%> id="<%=RSwBrands("sno")%>star_5" value="5"  onClick='Addinfluence_moduletoDB("<%=RSwBrands("sno")%>","<%=Trim(request("code"))%>","<%=Trim(request("encID"))%>","5","<%=RSwBrands("filename")%>");'>5 
                                                </div>

                                              <!--  <div class="w-xl-30 w-lg-30 w-md-50 w-sm-100  mb-1">
                                                    <input type="radio" name="star_rating" id="other" value="other">Other </div>-->
                                            </div>



                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
						
							<%RSwBrands.MoveNext
						Wend%>
						  
					
																	
						<%End If
						Set RSwBrands = Nothing%>
						</div>
                       



		

</div>

                        </div>




                    </section>
                    <!---- COPY UP TO HERE------>

                </main>
				</div>
                <!---End: Main Content--->
                <!---- END : CONTENT SSECTION ---->
            </div>
            <!---CONTAINER END--->
        </div>
    </div>
    <!-- Footer
================================================== -->
    <!-- Footer / Start -->
   <!--#include file="ASPIncludes/BottomStrip.asp"-->
    <!----feedback--->
    <div id="feedback_pop" class="modal">
        <div class="w-100">
            <div class="p-3">
                <h3 align="center" class="font-weight-bold font-size-20 py-2 border-bottom text-center primary_color ">FEEDBACK</h3>
                <div class="my-2">
                    <div class="form-group">
                        <p class="text-center"> Please give your valuable feedback</p>
                        <textarea class="form-control w-100 m-0" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <div class="w-100 text-center mb-0">
                        <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow">SUBMIT</button>
                        <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!----Alert_BOX--->
    <div id="alert" class="modal">
        <div class="row alert_block">
            <div class="p-3">
                <h3 align="center" class="font-weight-bold font-size-20 py-2 border-bottom text-center primary_color ">ALERT</h3>
                <div class="my-2">
                    <!--p align="left">Request a Global Expert Panel Registry. </p-->
                    <p style="font-size:15px !important" class="text-darker">Receive activity alerts for project updates by email and in mobile app </p>
                    <div class="mb-3 ml-2">
                        <input data-brackets-id="213770" type="checkbox" name="alert" id="checkAll" onclick="toggle()" class="mb-3" value="ALL ALERTS" style="margin-top:2px">&nbsp;ALL ALERTS
                        <br />
                        <input data-brackets-id="213770" class="ml-4 mb-3" type="checkbox" name="alert" id="ALL_ALERTS" onclick="toggle()" value="ALL ALERTS" style="margin-top:2px">&nbsp;Peer-to-Peer
                        <br />
                        <input data-brackets-id="213770" class="ml-4 mb-3" type="checkbox" name="alert" id="ALL_ALERTS" onclick="toggle()" value="ALL ALERTS" style="margin-top:2px">&nbsp;Competitive Enterprise
                        <br />
                        <input data-brackets-id="213770" class="ml-4 mb-3" type="checkbox" name="alert" id="ALL_ALERTS" onclick="toggle()" value="ALL ALERTS " style="margin-top:2px">&nbsp;Project Updates
                    </div>
                    <div>
                        FREQUENCY: &nbsp;
                        <input data-brackets-id="206492" type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="MILLION" style="margin-top:2px" checked="">&nbsp;Month&nbsp;&nbsp;
                        <input data-brackets-id="206492" type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="MILLION" style="margin-top:2px" checked="">&nbsp;Quarter
                    </div>
                </div>
                <hr>
                <div class="row text-center mb-0">
                    <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow">SUBMIT</button>
                    <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
                </div>
            </div>
        </div>
    </div>
   
    
    
    
    </body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="scripts/bootstrap.bundle.js"></script>
<script src="js/jquery.multi-select.js"></script>
<script src="js/limit.text.js"></script>
<script>
    //----ACCORDION----//
    var acc = document.getElementsByClassName("accordion_key");
    var i;
    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var panel3 = this.nextElementSibling;
            if (panel3.style.maxHeight) {
                panel3.style.maxHeight = auto;
            } else {
                panel3.style.maxHeight = panel3.scrollHeight + "px";
            }
        });
    }

</script>
<script>
    $(window).scroll(function() {
        if ($(this).scrollTop() > 210) {
            $('.simulator_top_header').addClass('fixed-top');
        } else {
            $('.simulator_top_header').removeClass('fixed-top');
        }
    });

</script>
<!---CHECK ALL SCRIPT--->
<script>
    $("#checkAll").click(function() {
        $('input:checkbox').not(this).prop('checked', this.checked);
    });

</script>

<script src="js/limit.text.js"></script>

<script>
   $(document).ready(function(){
         $('.textlimit').limitText({
            length: 35
        });
    })

</script>
<script>
function OpenOthinflu(cp,mcp){
myWin = open("privacy.htm" ,"Globind","width=800,height=700,status=no,toolbar=no,menubar=no,scrollbars=no");
}
</script>

</html>
