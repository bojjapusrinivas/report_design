<%@ LANGUAGE="VBScript" %>


<!--#include file="ASPIncludes/SendEmail.asp"-->
<!--#include file="ASPIncludes/SiteFunctions.asp"-->
<!--#include file="aspincludes/md5.asp"-->
<!--#include file="ASPIncludes/CheckSQLSearchInc.asp"-->
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]>
<!-->
<html lang="en">
<!--<![endif]-->

<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
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
    <link rel="stylesheet" href="css/simulator_styles2.css" />
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
    <!--script src="scripts/jquery.min.js"></script>
    <script src="scripts/jquery.selectnav.js"></script>
    <script src="scripts/jquery.modernizr.js"></script>
    <script src="scripts/jquery.easing.1.3.js"></script>
    <script src="scripts/jquery.contact.js"></script>
    <script src="scripts/jquery.isotope.min.js"></script>
    <script src="scripts/custom.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /-->
   
    <!--- accordion2 script ---->

    <style>
        #label_container h4 {
            line-height: 14px !important;
        }
		

    </style>
	 <style>
        #panagration_list {
            list-style: none;
        }
        
        #panagration_list li {
            border: #000 solid 1px;
           background: rgb(255 255 255 / 20%) !important;
            float: left;
            padding: 5px;
            margin: 1%;
            width: 31.5%;
			 margin-left: 0px !important;
        margin-right: 0px !important;
        }
        .pagination li{
            width: 25px;
            height: 25px;
            margin: 10px;
            border: #000 solid 1px;
            color:#000;
            display: block;
            float: left;
        }
		

    </style>
</head>
<%Server.ScriptTimeout=2000%>

<%	
Response.CodePage = 65001
Response.CharSet = "utf-8"
''Response.Buffer = True
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

