<%@ LANGUAGE="VBScript" %>
<!--#include file="adovbs.asp"-->
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ASPIncludes/SendEmail.asp"-->
<!--#include file="ASPIncludes/SiteFunctions.asp"-->
<!--#include file="aspincludes/md5.asp"-->
  
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]>
<!-->
<html lang="en">
<!--<![endif]-->
<%
''if trim(Request.ServerVariables("http_referer"))="" then
''	Response.Redirect "https://www.strategyr.com"
''end if
Response.CodePage = 65001
Response.CharSet = "utf-8"
newcode = Trim(request("code"))
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

'''' SEGMENT NAME
If trim(sname)<>"" then
	 session("sname") = Trim(request("sname"))
End If

'''' COUNTRY NAME
If trim(cname)<>"" then
	 session("cname") = Trim(request("cname"))
End If

If session("UserID") = "" then

	session("UserID") = "5967"
End If

If Trim(session("UserID")) ="" then
   response.redirect "https://www.strategyr.com/GIA_Research_Collaborate.asp?code="&Trim(request("code"))&"&SessOUT=True"
End If

Dim isNTCnt
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

''response.write(session("isMCP"))
Function Selected(val1,val2)
	IF trim(val1) = trim(val2) then
		Selected = "Selected"
	else
		Selected = ""
	End IF
END Function
Function SelectRadio(val1,val2)
  'response.write (val1 & "  " & val2)
  'response.write ("Test")
  'response.end
	IF trim(val1) = trim(val2) then
		SelectRadio = " checked"
	else
		SelectRadio = ""
	End IF
END Function

Function checked_STR(val1,val2)    
	SplitVal=Split(val1,", ")
	For Each x In SplitVal
	  SplitVal2=Split(val2,", ")
			For Each y In SplitVal2  
                   If Trim(y)=Trim(x)Then				
					  checked_STR = "checked"
				    End if
		    Next	  
    Next 
END Function

If Trim(request("code"))<>"" Then
	If session("UserID")<>"" then
		Set Conn = Server.CreateObject("ADODB.Connection")
		Set RSCnt = Server.CreateObject("ADODB.Recordset")
		Conn.Open DataSource6
		RSCnt.CursorType = 3
		getGenDataCntSQL="SELECT max(SeqNo) as cnt FROM DEPQ_EnterpriseEmails WHERE userid='" & session("UserID")& "' and reportcode='"&trim(request("Code"))&"' GROUP BY ReportCode, ReportID"
		RSCnt.open getGenDataCntSQL, conn
		Dim ColeagueCount
		if not RSCnt.eof then	
			 ColeagueCount = RSCnt(0)
		 Else
			 ColeagueCount = 1
		End If

		set RSCnt = nothing
		set conn = nothing
		''response.write getGenDataCntSQL & " yyy" & session("EID")
	End If
End If%>

