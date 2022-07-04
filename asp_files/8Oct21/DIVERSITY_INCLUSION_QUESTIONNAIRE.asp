<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
<!--#INCLUDE FILE="ADOVBS.asp" -->
<!--#INCLUDE FILE="aspincludes/dbopen.asp" -->
<!-- Basic Page Needs
<%
'''Website -- Sorry, the servers are under maintenance. Please try again

''Response.write ("Sorry, the servers are under maintenance. Please try again")
''response.end
%>
================================================== -->
<meta charset="utf-8">
<title>Market Research Report Collections - Global Industry Analysts, Inc. - Official Website</title>
<meta name="description" content="Official Website - Global Industry Analysts, Inc. (GIA) is a reputed publisher of off-the-shelf market research. Recognized as one of the most consistently accurate forecasting company in the world, GIA currently serves more than 9,500 companies from 36 countries worldwide. The company was founded in 1987, initially recognized globally as a research boutique specializing in the medical industry. Over the past 25 years, the company expanded its coverage and now publishes extensively upon more than 180 major industries."/>
<meta name="keywords" content="Market Research, Market Research Reports, Global Strategic Business Reports, multi-client research programs, Market Trend Reports, Global Industry Outlooks" />
<meta name="p:domain_verify" content="e373fc05e5338589a9a20fa7eb8cbeea"/>
<meta name="robots" content="index, follow" />
<meta name="classification" content="Market Research reports" />
<meta name="revisit-after" content="5 days" />
<meta name="author" content="strategyr.com" />
<meta name="identifier-url" content="www.strategyr.com" />
<meta name="distribution" content="Global" />
<meta name="coverage" content="Worldwide" />
<meta name="rating" content="General" />
<meta name="language" content="English" />
<meta http-equiv="Keep-Alive" content="300">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<meta name="p:domain_verify" content="2d36e07dec67d2a8d0bea712d690fe78"/>
<meta name="google-site-verification" content="Bde3xUPGs4PkgWyVdVlJ_fHl_VITc2uZv5niZBQb4Pw" />
 <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</head>
<body leftmargin=0 rightmargin=0 topmargin=0 bottommargin=0 onBeforePrint="document.body.style.display='none'" onAfterPrint="document.body.style.display=''" onContextmenu="return false" onSelectstart="return false" onDragstart="return false" >
<link rel="stylesheet" href="css/giaslider_css.css">
<link rel="stylesheet" href="css/owl/owl.carousel.css">
<link rel="stylesheet" href="css/owl/owl.theme.green.css">
<link rel="stylesheet" href="css/owl/owl.theme.default.css">
<link rel='stylesheet' href="css/eco_systems.css" async>
<link rel='stylesheet' href="css/animate.css" async>
<link rel='stylesheet' href="css/QUESTIONNAIRE_STYLE.CSS" async>
<link rel="stylesheet" href="css/jquery.range.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


<style>
input::-webkit-input-placeholder,
 textarea::-webkit-input-placeholder
 {
    color: #000 !important;
}

 input::-webkit-input-placeholder,
 textarea::-webkit-input-placeholder

{
    color: #ccc !important;
}


.blocker{
    z-index: 9999999;
}
      
 </style>
<div id="wrapper" class="bor-radius"> 
<%

Function SelectRadio(val1,val2)
 	IF trim(val1) = trim(val2) then
		SelectRadio = " Checked"
	else
		SelectRadio = ""
	End IF
END Function
Function checked(val1,val2)
		IF trim(val1) = trim(val2) Then		
			checked = "checked"
		else
			checked = ""
		End IF
	END Function
%>
<script type="text/javascript">

function Redirect(){
<%
		
		
		
			if (((trim(Request("chksearch"))="Title & Keywords") or (trim(Request("chksearch"))="Only Report Title")) and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("showsearchNew.asp?search="&Request("search"))
			End if 

			if ((trim(Request("chksearch"))="Company Names") and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("ShowCompaniesList.asp?search="&Request("search")&"&PageView=Show")
				
			End if 
		
	%>
}

function isNumberKey(evt, element) {
  var charCode = (evt.which) ? evt.which : event.keyCode
  if (charCode > 31 && (charCode < 48 || charCode > 57) && !(charCode == 46 || charCode == 8))
    return false;
  else {
    var len = $(element).val().length;
    var index = $(element).val().indexOf('.');
    if (index > 0 && charCode == 46) {
      return false;
    }
    if (index > 0) {
      var CharAfterdot = (len + 1) - index;
      if (CharAfterdot > 2) {
        return false;
      }
    }

  }
  return true;
}

function AddQuestionermsg() {

    var vfName =  $("#txtFirstName").val();
	var vlName = $("#txtLastName").val();
	var vEmail = $("#txtEmail").val();
	var vCPCode = $("#txtCpcode").val();
        // alert(vCPCode);		
	  if (vfName != null && vfName != '' && vlName != null && vlName != '' && vEmail != null && vEmail != '')
		  { 
		   // alert("Data Updated Sucessfully");
			$.ajax({
				url: "Ajax_AddDEIUSERQuestioner.asp",
				type: "POST",
				data:'vfName='+encodeURIComponent(vfName)+'&vlName='+encodeURIComponent(vlName)+'&vEmail='+encodeURIComponent(vEmail)+'&vCPCode='+encodeURIComponent(vCPCode)+'', 				
				success: function(data){
				//alert(data);
				 alert("Data Updated Sucessfully");
					
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
			 alert("All fields are mandatory and cannot be left blank");
		    }
}
function AddQuestioner(vQno,vQtxt,vSubtitle,vSelOption,vsRank,vsComments,vsQno) {	 

//alert(vsQno);
  
 var vfName =  $("#txtFirstName").val();
	 var vlName = $("#txtLastName").val();
	  var vEmail = $("#txtEmail").val();	  
	   var vCPCode = $("#txtCpcode").val();	   
	   var vRank;
	   if (vsRank != '0')
	   {	   
	     vRank = $("#"+vsRank).val();
       }	
       else{
	   vRank ='0'
	   }	   
	 
	 var vComments = vsComments.replace("'", "‘");

  
 
  // var vcpCode = cpcode;
	// var vMCPcode = mcpcode;
	 
    // var vtxtRval = $("#Rank"+vcpCode).val();
	// var vtxtRtype = "Rtype" + vcpCode;
	// var varqualitative=  $('input[id="qualitative"]:checked').val(); 
	 // alert (vtxtRank);
	// var vtxtRtype=  $('input[id='+vtxtRtype+']:checked').val(); 
	// alert(vtxtRtype);
	 // alert(vtxtRval);
	//alert("Data Saved");
		if (vQtxt != null && vQtxt != '' && vQno != null && vQno != '')
		  {  
			// alert(vtxtRval);
			 $.ajax({
				url: "Ajax_AddDEIQuestioner.asp",
				type: "POST",
				data:'vQno='+encodeURIComponent(vQno)+'&vQtxt='+encodeURIComponent(vQtxt)+'&vSubtitle='+encodeURIComponent(vSubtitle)+'&vSelOption='+encodeURIComponent(vSelOption)+'&vRank='+encodeURIComponent(vRank)+'&vComments='+encodeURIComponent(vComments)+'&vfName='+encodeURIComponent(vfName)+'&vlName='+encodeURIComponent(vlName)+'&vEmail='+encodeURIComponent(vEmail)+'&vCPCode='+encodeURIComponent(vCPCode)+'&vsQno='+encodeURIComponent(vsQno)+'', 				
				success: function(data){
				//alert(data);
				//alert("Data Updated Sucessfully");
					
				},
				error: function (xhr, ajaxOptions, thrownError) {
				alert(xhr.status);
				alert(thrownError);
				alert(xhr.responseText);
				}
			  });
			} 
			 // else
			 // {
				//alert('Value cannot be left blank');
			//  }		
		 

        
		}
		
function AddQuestionerforCHK(vQno,vQtxt,vSubtitle,vSelOption,vsRank,vsComments,vsQno,vChkName) {	 

//alert(vsQno);
  
 var vfName =  $("#txtFirstName").val();
	 var vlName = $("#txtLastName").val();
	  var vEmail = $("#txtEmail").val();	  
	   var vCPCode = $("#txtCpcode").val();	   
	   var vRank;
	   if (vsRank != '0')
	   {	   
	     vRank = $("#"+vsRank).val();
       }	
       else{
	   vRank ='0'
	   }	   
	 
	 var vComments = vsComments.replace("'", "‘");

  
  var vChkNameval
  // var vcpCode = cpcode;
	// var vMCPcode = mcpcode;
	 
    // var vtxtRval = $("#Rank"+vcpCode).val();
	// var vtxtRtype = "Rtype" + vcpCode;	              
	// var varqualitative=  $('input[id="exampleRadios21"]:checked')
	//alert (varqualitative);
	
	if($("#"+vChkName).is(":checked"))
	{
	  vChkNameval="checked";
	}
	else
	{
	  vChkNameval="unchecked";
	}
	//alert(vChkNameval);
	// var vtxtRtype=  $('input[id='+vtxtRtype+']:checked').val(); 
	// alert(vtxtRtype);
	 // alert(vtxtRval);
	//alert("Data Saved");
		if (vQtxt != null && vQtxt != '' && vQno != null && vQno != '')
		  {  
			// alert(vtxtRval);
			 $.ajax({
				url: "Ajax_AddDEIQuestionerCHK.asp",
				type: "POST",
				data:'vQno='+encodeURIComponent(vQno)+'&vQtxt='+encodeURIComponent(vQtxt)+'&vSubtitle='+encodeURIComponent(vSubtitle)+'&vSelOption='+encodeURIComponent(vSelOption)+'&vRank='+encodeURIComponent(vRank)+'&vComments='+encodeURIComponent(vComments)+'&vfName='+encodeURIComponent(vfName)+'&vlName='+encodeURIComponent(vlName)+'&vEmail='+encodeURIComponent(vEmail)+'&vCPCode='+encodeURIComponent(vCPCode)+'&vsQno='+encodeURIComponent(vsQno)+'&vChkNameval='+encodeURIComponent(vChkNameval)+'', 				
				success: function(data){
				//alert(data);
				//alert("Data Updated Sucessfully");
					
				},
				error: function (xhr, ajaxOptions, thrownError) {
				alert(xhr.status);
				alert(thrownError);
				alert(xhr.responseText);
				}
			  });
			} 
			 // else
			 // {
				//alert('Value cannot be left blank');
			//  }		
		 

        
		}

</script>
<!-- Wrapper  Start -->

			<!-----TOP START----->               
			<!--#include file="ASPIncludes/TopStrip.asp"-->
			<!-----TOP START END----->
<script src="scripts/owl/owl.carousel.js"></script>
<!-- Body Start here -->

<!-- jQuery UI library -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<style>
 .ui-autocomplete
 {
 max-height:200px;
/* height:300px !important;
 overflow:hidden;*/
 overflow-x: scroll;
 }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

	
	<script type="text/javascript">
	function Redirect(){
	<%
		
		
		
			if (((trim(Request("chksearch"))="Search by keyword or Company") or (trim(Request("chksearch"))="Only Report Title")) and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("showsearchNew.asp?search="&Request("search"))
			End if 

			if ((trim(Request("chksearch"))="Company Names") and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("ShowCompaniesList.asp?search="&Request("search")&"&PageView=Show")
				
			End if 
		
	%>
	}
	
	function callsubmit()
	{
		alert ("Thank you. Your data has been submitted successfully")
	}
	</script>
	 
				  
<%
code =request("code")
%>
<!-- Categories for home page Start -->

<div class="container ">
	 <!---BEGN REPORT TITLE--->
			<!--INCLUDE FILE="newReportTitle_New1.asp" -->
        <!---END REPORT TITLE--->					

	<div class="w-100">
		<div class="row mb-0 mx-0">
			<div class="w-100 text-left mb-2 ">
				<!--<h3 class="text-primary text_orange font-weight-bold m-0 line-height-normal mt-3 text-center mb-2">DIVERSITY INCLUSION EQUITY</h3>-->
					
				<!--	<a style="font-size:18px; font-weight:bold;padding:10px;cursor: pointer;color: #007bff;" class="text-center">VIEW MORE</a> -->
			</div>
			<!-- <div class="d-flex flex-md-row flex-sm-row  justify-content-center flex-lg-nowrap flex-xl-nowrap flex-md-nowrap flex-sm-wrap"
                                        id="company_page_btn">
                                        <a  class="btn rounded-0 p-2 font-weight-bold position-relitive " data-toggle="collapse" href="#questionnaire" role="button" aria-expanded="false" aria-controls="questionnaire"  style="
                                        color: #169FE6 !important;
                                        ">
                                        DIVERSITY INCLUSION EQUITY <span style="color:#000"
                                        title="  DIVERSITY INCLUSION EQUITY  "><i class="fa fa-info-circle"
                                        style="color:#169FE6"></i></span>
                                        </a>
                                        <span class="p-2 d-none d-lg-block d-xl-block d-md-block">|</span>
                                        <a href="#" class="btn rounded-0 p-2 font-weight-bold  position-relitive " type="button"
                                        style="
                                        color: #169FE6 !important;
                                        ">
                                        EXPERT PANELS <span style="color:#000" title=" EXPERT PANELS  "><i
                                        class="fa fa-info-circle" style="color:#169FE6"></i></span>
                                        </a>
                                    </div>-->
                                <!---END LINKS-->

                            <!---BEGIN:COLLAPSE-->
                                <div class="show  my-3 w-100 p-0" id="questionnaire">

                                    <!---BEGIN:HEADING-->
                                    <div class="shadow-sm border position-relitive" id="questionnaire_block">
                                            <div class="row text-primary  w-100 pb-2 mt-3 mb-0 text-center mt-0" id="questionnaire_title">
                                                    <h1 class="font-weight-bold  line-height-normal">DIVERSITY - EQUITY - INCLUSION</h1>
													<h2 class="font-weight-bolder line-height-normal">VALIDATED EMPLOYEE SURVEY</h2>
													
                                            </div>
                                            <h3 class="d-block w-xl-95 w-lg-95 w-md-100 w-sm-100 w-100 mx-auto mt-0 mb-2 p-2 " style="font-style: italic; line-height: normal; font-size: 15px !important;">Privacy - Participants’ identities are never disclosed. Analyses by industry, rankings by company, and related trends and stats are published.
                                            </h3>
                                                        </h3>
                                            <hr/>

                                            <!---QUESTION START HERE-->
                                            <div class="mt-2 w-100">

                                                <form id="examwizard-question2">

                                                    <!---1ST QUESTION-->
                                                    <div class="question mt-2 mb-3 p-2 " data-question="1">
                                                    
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 1.</span>

                                                                <span class="question_span ">
                                                                <h4 class="question-title">Right now Global Industry Analysts, Inc. does not have an established definition of DEI as we know it differs for every organization. We encourage you to share your own unique definition in the context of your organization’s goals and mission. 
																   
																</h4>
                                                                </span>
                                                             </div>
                                                            </div>

                                                            <div class="w-100 mt-2">
                                                                <textarea class="form-control  text-area-block" id="Q1" name="Q1"  onchange="AddQuestioner('1','Right now Global Industry Analysts, Inc. does not have an established definition of DEI as we know it differs for every organization. We encourage you to share your own unique definition in the context of your organization`s goals and mission.','no-comment','no','0',this.value,'0')" rows="2"></textarea>
                                                            </div>
                                                        
                                                    </div>

                                                    <!---2ND QUESTION-->
                                                    <div class="question mt-2 mb-3 p-2" data-question="2">
                                                        <div class="w-100  p-2 ">
                                                            <div class="d-flex">
                                                                <span class="no_span "> 2.</span>
                                                                <span class="question_span ">
                                                            <h4 class="question-title">Does your company’s DEI program  cover the following </h4>
                                                            </span>
                                                            </div>

                                                             <ul class="mt-2 list">
                                                                <!---2.1 -->
                                                              <li class="d-flex flex-column">

                                                                <div class="w-100 mb-2 border-bottom mt-3">
                                                                <div class="d-flex mb-1 flex-lg-nowrap flex-xl-nowrap flex-md-wrap flex-sm-wrap flex-wrap ">
                                                                    <div class="d-flex six columns mb-2 ml-0">
                                                                            <span class="mr-1 ">a. </span> <span class="question_span">Recruitment</span>
                                                                    </div>

                                                                    <div class="eight columns mb-2 ">
                                                                        <div class="d-flex mb-2   ">
                                                                            <div class="mr-1 d-flex ">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup1" type="radio" value="yes"  onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Recruitment','Yes','Q2aRank','','a')"> </span>  
                                                                                <span class="question_span ml-0 ">Yes      </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup1"  type="radio"  value="no" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Recruitment','No','0','','a')"> </span> 
                                                                                <span class="question_span ml-0 ">No  </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup1"  type="radio"   value="Don`t Know" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Recruitment','Don`t Know','0','','a')"> </span> 
                                                                                <span class="question_span ml-0 ">Don't Know </span> 
                                                                            </div>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="px-2 mt-2 panel-collapse collapse pb-2" id="collapse1" >
                                                                  <input type="hidden" class="single-slider" id="Q2aRank" name="Q2aRank" value="6"  onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Recruitment','Yes','Q2aRank','','a')"/>
                                                                </div>

                                                                </div>

                                                              </li>

                                                              <!---2.2 -->
                                                              <li class="d-flex flex-column">

                                                                
                                                                <div class="w-100 mb-2 border-bottom">
                                                                <div class="d-flex mb-1 flex-lg-nowrap flex-xl-nowrap flex-md-wrap flex-sm-wrap flex-wrap ">
                                                                    <div class="d-flex six columns mb-2 ml-0">
                                                                            <span class="mr-1">b. </span> <span class="question_span">Training and Educating People</span>
                                                                    </div>

                                                                    <div class="eight columns mb-2 ">
                                                                        <div class="d-flex mb-2   ">
                                                                            <div class="mr-1 d-flex ">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup2" type="radio" value="yes" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Training and Educating People','Yes','Q2bRank','','b')"> </span> 
                                                                                <span class="question_span ml-0 ">Yes      </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup2" type="radio"  value="no" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Training and Educating People','No','0','','b')"> </span> 
                                                                                <span class="question_span ml-0 ">No  </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup2" type="radio"   value="Don`t Know" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Training and Educating People','Don`t Know','0','','b')"> </span> 
                                                                                <span class="question_span ml-0 ">Don't Know    </span> 
                                                                            </div>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="px-2 mt-2 panel-collapse collapse pb-2" id="collapse2" >
                                                                  <input type="hidden" class="single-slider" value="6" id="Q2bRank" name="Q2bRank" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Training and Educating People','Yes','Q2bRank','','b')"/>
                                                                </div>

                                                                </div>

                                                              </li>

                                                               <!---2.3 -->
                                                               <li class="d-flex flex-column">

                                                                
                                                                <div class="w-100 mb-2 border-bottom">
                                                                <div class="d-flex mb-1 flex-lg-nowrap flex-xl-nowrap flex-md-wrap flex-sm-wrap flex-wrap ">
                                                                    <div class="d-flex six columns mb-2 ml-0">
                                                                            <span class="mr-1 ">c. </span> <span class="question_span">Empowering Employees </span>
                                                                    </div>

                                                                    <div class="eight columns mb-2 ">
                                                                        <div class="d-flex mb-2   ">
                                                                            <div class="mr-1 d-flex ">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup3" type="radio" value="yes" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Empowering Employees','Yes','Q2cRank','','c')"> </span> 
                                                                                <span class="question_span ml-0 ">Yes      </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup3" type="radio"  value="no" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Empowering Employees','No','0','','c')"> </span> 
                                                                                <span class="question_span ml-0 ">No  </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup3" type="radio"   value="Don`t Know" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Empowering Employees','Don`t Know','0','','c')"></span> 
                                                                                <span class="question_span ml-0 ">Don't Know    </span> 
                                                                            </div>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="px-2 mt-2 panel-collapse collapse pb-2" id="collapse3" >
                                                                  <input type="hidden" class="single-slider" id="Q2cRank" name="Q2cRank"  value="6" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Empowering Employees','Yes','Q2cRank','','c')"/>
                                                                </div>

                                                                </div>

                                                              </li>

                                                               <!---2.4 -->
                                                               <li class="d-flex flex-column">

                                                                
                                                                <div class="w-100 mb-2 border-bottom">
                                                                <div class="d-flex mb-1 flex-lg-nowrap flex-xl-nowrap flex-md-wrap flex-sm-wrap flex-wrap ">
                                                                    <div class="d-flex six columns mb-2 ml-0">
                                                                            <span class="mr-1 ">d. </span> <span class="question_span">Rethinking Workforce Policies</span>
                                                                    </div>

                                                                    <div class="eight columns mb-2 ">
                                                                        <div class="d-flex mb-2   ">
                                                                            <div class="mr-1 d-flex ">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup4" type="radio" value="yes" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Rethinking Workforce Policies','Yes','Q2dRank','','d')"> </span> 
                                                                                <span class="question_span ml-0 ">Yes      </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup4" type="radio"  value="no" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Rethinking Workforce Policies','No','0','','d')"> </span> 
                                                                                <span class="question_span ml-0 ">No  </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup4" type="radio"   value="Don`t Know" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Rethinking Workforce Policies','Don`t Know','0','','d)"> </span> 
                                                                                <span class="question_span ml-0 ">Don't Know    </span> 
                                                                            </div>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="px-2 mt-2 panel-collapse collapse pb-2" id="collapse4" >
                                                                  <input type="hidden" class="single-slider" id="Q2dRank" name="Q2dRank" value="6" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Rethinking Workforce Policies','Yes','Q2dRank','','d')"/>
                                                                </div>

                                                                </div>

                                                              </li>

                                                               <!---2.5 -->
                                                               <li class="d-flex flex-column">

                                                                
                                                                <div class="w-100 mb-2 border-bottom">
                                                                <div class="d-flex mb-1 flex-lg-nowrap flex-xl-nowrap flex-md-wrap flex-sm-wrap flex-wrap ">
                                                                    <div class="d-flex six columns mb-2 ml-0">
                                                                            <span class="mr-1 ">e. </span> <span class="question_span">Communicating Inclusion Goals and Measuring Progress </span>
                                                                    </div>

                                                                    <div class="eight columns mb-2 ">
                                                                        <div class="d-flex mb-2  ">
                                                                            <div class="mr-1 d-flex ">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup5" type="radio" value="yes"  onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Communicating Inclusion Goals and Measuring Progress','Yes','Q2eRank','','e')"> </span> 
                                                                                <span class="question_span ml-0 ">Yes      </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup5" type="radio"  value="no" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Communicating Inclusion Goals and Measuring Progress','no','0','','e')"> </span> 
                                                                                <span class="question_span ml-0 ">No  </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup5" type="radio"   value=">Don`t Know" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Communicating Inclusion Goals and Measuring Progress','Don`t Know','0','','e')"> </span> 
                                                                                <span class="question_span ml-0 ">Don't Know    </span> 
                                                                            </div>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="px-2 mt-2 panel-collapse collapse pb-2" id="collapse5" >
                                                                  <input type="hidden" class="single-slider" id="Q2eRank" name="Q2eRank" value="6" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Communicating Inclusion Goals and Measuring Progress','Yes','Q2eRank','','e')"/>
                                                                </div>

                                                                </div>

                                                              </li>

                                                               <!---2.6 -->
                                                               <li class="d-flex flex-column">

                                                                
                                                                <div class="w-100 mb-2 border-bottom">
                                                                <div class="d-flex mb-1 flex-lg-nowrap flex-xl-nowrap flex-md-wrap flex-sm-wrap flex-wrap ">
                                                                    <div class="d-flex six columns mb-2 ml-0">
                                                                            <span class="mr-1 ">f. </span> <span class="question_span">Celebrating Individual Differences</span>
                                                                    </div>

                                                                    <div class="eight columns mb-2 ">
                                                                        <div class="d-flex mb-2   ">
                                                                            <div class="mr-1 d-flex ">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup6" type="radio" value="yes" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Celebrating Individual Differences','Yes','Q2fRank','','f')"> </span> 
                                                                                <span class="question_span ml-0 ">Yes      </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup6" type="radio"  value="no" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Celebrating Individual Differences','no','0','','f')"> </span> 
                                                                                <span class="question_span ml-0 ">No  </span> 
                                                                            </div>
        
                                                                            <div class="mr-1 d-flex">
                                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup6" type="radio"   value="no" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Celebrating Individual Differences','no','Don`t Know','','f')"> </span> 
                                                                                <span class="question_span ml-0 ">Don't Know    </span> 
                                                                            </div>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="px-2 mt-2 panel-collapse collapse pb-2" id="collapse6" >
                                                                  <input type="hidden" class="single-slider" id="Q2fRank" name="Q2fRank" value="6" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','Celebrating Individual Differences','Yes','Q2fRank','','f')" />
                                                                </div>

                                                                </div>

                                                              </li>

                                                             

                                                             </ul>

                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <div class="w-100 left_margin">
                                                                <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_02" aria-expanded="false" aria-controls="collapseOne" class="d-flex align-items-center">
                                                                    <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                                </label>
                                                            </div>
                                                            <div id="comment_02" aria-expanded="false" class="collapse">
                                                                <textarea class="form-control  text-area-block" id="Q2txt" name="Q2txt" rows="2" onchange="AddQuestioner('2','Does your company`s DEI program  cover the following','no-comment','no','0',this.value,'0','0')" ></textarea>
                                                            </div>
                                                        </div>
                                                    </div>

                                                   
                                                    <!---3RD QUESTION-->
                                                    <div class="question mt-2 mb-3 p-2" data-question="3">
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 3.</span>
                                                                    <span class="question_span ">
                                                                    <h4 class="question-title">How willing are top tier C-level executives in your company to embrace DEI and take meaningful action? </h4>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="w-100 mt-2">
                                                                <div class="d-flex mb-2 flex-wrap left_margin ">
                                                                    <div class="mr-1 d-flex ">
                                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup7" type="radio"   value="yes" onchange="AddQuestioner('3','How willing are top tier C-level executives in your company to embrace DEI and take meaningful action?','no','Yes','Q3Rank','','0')"> </span> 
                                                                        <span class="question_span ml-0 ">Very Willing      </span> 
                                                                    </div>

                                                                    <div class="mr-1 d-flex">
                                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup7" type="radio"   value="no" onchange="AddQuestioner('3','How willing are top tier C-level executives in your company to embrace DEI and take meaningful action?','no','No','0','','0')"></span> 
                                                                        <span class="question_span ml-0 ">Not Willing    </span> 
                                                                    </div>

                                                                    <div class="mr-1 d-flex">
                                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup7" type="radio"   value="no" onchange="AddQuestioner('3','How willing are top tier C-level executives in your company to embrace DEI and take meaningful action?','no','Don`t Know','0','','0')"> </span> 
                                                                        <span class="question_span ml-0 ">Don't Know    </span> 
                                                                    </div>

                                                                    

                                                                    
                                                                </div>
                                                            </div>
                                                            <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse7">
                                                                <input type="hidden" class="single-slider" id="Q3Rank" value="6" onchange="AddQuestioner('3','How willing are top tier C-level executives in your company to embrace DEI and take meaningful action?','no','Yes','Q3Rank','','0')"/>
                                                            </div>
                                                            <div class="w-100 left_margin">
                                                                <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_03" aria-expanded="false" aria-controls="collapseOne">
                                                                    <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                                </label>
                                                            </div>
                                                            <div id="comment_03" aria-expanded="false" class="collapse">
                                                                <textarea class="form-control  text-area-block" id="Q3txt"  rows="2"  onchange="AddQuestioner('3','How willing are top tier C-level executives in your company to embrace DEI and take meaningful action?','no-comment','no','0',this.value,'0')"></textarea>
                                                            </div>
                                                    </div>



                                                    <!---4RD QUESTION-->
                                                    <div class="question mt-2 mb-3 p-2" data-question="3">
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 4.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Do you offer your employees and teams the freedom to choose when and how they want to get involved?</h4>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="w-100 mt-2">
                                                            <div class="d-flex mb-2 flex-wrap left_margin ">
                                                                <div class="mr-1 d-flex ">
                                                                    <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup8" type="radio"   value="yes" onchange="AddQuestioner('4','Do you offer your employees and teams the freedom to choose when and how they want to get involved?','no','Yes','Q4Rank','','0')"></span> 
                                                                    <span class="question_span ml-0 ">Yes      </span> 
                                                                </div>

                                                                <div class="mr-1 d-flex">
                                                                    <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup8" type="radio"   value="no" onchange="AddQuestioner('4','Do you offer your employees and teams the freedom to choose when and how they want to get involved?','no','No','0','','0')"> </span> 
                                                                    <span class="question_span ml-0 ">No    </span> 
                                                                </div>

                                                                <div class="mr-1 d-flex">
                                                                    <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup8" type="radio"   value="no" onchange="AddQuestioner('4','Do you offer your employees and teams the freedom to choose when and how they want to get involved?','no','Don`t Know','0','','0')"></span> 
                                                                    <span class="question_span ml-0 ">Don't Know    </span>  
                                                                </div>

                                                               

                                                                
                                                            </div>
                                                        </div>
                                                        <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse8">
                                                            <input type="hidden" class="single-slider" id="Q4Rank" value="6" onchange="AddQuestioner('4','Do you offer your employees and teams the freedom to choose when and how they want to get involved?','no','Yes','Q4Rank','','0')"/>
                                                        </div>
                                                        <div class="w-100 left_margin">
                                                            <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_04" aria-expanded="false" aria-controls="collapseOne">
                                                                <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                            </label>
                                                        </div>
                                                        <div id="comment_04" aria-expanded="false" class="collapse">
                                                            <textarea class="form-control  text-area-block" id="ans_3" rows="2" onchange="AddQuestioner('4','Do you offer your employees and teams the freedom to choose when and how they want to get involved?','no-comment','no','0',this.value,'0')"></textarea>
                                                        </div>
                                                </div>



                                                <!---5 RD QUESTION-->
                                                <div class="question mt-2 mb-3 p-2" data-question="3">
                                                    <div class="w-100  p-2">
                                                        <div class="d-flex  justify-content-start">
                                                            <span class="no_span "> 5.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">Does your company have organizational policies that ensure stakeholders are held accountable and responsible for ensuring inclusion?</h4>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="w-100 mt-2">
                                                        <div class="d-flex mb-2 flex-wrap left_margin ">
                                                            <div class="mr-1 d-flex ">
                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup9" type="radio"   value="yes" onchange="AddQuestioner('5','Does your company have organizational policies that ensure stakeholders are held accountable and responsible for ensuring inclusion?','no','Yes','Q5Rank','','0')"> </span> 
                                                                <span class="question_span ml-0 ">Yes      </span> 
                                                            </div>

                                                            <div class="mr-1 d-flex">
                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup9" type="radio"   value="no" onchange="AddQuestioner('5','Does your company have organizational policies that ensure stakeholders are held accountable and responsible for ensuring inclusion?','no','No','0','','0')"> </span> 
                                                                <span class="question_span ml-0 ">No    </span> 
                                                            </div>

                                                            <div class="mr-1 d-flex">
                                                                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup9" type="radio"   value="no" onchange="AddQuestioner('5','Does your company have organizational policies that ensure stakeholders are held accountable and responsible for ensuring inclusion?','no','Don`t Know','0','','0')"> </span> 
                                                                <span class="question_span ml-0 ">Don't Know    </span> 
                                                            </div>

                                                            

                                                            
                                                        </div>
                                                    </div>
                                                    <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse9">
                                                        <input type="hidden" class="single-slider" id="Q5Rank" value="6" onchange="AddQuestioner('5','Does your company have organizational policies that ensure stakeholders are held accountable and responsible for ensuring inclusion?','no','Yes','Q5Rank','','0')"/>
                                                    </div>
                                                    <div class="w-100 left_margin">
                                                        <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_05" aria-expanded="false" aria-controls="collapseOne">
                                                            <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                        </label>
                                                    </div>
                                                    <div id="comment_05" aria-expanded="false" class="collapse">
                                                        <textarea class="form-control  text-area-block" id="ans_3" rows="2" onchange="AddQuestioner('5','Does your company have organizational policies that ensure stakeholders are held accountable and responsible for ensuring inclusion?','no-comment','no','0',this.value,'0')" ></textarea>
                                                    </div>
                                            </div>


                                            <!---6 RD QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 6.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">Does your company offer opportunities for employees from disadvantaged backgrounds? </h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-2">
                                                    <div class="d-flex mb-2 flex-wrap left_margin ">
                                                        <div class="mr-1 d-flex ">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup10" type="radio"   value="yes"  onchange="AddQuestioner('6','Does your company offer opportunities for employees from disadvantaged backgrounds?','no','Yes','Q6Rank','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Yes      </span> 
                                                        </div>

                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup10" type="radio"   value="no" onchange="AddQuestioner('6','Does your company offer opportunities for employees from disadvantaged backgrounds?','no','No','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">No    </span> 
                                                        </div>

                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup10" type="radio"   value="no" onchange="AddQuestioner('6','Does your company offer opportunities for employees from disadvantaged backgrounds?','no','Don`t Know','0','','0')"></span> 
                                                            <span class="question_span ml-0 ">Don't Know    </span> 
                                                        </div>

                                                       

                                                        
                                                    </div>
                                                </div>
                                                <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse10">
                                                    <input type="hidden" class="single-slider" id="Q6Rank" value="6" onchange="AddQuestioner('6','Does your company offer opportunities for employees from disadvantaged backgrounds?','no','Yes','Q6Rank','','0')"/>
                                                </div>
                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_06" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_06" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="ans_3" rows="2" onchange="AddQuestioner('6','Does your company offer opportunities for employees from disadvantaged backgrounds?','no-comment','no','0',this.value,'0')"></textarea>
                                                </div>
                                        </div>

                                        <!---7 ST QUESTION-->
                                        <div class="question mt-2 mb-3 p-2 " data-question="1">
                                                    
                                            <div class="w-100  p-2">
                                                <div class="d-flex  justify-content-start">
                                                <span class="no_span "> 7.</span>

                                                <span class="question_span ">
                                                <h4 class="question-title">What strategies are in place in your company to engage with disadvantaged teams?  </h4>
                                                </span>
                                             </div>
                                            </div>

                                            <div class="w-100 mt-2">
                                                <textarea class="form-control  text-area-block" id="Q7txt" rows="2" onchange="AddQuestioner('7','What strategies are in place in your company to engage with disadvantaged teams?','no-comment','no','0',this.value,'0')"></textarea>
                                            </div>
                                        
                                    </div>


                                         <!---8 RD QUESTION-->
                                         <div class="question mt-2 mb-3 p-2" data-question="3">
                                            <div class="w-100  p-2">
                                                <div class="d-flex  justify-content-start">
                                                    <span class="no_span "> 8.</span>
                                                    <span class="question_span ">
                                                    <h4 class="question-title">Do you think inclusive business cultures can boost your company’s reputation and popularity?</h4>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="w-100 mt-2">
                                                <div class="d-flex mb-2 flex-wrap left_margin ">
                                                    <div class="mr-1 d-flex ">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup11" type="radio"   value="yes" onchange="AddQuestioner('8','Do you think inclusive business cultures can boost your company’s reputation and popularity?','no','Yes','Q8Rank','','0')"> </span> 
                                                        <span class="question_span ml-0 ">Yes      </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup11" type="radio"   value="no" onchange="AddQuestioner('8','Do you think inclusive business cultures can boost your company’s reputation and popularity?','no','No','0','','0')"> </span> 
                                                        <span class="question_span ml-0 ">No    </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup11" type="radio"   value="no" onchange="AddQuestioner('8','Do you think inclusive business cultures can boost your company’s reputation and popularity?','no','Don`t Know','0','','0')"> </span> 
                                                        <span class="question_span ml-0 ">Don't Know    </span> 
                                                    </div>

                                                    

                                                    
                                                </div>
                                            </div>
                                            <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse11">
                                                <input type="hidden" class="single-slider" id="Q8Rank" value="6" onchange="AddQuestioner('8','Do you think inclusive business cultures can boost your company’s reputation and popularity?','no','Yes','Q8Rank','','0')"/>
                                            </div>
                                            <div class="w-100 left_margin">
                                                <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_08" aria-expanded="false" aria-controls="collapseOne">
                                                    <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                </label>
                                            </div>
                                            <div id="comment_08" aria-expanded="false" class="collapse">
                                                <textarea class="form-control  text-area-block" id="Q8txt" rows="2" onchange="AddQuestioner('8','Do you think inclusive business cultures can boost your company’s reputation and popularity?','no-comment','no','0',this.value,'0')"></textarea>
                                            </div>
                                         </div>

                                          <!---9 RD QUESTION-->
                                          <div class="question mt-2 mb-3 p-2" data-question="3">
                                            <div class="w-100  p-2">
                                                <div class="d-flex  justify-content-start">
                                                    <span class="no_span "> 9.</span>
                                                    <span class="question_span ">
                                                    <h4 class="question-title">DEI. Is it associated with improved financial performance? </h4>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="w-100 mt-2">
                                                <div class="d-flex mb-2 flex-wrap left_margin ">
                                                    <div class="mr-1 d-flex ">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup12" type="radio"   value="yes" onchange="AddQuestioner('9','DEI. Is it associated with improved financial performance?','no','Yes','Q9Rank','','0')"> </span> 
                                                        <span class="question_span ml-0 ">Yes      </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup12" type="radio"   value="no" onchange="AddQuestioner('9','DEI. Is it associated with improved financial performance?','no','No','0','','0')"></span> 
                                                        <span class="question_span ml-0 ">No    </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup12" type="radio"   value="no" onchange="AddQuestioner('9','DEI. Is it associated with improved financial performance?','no','Don`t Know','0','','0')"> </span> 
                                                        <span class="question_span ml-0 ">Don't Know    </span> 
                                                    </div>

                                                   

                                                    
                                                </div>
                                            </div>
                                            <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse12">
                                                <input type="hidden" class="single-slider" id="Q9Rank" value="6" onchange="AddQuestioner('9','DEI. Is it associated with improved financial performance?','no','Yes','Q9Rank','','0')"/>
                                            </div>

                                            <div class="w-100 left_margin">
                                                <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_09" aria-expanded="false" aria-controls="collapseOne">
                                                    <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                </label>
                                            </div>
                                            <div id="comment_09" aria-expanded="false" class="collapse">
                                                <textarea class="form-control  text-area-block" id="Q9txt" rows="2" onchange="AddQuestioner('9','DEI. Is it associated with improved financial performance?','no-comment','no','0',this.value,'0')" ></textarea>
                                            </div>
                                         </div>


                                         <!---10 RD QUESTION-->
                                         <div class="question mt-2 mb-3 p-2" data-question="3">
                                            <div class="w-100  p-2">
                                                <div class="d-flex  justify-content-start">
                                                    <span class="no_span "> 10.</span>
                                                    <span class="question_span ">
                                                    <h4 class="question-title">Our recent research indicates that most companies have a gap between diversity potential and the ability to unlock that potential. This inclusion gap measures how much or how little diverse perspectives are included in the business decision-making processes. Does your company measure this inclusion gap?</h4>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="w-100 mt-2">
                                                <div class="d-flex mb-2 flex-wrap left_margin ">
                                                    <div class="mr-1 d-flex ">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup13" type="radio"  value="yes" onchange="AddQuestioner('10','Our recent research indicates that most companies have a gap between diversity potential and the ability to unlock that potential. This inclusion gap measures how much or how little diverse perspectives are included in the business decision-making processes. Does your company measure this inclusion gap?','no','Yes','Q10Rank','','0')" > </span> 
                                                        <span class="question_span ml-0 ">Yes      </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup13" type="radio"  value="no" onchange="AddQuestioner('10','Our recent research indicates that most companies have a gap between diversity potential and the ability to unlock that potential. This inclusion gap measures how much or how little diverse perspectives are included in the business decision-making processes. Does your company measure this inclusion gap?','no','No','0','','0')"> </span> 
                                                        <span class="question_span ml-0 ">No    </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup13" type="radio"  value="no" onchange="AddQuestioner('10','Our recent research indicates that most companies have a gap between diversity potential and the ability to unlock that potential. This inclusion gap measures how much or how little diverse perspectives are included in the business decision-making processes. Does your company measure this inclusion gap?','no','Don`t Know','0','','0')"> </span> 
                                                        <span class="question_span ml-0 ">Don't Know    </span> 
                                                    </div>

                                                   

                                                    
                                                </div>
                                            </div>
                                            <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse13">
                                                <input type="hidden" class="single-slider" id="Q10Rank" value="6" onchange="AddQuestioner('10','Our recent research indicates that most companies have a gap between diversity potential and the ability to unlock that potential. This inclusion gap measures how much or how little diverse perspectives are included in the business decision-making processes. Does your company measure this inclusion gap?','no','Yes','Q10Rank','','0')"/>
                                            </div>
                                            <div class="w-100 left_margin">
                                                <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_10" aria-expanded="false" aria-controls="collapseOne">
                                                    <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                </label>
                                            </div>
                                            <div id="comment_10" aria-expanded="false" class="collapse">
                                                <textarea class="form-control  text-area-block" id="Q10txt" rows="2" onchange="AddQuestioner('10','Our recent research indicates that most companies have a gap between diversity potential and the ability to unlock that potential. This inclusion gap measures how much or how little diverse perspectives are included in the business decision-making processes. Does your company measure this inclusion gap?','no-comment','no','0',this.value,'0')"></textarea>
                                            </div> 
                                         </div>

                                          <!---11 RD QUESTION-->
                                          <div class="question mt-2 mb-3 p-2" data-question="3">
                                            <div class="w-100  p-2">
                                                <div class="d-flex  justify-content-start">
                                                    <span class="no_span "> 11.</span>
                                                    <span class="question_span ">
                                                    <h4 class="question-title">How important is DEI in current times of economic crisis?</h4>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="w-100 mt-2">
                                                <div class="d-flex mb-2 flex-wrap left_margin ">
                                                    <div class="mr-1 d-flex ">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup14" type="radio"   value="yes" onchange="AddQuestioner('11','How important is DEI in current times of economic crisis?','no','Very Important','Q11Rank','','0')" > </span> 
                                                        <span class="question_span ml-0 ">Very Important        </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup14" type="radio"   value="no" onchange="AddQuestioner('11','How important is DEI in current times of economic crisis?','no','Very Important','0','','0')"> </span> 
                                                        <span class="question_span ml-0 ">Not Important       </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup14" type="radio"   value="no" onchange="AddQuestioner('11','How important is DEI in current times of economic crisis?','no','Don`t Know','0','','0')"> </span> 
                                                        <span class="question_span ml-0 ">Don't Know    </span> 
                                                    </div>                                                

                                                    
                                                </div>
                                            </div>
                                            <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse14">
                                                <input type="hidden" class="single-slider" id="Q11Rank" value="6" onchange="AddQuestioner('11','How important is DEI in current times of economic crisis?','no','Very Important','Q11Rank','','0')"/>
                                            </div>
                                            <div class="w-100 left_margin">
                                                <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_11" aria-expanded="false" aria-controls="collapseOne">
                                                    <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                </label>
                                            </div>
                                            <div id="comment_11" aria-expanded="false" class="collapse">
                                                <textarea class="form-control  text-area-block" id="Q11txt" rows="2" onchange="AddQuestioner('11','How important is DEI in current times of economic crisis?','no-comment','no','0',this.value,'0')"></textarea>
                                            </div>
                                         </div>


                                          <!---12  QUESTION-->
                                          <div class="question mt-2 mb-3 p-2" data-question="3">
                                            <div class="w-100  p-2">
                                                <div class="d-flex  justify-content-start">
                                                    <span class="no_span "> 12.</span>
                                                    <span class="question_span ">
                                                    <h4 class="question-title">Do you believe inclusion can help companies thrive in tough times?</h4>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="w-100 mt-2">
                                                <div class="d-flex mb-2 flex-wrap left_margin ">
                                                    <div class="mr-1 d-flex ">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup15" type="radio"   value="yes" onchange="AddQuestioner('12','Do you believe inclusion can help companies thrive in tough times?','no','Yes','Q12Rank','','0')"></span> 
                                                        <span class="question_span ml-0 ">Yes      </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup15" type="radio"   value="no" onchange="AddQuestioner('12','Do you believe inclusion can help companies thrive in tough times?','no','No','0','','0')"></span> 
                                                        <span class="question_span ml-0 ">No    </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup15" type="radio"   value="Don`t Know" onchange="AddQuestioner('12','Do you believe inclusion can help companies thrive in tough times?','no','Don`t Know','0','','0')"></span> 
                                                        <span class="question_span ml-0 ">Don't Know    </span> 
                                                    </div>

                                                  
                                                    
                                                </div>
                                            </div>
                                            <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse15">
                                                <input type="hidden" class="single-slider" id="Q12Rank" value="6" onchange="AddQuestioner('12','Do you believe inclusion can help companies thrive in tough times?','no','Yes','Q12Rank','','0')"/>
                                            </div>
                                            <div class="w-100 left_margin">
                                                <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_12" aria-expanded="false" aria-controls="collapseOne">
                                                    <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                </label>
                                            </div>
                                            <div id="comment_12" aria-expanded="false" class="collapse">
                                                <textarea class="form-control  text-area-block" id="Q12txt" rows="2" onchange="AddQuestioner('12','Do you believe inclusion can help companies thrive in tough times?','no-comment','no','0',this.value,'0')",'0'></textarea>
                                            </div>
                                         </div>


                                           <!---13 QUESTION-->
                                           <div class="question mt-2 mb-3 p-2" data-question="3">
                                            <div class="w-100 mt-2">
                                                <div class="d-flex  justify-content-start">
                                                    <span class="no_span "> 13.</span>
                                                    <span class="question_span ">
                                                    <h4 class="question-title">How would you rank the importance of these managerial qualities in helping an employee experience inclusion? </h4>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="w-100 mt-1">
                                                <ul class="mt-2   list pl-1 ">
                                                    <li class="d-flex flex-column mb-1">
                                                        <div class="d-flex">
                                                            <span class="no_span "> 
                                                                <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse16" aria-expanded="false" aria-controls="collapse16" ></span> <span class="question_span ml-0 ">Authentic </span> 
                                                         </div>
                                                        <div class="d-flex">
                                                            <div class="w-100  mb-3 panel-collapse collapse" id="collapse16">
                                                                <input type="hidden" id="Q13aRank" class="single-slider" value="6" onchange="AddQuestioner('13','How would you rank the importance of these managerial qualities in helping an employee experience inclusion?','Authentic','Yes','Q13aRank','','a')"/>
                                                            </div>
                                                        </div>

                                                    </li>
                                                    <li class="d-flex flex-column mb-1">
                                                        <div class="d-flex">
                                                            <span class="no_span "> 
                                                                <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse17" aria-expanded="false" aria-controls="collapse17" > </span> <span class="question_span ml-0 ">Humble  </span> 
                                                         </div>
                                                        <div class="d-flex">
                                                            <div class="w-100  mb-3 panel-collapse collapse" id="collapse17">
                                                                <input type="hidden" class="single-slider" id="Q13bRank" value="6" onchange="AddQuestioner('13','How would you rank the importance of these managerial qualities in helping an employee experience inclusion?','Humble','Yes','Q13bRank','','b')"/>
                                                            </div>
                                                        </div>

                                                    </li>

                                                    <li class="d-flex flex-column mb-1">
                                                        <div class="d-flex">
                                                            <span class="no_span "> 
                                                                <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse18" aria-expanded="false" aria-controls="collapse18" > </span> <span class="question_span ml-0 ">Collaborative  </span> 
                                                         </div>
                                                        <div class="d-flex">
                                                            <div class="w-100  mb-3 panel-collapse collapse" id="collapse18">
                                                                <input type="hidden" class="single-slider" id="Q13cRank" value="6"  onchange="AddQuestioner('13','How would you rank the importance of these managerial qualities in helping an employee experience inclusion?','Collaborative','Yes','Q13cRank','','c')"/>
                                                            </div>
                                                        </div>

                                                    </li>

                                                    <li class="d-flex flex-column mb-1">
                                                        <div class="d-flex">
                                                            <span class="no_span "> 
                                                                <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse19" aria-expanded="false" aria-controls="collapse19" > </span> <span class="question_span ml-0 ">Cognizant of Bias  </span> 
                                                         </div>
                                                        <div class="d-flex">
                                                            <div class="w-100  mb-3 panel-collapse collapse" id="collapse19">
                                                                <input type="hidden" class="single-slider" id="Q13dRank" value="6" onchange="AddQuestioner('13','How would you rank the importance of these managerial qualities in helping an employee experience inclusion?','Cognizant of Bias','Yes','Q13dRank','','d')"/>
                                                            </div>
                                                        </div>

                                                    </li>

                                                    <li class="d-flex flex-column mb-1">
                                                        <div class="d-flex">
                                                            <span class="no_span "> 
                                                                <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse20" aria-expanded="false" aria-controls="collapse20" ></span> <span class="question_span ml-0 ">Culturally Intelligent  </span> 
                                                         </div>
                                                        <div class="d-flex">
                                                            <div class="w-100  mb-3 panel-collapse collapse" id="collapse20">
                                                                <input type="hidden" class="single-slider" id="Q13eRank" value="6" onchange="AddQuestioner('13','How would you rank the importance of these managerial qualities in helping an employee experience inclusion?','Culturally Intelligent','Yes','Q13eRank','','e')"/>
                                                            </div>
                                                        </div>

                                                    </li>

                                                    <li class="d-flex flex-column mb-1">
                                                        <div class="d-flex">
                                                            <span class="no_span "> 
                                                                <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse21" aria-expanded="false" aria-controls="collapse21" > </span> <span class="question_span ml-0 ">Self-Aware </span> 
                                                         </div>
                                                        <div class="d-flex">
                                                            <div class="w-100  mb-3 panel-collapse collapse" id="collapse21">
                                                                <input type="hidden" class="single-slider" id="Q13fRank" value="6" onchange="AddQuestioner('13','How would you rank the importance of these managerial qualities in helping an employee experience inclusion?','Self-Aware','Yes','Q13fRank','','f')"/>
                                                            </div>
                                                        </div>

                                                    </li>

                                                    <li class="d-flex flex-column mb-1">
                                                        <div class="d-flex">
                                                            <span class="no_span "> 
                                                                <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse22" aria-expanded="false" aria-controls="collapse22" > </span> <span class="question_span ml-0 ">Building Trust   </span> 
                                                         </div>
                                                        <div class="d-flex">
                                                            <div class="w-100  mb-3 panel-collapse collapse" id="collapse22">
                                                                <input type="hidden" class="single-slider" value="6" id="Q13gRank" onchange="AddQuestioner('13','How would you rank the importance of these managerial qualities in helping an employee experience inclusion?','Building Trust','Yes','Q13gRank','','g')"/>
                                                            </div>
                                                        </div>

                                                    </li>

                                                    <li class="d-flex flex-column mb-1">
                                                        <div class="d-flex">
                                                            <span class="no_span "> 
                                                                <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse23" aria-expanded="false" aria-controls="collapse16" > </span> <span class="question_span ml-0 ">Empowering  </span> 
                                                         </div>
                                                        <div class="d-flex">
                                                            <div class="w-100  mb-3 panel-collapse collapse" id="collapse23">
                                                                <input type="hidden" class="single-slider" id="Q13hRank" value="6" onchange="AddQuestioner('13','How would you rank the importance of these managerial qualities in helping an employee experience inclusion?','Empowering','Yes','Q13hRank','','h')"/>
                                                            </div>
                                                        </div>

                                                    </li>


                                                </ul>
                                            </div>
                                            
                                            <div class="w-100 left_margin">
                                                <label class="d-flex align-items-center pl-1" data-toggle="collapse" data-target="#comment_13" aria-expanded="false" aria-controls="collapseOne">
                                                    <input type="checkbox" class="comment_checkbox ml-0 "/> <span class="comment">Comments</span>
                                                </label>
                                            </div>
                                            <div id="comment_13" aria-expanded="false" class="collapse">
                                                <textarea class="form-control  text-area-block" id="Q13txt" rows="2" onchange="AddQuestioner('13','How would you rank the importance of these managerial qualities in helping an employee experience inclusion?','no-comment','Yes','0',this.value,'0')"></textarea>
                                            </div>
                                            </div>

                                            <!---14 QUESTION-->
                                           <div class="question mt-2 mb-3 p-2" data-question="3">
                                            <div class="w-100  p-2">
                                                <div class="d-flex  justify-content-start">
                                                    <span class="no_span "> 14.</span>
                                                    <span class="question_span ">
                                                    <h4 class="question-title">Has inclusivity issues in your workplace ever impacted your ability to attract new talent? </h4>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="w-100 mt-2">
                                                <div class="d-flex mb-2 flex-wrap left_margin ">
                                                    <div class="mr-1 d-flex ">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup24" type="radio"   value="yes" onchange="AddQuestioner('14','Has inclusivity issues in your workplace ever impacted your ability to attract new talent?','no','Yes','Q14Rank','','0')" > </span> 
                                                        <span class="question_span ml-0 ">Yes      </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup24" type="radio"   value="no" onchange="AddQuestioner('14','Has inclusivity issues in your workplace ever impacted your ability to attract new talent?','no','No','0','','0')"></span> 
                                                        <span class="question_span ml-0 ">No    </span> 
                                                    </div>

                                                    <div class="mr-1 d-flex">
                                                        <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup24" type="radio"   value="no" onchange="AddQuestioner('14','Has inclusivity issues in your workplace ever impacted your ability to attract new talent?','no','Don`t Know','0','','0')"> </span> 
                                                        <span class="question_span ml-0 ">Don't Know    </span> 
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse24">
                                                <input type="hidden" class="single-slider" id="Q14Rank" value="6" onchange="AddQuestioner('14','Has inclusivity issues in your workplace ever impacted your ability to attract new talent?','no','Yes','Q14Rank','','0')"/>
                                            </div>
                                            <div class="w-100 left_margin">
                                                <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_14" aria-expanded="false" aria-controls="collapseOne">
                                                    <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                </label>
                                            </div>
                                            <div id="comment_14" aria-expanded="false" class="collapse">
                                                <textarea class="form-control  text-area-block" id="Q14txt" rows="2" onchange="AddQuestioner('14','Has inclusivity issues in your workplace ever impacted your ability to attract new talent?','no-comment','no','0',this.value,'0')"></textarea>
                                            </div>
                                           </div>

                                            <!---15 QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 15.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">How likely will you be to recruit talent from minority communities such as blacks, Asians, Latinos and Hispanians, which are hugely underrepresented? </h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-2">
                                                    <div class="d-flex mb-2 flex-wrap left_margin ">
                                                        <div class="mr-1 d-flex ">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup25" type="radio"   value="yes" onchange="AddQuestioner('15','How likely will you be to recruit talent from minority communities such as blacks, Asians, Latinos and Hispanians, which are hugely underrepresented?','no','Yes','Q15Rank','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Very Likely        </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup25" type="radio"   value="no" onchange="AddQuestioner('15','How likely will you be to recruit talent from minority communities such as blacks, Asians, Latinos and Hispanians, which are hugely underrepresented?','no','No','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Not Likely       </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup25" type="radio"   value="no" onchange="AddQuestioner('15','How likely will you be to recruit talent from minority communities such as blacks, Asians, Latinos and Hispanians, which are hugely underrepresented?','no','Don`t Know ','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Don't Know    </span> 
                                                        </div>
    
                                                      
    
                                                        
                                                    </div>
                                                </div>
                                                <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse25">
                                                    <input type="hidden" class="single-slider" id="Q15Rank" value="6" onchange="AddQuestioner('15','How likely will you be to recruit talent from minority communities such as blacks, Asians, Latinos and Hispanians, which are hugely underrepresented?','no','Yes','Q15Rank','','0')"/>
                                                </div>
                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_15" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_15" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q15txt" rows="2" onchange="AddQuestioner('15','How likely will you be to recruit talent from minority communities such as blacks, Asians, Latinos and Hispanians, which are hugely underrepresented?','no-comment','no','0',this.value,'0')"></textarea>
                                                </div>
                                               </div>

                                               <!---16 QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 16.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">Does your company have mentoring programs to empower women in the workforce? </h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-2">
                                                    <div class="d-flex mb-2 flex-wrap left_margin ">
                                                        <div class="mr-1 d-flex ">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup26" type="radio"   value="yes" onchange="AddQuestioner('16','Does your company have mentoring programs to empower women in the workforce? ','no','Yes','Q16Rank','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Yes      </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup26" type="radio"   value="no" onchange="AddQuestioner('16','Does your company have mentoring programs to empower women in the workforce? ','no','no','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">No    </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup26" type="radio"   value="no" onchange="AddQuestioner('16','Does your company have mentoring programs to empower women in the workforce? ','no','Don`t Know','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Don't Know    </span> 
                                                        </div>
    
                                                      
    
                                                        
                                                    </div>
                                                </div>
                                                <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse26">
                                                    <input type="hidden" class="single-slider" id="Q16Rank" value="6" onchange="AddQuestioner('16','Does your company have mentoring programs to empower women in the workforce? ','no','Yes','Q16Rank','','0')"/>
                                                </div>
                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_16" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_16" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q16txt" rows="2" onchange="AddQuestioner('16','Does your company have mentoring programs to empower women in the workforce? ','no-comment','no','0',this.value,'0')"></textarea>
                                                </div>
                                               </div>


                                           

                                               <!---17 QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 17.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">Does your organization offer DEI training for managers responsible for building successful teams? </h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-2">
                                                    <div class="d-flex mb-2 flex-wrap left_margin ">
                                                        <div class="mr-1 d-flex ">
                                                            <span class="no_span "><input class="form-check-input mt-1" name="collapseGroup27" type="radio"   value="yes" onchange="AddQuestioner('17','Does your organization offer DEI training for managers responsible for building successful teams?','no','Yes','Q17Rank','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Yes      </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup27" type="radio"   value="no" onchange="AddQuestioner('17','Does your organization offer DEI training for managers responsible for building successful teams?','no','no','0','','0')"></span> 
                                                            <span class="question_span ml-0 ">No    </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup27" type="radio"   value="no" onchange="AddQuestioner('17','Does your organization offer DEI training for managers responsible for building successful teams?','no','Don`t Know','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Don't Know    </span> 
                                                        </div>   
                                                        
                                                    </div>
                                                </div>
                                                <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse27">
                                                    <input type="hidden" class="single-slider" id="Q17Rank" value="6" onchange="AddQuestioner('17','Does your organization offer DEI training for managers responsible for building successful teams?','no','Yes','Q17Rank','','0')"/>
                                                </div>
                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_17" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_17" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q17txt" rows="2" onchange="AddQuestioner('17','Does your organization offer DEI training for managers responsible for building successful teams?','no-comment','no','0',this.value,'0')"></textarea> 
                                                </div>
                                               </div>


                                                <!---18 QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 18.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">What best describes DEI efforts in your company? Is it…  </h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-2">
                                                    <ul class="mt-2   list pl-1 ">
                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1 ml-0" type="radio" name="exampleRadios21" id="exampleRadios1" value="option1" onchange="AddQuestioner('18','What best describes DEI efforts in your company? Is it…','no','A structured DEI initiative','0','','0')"> </span> <span class="question_span ml-0 ">A structured DEI initiative  </span> </li>
                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1 ml-0" type="radio" name="exampleRadios21" id="exampleRadios1" value="option1" onchange="AddQuestioner('18','What best describes DEI efforts in your company? Is it…','no','An informal or adhoc DEI initiative','0','','0')"></span> <span class="question_span ml-0 "> An informal or adhoc DEI initiative</span> </li>
                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1 ml-0" type="radio" name="exampleRadios21" id="exampleRadios1" value="option1" onchange="AddQuestioner('18','What best describes DEI efforts in your company? Is it…','no','Have no DEI practice in place','0','','0')"></span> <span class="question_span ml-0 "> 	Have no DEI practice in place     </span> </li>
                                                        
                                                    </ul>
                                                </div>
                                              
                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center pl-1" data-toggle="collapse" data-target="#comment_18" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox ml-0"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_18" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q18txt" rows="2" onchange="AddQuestioner('18','What best describes DEI efforts in your company? Is it…','no-comment','no','0',this.value,'0')"></textarea>
                                                </div>
                                               </div>


                                                <!---19 QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 19.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">The recent backlash against gender discrimination like the “Black Lives Matter” protests, has it increased the urgency to provide DEI training programs for your employees at all levels?</h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-2">
                                                    <div class="d-flex mb-2 flex-wrap left_margin ">
                                                        <div class="mr-1 d-flex ">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup28" type="radio"   value="yes" onchange="AddQuestioner('19','The recent backlash against gender discrimination like the Black Lives Matter protests, has it increased the urgency to provide DEI training programs for your employees at all levels?','no','Yes','Q19Rank','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Yes      </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup28" type="radio"   value="no" onchange="AddQuestioner('19','The recent backlash against gender discrimination like the Black Lives Matter protests, has it increased the urgency to provide DEI training programs for your employees at all levels?','no','no','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">No    </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup28" type="radio"   value="no" onchange="AddQuestioner('19','The recent backlash against gender discrimination like the Black Lives Matter protests, has it increased the urgency to provide DEI training programs for your employees at all levels?','no','Don`t Know','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Don't Know    </span> 
                                                        </div>
    
                                                      
    
                                                        
                                                    </div>
                                                </div>
                                                <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse28">
                                                    <input type="hidden" class="single-slider" id="Q19Rank" value="6" onchange="AddQuestioner('19','The recent backlash against gender discrimination like the Black Lives Matter protests, has it increased the urgency to provide DEI training programs for your employees at all levels?','no','Yes','Q19Rank','','0')"/>
                                                </div>
                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_19" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_19" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q19txt" rows="2" onchange="AddQuestioner('19','The recent backlash against gender discrimination like the Black Lives Matter protests, has it increased the urgency to provide DEI training programs for your employees at all levels?','no-comment','no','0',this.value,'0')"></textarea>
                                                </div>
                                               </div>

                                               <!---20 QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 20.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">Which of the following barriers to DEI you believe is most challenging to overcome in your organization? </h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-2">
                                                    <div class="d-flex mb-2 flex-wrap">
                                                        <ul class="mt-2   list pl-1 ">
                                                            <li class="d-flex flex-column mb-1">
                                                                <div class="d-flex">
                                                                    <span class="no_span "> 
                                                                        <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse29" aria-expanded="false" aria-controls="collapse29" ></span> <span class="question_span ml-0 ">Negative attitudes of managers and executives leading teams </span> 
                                                                 </div>
                                                                <div class="d-flex">
                                                                    <div class="w-100  mb-3 panel-collapse collapse" id="collapse29">
                                                                        <input type="hidden" id="Q20aRank" class="single-slider" value="6" onchange="AddQuestioner('20','Which of the following barriers to DEI you believe is most challenging to overcome in your organization?','Negative attitudes of managers and executives leading teams','Yes','Q20aRank','','a')"/>
                                                                    </div>
                                                                </div>
        
                                                            </li>
                                                            <li class="d-flex flex-column mb-1">
                                                                <div class="d-flex">
                                                                    <span class="no_span "> 
                                                                        <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse30" aria-expanded="false" aria-controls="collapse30" > </span> <span class="question_span ml-0 ">Lack of motivation for employee involvement </span> 
                                                                 </div>
                                                                <div class="d-flex">
                                                                    <div class="w-100  mb-3 panel-collapse collapse" id="collapse30">
                                                                        <input type="hidden" class="single-slider" id="Q20bRank" value="6" onchange="AddQuestioner('20','Which of the following barriers to DEI you believe is most challenging to overcome in your organization?','Lack of motivation for employee involvement','Yes','Q20bRank','','b')"/>
                                                                    </div>
                                                                </div>
        
                                                            </li>
        
                                                            <li class="d-flex flex-column mb-1">
                                                                <div class="d-flex">
                                                                    <span class="no_span "> 
                                                                        <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse31" aria-expanded="false" aria-controls="collapse31" > </span> <span class="question_span ml-0 ">Lack of funding & inconsistent policy enforcement </span> 
                                                                 </div>
                                                                <div class="d-flex">
                                                                    <div class="w-100  mb-3 panel-collapse collapse" id="collapse31">
                                                                        <input type="hidden" class="single-slider" id="Q20cRank" value="6" onchange="AddQuestioner('20','Which of the following barriers to DEI you believe is most challenging to overcome in your organization?','Lack of funding & inconsistent policy enforcement','Yes','Q20cRank','','c')"/>
                                                                    </div>
                                                                </div>
        
                                                            </li>
        
                                                            <li class="d-flex flex-column mb-1">
                                                                <div class="d-flex">
                                                                    <span class="no_span "> 
                                                                        <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse32" aria-expanded="false" aria-controls="collapse32" > </span> <span class="question_span ml-0 ">Lack of female leaders  </span> 
                                                                 </div>
                                                                <div class="d-flex">
                                                                    <div class="w-100  mb-3 panel-collapse collapse" id="collapse32">
                                                                        <input type="hidden" class="single-slider" id="Q20dRank" value="6" onchange="AddQuestioner('20','Which of the following barriers to DEI you believe is most challenging to overcome in your organization?','Lack of female leaders','Yes','Q20dRank','','d')"/>
                                                                    </div>
                                                                </div>
        
                                                            </li>
        
                                                            <li class="d-flex flex-column mb-1">
                                                                <div class="d-flex">
                                                                    <span class="no_span "> 
                                                                        <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse33" aria-expanded="false" aria-controls="collapse33" ></span> <span class="question_span ml-0 ">Gender stereotyping  </span> 
                                                                 </div>
                                                                <div class="d-flex">
                                                                    <div class="w-100  mb-3 panel-collapse collapse" id="collapse33">
                                                                        <input type="hidden" class="single-slider" id="Q20eRank" value="6"  onchange="AddQuestioner('20','Which of the following barriers to DEI you believe is most challenging to overcome in your organization?','Gender stereotyping','Yes','Q20eRank','','e')"/>
                                                                    </div>
                                                                </div>
        
                                                            </li>
        
                                                            <li class="d-flex flex-column mb-1">
                                                                <div class="d-flex">
                                                                    <span class="no_span "> 
                                                                        <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse34" aria-expanded="false" aria-controls="collapse34" > </span> <span class="question_span ml-0 ">Sexism </span> 
                                                                 </div>
                                                                <div class="d-flex">
                                                                    <div class="w-100  mb-3 panel-collapse collapse" id="collapse34">
                                                                        <input type="hidden" class="single-slider" id="Q20fRank" value="6" onchange="AddQuestioner('20','Which of the following barriers to DEI you believe is most challenging to overcome in your organization?','Sexism','Yes','Q20fRank','','f')"/>
                                                                    </div>
                                                                </div>
        
                                                            </li>
        
                                                            <li class="d-flex flex-column mb-1">
                                                                <div class="d-flex">
                                                                    <span class="no_span "> 
                                                                        <input class="form-check-input mt-1 ml-0" type="checkbox"   data-toggle="collapse" data-target="#collapse35" aria-expanded="false" aria-controls="collapse35" > </span> <span class="question_span ml-0 ">Communication barriers leading to less effective teams and reduced synergy in work groups.   </span> 
                                                                 </div>
                                                                <div class="d-flex">
                                                                    <div class="w-100  mb-3 panel-collapse collapse" id="collapse35">
                                                                        <input type="hidden" class="single-slider" id="Q20gRank" value="6" onchange="AddQuestioner('20','Which of the following barriers to DEI you believe is most challenging to overcome in your organization?','Communication barriers leading to less effective teams and reduced synergy in work groups.','Yes','Q20gRank','','g')"/>
                                                                    </div>
                                                                </div>
        
                                                            </li> 
        
                                                           
        
        
                                                        </ul>
    
                                                        
                                                    </div>
                                                </div>
                                               
                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center pl-1" data-toggle="collapse" data-target="#comment_20" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox ml-0"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_20" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q20txt" rows="2" onchange="AddQuestioner('20','Which of the following barriers to DEI you believe is most challenging to overcome in your organization?','no-comment','no','0',this.value,'0')"></textarea>
                                                </div>
                                               </div>


                                                 <!---21 QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 21.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">Is the management board of your company gender diverse? If yes, then what are your perceived advantages of having the same? </h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-2">
                                                    <div class="d-flex mb-2 flex-wrap ">
                                                        <ul class="mt-2   list ">
                                                            <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1 ml-0" type="checkbox" name="exampleRadios21a" id="exampleRadios21a" onchange="AddQuestionerforCHK('21','Is the management board of your company gender diverse? If yes, then what are your perceived advantages of having the same?','Effective risk-management practices. Women really help improve investment efficiency and prevent risky overinvestment decisions.','Yes','0','','a','exampleRadios21a')"> </span> <span class="question_span ml-0 ">Effective risk-management practices. Women really help improve investment efficiency and prevent risky overinvestment decisions.</span> </li>
                                                            <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1 ml-0" type="checkbox" name="exampleRadios2b" id="exampleRadios2b"  onchange="AddQuestionerforCHK('21','Is the management board of your company gender diverse? If yes, then what are your perceived advantages of having the same?','Fewer or reduced risk of fraud and earnings manipulation.','Yes','0','','b','exampleRadios21b')"></span> <span class="question_span ml-0 "> Fewer or reduced risk of fraud and earnings manipulation.       </span> </li>
                                                            <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1 ml-0" type="checkbox" name="exampleRadios21c" id="exampleRadios21c"  onchange="AddQuestionerforCHK('21','Is the management board of your company gender diverse? If yes, then what are your perceived advantages of having the same?','Improved protection of stakeholder interests.','Yes','0','','c','exampleRadios21c')"></span> <span class="question_span ml-0 ">Improved protection of stakeholder interests.   </span> </li>
                                                            <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1 ml-0" type="checkbox" name="exampleRadios21d" id="exampleRadios21d"  data-toggle="collapse" data-target="#text_area_21_01" aria-expanded="false" aria-controls="comment_21_01" ></span> <span class="question_span ml-0 ">Any other benefit? Specify    </span> </li>
                                                        </ul>
                                                        <div id="text_area_21_01" aria-expanded="false" class="collapse  w-100">
                                                            <textarea class="form-control  text-area-block" id="Q21ifanytxt" rows="2" onchange="AddQuestioner('21','Is the management board of your company gender diverse? If yes, then what are your perceived advantages of having the same?','Any other benefit? Specify','no','0',this.value,'d')"></textarea>
                                                        </div>
    
                                                        
                                                    </div>
                                                </div>
                                               
                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_21" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox ml-0"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_21" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q21txt" rows="2" onchange="AddQuestioner('21','Is the management board of your company gender diverse? If yes, then what are your perceived advantages of having the same?','no-comment','no','0',this.value,'f')"></textarea>
                                                </div>
                                               </div> 


  <!---22 QUESTION-->
  <div class="question mt-2 mb-3 p-2" data-question="3">
    <div class="w-100  p-2">
        <div class="d-flex  justify-content-start">
            <span class="no_span "> 22.</span>
            <span class="question_span ">
            <h4 class="question-title">If not already adopted, how likely will your company be to adopt online DEI training courses and programs for managers and HR professionals? </h4>
            </span>
        </div>
    </div>
    <div class="w-100 mt-2">
        <div class="d-flex mb-2 flex-wrap left_margin ">
            <div class="mr-1 d-flex ">
                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup36" type="radio"   value="yes"  onchange="AddQuestioner('22','If not already adopted, how likely will your company be to adopt online DEI training courses and programs for managers and HR professionals?','no','Yes','Q22Rank','','0')"> </span> 
                <span class="question_span ml-0 ">Very Likely        </span> 
            </div>

            <div class="mr-1 d-flex">
                <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup36" type="radio"   value="no" onchange="AddQuestioner('22','If not already adopted, how likely will your company be to adopt online DEI training courses and programs for managers and HR professionals?','no','no','0','','0')"></span> 
                <span class="question_span ml-0 ">Not Likely       </span> 
            </div>

            <div class="mr-1 d-flex">
                <span class="no_span "><input class="form-check-input mt-1" name="collapseGroup36" type="radio"   value="no" onchange="AddQuestioner('22','If not already adopted, how likely will your company be to adopt online DEI training courses and programs for managers and HR professionals?','no','Don`t Know','0','','0')"> </span> 
                <span class="question_span ml-0 ">Don’t Know      </span> 
            </div>

          

            
        </div>
    </div>
    <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse36">
        <input type="hidden" class="single-slider" id="Q22Rank" value="6" onchange="AddQuestioner('22','If not already adopted, how likely will your company be to adopt online DEI training courses and programs for managers and HR professionals?','no','Yes','Q22Rank','','0')"/>
    </div>
    <div class="w-100 left_margin">
        <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_22" aria-expanded="false" aria-controls="collapseOne">
            <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
        </label>
    </div>
    <div id="comment_22" aria-expanded="false" class="collapse">
        <textarea class="form-control  text-area-block" id="Q22txt" rows="2" onchange="AddQuestioner('22','If not already adopted, how likely will your company be to adopt online DEI training courses and programs for managers and HR professionals?','no-comment','no','0',this.value,'0')"></textarea>
    </div> 
   </div>


                                                 <!---23 QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 23.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">Studies have shown that successful DEI programs result in improvements in decision making, company financial performance, employee productivity, creativity and innovation. Has your company experienced any or all of these benefits? </h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-2">
                                                    <div class="d-flex mb-2 flex-wrap left_margin ">
                                                        <div class="mr-1 d-flex ">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup37" type="radio"   value="yes" onchange="AddQuestioner('23','Studies have shown that successful DEI programs result in improvements in decision making, company financial performance, employee productivity, creativity and innovation. Has your company experienced any or all of these benefits?','no','Yes','Q23Rank','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Yes      </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup37" type="radio"   value="no" onchange="AddQuestioner('23','Studies have shown that successful DEI programs result in improvements in decision making, company financial performance, employee productivity, creativity and innovation. Has your company experienced any or all of these benefits?','no','no','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">No    </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="collapseGroup37" type="radio"   value="no" onchange="AddQuestioner('23','Studies have shown that successful DEI programs result in improvements in decision making, company financial performance, employee productivity, creativity and innovation. Has your company experienced any or all of these benefits?','no','Don`t Know','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">Don't Know    </span> 
                                                        </div>
    
                                                    </div>
                                                </div>

                                                <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapse37">
                                                    <input type="hidden" class="single-slider" id="Q23Rank" value="6" onchange="AddQuestioner('23','Studies have shown that successful DEI programs result in improvements in decision making, company financial performance, employee productivity, creativity and innovation. Has your company experienced any or all of these benefits?','no','Yes','Q23Rank','','0')"/>
                                                </div>
                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_23" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_23" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q23txt" rows="2" onchange="AddQuestioner('23','Studies have shown that successful DEI programs result in improvements in decision making, company financial performance, employee productivity, creativity and innovation. Has your company experienced any or all of these benefits?','no-comment','no','0',this.value,'0')"></textarea>
                                                </div>
                                               </div>


                                                  <!---24 QUESTION-->
                                            <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 24.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">As a measure of your company’s commitment, over the next two years what percentage of your workforce in leadership positions will represent workers from under-represented groups.   </h4>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="w-100 mt-1">

                                                    <div class="d-flex mb-2 flex-wrap left_margin ">
                                                        <div class="mr-1 d-flex ">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="exampleRadios21" type="radio"  onchange="AddQuestioner('24','As a measure of your company’s commitment, over the next two years what percentage of your workforce in leadership positions will represent workers from under-represented groups.','no','<5%','0','','0')" > </span> 
                                                            <span class="question_span ml-0 "> &#60 5%      </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="exampleRadios21" type="radio"  onchange="AddQuestioner('24','As a measure of your company’s commitment, over the next two years what percentage of your workforce in leadership positions will represent workers from under-represented groups.','no','5%','0','','0')" > </span> 
                                                            <span class="question_span ml-0 ">  5%    </span> 
                                                        </div>
    
                                                        <div class="mr-1 d-flex">
                                                            <span class="no_span "> <input class="form-check-input mt-1" name="exampleRadios21" type="radio"   onchange="AddQuestioner('24','As a measure of your company’s commitment, over the next two years what percentage of your workforce in leadership positions will represent workers from under-represented groups.','no','>5%','0','','0')"> </span> 
                                                            <span class="question_span ml-0 ">&#62 5%    </span> 
                                                        </div>
    
                                                    </div>




                                                    
                                                </div>
                                                <div class="w-100 ranking_box mb-3 panel-collapse collapse" id="collapseOne">
                                                    <input type="hidden" class="single-slider" value="6"/>
                                                </div>


                                                <div class="w-100 left_margin">
                                                    <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_24" aria-expanded="false" aria-controls="collapseOne" class="ml-1 mt-2">
                                                        <input type="checkbox" class=" comment_checkbox"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>


                                                <div id="comment_24" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q24txt" rows="2" onchange="AddQuestioner('24','As a measure of your company’s commitment, over the next two years what percentage of your workforce in leadership positions will represent workers from under-represented groups.','no-comment','no','0',this.value,'0')"></textarea>
                                                </div>
                                               </div>


                                                 <!---25 QUESTION-->
                                                <div class="question mt-2 mb-3 p-2" data-question="3">
                                                <div class="w-100  p-2">
                                                    <div class="d-flex  justify-content-start">
                                                        <span class="no_span "> 25.</span>
                                                        <span class="question_span ">
                                                        <h4 class="question-title">Finally, how would you rate the success of your corporate DEI policie?   </h4>
                                                        </span>
                                                    </div>
                                                </div>

                                                <div class="w-100 ranking_box mt-3 mb-4 ">
                                                    <input type="hidden" class="single-slider25" id="Q25Rank" value="6" onchange="AddQuestioner('25','Finally, how would you rate the success of your corporate DEI policies?','no-comment1','no','Q25Rank','','0')"/>
                                                </div>
                                                
                                                <div class="row  mt-2 left_margin pl-2 mb-2">
                                                    <h4 class="question-title" >For a score of less than 6, what are the factors you perceive as responsible for the failure?   </h4>
                                                </div>
                                                
                                                <div class="w-100 left_margin pl-1">
                                                    <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_25" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>


                                                <div id="comment_25" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q25txt" rows="2" onchange="AddQuestioner('25','Finally, how would you rate the success of your corporate DEI policies?','no-comment1','no','Q25Rank',this.value,'0')"></textarea>
                                                </div>

                                                <div class="row  mt-3 left_margin pl-2 mb-2">
                                                    <h4 class="question-title" >And for a score of above 7, what are the best practices you adopted responsible for the success? </h4>
                                                </div>
                                                
                                                <div class="w-100 left_margin pl-1">
                                                    <label data-toggle="collapse" data-target="#comment_25_2" aria-expanded="false" aria-controls="collapseOne">
                                                        <input type="checkbox" class="comment_checkbox"/> <span class="comment">Comments</span>
                                                    </label>
                                                </div>
                                                <div id="comment_25_2" aria-expanded="false" class="collapse">
                                                    <textarea class="form-control  text-area-block" id="Q25txt1" rows="2" onchange="AddQuestioner('25','Finally, how would you rate the success of your corporate DEI policies?','no-comment2','no','Q25Rank',this.value,'0')"></textarea>
                                                </div>

                                               </div>

                                                  <!---26 QUESTION-->
                                                  <div class="question mt-2 mb-3 p-2" data-question="3">
                                                    <div class="w-100  p-2">
                                                        <div class="d-flex  justify-content-start">
                                                            <span class="no_span "> 26.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">Did we miss anything? Please help us to expand this project.  </h4>
                                                            </span>
                                                        </div>
                                                    </div>
    
                                                    
                                                    <div class="w-100 left_margin pl-1">
                                                        <label class="d-flex align-items-center" data-toggle="collapse" data-target="#comment_25" aria-expanded="false" aria-controls="collapseOne">
                                                            <input type="checkbox" class="comment_checkbox" checked/> <span class="comment">Add Question</span>
                                                        </label>
                                                    </div>
    
    
                                                    <div id="comment_25" aria-expanded="false" class="collapse show">
                                                        <textarea class="form-control  text-area-block" id="ans_3" rows="2" onchange="AddQuestioner('26','Did we miss anything? Please help us to expand this project.','no-comment','no','0',this.value,'0')"></textarea>
                                                    </div>
    
                                                   </div>


                                                    <!---27 QUESTION-->
                                                <div class="question mt-2 mb-3 p-2" data-question="3">
                                                    <div class="w-100  p-2">
                                                        <div class="d-flex  justify-content-start">
                                                            <span class="no_span "> 27.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">Please rate this program and attributes we cover. </h4>
                                                            </span>
                                                        </div>
                                                    </div>
    
                                                    <div class="w-100 ranking_box mt-3 mb-4 ">
                                                        <input type="hidden"  id="Q27Rank" name="Q27Rank" class="single-slider27" value="6" onchange="AddQuestioner('27','Please rate this program and attributes we cover.','no','Yes','Q27Rank','','0')" />
                                                    </div>
                                                   </div>


                                                
												<hr/>
                                                   <%If trim(session("EID"))<>"" Then%>
                                                    
                                                    <div class="row text-center mb-2">
                                                        <a onClick="callsubmit()"  class="button1 p-2 rounded-0 shadow-sm" style="width:80px !important; color:#fff !important" type="submit" class="button1 p-2 rounded-0 shadow-sm" src="images/login.gif" name="btnsubmit1" value="OK" style="width:80px !important" >SUBMIT</a>
                                                    </div>
													<%else%>
													 <div class="row text-center mb-2">
                                                        <a href="javascript:void(0)"  class="button1 p-2 rounded-0 shadow-sm submit_model_button" style="width:80px !important; color:#fff !important" type="submit" class="button1 p-2 rounded-0 shadow-sm" src="images/login.gif" name="btnsubmit" value="OK" style="width:80px !important" >SUBMIT</a>
                                                    </div>
													<%End If%>
												</form>
                                            </div>
                                            <!---QUESTIONER END HERE-->


                                    </div>
                                    <!---END:HEADING-->
                                    
                                </div>
			
		</div>
	</div>	
			
			</div>
		
</div>

<!-- Categories for home page end -->

</div>
<!-- Body End here -->

</div><!-- Wrapper / End -->
<!---  popup code-->

<div id="submit_model" class="modal rounded-0">
    <div class="border_shadow w-100 pb-3">
        <div class="py-1 border-bottom">
            <h4 class=" text-center P-1 font-weight-bold font-size-15 mb-1" style="color: #E37038; line-height: normal; ">PLEASE REGISTER</h4>
            <h5 class=" text-center P-1 font-weight-bold font-size-15  mb-0" style="color: #E37038; line-height: normal; ">Validated Employee Survey</h5>
        </div>


        <div class="w-lg-70 w-xl-70 w-md-80 w-sm-100 mx-auto p-2">
            <form>
                
				<div class="form-group mb-1 ">
                  <label for="exampleInputEmail1" class="font-weight-bold mt-3"><span class="red_color">*</span> First Name</label>
                  <input type="text" class="form-control w-100" id="txtFirstName" name="txtFirstName" aria-describedby="emailHelp"  value="<%=session("FirstName")%>">                  
                </div>
                <div class="form-group mb-1" >
                  <label for="exampleInputPassword1" class="font-weight-bold mt-3"><span class="red_color">*</span> Last Name</label>
                  <input type="text" class="form-control w-100" id="txtLastName" name="txtLastName" value="<%=session("LastName")%>">
                </div>
                   <div class="form-group" >
                    <label for="exampleInputPassword1" class="font-weight-bold mt-3"><span class="red_color">*</span> Company Domain Email</label>
                    <input type="email" class="form-control w-100" id="txtEmail" value="<%=session("EID")%>"><input type="hidden" id="txtCpcode" name="txtCpcode" value="<%=request("code")%>">
                  </div>
				  <div class="form-group" >
                    <label for="exampleInputPassword1" class="font-weight-bold mt-3"></label>
                    Already registered, please login <a href="https://www.strategyr.com/loginrepeat.asp">here</a>
                  </div>
              </form>
             <div class="w-100 text-center mt-3">
                <a href="#" class="button1 p-2 rounded-0 shadow mx-0  "   rel="modal:close" style="width:38px !important; color: #fff;" onclick="AddQuestionermsg()" >GO</a>
             </div>

        
       </div>


         
     </div>
</div>

<!-- popupcode end-->



<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="scripts/jquery.range.js"></script>
<script>
    $('.single-slider').jRange({
        from:1,
        to: 10,
        step: 0.5,
        scale: ['1','|','2','|','3','|','4','|','5','|','6','|','7','|','8','|','9','|','10'],
        format: '%s',
        width:300,
        showLabels: true,
        snap: true,
      
    });
	
	$('.single-slider27, .single-slider25 .single-slider23').jRange({
        from:1,
        to: 10,
        step: 0.5,
        scale: ['1','|','2','|','3','|','4','|','5','|','6','|','7','|','8','|','9','|','10'],
        format: '%s',
        width:300,
        showLabels: true,
        snap: true,
      
    });

</script>

<script>
    $('[name="collapseGroup1"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse1').collapse('show')
    }else{
        $('#collapse1').collapse('hide')
    }
    });

    $('[name="collapseGroup2"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse2').collapse('show')
    }else{
        $('#collapse2').collapse('hide')
    }
    });

    $('[name="collapseGroup3"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse3').collapse('show')
    }else{
        $('#collapse3').collapse('hide')
    }
    });

    $('[name="collapseGroup4"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse4').collapse('show')
    }else{
        $('#collapse4').collapse('hide')
    }
    });

    $('[name="collapseGroup5"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse5').collapse('show')
    }else{
        $('#collapse5').collapse('hide')
    }
    });

    $('[name="collapseGroup6"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse6').collapse('show')
    }else{
        $('#collapse6').collapse('hide')
    }
    });

    $('[name="collapseGroup7"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse7').collapse('show')
    }else{
        $('#collapse7').collapse('hide')
    }
    });

    $('[name="collapseGroup8"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse8').collapse('show')
    }else{
        $('#collapse8').collapse('hide')
    }
    });

    $('[name="collapseGroup9"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse9').collapse('show')
    }else{
        $('#collapse9').collapse('hide')
    }
    });

    $('[name="collapseGroup10"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse10').collapse('show')
    }else{
        $('#collapse10').collapse('hide')
    }
    });

    $('[name="collapseGroup11"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse11').collapse('show')
    }else{
        $('#collapse11').collapse('hide')
    }
    });

    $('[name="collapseGroup12"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse12').collapse('show')
    }else{
        $('#collapse12').collapse('hide')
    }
    });


    $('[name="collapseGroup13"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse13').collapse('show')
    }else{
        $('#collapse13').collapse('hide')
    }
    });


    $('[name="collapseGroup14"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse14').collapse('show')
    }else{
        $('#collapse14').collapse('hide')
    }
    });


    $('[name="collapseGroup15"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse15').collapse('show')
    }else{
        $('#collapse15').collapse('hide')
    }
    });


    $('[name="collapseGroup16"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse16').collapse('show')
    }else{
        $('#collapse16').collapse('hide')
    }
    });


    $('[name="collapseGroup17"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse17').collapse('show')
    }else{
        $('#collapse17').collapse('hide')
    }
    });


    $('[name="collapseGroup18"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse18').collapse('show')
    }else{
        $('#collapse18').collapse('hide')
    }
    });


    $('[name="collapseGroup19"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse19').collapse('show')
    }else{
        $('#collapse19').collapse('hide')
    }
    });


    $('[name="collapseGroup20"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse20').collapse('show')
    }else{
        $('#collapse20').collapse('hide')
    }
    });


    $('[name="collapseGroup21"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse21').collapse('show')
    }else{
        $('#collapse21').collapse('hide')
    }
    });


    $('[name="collapseGroup22"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse22').collapse('show')
    }else{
        $('#collapse22').collapse('hide')
    }
    });


    $('[name="collapseGroup23"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse23').collapse('show')
    }else{
        $('#collapse23').collapse('hide')
    }
    });

    $('[name="collapseGroup24"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse24').collapse('show')
    }else{
        $('#collapse24').collapse('hide')
    }
    });


    $('[name="collapseGroup25"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse25').collapse('show')
    }else{
        $('#collapse25').collapse('hide')
    }
    });

    $('[name="collapseGroup26"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse26').collapse('show')
    }else{
        $('#collapse26').collapse('hide')
    }
    });


    $('[name="collapseGroup27"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse27').collapse('show')
    }else{
        $('#collapse27').collapse('hide')
    }
    });

    $('[name="collapseGroup28"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse28').collapse('show')
    }else{
        $('#collapse28').collapse('hide')
    }
    });

    $('[name="collapseGroup29"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse29').collapse('show')
    }else{
        $('#collapse29').collapse('hide')
    }
    });

    $('[name="collapseGroup30"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse30').collapse('show')
    }else{
        $('#collapse30').collapse('hide')
    }
    });

    $('[name="collapseGroup31"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse31').collapse('show')
    }else{
        $('#collapse31').collapse('hide')
    }
    });

    $('[name="collapseGroup32"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse32').collapse('show')
    }else{
        $('#collapse32').collapse('hide')
    }
    });

    $('[name="collapseGroup33"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse33').collapse('show')
    }else{
        $('#collapse33').collapse('hide')
    }
    });

    $('[name="collapseGroup34"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse34').collapse('show')
    }else{
        $('#collapse34').collapse('hide')
    }
    });

    $('[name="collapseGroup35"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse35').collapse('show')
    }else{
        $('#collapse35').collapse('hide')
    }
    });

    $('[name="collapseGroup36"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse36').collapse('show')
    }else{
        $('#collapse36').collapse('hide')
    }
    });

    $('[name="collapseGroup37"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse37').collapse('show')
    }else{
        $('#collapse37').collapse('hide')
    }
    });

    $('[name="collapseGroup38"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse38').collapse('show')
    }else{
        $('#collapse38').collapse('hide')
    }
    });


</script>



<script>
    var windowWidth = $(window).width(); 
     if(windowWidth <= 480){ 
     //Means the screen is mobile add a class 
        $(".slider-container").removeAttr("style");

     } 
     else{ 
     

     } 
    $(".single-slider").removeAttr("style");
    </script>




	<script>
    $('a.submit_model_button').click(function(event) {
    $("#submit_model").modal({
      fadeDuration: 250,
      clickClose: false,    
    });
    return false;
  });
    </script>

</body>
</html>