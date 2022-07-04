
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
		SQL = "SELECT * FROM MCPNewTopic WHERE (NewCODE='" & session("ReportCode") & "' or code ='" & session("ReportCode") & "')"
	Else
		SQL = "SELECT * FROM MCPNewTopic WHERE (NewCODE='" & session("ReportCode") & "' or code ='" & session("ReportCode") & "')"
	End If
	''response.write sql
	RS.Open SQL, conn,1,2
	If Not RS.EOF Then
			RPT_MCP_CODE = Trim(RS("code"))
			giacode=Trim(RS("newcode"))
			giacode1=Trim(RS("code"))
			strReportTitle = Trim(RS("title"))
			Companies_List = Trim(RS("companyNames"))
			CpCodes=Trim(RS("CPCodes"))
			region=Trim(RS("region"))
			completed=Trim(RS("completed"))
			companiesCount=Trim(RS("companies"))
			''If session("isMCP") = "Y" Then
			  Segment_List = Trim(RS("Segments_Covered"))
			''End if
			session("ReportTitle") = (Trim(RS("title")))
			RPT_MCP_CODE = Trim(RS("code"))
	End If
	set RS = nothing
	set conn = Nothing
	session("giacode")=giacode
	
	intRptID = Trim(request("code"))
	code = Trim(request("code"))
	strReportTitle = trim((strReportTitle)) 
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
intRptID = giacode1
	code = giacode1
	strReportTitle = trim((strReportTitle)) 
	''intReportCode = session("ReportCode") 

	
	If Trim(request("code"))<>"" Then
		If session("ReportCode") ="" then
		   session("ReportCode") = Trim(request("code"))		   
		End If
	Else
		session("ReportCode") = ""
	End If