<%''''''''REGISTRATION PROCESS FOR THE INFLUECENRS LIST'''''''''''''''%>

<!--#include file="GIA_Influencer_Login.asp"-->

<%'''''''''''''''''''END OF THE PROCESS ''''''''''''''''''''''''''''''%>

<head>
    <!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8">
	<!--<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-8">
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>-->
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
    <link rel="stylesheet" href="css/add_page/add_page_style.css" />
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
	 <link rel="stylesheet" href="css/simulator_styles2.css" />
    <link rel="stylesheet" href="css/input_style.css" />	
    <link rel="stylesheet" href="css/example-styles.css" />
	<link rel="stylesheet" href="css/event_labels.css" />
	
   <script>
   function addevents()
{
 var etitle =$("#txtevent").val();
 var eurl=$("#txteventurl").val();
var edt=$("#txteventdate").val();
//alert(etitle);
 if ((etitle != "") || (eurl!="") || (edt!=""))
 {
	alert("Event Added Successfully.");
}
else
{
	alert("Please enter Title/URL/Date.");
}
}
   </script>
    <!--- accordion2 script ---->

	<style>
        .blocker {
            z-index: 9999999;
        }

    </style>
</head>

<body id="add_page">
    <!-- Wrapper / Start -->
    <div id="wrapper" class="bor-radius">
        <div id="top-line" style="box-shadow:none; height:5px;"> </div>
        <!-- Content
================================================== -->
        <!---BEGN REPORT TITLE--->
        <!---END REPORT TITLE--->
        <!---BEGIN:PAGE CONTENT--->
		<% 
			
			
		
		IF Trim(request("email"))<>"" THEN
						''response.write "LOGOUT"
						'' send mail to sales@strategyr.com and rsd@strategyr.com , Subject: Interested in Research Partnership Program.
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3
					
						SQL9="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; SELECT UserId,user_SurName,LastName,firstname,user_company,address1 +' '+ Address2 +' '+ city +' '+ state +' '+ zip as Address,country,user_website,telephone,fax,jobfunction,user_position,CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID FROM [user_master] WHERE CONVERT(varchar(500), DecryptByKey(EmailID))='" & request("email")& "'"

						''response.write SQL9
						rs9.open sql9, conn9
						if not rs9.eof then
							company = trim(rs9("User_company"))
							address = trim(rs9("address"))
							country = trim(rs9("country"))
							url = trim(rs9("user_website"))
							phone = trim(rs9("telephone"))
							fax = trim(rs9("fax"))
							JobFunction = trim(rs9("JobFunction"))
							userposition= trim(rs9("user_position"))
							First_Name = trim(rs9("firstname"))
							Last_Name = trim(rs9("LastName"))
							Session("First_Name")=First_Name
							Session("Last_Name")=Last_Name
							Session("company")=company
							
							session("EID")=trim(rs9("emailid"))
							session("UserID") = trim(rs9("UserId"))
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
						end if
						
						if trim(First_Name)<>"" then
							uname = Trim(First_Name) & " " & Trim(Last_Name)
						else
							uname = "New User"
						end if
						set rs9 = nothing
						set conn9 = Nothing
						
						
						daydisplay=WeekDayName(Weekday(Now())) & ","
						
						end if
						%>
		
			<%
			'''email=obilisrinivas@gmail.com&fname=Srinivas&lname=Obili
			if trim(request("fname"))<>"" then
				uname = trim(request("fname")) &" "&trim(request("lname"))
			End If
			%>
			
			<%
				Set ConnMC = Server.CreateObject("ADODB.Connection")
					
				ConnMC.Open DataSource4
				SQLevent="select * from  GIA_MC_Program.dbo.vw_event_details where id=" & request("id")
				'''response.write sqlevent
				Set RSevent = Server.CreateObject("ADODB.Recordset")
				RSevent.Open SQLevent, ConnMC 
				If Not RSevent.EOF Then
	
				''external_id, 
				'''[eventDataCurator].[dbo].[gia_cbcrawler__event]
					Set ConnMain = Server.CreateObject("ADODB.Connection")
					
					ConnMain.Open DataSource4
					SQLeventMain="select * from [eventDataCurator].[dbo].[gia_cbcrawler__event] where id=" & RSevent("external_id")
					''response.write SQLeventMain
					Set RSeventMain = Server.CreateObject("ADODB.Recordset")
					RSeventMain.Open SQLeventMain, ConnMain 
					Dim Get_Eventimage, Get_EventLocation, Get_EventIndustries
					Get_Eventimage = ""
					Get_EventLocation = ""
					Get_EventIndustries = ""
					If Not RSeventMain.EOF Then
						Get_Eventimage = trim(RSeventMain("image_path"))
						Get_EventLocation = trim(RSeventMain("location"))
						Get_EventIndustries = trim(RSeventMain("industries"))
					End IF
					Set RSeventMain = Nothing
					Set ConnMain = Nothing
					
					''response.write "Industries = "&Get_EventIndustries
				%>
			
        <div class="page-content">
            <div class="container">
                <!---- BEGIN : HEADER SECTION ---->
                
				<header>
                    <div class="row" style="margin-bottom:0px;">
                        <div class="logo_text px-4">
                            
							<img src="images/strategyr_logo.svg" class="strategyrR_logo text-center mx-auto" style="width:210px !important;">
							
                         </div>
                        <div class="border-bottom text-center mb-4">
                            <h2 style="font-weight:bold; color:#900;line-height: 23px;" class="mt-2  font-weight-bold event_header_title "><%=trim(ucase(RSevent("title")))%></h2>
                        </div>
                      <!--  <div class="mobile_display" style="text-align:center; width:100% !important"> <img src="https://www.strategyr.com/resize_img/sig_100.jpg" alt="GIA" class="logo signatrue_logo" style="width:90px; height:auto; margin:0 auto; padding-top:10px"> </div>-->
                    </div>
                </header>
                <!---- END : HEADER SECTION ---->
                <!---- Begin:simulator_header---->
                <section>

                 

                </section>
                <!---- End:simulator_header---->
                <!---- BEGIN :CONTENT SSECTION ---->
                <!---Begin: Main Content--->
				
                <main>
                    <div class="row">
                        <div class="w-md-100 w-lg-90 w-xl-90 mx-auto w-sm-100">
                            <form class="was-validated">
							<%If trim(Get_Eventimage)<>"" Then
								Get_Eventimage = "https://cbcrawler.marketglass.com/"&Get_Eventimage
							%>
								<div class="form-group row d-flex flex-sm-wrap flex-md-nowrap mb-2 flex-lg-nowrap  justify-content-left">
                                    <label for="staticEmail" class="w-100 mb-3 d-flex flex-column"> <img src="<%=Get_Eventimage%>" border=0 class="border shadow mb-1 event_title_logo broken_img_placeholder">
									<a href="<%=RSevent("url")%>" class="text-center mt-2 font-size-15">EVENT URL</a>
									</label>
                                    
                                </div>
							<%End If%>
							<div>
                                
                               
                                <div class="form-group row d-flex   justify-content-left mb-2 ">
                                    <label for="staticEmail" class="font-weight-bold mr-3  " style="color:#900;">START (M/D/Y)</label>
                                    <div class="">										
                                       <%=RSevent("start_date__month")%>/<%=RSevent("start_date__DAY")%>/<%=RSevent("start_date__YEAR")%>
                                    </div>
                                </div>
								<div class="form-group row d-flex   justify-content-left mb-2">
                                    <label for="staticEmail" class="font-weight-bold mr-3" style="color:#900;">END (M/D/Y)</label>
                                    <div class="" style="margin-left:12px;">
									<%=RSevent("END_date__month")%>/<%=RSevent("end_date__DAY")%>/<%=RSevent("end_date__YEAR")%>                                         
                                    </div>
                                </div>
							
								<%If trim(Get_EventLocation)<>"" Then%>
								<div class="form-group row d-flex  mb-3 justify-content-left flex-column" style="margin-bottom: 11px !important;">
                                    <label for="staticEmail" class="w-100 font-weight-bold  mb-0" style="color:#900;">LOCATION</label>
                                    <div class="w-100" style="valign:top;">
                                         <%=trim(Get_EventLocation)%>
                                    </div>
                                </div>
								<%End If%>
                                <div class="form-group row justify-content-left flex-column" style="margin-bottom: 11px !important;">
                                    <label for="staticEmail" class="w-100 font-weight-bold  mb-0" style="color:#900;">DESCRIPTION</label>
                                    <div class="w-100" style="valign:top;">
                                         <%=RSevent("description")%>
                                    </div>
                                </div>
                                <%
								Dim ViewDomainNames
								ViewDomainNames = ""
								''response.write "Domain"&trim(RSevent("domains__title"))
								if trim(RSevent("domains__title"))<>"" Then
									ViewDomainNames = trim(RSevent("domains__title"))									
								else								
									If trim(Get_EventIndustries)<>"" then
										ViewDomainNames = trim(Get_EventIndustries)										
									End If
								End If%>
								
								<%If trim(ViewDomainNames)<>"" then%>
                                <div class="form-group row d-flex  mb-2 justify-content-left flex-column" style="margin-bottom: 11px !important;">
                                    <label for="staticEmail" class="w-100 font-weight-bold mr-3 mb-0" style="color:#900;">ECOSYSTEMS</label>
                                    <div class="w-100">										
										<%=trim(ViewDomainNames)%>                                       
                                    </div>
                                </div>
								<%End If%>
							</div>
							 <hr/>
                             <div>							
								
								<%
									''SELECT b.[first_name],b.[last_name],b.[headline],b.[company_name],b.[image_path],b.[company_id] FROM [eventDataCurator].[dbo].[gia_cbcrawler__attendee] a,[eventDataCurator].[dbo].[gia_cbcrawler__person] b  where a.person_id=b.id and event_id=18571 and a.role='speaker'
									
									Set ConnMain = Server.CreateObject("ADODB.Connection")
									
									ConnMain.Open DataSource4
									''SQLeventMain="SELECT b.[first_name],b.[last_name],b.[headline],b.[company_name],b.[image_path],b.[company_id],b.[location] FROM [eventDataCurator].[dbo].[gia_cbcrawler__attendee] a,[eventDataCurator].[dbo].[gia_cbcrawler__person] b  where a.person_id=b.id and event_id="&RSevent("external_id")&" and a.role='speaker'"
									SQLeventMain="select * from [eventDataCurator].[dbo].vw_company_Person where event_id="&RSevent("external_id")&" and person_role='speaker' order by last_name"
									''SQLeventMain="select * from [eventDataCurator].[dbo].gia_cbcrawler__person where  id in (select person_id from [eventDataCurator].[dbo].gia_cbcrawler__attendee where role='speaker' and event_id="&RSevent("external_id")&")"
									''response.write SQLeventMain
									Set RSeventMain = Server.CreateObject("ADODB.Recordset")
									RSeventMain.Open SQLeventMain, ConnMain ,3
									
									If Not RSeventMain.EOF Then%>
									<div class="form-group row d-flex flex-sm-wrap flex-md-nowrap my-3  flex-lg-nowrap   justify-content-left">
                                    <label for="staticEmail" class="columns col-form-label w-100 text-center" style="font-size:16px;color:#900;">SPEAKERS&nbsp;<span style="color:#169FE6;font-size:16px;"><%=RSeventMain.recordcount%></span></label>
                                    
                                </div>
								
								<div class="w-lg-100 w-xl-100 border-bottom d-flex flex-wrap justify-content-around">
									<%Dim getCNT1
									getCNT1 = 1
									%>
									
										<%While not RSeventMain.EOF
										If trim(RSeventMain("image_path"))<>"" Then
											 IMG_Path_company = "https://cbcrawler.marketglass.com/"&trim(RSeventMain("image_path"))
											'' response.write "<img src="&IMG_Path_Person&" border='0'>"
										End If
										If trim(RSeventMain("person_image"))<>"" Then
											 IMG_Path_Person = "https://cbcrawler.marketglass.com/"&trim(RSeventMain("person_image"))
											'' response.write "<img src="&IMG_Path_Person&" border='0'>"
										End If
										'response.write "<b>"&trim(RSeventMain("first_name"))& " "&trim(RSeventMain("last_name"))& "</b><br/>"
										%><div class="w-lg-32 w-xl-32 w-md-45 w-sm-100   d-flex flex-column shadow  border p-2 my-2">				
							<div class="w-100 ">
                                <div id="label_container" class="bg-white cards m-0 p-0 ">
                                    <div class="label_middle_block d-flex text-center">
                                        <div class="  d-flex flex-row  flex-md-row position-relative align-content-center w-100 ">

                                            <div class="mb-1 w-xl-30 w-lg-30 w-md-30 w-sm-25 ">
                                                <div class="d-flex flex-xl-column flex-lg-column flex-md-column flex-sm-column justify-content-start align-items-center">
                                                    <div class="img-block order-xl-1 order-lg-1 order-md-1 order-sm-1" style="margin-right: 0px">
                                                        <div class="w-100 h-100  d-flex justify-content-center align-items-start mt-1" style="overflow: hidden">
                                                            <img src="<%=IMG_Path_company%>" class="img-fluid"> </div>
														
                                                    </div>
													<div class="img-block" style="margin-right: 0px">
                                                        <div class="w-100 h-100  d-flex justify-content-center align-items-start mt-1" style="overflow: hidden">
                                                            <img src="<%=IMG_Path_Person%>" class="img-fluid"> </div>
														
                                                    </div>
                                                </div>
                                            </div>
											<div class="text-left   label_aside w-xl-70 w-lg-70 w-md-70 w-sm-75 d-flex align-items-start position-relative">
                                                <div class="m-0 p-0">
												<h3 class="text-dark mb-1 p-0 texttrim mb-2 text-brown" style="margin-top:2px"><%=trim(RSeventMain("first_name"))%>&nbsp;<%=trim(RSeventMain("last_name"))%></h3>
                                                <h4 class="text-dark mb-1 p-0 textlimit mt-1 " title="<%=RSeventMain("headline")%>"><%=RSeventMain("headline")%></h4>
												<h4 class="text-dark mb-1 p-0 textlimit mt-1 " ><%=RSeventMain("person_company")%></h4>
												<h4 class="text-dark mb-1 p-0 textlimit mt-1 " title="<%=RSeventMain("person_location")%>"><%=RSeventMain("person_location")%></h4>
												<a rel="modal:open" href="#sticky" class="text-center mt-2  position-absolute l-0 b-0" style="font-size: 13px">VIEW PROFILE</a>
											</div>
                                            </div>
                                        </div>

                                    </div>


                                </div>
                            </div>
						
                        </div>
						
						<%
										getCNT1 = getCNT1+1
										RSeventMain.movenext
										wend%>
									</div>
								</div>
									<%End IF
									Set RSeventMain = Nothing
									Set ConnMain = Nothing
									%>
									
						<!------------------- spearkers end-->
								
								<%
								''''SELECT b.[name],b.[image_path],b.[location] FROM [eventDataCurator].[dbo].[gia_cbcrawler__company_to_event] a,[eventDataCurator].[dbo].[gia_cbcrawler__company] b where a.company_id=b.id and a.event_id="&RSevent("external_id")&" and a.role='sponsor' order by b.name
								Set ConnMain = Server.CreateObject("ADODB.Connection")
									
									ConnMain.Open DataSource4
									SQLeventMain="SELECT b.[name],b.[image_path],b.[location] FROM [eventDataCurator].[dbo].[gia_cbcrawler__company_to_event] a,[eventDataCurator].[dbo].[gia_cbcrawler__company] b where a.company_id=b.id and a.event_id="&RSevent("external_id")&" and a.role='sponsor' order by b.name"
									'response.write SQLeventMain
									Set RSeventMain = Server.CreateObject("ADODB.Recordset")
									RSeventMain.Open SQLeventMain, ConnMain ,3
									
									If Not RSeventMain.EOF Then
									Dim getCNT2
									getCNT2 = 1
									RSeventMain.movefirst
									%>
									<div class="form-group row d-flex flex-sm-wrap flex-md-nowrap my-3  flex-lg-nowrap   justify-content-left">
                                    <label for="staticEmail" class="columns col-form-label w-100 text-center" style="font-size:16px;color:#900;">SPONSORS&nbsp;<span style="color:#169FE6;font-size:16px;"><%=RSeventMain.recordcount%></span></label>
                                    
                                </div>
								
								<div class="w-lg-100 w-xl-100 border-bottom d-flex flex-wrap justify-content-around">
									
					
									
										<%While not RSeventMain.EOF
										If trim(RSeventMain("image_path"))<>"" Then
											 IMG_Path_Company = "https://cbcrawler.marketglass.com/"&trim(RSeventMain("image_path"))
											 ''response.write "<img src="&IMG_Path_Company&" border='0'>"
										End If
										'response.write "<b>"&trim(RSeventMain("name"))& "</b><br/>"%>
									
										<div class="w-lg-32 w-xl-32 w-md-45 w-sm-100   d-flex flex-column shadow  border p-2 my-2">				
							<div class="w-100 ">
                                <div id="label_container" class="bg-white cards p-0 m-0 ">
                                    <div class="label_middle_block d-flex text-center">
                                        <div class="  d-flex flex-row  flex-md-row position-relative align-content-center w-100 ">

                                            <div class="mb-1 w-xl-20 w-lg-20 w-md-20 w-sm-30 ">
                                                <div class="d-flex justify-content-end">
                                                    <div class="img-block shadow-sm mt-0" style="margin-right: 0px">
                                                        <div class="w-100 h-100  d-flex justify-content-center align-items-center" style="overflow: hidden">
                                                            <img src="<%=IMG_Path_Company%>" class="img-fluid"> </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-left label_aside w-xl-80 w-lg-80 w-md-80 w-sm-70 d-flex flex-column align-items-start justify-content-center" style="margin-left:10px">
											 <h3 class="text-dark mb-1 p-0 texttrim mt-2 "><%=trim(RSeventMain("name"))%></h3>
											 <a data-brackets-id="2477" href="#" class="text-center mt-2 " style="font-size: 13px">DATA SILO</a>
                                             <!--h4 class="text-dark mb-1 p-0 textlimit mt-1 " title="<%=RSeventMain("location")%>"><%=RSeventMain("location")%></h4-->  
                                                <!--<h4 class="text-dark mb-1 p-0 textlimit mt-2 " title="<%'=RSeventMain("headline")%>"><%'=RSeventMain("headline")%></h4>
												<h4 class="text-dark mb-1 p-0 textlimit mt-2 " ><%'=RSeventMain("company_name")%></h4>
												<h4 class="text-dark mb-1 p-0 textlimit mt-2 " title="<%'=RSeventMain("location")%>"><%'=RSeventMain("location")%></h4>-->
                                                
                                            </div>
                                        </div>

                                    </div>


                                </div>
                            </div>
						
                        </div>
										<%
										getCNT2 = getCNT2+1
										RSeventMain.movenext
										wend%>
									</div>
									</div>
									<%End IF
									Set RSeventMain = Nothing
									Set ConnMain = Nothing
									%>
									
                       

                    <!--<div class="row text-center">
                        <button class="btn btn-gia-primary rounded shadow p-2 mx-0  text-white font-weight-bold font-size-15" onclick="javascript:window.close()"  type="button" data-toggle="collapse">
                            CLOSE
                        </button>
                    </div>-->
 </form>
			<%end if%>
                </main>
                <!---End: Main Content--->
                <!---- END : CONTENT SSECTION ---->
            </div>
            <!---CONTAINER END--->
        </div>
    </div>
    <!-- Footer
================================================== -->
    <!-- Footer / Start -->
   <!-- <footer id="footer " class="bg-white py-1"> </footer>-->
   <!--#include file="ASPIncludes/BottomStrip_module.asp"-->
</body>


<!----BEGIN:PROFILE MODEL----->
<div id="sticky" class="modal" style="z-index: 99999; max-width: 500px !important; width: 100%; padding:15px !important ">

    <!--a href="#" rel="modal:close">Close</a-->

    <div class="row mb-0">

        <div class="w-100">
            <div class="card-box p-0 mb-0" id="profile_popup_model">
                <div class="w-100">
                    <div class="w-100 d-flex flex-sm-column">
                        <div class="mb-1 w-xl-30 w-lg-30 w-md-30 w-sm-100 mb-2">
                            <img src="https://cbcrawler.marketglass.com/uploads/images/persons/0/h/2/z/5/f044722a1de96ad89f9933e62175dc9293b10924.png" class="profile_img-thumbnail shadow broken_img_placeholder" alt="profile-image ">
                        </div>
                        <div class=" w-xl-70 w-lg-70 w-md-70 w-sm-100  d-flex flex-column  align-items-start align-items-sm-center justify-content-center">
                            <h3 style="font-size:17px; color: #900; font-weight: bold" class="mb-0 mt-2">Reinier M. van der&nbsp;Drift</h3>
                            <h4 style="font-size:15px; color:#000" class="mb-1">Co-Founder</h4>
                        </div>

                    </div>
                    <div class="text-center pb-2 border-bottom mb-0">


                    </div>

                    <div class="w-100 ">

                        <div id="label_container" class="bg-white cards p-0 m-0 border-bottom ">
                            <div class="label_middle_block d-flex text-center">
                                <div class="  d-flex flex-row  flex-md-row position-relative align-content-center w-100 ">

                                    <div class="mb-1 w-xl-15 w-lg-15 w-md-15 w-sm-20 ">
                                        <div class="d-flex justify-content-end">
                                            <div class="img-block shadow-sm mt-0" style="margin-right: 0px">
                                                <div class="w-100 h-100  d-flex justify-content-center align-items-center" style="overflow: hidden">
                                                    <img src="https://cbcrawler.marketglass.com/uploads/images/companies/6/2/v/4/m/332b402bc818866308b72b298f8035f288fe7b56.png" class="img-fluid"> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-left label_aside w-xl-80 w-lg-80 w-md-80 w-sm-70 d-flex flex-column align-items-start justify-content-center mb-0 " style="margin-left:10px">
                                        <h4 class="text-dark mb-1 p-0  mt-2  " style="font-size:15px; line-height:normal !important; " title="Tymlez">Tymlez</h4>
                                        <h4 class="text-dark mb-1 p-0  mt-1  " title="Amsterdam, Noord-Holland, The Netherlands" style="font-size:15px; line-height:normal !important; ">Amsterdam, Noord-Holland, The Netherlands</h4>


                                    </div>
                                </div>

                            </div>


                        </div>





                        <div class="w-100">
                            <ul class="social-links list-inline text-center mt-3 mb-0">
                                <li class="list-inline-item">
                                    <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="#" data-original-title="Facebook">
                                        <i class="fa fa-linkedin"></i></a>
                                </li>

                            </ul>

                        </div>



                    </div>
                </div>
            </div>
            <!-- end col -->


        </div>


    </div>

<!---END PROFILE MODEL-->








<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="scripts/bootstrap.bundle.js"></script>
<script src="js/jquery.multi-select.js"></script>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/limit.text.js"></script>

<script>
   $(document).ready(function(){
         $('.textlimit').limitText({
            length: 25
        });
    })    

</script>

<script>
	$("#sticky").modal({
		escapeClose: false,
		clickClose: false,
		showClose: false
	});

</script>


<script>
    $(document).ready(function() {
        $(".broken_img_placeholder").each(function() {
            var img = $(this);
            var image = new Image();
            image.src = $(img).attr("src");
            var no_image = "https://www.strategyr.com/images/image_placeholder.jpg";
            if (image.naturalWidth == 0 || image.readyState == 'uninitialized') {
                $(img).unbind("error").attr("src", no_image).css({
                    /*height: $(img).css("min-height"),
                    width: $(img).css("min-width"),*/
                });
            }
        });
    });

</script>

</html>
