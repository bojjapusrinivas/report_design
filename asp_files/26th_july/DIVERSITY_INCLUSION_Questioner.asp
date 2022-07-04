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
function AddComp_metris(cpcode,mcpcode) {	 

  // alert("hi");
 // alert(cpcode);
 //alert(mcpcode);
 //alert(region);
 
    var vcpCode = cpcode;
	 var vMCPcode = mcpcode;
	 
     var vtxtRval = $("#Rank"+vcpCode).val();
	 var vtxtRtype = "Rtype" + vcpCode;
	// var varqualitative=  $('input[id="qualitative"]:checked').val(); 
	 // alert (vtxtRank);
	 var vtxtRtype=  $('input[id='+vtxtRtype+']:checked').val(); 
	// alert(vtxtRtype);
	 // alert(vtxtRval);
	//alert("Data Saved");
		if (vtxtRtype != null && vtxtRtype != '' && vtxtRval != null && vtxtRval != '')
		  {  
			// alert(vtxtRval);
			 $.ajax({
				url: "Ajax_AddRLP_Compitator_Rank.asp",
				type: "POST",
				data:'vcpCode='+encodeURIComponent(vcpCode)+'&vMCPcode='+encodeURIComponent(vMCPcode)+'&vtxtRtype='+encodeURIComponent(vtxtRtype)+'&vtxtRval='+encodeURIComponent(vtxtRval)+'', 				
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
				alert('Value cannot be left blank');
			  }		
		 

        
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
                                            <div class="row text-primary  w-100 pb-2 mt-3 mb-0 text-center mt-0" id="report_page_title">
                                                    <h2 class="font-weight-bolder line-height-normal " style="color:#E37038; font-size:16px;">VALIDATED EMPLOYEE SURVEY</h2>
													<h3 class="font-weight-bold  line-height-normal" style="color:#000000;font-size: 15px;font-weight: bold !important;">DIVERSITY EQUITY INCLUSION</h3>
                                            </div>
										 <h3 class="d-block w-xl-95 w-lg-95 w-md-100 w-sm-100 w-100 mx-auto mt-0 mb-2 p-2 ">Do We Need More Than One Planet to Support Our Business Activities & Operations?
                                                        Let’s Start With a Quick Assessment of Where Your Business Stands.
                                                        </h3>
                                            <hr/>

                                            <!---QUESTION START HERE-->
                                            <div class="mt-2 w-100">

                                                    <form id="examwizard-question2">

                                                    <!---1ST QUESTION-->
                                                    <div class="question mt-0 mb-1 p-2 " data-question="1">
                                                    
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 1.</span>

                                                                <span class="question_span ">
                                                                <h4 class="question-title">Right now Global Industry Analysts Inc. does not have an established definition of diversity as we know it differs for every organization. We encourage you to share your own unique definition of diversity in the context of your organization’s goals and mission.</h4>
                                                                </span>
                                                             </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <textarea class="form-control  text-area-block" id="ans_1" rows="3"></textarea>
                                                            </div>
                                                    </div>

                                                    <!---2ND QUESTION-->
                                                    <div class="question mt-0 mb-1 p-2" data-question="2">
                                                        <div class="w-100  p-2 ">
                                                            <div class="d-flex">
                                                                <span class="no_span "> 2.</span>
                                                                <span class="question_span ">
                                                            <h4 class="question-title">How is your company tackling D&I in terms of </h4>
                                                            </span>
                                                            </div>
                                                             <ul class="mt-2 list">
                                                              <li class="d-flex mb-1"><span class="no_span ">(i) </span> <span class="question_span ">Recruitment</span> </li>
                                                              <li class="d-flex mb-1"><span class="no_span ">(ii)</span> <span class="question_span ">Rraining and educating people</span> </li>
                                                              <li class="d-flex mb-1"><span class="no_span ">(iii)</span> <span class="question_span ">Empowering employees</span> </li>
                                                              <li class="d-flex mb-1"><span class="no_span ">(iv) </span> <span class="question_span ">Rethinking workforce policies</span> </li>
                                                              <li class="d-flex mb-1"><span class="no_span ">(iv)</span> <span class="question_span ">Rethinking workforce policies</span> </li>
                                                              <li class="d-flex mb-1"><span class="no_span ">(v) </span> <span class="question_span ">Communicating inclusion goals and measure progress</span></li>
                                                              <li class="d-flex mb-1"><span class="no_span ">(vi)</span> <span class="question_span ">Celebrating individual differences</span>  </li>

                                                             </ul>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_2" rows="3"></textarea>
                                                        </div>
                                                    </div>

                                                   
                                                    <!---3RD QUESTION-->
                                                    <div class="question mt-0 mb-1 p-2" data-question="3">


                                                        
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 3.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">How willing are top tier C-level executives in your company to embrace inclusion and diversity and take meaningful action? </h4>
                                                        </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_3" rows="3"></textarea>
                                                        </div>
                                                    
                                                    </div>

                                                     <!---4TH QUESTION-->
                                                     <div class="question mt-0 mb-1 p-2" data-question="4">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 4.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">Do you offer your employees and teams the freedom to choose when and how they want to get involved? Choice and inclusion after all go hand in glove. </h4>
                                                                </h4>
                                                            </div>
                                                            </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_4" rows="3"></textarea>
                                                        </div>
                                                    
                                                    </div>

                                                     <!---5TH QUESTION-->
                                                     <div class="question mt-0 mb-1 p-2" data-question="5">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 5.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">Does your company have organizational policies that ensure stakeholders are held accountable and responsible for ensuring inclusion? </h4>
                                                                </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_5" rows="3"></textarea>
                                                        </div>
                                                    
                                                    </div>

                                                     <!---6TH QUESTION-->
                                                     <div class="question mt-0 mb-1 p-2" data-question="6">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 6.</span>
                                                            
                                                            <span class="question_span ">
                                                            <h4 class="question-title">What opportunities you have to offer employees from disadvantaged backgrounds or engage disadvantaged teams? </h4>
                                                        </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_6" rows="3"></textarea>
                                                        </div>
                                                    
                                                    </div>


                                                      <!---7TH QUESTION-->
                                                     <div class="question mt-0 mb-1 p-2" data-question="7">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 7.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">Do you think inclusive business cultures can boost your company’s reputation and popularity? </h4>
                                                       </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_7" rows="3"></textarea>
                                                        </div>
                                                    
                                                    </div>


                                                    
                                                      <!--8TH QUESTION-->
                                                      <div class="question mt-0 mb-1 p-2" data-question="8">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 8.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">Diversity. Is it associated with improved financial performance? What’s your opinion? </h4>
                                                        </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_8" rows="3"></textarea>
                                                        </div>
                                                    
                                                     </div>


                                                        <!--9TH QUESTION-->
                                                      <div class="question mt-0 mb-1 p-2" data-question="9">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 9.</span>
                                                                <span class="question_span ">
                                                            <h4 class="question-title">Our recent research indicates that most companies have a gap between diversity potential and the ability to unlock that potential. This inclusion gap measures how much or how little diverse perspectives are included in the business decision-making processes. How is your company measuring and closing this inclusion gap? </h4>
                                                        </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                           
                                                            <textarea class="form-control  text-area-block" id="ans_9" rows="3"></textarea>
                                                        </span>
                                                        </div>
                                                    
                                                        </div>


                                                        
                                                        <!--10TH QUESTION-->
                                                      <div class="question mt-0 mb-1 p-2" data-question="10">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 10.</span>
                                                                <span class="question_span ">
                                                            <h4 class="question-title">How important is diversity & inclusion in current times of economic crisis? Do you believe inclusion can help companies thrive in tough times?</h4>
                                                                    </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            
                                                            <textarea class="form-control  text-area-block" id="ans_10" rows="3"></textarea>
                                                       </span>
                                                        </div>
                                                    
                                                        </div>


                                                           
                                                        <!--11TH QUESTION-->
                                                      <div class="question mt-0 mb-1 p-2" data-question="11">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 11.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">What are the manager behaviors that help an employee experience inclusion?</h4>
                                                        </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_11" rows="3"></textarea>
                                                        </div>
                                                    
                                                        </div>


                                                         <!--12TH QUESTION-->
                                                      <div class="question mt-0 mb-1 p-2" data-question="12">
                                                    
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 12.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Has inclusivity issues in your workplace ever impacted your ability to attract new talent?</h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                             
                                                                <textarea class="form-control  text-area-block" id="ans_12" rows="3"></textarea>
                                                            </div>
                                                        
                                                       </div>


                                                         <!--13TH QUESTION-->
                                                      <div class="question mt-0 mb-1 p-2" data-question="13">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 13.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">How likely will you be to recruit talent from minority communities such as blacks, Asians, Latinos and Hispanians, which are hugely underrepresented?</h4>
                                                        </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_13" rows="3"></textarea>
                                                        </div>
                                                    
                                                   </div>

                                                     <!--14TH QUESTION-->
                                                     <div class="question mt-0 mb-1 p-2" data-question="13">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 14.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">Does your company have mentoring programs to empower women in the workforce? After all who does not want equality! </h4>
                                                       </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_14" rows="3"></textarea>
                                                        </div>
                                                    
                                                   </div>


                                                       <!--15TH QUESTION-->
                                                       <div class="question mt-0 mb-1 p-2" data-question="13">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 15.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">	Does your organization offer D&I training for managers responsible for building successful teams? </h4>
                                                        </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_14" rows="3"></textarea>
                                                        </div>
                                                    
                                                    </div>


                                                          <!--16TH QUESTION-->
                                                       <div class="question mt-0 mb-1 p-2" data-question="16">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 16.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">What best describes D&I efforts in your company? Is it… </h4>
                                                        </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <ul class="mt-2   list ">
                                                                <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios4" id="exampleRadios1" value="option1" checked> </span> <span class="question_span ml-2 ">A structured D&I initiative   </span> </li>
                                                                <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios4" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 ">An informal or adhoc D&I initiative   </span> </li>
                                                                <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios4" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 ">Have no D&I practice in place       </span> </li>

                                                            </ul>
                                                        </div>
                                                    
                                                    </div>


                                                            <!--17TH QUESTION-->
                                                       <div class="question mt-0 mb-1 p-2" data-question="17">
                                                    
                                                        <div class="w-100  p-2">
                                                            <div class="d-flex  justify-content-start">
                                                                <span class="no_span "> 17.</span>
                                                            <span class="question_span ">
                                                            <h4 class="question-title">The recent backlash against gender discrimination like the “Black Lives Matter” protests, has it increased the urgency to provide D&I training programs for your employees at all levels?</h4>
                                                        </span>
                                                        </div>
                                                        </div>

                                                        <div class="w-100 mt-1 ">
                                                            <textarea class="form-control  text-area-block" id="ans_17" rows="3"></textarea>
                                                        </div>
                                                    
                                                    </div>



                                                          <!--18TH QUESTION-->
                                                          <div class="question mt-0 mb-1 p-2" data-question="18">
                                                    
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 18.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Which of the following barriers to diversity & inclusion you believe is most challenging to overcome in your organization (on a scale of 1 to 10)?</h4>
                                                           </span>
                                                            </div>
                                                            </div>
    
                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1" checked> </span> <span class="question_span ml-2 ">Negative attitudes of managers and executives leading teams  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 ">Lack of motivation for employee involvement   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 ">Lack of funding & inconsistent policy enforcement    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 ">Lack of female leaders    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 ">Sexism    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 ">Communication barriers leading to less effective teams and reduced synergy in work groups.    </span> </li>
                                                                    

                                                                   
                                                                </ul>
                                                            </div>
                                                        
                                                        </div>


                                                           <!--19TH QUESTION-->
                                                          <div class="question mt-0 mb-1 p-2" data-question="19">
                                                    
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 19.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Is the management board of your company gender diverse? If yes, then what are your perceived advantages of having the same?</h4>
                                                           </span>
                                                            </div>
                                                            </div>
    
                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios2" id="exampleRadios1" value="option1" checked> </span> <span class="question_span ml-2 "> Effective risk-management practices! Do women really improve investment efficiency and prevent risky overinvestment decisions?  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios2" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 "> Are there fewer or reduced risk of fraud and earnings manipulation?    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios2" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 "> Boardroom diversity! Does it strengthen protection of stakeholder interests?    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios2" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 "> Any other perceived benefit? Specify     </span> </li>
                                                                   
                                                                </ul>
                                                            </div>
                                                        
                                                        </div>


                                                              <!--20TH QUESTION-->
                                                          <div class="question mt-0 mb-1 p-2" data-question="20">
                                                    
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 20.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">	If not already adopted, how likely will your company be to adopt online D&I training courses and programs for managers and HR professionals?</h4>
                                                            </span>
                                                            </div>
                                                            </div>
    
                                                            <div class="w-100 mt-1 ">
                                                                <textarea class="form-control  text-area-block" id="ans_20" rows="3"></textarea>
                                                            </div>
                                                        
                                                        </div>


                                                             <!--21TH QUESTION-->
                                                             <div class="question mt-0 mb-1 p-2" data-question="21">
                                                    
                                                                <div class="w-100  p-2">
                                                                    <div class="d-flex  justify-content-start">
                                                                        <span class="no_span "> 21.</span>
                                                                    <span class="question_span ">
                                                                    <h4 class="question-title">Studies have shown that successful D&I programs result in improvements in decision making, company financial performance, employee productivity, creativity and innovation. Has your company experienced any or all of these benefits?</h4>
                                                               </span>
                                                                </div>
                                                                </div>
        
                                                                <div class="w-100 mt-1 ">
                                                                    <textarea class="form-control  text-area-block" id="ans_21" rows="3"></textarea>
                                                                </div>
                                                            
                                                            </div>

                                                              <!--22TH QUESTION-->
                                                             <div class="question mt-0 mb-1 p-2" data-question="22">
                                                    
                                                                <div class="w-100  p-2">
                                                                    <div class="d-flex  justify-content-start">
                                                                        <span class="no_span ">22.</span>
                                                                    <span class="question_span ">
                                                                    <h4 class="question-title">As a measure of your company’s commitment to diversity and inclusion initiatives, over the next two years what percentage of your workforce in leadership positions will represent workers from under-represented groups.</h4>
                                                                </span>
                                                                </div>
                                                                </div>
        
                                                                <div class="w-100 mt-1 ">
                                                                    <textarea class="form-control text-area-block " id="ans_22" rows="3"></textarea>
                                                                </div>
                                                            
                                                            </div>


                                                            <!--23TH QUESTION-->
                                                            <div class="question mt-0 mb-1 p-2" data-question="22">
                                
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 23.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Finally, on a scale of 1 to 10 how would you rate the success of your corporate D&I policies? </h4>
                                                            </span>
                                                            </div>
                                                            </div>
    
                                                            <div class="w-100 mt-1">
                                                                <ul class="mt-2  list">
                                                                    <li class="d-flex mb-3"> <input type="hidden" class="single-slider" value="6" /></li>
                                                                    <li class="d-flex mb-1"> <span class="question_span ml-2 " style="font-size: 13px; font-style: italic;"> For a score of less than 6, what are the factors you perceive as responsible for the failure of your D&I initiative?   </span> </li>
                                                                    <li class="d-flex mb-1"> <span class="question_span ml-2 " style="font-size: 13px; font-style: italic;"> And for a score of above 7, what are the best practices you adopted responsible for the success of your D&I initiative?</span> </li>
                                                                </ul>
                                                            </div>
                                                        
                                                            </div>
                                                </form>
                                                    <hr/>
                                                    <div class="row text-center mb-2">
                                                        <a href="javascript:void(0)"  class="button1 p-2 rounded-0 shadow-sm submit_model_button" style="width:80px !important; color:#fff !important" type="submit" class="button1 p-2 rounded-0 shadow-sm" src="images/login.gif" name="btnsubmit" value="OK" style="width:80px !important">SUBMIT</a>
                                                    </div>

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
         <h4 class=" text-center P-1 font-weight-bold font-size-15 border-bottom " style="color: #E37038; line-height: normal; ">PLEASE LOGIN TO FINISH THE SURVEY</h4>
         
         <div class="form_div_01">
             <table cellpadding="0" cellspacing="5">
             <tbody>							
                <tr align="center">
                 <td align="right" class="td1"></td>
                 <td class="td2">&nbsp;</td>
                 <!--<td height="30"  align="left" class="td4 text-center">All items are <span class="red_color">mandatory</span></td>-->
                 </tr>
                
               <tr align="center">
                 <td align="right" valign="middle" class="td1"><span class="field1 font-weight-bold pt-2"><span class="red_color">*</span>First Name:</span></td>
                 <td class="td2"></td>
                 <td height="40" align="left" class="td3"><div align="left">
                  <input type="text" class="txtbox140 w-xl-80 w-lg-80 w-md-80 w-sm-85" name="firstname" id="txtemailid" placeholder="First Name" size="50" value="">
                 </div></td>
                 </tr>
               <tr align="center">
                 <td align="right" valign="middle" class="td1 font-weight-bold pt-2"><span class="red_color">*</span> Last Name:</td>
                 <td class="td2"></td>
                 <td height="40" align="left" class="td3"><input type="password" class="txtbox140 w-xl-80 w-lg-80 w-md-80 w-sm-85" name="lastname" id="lastname" maxlength="25" placeholder="Last Name" size="50"></td>
                 </tr>

                 <tr align="center">
                    <td align="right" valign="middle" class="td1 font-weight-bold pt-2"><span class="red_color">*</span> Work Email:</td>
                    <td class="td2"></td>
                    <td height="40" align="left" class="td3"><input type="password" class="txtbox140 w-xl-80 w-lg-80 w-md-80 w-sm-85" name="email" id="txtpwd" maxlength="25" placeholder=Working Email" size="25"></td>
                    </tr>


               <tr align="center">
                 <td align="right" valign="middle" class="td1 "></td>
                 <td class="td2"></td>
                 <td height="40" align="left" class="td3 pl-xl-2 pl-lg-2 pl-md-2 pl-sm-5">
                 
                 <a href="#" class="button1 p-2 rounded-0 shadow "   rel="modal:close" style="width:38px !important; color: #fff;">GO</a>
                 
                 
                 </td>

                 
                 </tr>
               </tbody>
             </table>

        
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
        width:400,
        showLabels: false,
        snap: true,
      
    });
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