daydisplay=WeekDayName(Weekday(Now())) & ","
'''response.write trim(session("security_code"))

Function SelectRadio(val1,val2)
 	IF trim(val1) = trim(val2) then
		SelectRadio = " Checked"
	else
		SelectRadio = ""
	End IF
END Function
%>
<script>
function showconfirm(){
				alert("Successfully Completed.");
			}
function Addinfluence_moduletoDB(sno,code,encid,relval)
{
	
	var vsno= sno;
	var vGiaCode = code;
	var vencID = encid;
	var relval=relval;
	
	//undefined
	//alert (vtxtRegionVal);
	
		if((relval!="") && (relval!==undefined) && (vencID!="") && (vGiaCode!=""))
		{ 
			//alert (vtxtRegionVal);
			//alert (RegionName);
			///ReportCode = '"&trim(request("vGiaCode"))&"' and eNcID ='"&trim(request("vencID"))&"' and Country_Name ='"&trim(request("vRegion"))&"'" 
			$.ajax({
					url: "Ajax_AddGIA_Research_Feedback_Region.asp",
					type: "POST",
					data:'vRegion='+encodeURIComponent(RegionName)+'&Country_Name='+encodeURIComponent(vtxtRegionVal)+'&vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'', 		
					success: function(data){
					//alert(data);
					alert("Country Added Sucessfully");
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
			alert('Country not selected to be added to the region - '+RegionName);
		}	
	}
	function sendfactorMail(code)
{
	var vCheckval = $('input[id="factormail"]:checked').val();
	//alert (vCheckval);
	
		if((vCheckval!="") && (vCheckval!==undefined) )
		{ 
			//alert (vCheckval);
			//alert (RegionName);
			///ReportCode = '"&trim(request("vGiaCode"))&"' and eNcID ='"&trim(request("vencID"))&"' and Country_Name ='"&trim(request("vRegion"))&"'" 
			$.ajax({
					url: "Ajax_send_factormail.asp",
					type: "POST",
					data:'vcode='+encodeURIComponent(code)+'', 		
					success: function(data){
					//alert(data);
					alert("Mail Sent Successfully.");
					parent.location.reload();
					},
					error: function (xhr, ajaxOptions, thrownError) {
					alert(xhr.status);
					alert(thrownError);
					alert(xhr.responseText);
					}
				  });
		} 
		
	}
	
	
	function addMSRelevance(vencID,vcode,vrelevance,vrid) 
	{	 

		/*alert(vencID);
		alert(vcode);
		alert(vrelevance);
		alert(vrid);*/
        
		if((vencID!="") && (vcode!==undefined) && (vcode!="") && (vcode!==undefined) && (vrelevance!="") && (vcode!==undefined)  && (vrid!="") && (vrid!==undefined))
		{ 
		 // alert(vrelevance);
		  
		  $.ajax({
					url: "Ajax_AddRMrelevance.asp",
					type: "POST",
					data:'vencID='+encodeURIComponent(vencID)+'&vcode='+encodeURIComponent(vcode)+'&vrelevance='+encodeURIComponent(vrelevance)+'&vrid='+encodeURIComponent(vrid)+'', 		
					success: function(data){
					//alert(data);
					//alert("Country Added Sucessfully");
					//parent.location.reload();
					},
					error: function (xhr, ajaxOptions, thrownError) {
					alert(xhr.status);
					alert(thrownError);
					alert(xhr.responseText);
					}
				  });
		}
		
		
   }
	</script>
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
                        <div class="logo_text px-4">
                            
							<img src="images/strategyr_logo.svg" class="strategyrR_logo text-center mx-auto" style="width:210px !important;">
							
                         </div>
                        <!--<div class="sixteen columns head_title_block text-center  d-flex justify-content-center">
                            <h2 style="font-weight:bold; color:#900;line-height: 23px;" class="mt-2 font-size-20"> <%=strReportTitle%>&nbsp; (<%=code%>)</h2>
                        </div>-->
                        <div class="mobile_display" style="text-align:center; width:100% !important"> <img src="https://www.strategyr.com/resize_img/sig_100.jpg" alt="GIA" class="logo signatrue_logo" style="width:90px; height:auto; margin:0 auto; padding-top:10px"> </div>
                    </div>
					<div class="row site_tag_line mx-4 mb-2 d-md-none d-sm-none">
						StrategyR is a trade mark of Global Industry Analysts, Inc. USA
					</div>
					<div class="row site_tag_line mx-4 mb-2 d-lg-none d-xl-none">
						A trade mark of Global Industry Analysts, Inc.
					</div>
                </header>
				<hr>
				<%title=strReportTitle%>
				<!--#INCLUDE FILE="newReportTitle_New1.asp" -->
                <!---- END : HEADER SECTION ---->
                <!---Begin: Main Content--->
				<div class="container">
                <main >
				
				
		<form name="frmadd" method="post" >			

	<!--include file="Lables_new.asp"-->
	<!--#include file="module_menus.asp"-->
					<div class="w-100  text-center  modules_page_title text-center"> <h3 >TRENDS</h3></div>
					
					<%
					Set Conn = Server.CreateObject("ADODB.Connection")
					Set RS = Server.CreateObject("ADODB.Recordset")
					Conn.Open DataSource20					
					''''SQL = "SELECT * FROM rp_flf WHERE CODE='" & RPT_MCP_CODE & "' and [is_competition]='false'"  ''and [hashTags/0/name]='Trends' 
					SQL = "SELECT * FROM rp_flf WHERE CODE='" & RPT_MCP_CODE & "' and [is_competition]='false'" '' and ([is_competition]='' OR [is_competition]='false' OR [is_competition] IS NULL)"
					Dim selRELEVANCY
					'response.write sql
					RS.Open SQL, conn,1,2
					If Not RS.EOF Then
					
					
					%>
					<div  >
								
								<div class=" w-100 text-center mt-2"><!--<h3>MARKET SHARES <br/> SEGMENT: <%=trim(ucase(segmentname_Current))%><br/> REGION: <%=UCase(cname_Current)%></h3>--></div>
									
										<div class="table-responsive">
											<table border="0px" align="center" cellpadding="0px" cellspacing="0px" class="table table-bordered mx-auto w-lg-80 w-xl-80 w-md-100"  id="tbUser">
												  <thead style="font-weight:bold;">
													<tr>
													  <th class="table-header p-1" style="width:80%;vertical-align: inherit;">TREND</th>													
													   <th class="table-header p-1" style="width:20%">
    
															<div class="w-100 d-flex flex-column justify-content-center">
															<div class="w-100">
																RELEVANCE 
															 </div>															 
																<div class="w-100 d-flex justify-content-center mt-1">																	
																   <span class="mx-2" style="width: 32px;">H<i class="fa fa-info-circle text-primary   message tooltippopup mx-1 " title="HIGH"></i></span>
																	<span class="mx-2" style="width: 35px;">M<i class="fa fa-info-circle text-primary   message tooltippopup mx-1 " title="Moderate"></i></span>																	
																	<span class="mx-2" style="width: 50px;">N/A<i class="fa fa-info-circle text-primary   message tooltippopup mx-1 " title="N/A"></i></span>   
																</div>
															</div>
														</th>
													   <%														
																While not RS.EOF
																selRELEVANCY =""
																	RecChkSQL = "SELECT * FROM rp_msmdls WHERE ref_ID = '"&trim(RS("id"))&"' and encid ='"&trim(request("encID"))&"' and code ='"&trim(request("code"))&"' and  email='"&session("EID")&"'"
																					
																	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
																	RecChkRS.Open RecChkSQL, Conn
																	If Not RecChkRS.EOF Then
																	  selRELEVANCY = RecChkRS("RELEVANCY")
																	End If	
																   ''response.write(selRELEVANCY)
																      
																	''response.write "<a href='"&trim(RS("url"))&"' target='_new'>"&RS("title")&"</a><br/>"
																	response.write("<tr class='table-row' id='table-row-"&RS("id") &"'><td width='360px !important;' ><a href='"&trim(RS("url"))&"' target='_new'>"&RS("title")&"</a></td>")
																	response.write("<td><div class='w-100'><div class='d-flex justify-content-center'><div style='text-align:center; width:35px; margin:0px 5px;'>")%>
																	<input type='radio' name='Relevancy_<%=trim(RS("id"))%>' id='High_<%=trim(RS("id"))%>' value='High' <%=SelectRadio(selRELEVANCY,"High")%> onClick="addMSRelevance('<%=trim(request("encID"))%>','<%=trim(request("code"))%>','High','<%=trim(RS("id"))%>');">
																	<%'response.write("<span style='margin-top:0px;'>High </span>")
																	response.write("</div>")
																	response.write("<div style='text-align:center; width:50px; margin:0px 5px;'>")%>
																	<input type='radio' id='Moderate_<%=trim(RS("id"))%>'  name='Relevancy_<%=trim(RS("id"))%>' value='Moderate' <%=SelectRadio(selRELEVANCY,"Moderate")%>  onClick="addMSRelevance('<%=trim(request("encID"))%>','<%=trim(request("code"))%>','Moderate','<%=trim(RS("id"))%>');">																
																	<%'response.write("<span style='margin-top:0px;'>Moderate</span></div>")
																	response.write("</div>")
																	response.write("<div class='d-flex '>")
																	response.write("<div style='text-align:center; width:50px; margin:0px 5px;'>")%>
																	<input type='radio' name='Relevancy_<%=trim(RS("id"))%>' id='Irrelevant_<%=trim(RS("id"))%>' value='Irrelevant'  <%=SelectRadio(selRELEVANCY,"Irrelevant")%>  onClick="addMSRelevance('<%=trim(request("encID"))%>','<%=trim(request("code"))%>','Irrelevant','<%=trim(RS("id"))%>');">
																	<%'response.write("<span style='margin-top:0px;'>N/A</span></div>")
																	'response.write("<div class='w-50 text-left'>")%>
																	<!--input type='radio'  name='Relevancy_<%=trim(RS("id"))%>' id='Incorrect_<%=trim(RS("id"))%>' value='Incorrect'  <%=SelectRadio(selRELEVANCY,"Incorrect")%> onClick="addMSRelevance('<%=trim(request("encID"))%>','<%=trim(request("code"))%>','Incorrect','<%=trim(RS("id"))%>');"--> 
																	<%''response.write("<span style='margin-top:0px;'>Incorrect</span>")
																	'response.write("</div>")
																	response.write("</div>")
																	response.write("</div></td></tr>")														
																RS.movenext
																wend
														%>								
															
												</thead>
											</table>
												</div>
								</div>										 
								
					</div>
							
					<%Else%>
                    <section class='mt-4'>
						<div class="row  mx-0  mt-3 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                            <input data-brackets-id="62784" type="checkbox"  name="factormail" id="factormail" onclick="sendfactorMail('<%=Trim(request("code"))%>');" value="Yes"> Please alert me when this is available.
                        </div>
                    </section>
					<%End If
														set RS = nothing
														set conn = Nothing
														%>
					
					<div class="w-100 text-center mb-0">
                        <!--button class="btn btn-gia-primary text-white rounded-0 shadow m-3 font-weight-bold p-2"   onclick="showconfirm();" >SUBMIT </button-->
                        <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
                    </div>
                    <!---- COPY UP TO HERE------>

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
<!--#include file="ASPIncludes/BottomStrip_module.asp"-->
<!---footer_end-->
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
function OpenOthBrands(cp,mcp,encid){
myWin = open("OtherBrandModule.asp?code="+mcp+"&cp="+cp+"&encid=" +encid,"Globind","width=800,height=700,status=no,toolbar=no,menubar=no,scrollbars=no");
}
</script>
</html>