<body id="simulator_page" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" id="landing_page">
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
                            <h2 style="font-weight:bold; color:#900;line-height: 23px;" class="mt-2 font-size-20"> SPEAKERS</h2>
                        </div>
                        <div class="mobile_display" style="text-align:center; width:100% !important"> <img src="https://www.strategyr.com/resize_img/sig_100.jpg" alt="GIA" class="logo signatrue_logo" style="width:90px; height:auto; margin:0 auto; padding-top:10px"> </div>
                    </div>
               
                <!---- END : HEADER SECTION ---->

                        
                    </div>
                </header>
                <!---- END : HEADER SECTION ---->
                <!---Begin: Main Content--->
				<div class="container">
                <main >
				
				 <div>							
								
								<%
									''SELECT b.[first_name],b.[last_name],b.[headline],b.[company_name],b.[image_path],b.[company_id] FROM [eventDataCurator].[dbo].[gia_cbcrawler__attendee] a,[eventDataCurator].[dbo].[gia_cbcrawler__person] b  where a.person_id=b.id and event_id=18571 and a.role='speaker'
									
									Set ConnMain = Server.CreateObject("ADODB.Connection")
									
									ConnMain.Open DataSource4
									''SQLeventMain="SELECT b.[first_name],b.[last_name],b.[headline],b.[company_name],b.[image_path],b.[company_id],b.[location] FROM [eventDataCurator].[dbo].[gia_cbcrawler__attendee] a,[eventDataCurator].[dbo].[gia_cbcrawler__person] b  where a.person_id=b.id and event_id="&RSevent("external_id")&" and a.role='speaker'"
									SQLeventMain="select  distinct top 100 name,image_path,company_location,first_name,Last_name,headline,person_company,person_location,Person_image,eventcount  from [eventDataCurator].[dbo].vw_company_Person where person_role='speaker' order by eventcount desc"
									''SQLeventMain="select * from [eventDataCurator].[dbo].gia_cbcrawler__person where  id in (select person_id from [eventDataCurator].[dbo].gia_cbcrawler__attendee where role='speaker' and event_id="&RSevent("external_id")&")"
									''response.write SQLeventMain
									Set RSeventMain = Server.CreateObject("ADODB.Recordset")
									RSeventMain.Open SQLeventMain, ConnMain ,3
									
									If Not RSeventMain.EOF Then%>
									<div class="form-group row d-flex flex-sm-wrap flex-md-nowrap my-3  flex-lg-nowrap   justify-content-left">
                                    <label for="staticEmail" class="columns col-form-label w-100 text-center" style="font-size:16px;color:#900;">SPEAKERS&nbsp;<span style="color:#169FE6;font-size:16px;"><%=RSeventMain.recordcount%></span></label>
                                    
                                </div>
								
								<ul class="w-lg-100 w-xl-100 border-bottom d-flex flex-wrap justify-content-around pagnation_02" id="panagration_list">
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
										%><li class="w-lg-32 w-xl-32 w-md-45 w-sm-100   d-flex flex-column shadow  border p-2 my-2">				
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
                                            <div class="text-left   label_aside w-xl-70 w-lg-70 w-md-70 w-sm-75 d-flex align-items-sm-center align-items-md-center align-items-lg-center align-items-xl-center">
                                                <div class="m-0 p-0">
												<h3 class="text-dark mb-1 p-0 texttrim mb-2 text-brown" style="margin-top:2px"><%=trim(RSeventMain("first_name"))%>&nbsp;<%=trim(RSeventMain("last_name"))%></h3>
                                                <h4 class="text-dark mb-1 p-0 textlimit mt-1 " title="<%=RSeventMain("headline")%>"><%=RSeventMain("headline")%></h4>
												<h4 class="text-dark mb-1 p-0 textlimit mt-1 " ><%=RSeventMain("person_company")%></h4>
												<h4 class="text-dark mb-1 p-0 textlimit mt-1 " title="<%=RSeventMain("person_location")%>"><%=RSeventMain("person_location")%></h4>
												<h4 class="text-dark mb-1 p-0 textlimit mt-1 " ><%=RSeventMain("eventcount")%></h4>
											</div>
                                            </div>
                                        </div>

                                    </div>


                                </div>
                            </div>
						
                        </li>
						
						<%
										getCNT1 = getCNT1+1
										RSeventMain.movenext
										wend%>
									</ul>
								</div>
									<%End IF
									Set RSeventMain = Nothing
									Set ConnMain = Nothing
									%>
                </div>

                </main>
				</div>
                <!---End: Main Content--->
                <!---- END : CONTENT SSECTION ---->
            </div>
            <!---CONTAINER END--->
        </div>
   
    <!-- Footer
================================================== -->
    <!-- Footer / Start -->
    <!-- Footer start-->
<!--include file="ASPIncludes/BottomStrip_module.asp"-->
<!---footer_end-->
    <!----feedback--->
   
    <!----Alert_BOX--->
   
   
    
    
    
    </body>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="scripts/bootstrap.bundle.js"></script>
<script src="js/jquery.multi-select.js"></script>
<script src="js/limit.text.js"></script>
<script src="js/paginathing.js"></script>

<script>  
    $('#panagration_list').paginathing({
        perPage:60,
     // Limites your pagination number
      // false or number
      limitPagination: false,
      // Pagination controls
      prevNext: true,
      firstLast: true,
      prevText: '&laquo;',
      nextText: '&raquo;',
      firstText: 'First',
      lastText: 'Last',
      containerClass: 'pagination-container',
      ulClass: 'pagination',
      liClass: 'page',
      activeClass: 'active',
      disabledClass: 'disabled',
  
    })
    
</script>





<script>
   $(document).ready(function(){
         $('.textlimit').limitText({
            length: 35
        });
    })

</script>




<script>
function OpenOthBrands(cp,mcp,encid){
myWin = open("OtherBrandModule.asp?code="+mcp+"&cp="+cp+"&encid=" +encid,"Globind","width=800,height=700,status=no,toolbar=no,menubar=no,scrollbars=no");
}
</script>
</html>
