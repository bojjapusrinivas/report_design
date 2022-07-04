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
        .short_text{
            display: none;
        }

        .long_text{
            display: block;
        }

        .collapse_btn{
            width: 18px;
            height: 18px;
            position: relative;
            padding: 0px;
        }

        .collapse_btn.collapsed:before
        {
            content: '\f067';
        position: absolute;
        width: 18px;
        height: 18px;
        font-family: FontAwesome;
        color: #169FE6;
        left: 0px;
        font-size: 10px;
        top: -6px;
        z-index: 999;
        font-weight: 400;
        text-align: center;
        }

        .collapse_btn:before
        {
        content: '\f068';
        position: absolute;
        width: 18px;
        height: 18px;
        font-family: FontAwesome;
        color: #169FE6;
        left: 0px;
        font-size: 10px;
        top: -6px;
        z-index: 999;
        font-weight: 400;
        text-align: center;
        }


        .tooltippopup[title]:hover:after {
        content: attr(title);
        position: absolute;
        display: block;
        min-width: 105px;
        line-height: 17px;
        letter-spacing: normal;
        padding: 3px;
        font-size: 11px;
        min-height: auto;
        color: #000;
        bottom: 24px;
        background: #fff;
        /* font-family: 'Open Sans'; */
        border: rgba(0, 0, 0, 0.2) solid 1px;
        right: -23px;
        text-align: center;
}


        @media only screen and (max-width: 959px){

            .short_text{
            display:block;
        }

        .long_text{
            display: none;
        }
		


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
                                            <div class="my-1 text-center">
                                                    <h1 class="mt-0 mb-2">QUESTIONNAIRE</h1>
                                                    <h2 class="mt-0 mb-2">HELP US TO HELP YOU</h2>
                                                    <h3 class="d-block w-xl-80 w-lg-80 w-md-100 w-sm-100 w-100 mx-auto mt-0 mb-2 p-2">Do We Need More Than One Planet to Support Our Business Activities & Operations?
                                                        Let’s Start With a Quick Assessment of Where Your Business Stands.
                                                        </h3>
                                            </div>
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
                                                                    <h4 class="question-title">Which of the four statements about climate change comes closest to your view?</h4>
                                                                    </span>
                                                                </div>
                                                                </div>

                                                                <div class="w-100 mt-1 ">
                                                                    <ul class="mt-2   list ">
                                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios1" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Climate change is real & happening   </span> </li>
                                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios1" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">The dangers of climate change are hyped & the claims almost apocalyptic   </span> </li>
                                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios1" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Businesses cannot tackle climate change on their own   </span> </li>
                                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios1" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">One business can really make a powerful difference    </span> </li>
                                                                    
                                                                    </ul>
                                                                </div>
                                                            
                                                        </div>

                                                        <!---2ND QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="2">
                                                            <div class="w-100  p-2 ">
                                                                <div class="d-flex">
                                                                    <span class="no_span "> 2.</span>
                                                                    <span class="question_span ">
                                                                <h4 class="question-title">Do you agree that the COVID-19 outbreak is a fallout of humanity’s despoiling of nature? </h4>
                                                                </span>
                                                                </div>
                                                                
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios2" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Yes  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios2" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">No   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios2" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Maybe   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios2" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Not Sure    </span> </li>
                                                                
                                                                </ul>
                                                            </div>
                                                        </div>

                                                    
                                                        <!---3RD QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="3">


                                                            
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 3.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Do you think this pandemic has prompted a growing realization that addressing environmental threats has now become a critical part of business risk management? </h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Yes  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">No   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Maybe   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios3" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Not Sure    </span> </li>
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                        </div>


                                                        <!---4TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="4">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 4.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">How willing is your company to leverage this unique opportunity to rebuild and make a green recovery?  </h4>
                                                                    </h4>
                                                                </div>
                                                                </div>

                                                            <div class="w-100 mt-1 ">
                                                                <textarea class="form-control  text-area-block" id="ans_4" rows="3"></textarea>
                                                            </div>
                                                        
                                                        </div>

                                                        <!---5TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="5">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 5.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Which sector is your business in? </h4>
                                                                    </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Manufacturing  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Construction   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Oil & Gas   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Services    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Retail    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Others (Specify)    </span> </li>
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                        </div>

                                                        <!---6TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="6">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 6.</span>
                                                                
                                                                <span class="question_span ">
                                                                <h4 class="question-title">How much energy does your business use? (Specify in $ or kilowatts per year)? </h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <textarea class="form-control  text-area-block" id="ans_6" rows="3"></textarea>
                                                            </div>
                                                        
                                                        </div>


                                                        <!---7TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="7">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 7.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Do you favor or oppose expanding each of the following sources of energy in our country? </h4>
                                                        </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios7" value="option1" checked=""> </span> <span class="question_span ml-2 ">More offshore oil and gas drilling   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios7" value="option1"></span> <span class="question_span ml-2 ">More nuclear power plants to generate electricity    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios7" value="option1"></span> <span class="question_span ml-2 ">More coal mining    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios7" value="option1"></span> <span class="question_span ml-2 ">More solar panel “farms”     </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios7" value="option1"></span> <span class="question_span ml-2 ">Retail    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios5" id="exampleRadios7" value="option1"></span> <span class="question_span ml-2 ">More wind turbine “farms”    </span> </li>
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                        </div>


                                                        
                                                        <!--8TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="8">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 8.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">What percentage (%) energy used by your business comes from renewable energy sources?  </h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios8" id="exampleRadios7" value="option1" checked=""> </span> <span class="question_span ml-2 ">0%   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios8" id="exampleRadios7" value="option1"></span> <span class="question_span ml-2 ">10%    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios8" id="exampleRadios7" value="option1"></span> <span class="question_span ml-2 ">15%   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios8" id="exampleRadios7" value="option1"></span> <span class="question_span ml-2 ">25%    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios8" id="exampleRadios7" value="option1"></span> <span class="question_span ml-2 ">Other (Specify)  </span> </li>
                                                                    
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                        </div>


                                                            <!--9TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="9">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 9.</span>
                                                                    <span class="question_span ">
                                                                <h4 class="question-title">Has your business ever considered installing solar panels to generate electricity for your offices and plants?</h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios9" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Yes  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios9" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">No   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios9" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Maybe   </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios9" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Not Sure    </span> </li>
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                            </div>


                                                            
                                                            <!--10TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="10">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 10.</span>
                                                                    <span class="question_span ">
                                                                <h4 class="question-title">	Achieving net-zero emissions by 2050?</h4>
                                                                        </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios10" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Is realistic  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios10" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Is a pipe dream    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios10" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Deceptively simple    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios10" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Difficult to achieve     </span> </li>
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                            </div>


                                                            
                                                            <!--11TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="11">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 11.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">What are the best practices you think are necessary to reduce your company’s carbon footprint & leading on climate policy?</h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios11" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Active involvement of top management  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios11" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Setting science-based greenhouse gas reduction targets    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios11" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Collaborating across industries and supply chains     </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios11" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Adopting and deploying technologies to accelerate sustainability.     </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios11" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">All of the above     </span> </li>
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                            </div>


                                                            <!--12TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="12">
                                                        
                                                                <div class="w-100  p-2">
                                                                    <div class="d-flex  justify-content-start">
                                                                        <span class="no_span "> 12.</span>
                                                                    <span class="question_span ">
                                                                    <h4 class="question-title">How important is the role of the top management in “committing to and releasing a company-wide climate plan?</h4>
                                                                </span>
                                                                </div>
                                                                </div>

                                                                <div class="w-100 mt-1 ">
                                                                    <ul class="mt-2   list ">
                                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios12" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Very important  </span> </li>
                                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios12" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Not important       </span> </li>
                                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios12" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Fairly important     </span> </li>
                                                                        
                                                                    
                                                                    </ul>
                                                                </div>
                                                            
                                                        </div>


                                                            <!--13TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="13">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 13.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">What efforts have your business taken to operate in ways that help protect the environment?</h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <textarea class="form-control  text-area-block" id="ans_13" rows="3"></textarea>
                                                            </div>
                                                        
                                                    </div>

                                                        <!--14TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="13">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 14.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">How much has your company spent on investing in energy efficiency in the past year? </h4>
                                                        </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <textarea class="form-control  text-area-block" id="ans_14" rows="3"></textarea>
                                                            </div>
                                                        
                                                    </div>


                                                        <!--15TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="13">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 15.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">	What is the probability that your company over the medium to long-term will improve its environmental performance beyond the requirements established by existing regulations? </h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios15" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">High  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios15" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 "> Very High      </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios15" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Low     </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios15" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Not Sure      </span> </li>
                                                                    
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                        </div>


                                                            <!--16TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="16">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 16.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Why do you think companies continue to externalize climate change to other people, places and times?</h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios16" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Lack of regulations that pin responsibility  </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios16" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Lack of resources to deploy      </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios16" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Lack of commitment      </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios16" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Lack of regulations that penalize companies that fail      </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios16" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">All of the above      </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios16" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Other (Specify)      </span> </li>
                                                                    
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                        </div>


                                                                <!--17TH QUESTION-->
                                                        <div class="question mt-2 mb-3 p-2" data-question="17">
                                                        
                                                            <div class="w-100  p-2">
                                                                <div class="d-flex  justify-content-start">
                                                                    <span class="no_span "> 17.</span>
                                                                <span class="question_span ">
                                                                <h4 class="question-title">Voluntary environmental stewardship as a method of private governance?</h4>
                                                            </span>
                                                            </div>
                                                            </div>

                                                            <div class="w-100 mt-1 ">
                                                                <ul class="mt-2   list ">
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios17" id="exampleRadios1" value="option1" checked=""> </span> <span class="question_span ml-2 ">Is too future-oriented to succeed    </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios17" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Not as effective as mandatory regulations for environmental protection      </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios17" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">Very effective over the long-term      </span> </li>
                                                                    <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios17" id="exampleRadios1" value="option1"></span> <span class="question_span ml-2 ">World needs a more aggressive framework     </span> </li>
                                                                    
                                                                    
                                                                
                                                                </ul>
                                                            </div>
                                                        
                                                        </div>



                                                            <!--18TH QUESTION-->
                                                            <div class="question mt-2 mb-3 p-2" data-question="18">
                                                        
                                                                <div class="w-100  p-2">
                                                                    <div class="d-flex  justify-content-start">
                                                                        <span class="no_span "> 18.</span>
                                                                    <span class="question_span ">
                                                                    <h4 class="question-title">Has your company purchased carbon offsets or renewable energy certificates?</h4>
                                                            </span>
                                                                </div>
                                                                </div>
        
                                                                <div class="w-100 mt-1 ">
                                                                    <ul class="mt-2   list ">
                                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios18" id="exampleRadios1" value="option1" checked> </span> <span class="question_span ml-2 ">Yes  </span> </li>
                                                                        <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios18" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 ">No   </span> </li>
                                                                    
                                                                    </ul>
                                                                </div>
                                                            
                                                            </div>


                                                            <!--19TH QUESTION-->
                                                            <div class="question mt-2 mb-3 p-2" data-question="19">
                                                        
                                                                <div class="w-100  p-2">
                                                                    <div class="d-flex  justify-content-start">
                                                                        <span class="no_span "> 19.</span>
                                                                    <span class="question_span ">
                                                                    <h4 class="question-title">Cap-and-Trade Versus Carbon Tax, which works better & why? Please share your thoughts?</h4>
                                                            </span>
                                                                </div>
                                                                </div>
                                                                <div class="w-100 mt-1 ">
                                                                    <textarea class="form-control  text-area-block" id="ans_20" rows="3"></textarea>
                                                                </div>
                                                            
                                                            
                                                            </div>


                                                                <!--20TH QUESTION-->
                                                            <div class="question mt-2 mb-3 p-2" data-question="20">
                                                        
                                                                <div class="w-100  p-2">
                                                                    <div class="d-flex  justify-content-start">
                                                                        <span class="no_span "> 20.</span>
                                                                    <span class="question_span ">
                                                                    <h4 class="question-title">Carbon pricing programs adopted in countries worldwide are today fairly modest. How high do you think the prices should be to spur truly deep reductions in CO2?</h4>
                                                                </span>
                                                                </div>
                                                                </div>
        
                                                                <div class="w-100 mt-1 ">
                                                                    <textarea class="form-control  text-area-block" id="ans_20" rows="3"></textarea>
                                                                </div>
                                                            
                                                            </div>


                                                                <!--21TH QUESTION-->
                                                                <div class="question mt-2 mb-3 p-2" data-question="21">
                                                        
                                                                    <div class="w-100  p-2">
                                                                        <div class="d-flex  justify-content-start">
                                                                            <span class="no_span "> 21.</span>
                                                                        <span class="question_span ">
                                                                        <h4 class="question-title">	In your country what is the percentage (%) share of emissions covered by carbon pricing?</h4>
                                                                </span>
                                                                    </div>
                                                                    </div>
            
                                                                    <div class="w-100 mt-1 ">
                                                                        <ul class="mt-2   list ">
                                                                            <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios21" id="exampleRadios1" value="option1" checked> </span> <span class="question_span ml-2 "> $15-$30 per metric ton of CO2  </span> </li>
                                                                            <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios21" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 "> $35 to $45 per metric ton of CO2   </span> </li>
                                                                            <li class="d-flex mb-1"><span class="no_span "> <input class="form-check-input mt-1" type="radio" name="exampleRadios21" id="exampleRadios1" value="option1" ></span> <span class="question_span ml-2 "> Other (Specify)   </span> </li>
                                                                            
                                                                        </ul>
                                                                    </div>
                                                                
                                                                </div>

                                                            
                                                    </form>
                                                    <hr/>
                                                    <div class="row text-center mb-2">
                                                        <button type="submit" class="button1 p-2 rounded-0 shadow-sm" src="images/login.gif" name="btnsubmit" value="OK" style="width:80px !important">SUBMIT</button>
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

<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->

 <script>
            $(' .owl-one').owlCarousel({
                loop:true,
                margin:5,
                nav:true,
				autoplay:true,
				autoplayTimeout:15000,
				autoplayHoverPause:true,
                responsive:{
                    0:{
                        items:1
                    },
                    600:{
                        items:1
                    },
                    1000:{
                        items:1
                    }
                }
            })
            
            
            $('.owl-two').owlCarousel({
                loop:true,
                margin:15,
                nav:true,
				slideBy:10,
				autoplay:true,
				autoplayTimeout:3000,
				autoplayHoverPause:true,
                responsive:{
                    0:{
                        items:2
                    },
                    600:{
                        items:3
                    },
                    1000:{
                        items:7
                    }
                }
            })
         </script>
		
</body>
</html>