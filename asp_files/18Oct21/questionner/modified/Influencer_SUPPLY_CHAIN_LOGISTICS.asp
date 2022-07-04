<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<%
If trim(session("EID"))="" then
	response.write ("<p align ='center'><br/><br/><font face='verdana' color='red' size='3'><b>Please login to view the CARBON FOOTPRINT survey</b></font></p>")
	response.write ("<p align ='center'><br/><font face='verdana' size='3'><a href='loginrepeat.asp'><b>LOGIN NOW</b></a></font></p>")
	response.end
End If
%>
<head>
    <!--#INCLUDE FILE="ADOVBS.asp" -->
    <!--#INCLUDE FILE="aspincludes/dbopen.asp" -->
    <!-- Basic Page Needs

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

<body leftmargin=0 rightmargin=0 topmargin=0 bottommargin=0 onBeforePrint="document.body.style.display='none'" onAfterPrint="document.body.style.display=''" onContextmenu="return false" onSelectstart="return false" onDragstart="return false">
    <link rel="stylesheet" href="https://www.strategyr.com/css/giaslider_css.css">
    <link rel="stylesheet" href="https://www.strategyr.com/css/owl/owl.carousel.css">
    <link rel="stylesheet" href="https://www.strategyr.com/css/owl/owl.theme.green.css">
    <link rel="stylesheet" href="https://www.strategyr.com/css/owl/owl.theme.default.css">
    <!--link rel='stylesheet' href="https://www.strategyr.com/css/eco_systems.css" async-->
    <link rel="stylesheet" href="https://www.strategyr.com/css/competitive_style1.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/landing_page_new.css" />
    <link rel="stylesheet" href="css/QUESTIONNAIRE_STYLE2.CSS" async />
    <link rel="stylesheet" href="css/jquery.range.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

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
            <style>
                .modal {
                    max-width: 400px !important;
                }
            </style>
            <style>
                #linkedin_mobel {
                    display: none;
                    width: 100%;
                    height: 100%;
                    position: fixed;
                    background: rgba(0, 0, 0, 0.95);
                    z-index: 9999;
                    left: 0px;
                    top: 0px;
                    overflow: unset;
                }

            </style>
            <style type="text/css">
                .switch {
                    position: relative;
                    display: inline-block;
                    width: 140px;
                    height: 29px;
                    margin-top: 7px;
                }
                
                .switch input {
                    margin-left: 25px;
                }
                
                .switch input {
                    opacity: 0;
                    width: 0;
                    height: 0;
                }
                
                .slider {
                    position: absolute;
                    cursor: pointer;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    background-color: #255e91;
                    -webkit-transition: .4s;
                    transition: .4s;
                }
                
                .slider i:nth-child(1) {
                    display: none;
                }
                
                .slider i:nth-child(2) {
                    display: block;
                    font-size: 15px;
                    font-weight: bold;
                    margin-left: 22px;
                    color: #FFF;
                }
                
                input:checked+.slider i:nth-child(1) {
                    display: block;
                    font-size: 15px;
                    font-weight: bold;
                    margin-left: -4px;
                    color: #000
                }
                
                input:checked+.slider i:nth-child(2) {
                    display: none;
                }
                
                .slider:before {
                    position: absolute;
                    content: "\f061";
                    height: 24px;
                    width: 24px;
                    left: 4px;
                    bottom: 3px;
                    background-color: white;
                    -webkit-transition: .4s;
                    transition: .4s;
                    font-family: FontAwesome;
                    padding: 2px 5px;
                    font-size: 17px;
                    color: #255e91;
                    font-weight: bold;
                }
                
                input:checked+.slider:before {
                    position: absolute;
                    content: "\f060";
                    height: 24px;
                    width: 24px;
                    left: 4px;
                    bottom: 3px;
                    background-color: white;
                    -webkit-transition: .4s;
                    transition: .4s;
                    font-family: FontAwesome;
                    padding: 2px 5px;
                    font-size: 17px;
                    color: black;
                    font-weight: bold;
                }
                
                input:checked+.slider {
                    background-color: #CCC
                }
                
                input:focus+.slider {
                    box-shadow: 0 0 1px #CCC
                }
                
                input:checked+.slider:before {
                    -webkit-transform: translateX(109px);
                    -ms-transform: translateX(109px);
                    transform: translateX(109px);
                }
                /* Rounded sliders */
                
                .slider.round {
                    border-radius: 17px;
                    padding: 4px 10px;
                }
                
                .slider.round:before {
                    border-radius: 50%;
                }
                
                @media only screen and (min-width: 300px) and (max-width: 479px) {
                    .slider.round {
                        transform: scale(0.8);
                    }
                    .view_entire_pool_btn {
                        font-size: 16px !important;
                    }
                }
            </style>

            <script type="text/javascript">
                function myFunction(txtname, taxval, filename, code) {
                    // 01txtval.val(val);
                    // alert(parseFloat(5.5));
                    if (parseFloat(taxval) > 5.1) {
                        // alert(parseInt(taxval));
                        //var taxval1 = taxval.toFixed(1);
                        //alert (taxval.toFixed(1));
                        /// TO REMOVE ROUND TO 1 DECIMAL POINT IN THE FLOAT TYPE VARIABLE
                        taxval = Math.round(taxval * 10) / 10
                        $("#" + txtname).val(taxval);
                        AddMarket_Influencer_Score(filename, code);
                    } else {
                        $("#" + txtname).val('');
                    }

                    // alert("The input value has changed. The new value is: " + val);
                }
            </script>
            <script>
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

                function fnc(value, min, max) {
                    if (parseInt(value) < 5 || isNaN(value))
                        return 5;
                    else if (parseInt(value) > 10)
                        return "10";
                    else return value;
                }

                function AddAllComp_metris() {
                    //alert(code);
                    //var v= $('input[type=radio].rankclass:checked');
                    // $(v).each(function(i){
                    // alert($(this));


                    //});

                    //alert("Market influence score updated successfully");
                }

                function funMarket_Influence_Profile(pfname, plname, pemail, pDesignation, ptype) {

                    //var vcpCode = cpcode;
                    // var vMCPcode = mcpcode;
                    var vFirstname = $("#" + pfname).val();
                    var vLastname = $("#" + plname).val();
                    var vEmail = $("#" + pemail).val();
                    var vDesignation = $("#" + pDesignation).val();

                    var infsno = $("#hdninfsno").val();

                    var infcodeCHK = $("#HDNinfcode").val();
                    // alert(infsno);
                    if (vFirstname != null && vFirstname != '' && vLastname != null && vLastname != '' && vEmail != null && vEmail != '' && vDesignation != null && vDesignation != '' && infsno != '') {
                        $.ajax({
                            url: "Ajax_AddMarket_Influence_Profile.asp",
                            type: "POST",
                            data: 'vFirstname=' + encodeURIComponent(vFirstname) + '&vLastname=' + encodeURIComponent(vLastname) + '&infsno=' + encodeURIComponent(infsno) + '&vEmail=' + encodeURIComponent(vEmail) + '&vDesignation=' + encodeURIComponent(vDesignation) + '&ptype=' + encodeURIComponent(ptype) + '&infcodeCHK=' + encodeURIComponent(infcodeCHK) + '',
                            success: function(data) {
                                //alert(data);
                                alert("Thank you. Your first step of verification is complete.");
                                $("#linkedin_mobel").attr("style", "display:block !important");

                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(xhr.status);
                                alert(thrownError);
                                alert(xhr.responseText);
                            }
                        });
                    } else {
                        alert('All the fields are mandatory');
                    }
                }

                //


                function Change_Influencer_Status(cpcode) {

                    //alert(cpcode);
                    var vcpCode = cpcode;
                    var infsno = $("#hdninfsno").val();
                    //alert(vcpCode);

                    var varqualitative = $('input[id="chkremove"]:checked').val();
                    // alert(varqualitative);	   
                    // alert(infsno);

                    if (varqualitative == "on") {
                        varqualitative = 'N';
                    } else {
                        varqualitative = 'Y';
                    }

                    if (varqualitative != null && varqualitative != '') {
                        $.ajax({
                            url: "Ajax_UpdateInfluencer_Status.asp",
                            type: "POST",
                            data: 'vcpCode=' + encodeURIComponent(vcpCode) + '&varqualitative=' + encodeURIComponent(varqualitative) + '&infsno=' + encodeURIComponent(infsno) + '',
                            success: function(data) {
                                //alert(data);
                                //alert("Data Updated Sucessfully");		
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(xhr.status);
                                alert(thrownError);
                                alert(xhr.responseText);
                            }
                        });
                    }


                }

                function AddMarket_Influencer_Score(cpcode, mcpcode) {

                    //alert(cpcode);
                    var vcpCode = cpcode;
                    var vMCPcode = mcpcode;
                    var infsno = $("#hdninfsno").val();

                    // var vtxtSval = $("#"+vMCPcode+"Sval").val();
                    var vtxtval = $("#" + vMCPcode + "txtval").val();


                    /*alert(vcpCode);
	alert(vMCPcode);
	
    alert(vtxtSval);
	alert(vtxtval);
	alert(infsno);*/

                    var vtxtRtype = "Opt" + vMCPcode;

                    // var varqualitative=  $('input[id="vtxtRtype"]:checked').val(); 
                    // alert (varqualitative);

                    var vctxtRtype = $('input[id=' + vtxtRtype + ']:checked').val();

                    if (vctxtRtype == "on") {
                        vctxtRtype = 'NA';
                    } else {
                        vctxtRtype = '';
                    }
                    //alert(vctxtRtype);

                    // alert(vtxtRval);
                    //alert("Data Saved");
                    if (vcpCode != null && vMCPcode != '' && vMCPcode != null && infsno != '') {

                        $.ajax({
                            url: "Ajax_AddILP_Market_Influencer_Score.asp",
                            type: "POST",
                            data: 'vcpCode=' + encodeURIComponent(vcpCode) + '&vMCPcode=' + encodeURIComponent(vMCPcode) + '&infsno=' + encodeURIComponent(infsno) + '&vtxtval=' + encodeURIComponent(vtxtval) + '&vctxtRtype=' + encodeURIComponent(vctxtRtype) + '',
                            success: function(data) {
                                //alert(data);
                                //alert("Data Updated Sucessfully");					
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(xhr.status);
                                alert(thrownError);
                                alert(xhr.responseText);
                            }
                        });
                    } else {
                        //alert('Value cannot be left blank');
                        $("#Rank" + vcpCode).focus();
                    }



                }
				
				function getSubmitValue(LogVal)
				{
					//alert (LogVal);
					if (LogVal!="")
					{
						alert ("Thank you. Survey response added successfully");
					}
					else
					{
						alert ("Please login to complete the survey");
					}
					
				}
            </script>
            <!-- Wrapper  Start -->

            <!-----TOP START----->
            <!--#include file="ASPIncludes/TopStrip.asp"-->
            <!-----TOP START END----->
            <script src="https://www.strategyr.com/scripts/owl/owl.carousel.js"></script>
            <!-- Body Start here -->

            <!-- jQuery UI library -->
            <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
            <style>
                .ui-autocomplete {
                    max-height: 200px;
                    /* height:300px !important;
 overflow:hidden;*/
                    overflow-x: scroll;
                }
            </style>
            <link rel="stylesheet" href="https://www.strategyr.com/css/influencer_style.css" />
            <link rel="stylesheet" href="https://www.strategyr.com/css/jquery.range.css" />
            <link rel="stylesheet" href="https://www.strategyr.com/css/share/sharer.css" />
            <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
            <!---FROM HERE COPY STYLES-->
            <style>
                #submit_form.disable {
                    background-color: #ccc !important;
                }
            </style>
            <!---UPTO HERE STYLES-->




          
             
                <!-- Categories for home page Start -->

                <div class="container">
                    <!---BEGN REPORT TITLE--->
                    <!--INCLUDE FILE="newReportTitle_New1.asp" -->
                    <!---END REPORT TITLE--->

                    <div class="w-100">
                        <div class="row mb-0 mx-0">
                            
                                        
                                        
                                            <!---BEGIN: COLLAPSE FOR SHARE BUTTON -->

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
                           <!---BEGIN:COLLAPSE-->
                           <div class="collapse show my-3 w-100 p-0" id="questionnaire">

                            <!---BEGIN:HEADING-->
                            <div class=" border position-relitive" id="questionnaire_block">
                                <div class="row text-primary  w-100 pb-2 mt-3 mb-0 text-center mt-0"
                                    id="questionnaire_title">
                                    <h1 class="font-weight-bold  line-height-normal" style="color: #E37038;"> SUPPLY CHAIN & LOGISTICS </h1>
                                    <h2 class="line-height-normal" style="color:#000">VALIDATED EMPLOYEE SURVEY</h2>


                                </div>

                                <h3 class="d-block w-xl-95 w-lg-95 w-md-100 w-sm-100 w-100 mx-auto mt-0 mb-2 py-2 px-3 "
                                    style="font-style: italic; line-height: normal; font-size: 15px !important;">Privacy
                                    - Participants’ identities are never disclosed. Analyses by industry, rankings by
                                    company, and related trends and stats are published.
                                </h3>
                                <hr />

                                <!---QUESTION START HERE-->
                                <div class="mt-2 w-100">

                                    <form id="questioner">
                                        <ul class="question mt-2 mb-3">
                                          <!----QUESTION-01---->
                                          <li>
                                            <h4>As a supply chain professional, do you agree that global supply chains are in transition? </h4>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q1" id="q1_a">
                                                        </div>
                                                        <label>Yes</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q1" id="q1_b">
                                                        </div>
                                                        <label>No</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q1" id="q1_c">
                                                        </div>
                                                        <label>Don't Know </label>
                                                    </div>

                                                
                                                
                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>

                                         <!---QUESTION-02-->
                                         <li>
                                            <h4>How would you rate the scale of COVID-19 impact on your supply chain? </h4>
                                            <div class="ml mt-3 mb-2" id="q4_rank">
                                                <div class="w-100 px-2 ">
                                                    <input type="hidden" class="single-slider" value="0" />
                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                        style="font-weight: bold; ">Slide Bar Score</span>
                                                </div>
                                            </div>

                                            <div class="ml mt-2">
                                                <div aria-expanded="false" class="collapse show">
                                                    <textarea class="form-control   comments_block" id="comment_25"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>

                                        </li>


                                          <!----QUESTION-03---->
                                          <li>
                                            <h4>How has supply chain risk increased for your company over the last year and a half?</h4>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q3" id="q3_a">
                                                        </div>
                                                        <label>Significant Increase</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q3" id="q3_b">
                                                        </div>
                                                        <label>Moderate Increase</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q3" id="q3_c">
                                                        </div>
                                                        <label>Slight Increase </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q3" id="q3_d">
                                                        </div>
                                                        <label>Significant Decrease</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q3" id="q3_e">
                                                        </div>
                                                        <label>Significant Decrease</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q3" id="q3_f">
                                                        </div>
                                                        <label>Slight Decrease </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q3" id="q3_g">
                                                        </div>
                                                        <label>No Change </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q3" id="q3_h">
                                                        </div>
                                                        <label>Not Sure </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                           </li>

                                           <!----QUESTION-04---->
                                           <li>
                                            <h4>How has COVID-19 pandemic impacted/influenced your supply chain digitalization strategy & plans? </h4>

                                            <div class="ml">
                                                <div class="d-flex flex-column justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q4" id="q4_a">
                                                        </div>
                                                        <label>Accelerated supply chain digital transformation </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q4" id="q4_b">
                                                        </div>
                                                        <label>Shifted digitalization priorities
                                                            </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q4" id="q4_c">
                                                        </div>
                                                        <label>Delayed digital transformation progress </label>
                                                    </div>

                                                    
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q4" id="q4_d">
                                                        </div>
                                                        <label> Put digitization plans on hold  </label>
                                                    </div>

                                                    
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q4" id="q4_e">
                                                        </div>
                                                        <label>No impact on the digital transformation agenda </label>
                                                    </div>

                                                    <div class="mr-2 d-flex justify-content-start">
                                                        <div class="input_block">
                                                            <input type="radio" name="q4" id="q4_g">
                                                        </div>
                                                        <!--label>Other (Specify) </label-->
                                                        <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                    </div>

                                                
                                                
                                                </div>
                                            </div>

                                            <h5 class="text-dark mt-3">  Is your company investing in reconfiguring its supply chains?</h5>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q1" id="q1_a">
                                                        </div>
                                                        <label>Yes</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q1" id="q1_b">
                                                        </div>
                                                        <label>No</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q1" id="q1_c">
                                                        </div>
                                                        <label>Don't Know </label>
                                                    </div>

                                                
                                                
                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                           </li>

                                             <!----QUESTION-05---->
                                             <li>
                                                <h4>If the answer to the above is a yes, then how is your company responding to the disruption?</h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" id="q5_a">
                                                            </div>
                                                            <label>Investing to make supply chains more agile with a turnaround period of 2 years</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" id="q5_b">
                                                            </div>
                                                            <label>Investing to make supply chains more resilient with a turnaround period of 2 years</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" id="q5_b">
                                                            </div>
                                                            <label>Focusing on onshore manufacturing supported by automation to make the strategy economically viable</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" id="q5_b">
                                                            </div>
                                                            <label>Shifting from globalized models to more regionalized supply chain models</label>
                                                        </div>

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" id="q5_g">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                        </div>

                                                    
                                                    </div>
                                                </div>

                                                <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                                <div class="w-100 px-3">
                                                                    <input type="hidden" class="single-slider" value="0"/>
                                                                </div>
                                                            </div--->

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_01"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>


                                            </li>

                                             <!----QUESTION-06---->
                                            <li>
                                                <h4>Do you believe national influence and policy pressures will influence your supply chain decisions? </h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-wrap justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" id="q6_a">
                                                            </div>
                                                            <label>Yes</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" id="q6_b">
                                                            </div>
                                                            <label>No</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" id="q6_b">
                                                            </div>
                                                            <label>Maybe</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" id="q6_c">
                                                            </div>
                                                            <label>Don't Know </label>
                                                        </div>

                                                    
                                                    
                                                    </div>
                                                </div>

                                                <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                                <div class="w-100 px-3">
                                                                    <input type="hidden" class="single-slider" value="0"/>
                                                                </div>
                                                            </div--->

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_01"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>


                                            </li>

                                             <!----QUESTION-07---->
                                             <li>
                                                <h4>Do you believe that customers in your market care more about low prices than domestic sourcing & production? </h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-wrap justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q7" id="q7_a">
                                                            </div>
                                                            <label>Yes</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q7" id="q7_b">
                                                            </div>
                                                            <label>No</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q7" id="q7_c">
                                                            </div>
                                                            <label>Don't Know </label>
                                                        </div>

                                                    
                                                    
                                                    </div>
                                                </div>

                                                <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                                <div class="w-100 px-3">
                                                                    <input type="hidden" class="single-slider" value="0"/>
                                                                </div>
                                                            </div--->

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_01"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>


                                            </li>

                                             <!----QUESTION-08---->
                                             <li>
                                                <h4>What will be your future sourcing strategy?</h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_a">
                                                            </div>
                                                            <label>Lean methodologies & just-in-time systems</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_b">
                                                            </div>
                                                            <label>Low cost country sourcing led by cost differentials and cost-efficiency considerations </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_b">
                                                            </div>
                                                            <label>Domestic sourcing irrespective of cost considerations</label>
                                                        </div>

                                                       
                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_g">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                        </div>

                                                    
                                                    </div>
                                                </div>

                                                <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                                <div class="w-100 px-3">
                                                                    <input type="hidden" class="single-slider" value="0"/>
                                                                </div>
                                                            </div--->

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_01"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>


                                            </li>

                                                <!---QUESTION-09-->
                                            <li>
                                                <h4>Given the high level of integration of global supply chains, how would you rate the burden of moving already established supply chains to a different location? </h4>
                                                <div class="ml mt-3 mb-2" id="q4_rank">
                                                    <div class="w-100 px-2 ">
                                                        <input type="hidden" class="single-slider" value="0" />
                                                        <span class="pt-2 pb-3 text-dark d-block"
                                                            style="font-weight: bold; ">Slide Bar Score</span>
                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div aria-expanded="false" class="collapse show">
                                                        <textarea class="form-control   comments_block" id="comment_25"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!----QUESTION-10---->
                                            <li>
                                                <h4>Which of the following industries you believe will witness the highest pressure from national policies for reshoring and nearshoring?</h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-wrap justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_a">
                                                            </div>
                                                            <label>Pharmaceutical Industry</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_b">
                                                            </div>
                                                            <label>Semiconductors </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_b">
                                                            </div>
                                                            <label>Electronics</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_b">
                                                            </div>
                                                            <label>Consumer Goods</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_b">
                                                            </div>
                                                            <label>Heavy Machinery</label>
                                                        </div>


                                                       
                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" id="q8_g">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                        </div>

                                                    
                                                    </div>
                                                </div>

                                                <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                                <div class="w-100 px-3">
                                                                    <input type="hidden" class="single-slider" value="0"/>
                                                                </div>
                                                            </div--->

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_01"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>


                                            </li>

                                          

                                              <!---11th QUESTION-->

                                           <li>
                                            <h4>What do you believe are the new challenges ahead for supply chain management and how would you rate them? </h4>

                                            <div class="ml">
                                                <div class="d-flex flex-column justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11a" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Rising global competition </label>
                                                    </div>

                                                    <div id="comment_11a" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11b" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Volatility of commodity prices  
                                                        </label>
                                                    </div>

                                                    <div id="comment_11b" aria-expanded="false"
                                                        class="collapse mb-2   ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11c" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Increasing cost pressure in logistics & transportation  </label>
                                                    </div>

                                                    <div id="comment_11c" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div class="w-100 px-2 ">
                                                                <input type="hidden" class="single-slider"
                                                                    value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                    style="font-weight: bold; ">Slide Bar
                                                                    Score</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11d" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Customer demand for quality of products/services  </label>
                                                    </div>

                                                    <div id="comment_11d" aria-expanded="false"
                                                        class="collapse mb-2   ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11e" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Volatility & complex patterns of customer demand</label>
                                                    </div>

                                                    <div id="comment_11e" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11f" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Complexity in supplier landscape</label>
                                                    </div>

                                                    <div id="comment_11f" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11g" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Geopolitical instability   </label>
                                                    </div>

                                                    <div id="comment_11g" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11h" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Stringent regulations in both country of operation and country of sourcing </label>
                                                    </div>

                                                    <div id="comment_11h" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11i" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Volatility in inflation & exchange rates   </label>
                                                    </div>

                                                    <div id="comment_11i" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_11j" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Others (Specify)  </label>
                                                    </div>

                                                    <div id="comment_11j" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>


                                            <div class="ml mt-3">
                                                <div id="comment_01" aria-expanded="false" class="collapse show">
                                                    <textarea class="form-control   comments_block" id="comt_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>

                                        </li>

                                              <!----QUESTION-12---->
                                              <li>
                                                <h4>How would you rank the following goals of supply chain management for your company?</h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q12" id="q12_a" data-toggle="collapse"
                                                                data-target="#comment_12a" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                            </div>
                                                            <label>Reducing operating costs</label>
                                                        </div>

                                                        <div id="comment_12a" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q12" id="q12_b" data-toggle="collapse"
                                                                data-target="#comment_12b" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                            </div>
                                                            <label>Reducing inventory levels </label>
                                                        </div>

                                                        <div id="comment_12b" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q12" id="q12_b" data-toggle="collapse"
                                                                data-target="#comment_12c" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                            </div>
                                                            <label>Improving product quality</label>
                                                        </div>

                                                        <div id="comment_12c" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q12" id="q12_b" data-toggle="collapse"
                                                                data-target="#comment_12d" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                            </div>
                                                            <label>Reducing carbon footprint </label>
                                                        </div>

                                                        <div id="comment_12d" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q12" id="q12_b" data-toggle="collapse"
                                                                data-target="#comment_12f" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                            </div>
                                                            <label>Improving time-to-market</label>
                                                        </div>

                                                        <div id="comment_12f" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                        
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block"> 
                                                                <input type="checkbox" name="q12" id="q12_b" data-toggle="collapse"
                                                                data-target="#comment_12g" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                            </div>
                                                            <label>Improving customer service  </label>
                                                        </div>

                                                        <div id="comment_12g" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                        
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q12" id="q12_b" data-toggle="collapse"
                                                                data-target="#comment_12h" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                            </div>
                                                            <label>Reducing Risk </label>
                                                        </div>

                                                        <div id="comment_12h" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                       
                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q12" id="q12_g" data-toggle="collapse"
                                                                data-target="#comment_12i" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <label>Other (Specify) </label>
                                                           
                                                        </div>

                                                        <div id="comment_12i" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    
                                                    </div>
                                                </div>

                                                <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                                <div class="w-100 px-3">
                                                                    <input type="hidden" class="single-slider" value="0"/>
                                                                </div>
                                                            </div--->

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_01"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>


                                            </li>

                                              <!----QUESTION-13---->
                                              <li>
                                                <h4>Decoupling from China has been the clamor ever since the pandemic’s disruption of global supply chains that are strongly rooted in China. What’s your opinion?</h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q13" id="q13_a">
                                                            </div>
                                                            <label>Decoupling from China is already happening </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q13" id="q13_b">
                                                            </div>
                                                            <label>Impact of China on global supply chains is overhyped </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q13" id="q13_b">
                                                            </div>
                                                            <label>Decoupling with China is difficult </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q13" id="qq13_b">
                                                            </div>
                                                            <label>Decoupling is everywhere except in reality</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q13" id="q13_b">
                                                            </div>
                                                            <label>No Opinion </label>
                                                        </div>

                                                     

                                                    
                                                    </div>
                                                </div>

                                                <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                                <div class="w-100 px-3">
                                                                    <input type="hidden" class="single-slider" value="0"/>
                                                                </div>
                                                            </div--->

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_01"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>


                                            </li>

                                               <!----QUESTION-14---->
                                               <li>
                                                <h4>What do you believe are the problems/strategic challenges involved with decoupling from China?</h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14" id="q14_a">
                                                            </div>
                                                            <label>Significant time, effort & investment sunk into developing presence in China to resist the idea of decoupling.</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14" id="q14_b">
                                                            </div>
                                                            <label>Less confrontational approach to China by the Biden administration unlike Donald Trump will dilute the urgency to decouple. </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14" id="q14_b">
                                                            </div>
                                                            <label>Facilitating the domestic dominance of indigenous firms is no easy challenge.</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14" id="q14_b">
                                                            </div>
                                                            <label>With Chinese exports surging, decoupling is a complex and tricky business.  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14" id="q14_b">
                                                            </div>
                                                            <label>Amid the pandemic most countries are among the losers while China seems to be the biggest gainer which makes decoupling extremely difficult.  </label>
                                                        </div>

                                                        
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14" id="q14_b">
                                                            </div>
                                                            <label>Still reeling under the economic impact of the pandemic, the world is not ready for any kind of decoupling. </label>
                                                        </div>

                                                       
                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q15" id="q14_g">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                        </div>

                                                    
                                                    </div>
                                                </div>

                                                <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                                <div class="w-100 px-3">
                                                                    <input type="hidden" class="single-slider" value="0"/>
                                                                </div>
                                                            </div--->

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_01"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>


                                            </li>

                                              <!---QUESTION-15-->
                                         <li>
                                            <h4>With China today standing tall as the global manufacturing hub, producing close to 32% of the world’s total manufacturing output what are the chances of a successful decoupling? </h4>
                                            <div class="ml mt-3 mb-2" id="q4_rank">
                                                <div class="w-100 px-2 ">
                                                    <input type="hidden" class="single-slider" value="0" />
                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                        style="font-weight: bold; ">Slide Bar Score</span>
                                                </div>
                                            </div>

                                            <div class="ml mt-2">
                                                <div aria-expanded="false" class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_15"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>

                                        </li>

                                          <!----QUESTION-16---->
                                          <li>
                                            <h4>How will your company react?</h4>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q16" id="q16_a">
                                                        </div>
                                                        <label>Stay in China</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q16" id="q16_b">
                                                        </div>
                                                        <label>Leave China</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q16" id="q16_c">
                                                        </div>
                                                        <label>Don’t Know  </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>

                                           <!----QUESTION-17---->
                                           <li>
                                            <h4>According to you what are the key elements in Sustainable Supply Chain Management (SSCM)?</h4>

                                            <div class="ml">
                                                <div class="d-flex flex-column justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q17" id="q17_a">
                                                        </div>
                                                        <label>Use of IT to increase communication efficiencies</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q17" id="q17_b">
                                                        </div>
                                                        <label>Supply chain accountability </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q17" id="q17_b">
                                                        </div>
                                                        <label>Supply chain traceability</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q17" id="q17_b">
                                                        </div>
                                                        <label>Emergency/disaster preparedness   </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q17" id="q17_b">
                                                        </div>
                                                        <label>Supplier ethics & transparency</label>
                                                    </div>

                                                    
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q17" id="q17_b">
                                                        </div>
                                                        <label>Measuring & reporting  </label>
                                                    </div>

                                                    
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q17" id="q17_b">
                                                        </div>
                                                        <label>Accountable collaboration </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q17" id="q17_b">
                                                        </div>
                                                        <label>Integrated supply chain & proactive management  </label>
                                                    </div>

                                                   
                                                    <div class="mr-2 d-flex justify-content-start">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q17" id="q17_g">
                                                        </div>
                                                        <!--label>Other (Specify) </label-->
                                                        <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                    </div>

                                                
                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>


                                          <!----QUESTION-18---->
                                          <li>
                                            <h4>Has your company invested in SSCM?</h4>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q18" id="q18_a">
                                                        </div>
                                                        <label>Yes</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q18" id="q18_b">
                                                        </div>
                                                        <label>No</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q18" id="q18_c">
                                                        </div>
                                                        <label>Don’t Know  </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>


                                        <!----QUESTION-19---->
                                        <li>
                                            <h4>If the answer to the above question is a yes, then has your company realized value from SSCM over the last two years?</h4>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q19" id="q19_a">
                                                        </div>
                                                        <label>Yes</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q19" id="q19_b">
                                                        </div>
                                                        <label>No</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q19" id="q19_c">
                                                        </div>
                                                        <label>Don’t Know  </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>

                                          <!----QUESTION-20---->
                                          <li>
                                            <h4>If yes, then what benefits did you see accrue? </h4>

                                            <div class="ml">
                                                <div class="d-flex flex-column justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q17_a">
                                                        </div>
                                                        <label>Cost reduction</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q17_b">
                                                        </div>
                                                        <label>Environmental impact </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q17_b">
                                                        </div>
                                                        <label>Efficient management of business risks </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q20_b">
                                                        </div>
                                                        <label>Strengthening of corporate social responsibility (CSR) goals   </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q20_b">
                                                        </div>
                                                        <label>Progress towards creating sustainable products</label>
                                                    </div>

                                                    
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q20_b">
                                                        </div>
                                                        <label>Customer satisfaction  </label>
                                                    </div>

                                                    
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q20_b">
                                                        </div>
                                                        <label>Revenue gains</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q20_b">
                                                        </div>
                                                        <label>Market share gains   </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q20_b">
                                                        </div>
                                                        <label>Market size gains   </label>
                                                    </div>

                                                   
                                                    <div class="mr-2 d-flex justify-content-start">
                                                        <div class="input_block">
                                                            <input type="radio" name="q20" id="q20_g">
                                                        </div>
                                                        <!--label>Other (Specify) </label-->
                                                        <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                    </div>

                                                
                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>

                                         <!----QUESTION-21---->
                                         <li>
                                            <h4>What digital technologies are you using or planning to use to enable SSCM?</h4>
                                            
                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q21" id="q19_a">
                                                        </div>
                                                        <label>Advanced analytics (predictive & prescriptive)</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ml-5">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_1" id="q21_1a">
                                                        </div>
                                                        <label>Currently in Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_1" id="q21_1b">
                                                        </div>
                                                        <label>Planning to Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_1" id="q21_1c">
                                                        </div>
                                                        <label>No Plans to invest   </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q21" id="q_a">
                                                        </div>
                                                        <label>3D printing</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ml-5 mb-2">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_2" id="q21_2a">
                                                        </div>
                                                        <label>Currently in Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_2" id="q21_2b">
                                                        </div>
                                                        <label>Planning to Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_2" id="q21_2c">
                                                        </div>
                                                        <label>No Plans to invest   </label>
                                                    </div>

                                                </div>
                                            </div>


                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q21" id="q_a">
                                                        </div>
                                                        <label>Internet of Things (IoT)</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ml-5 mb-2">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_3" id="q21_3a">
                                                        </div>
                                                        <label>Currently in Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_3" id="q21_3b">
                                                        </div>
                                                        <label>Planning to Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_3" id="q21_3c">
                                                        </div>
                                                        <label>No Plans to invest   </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q21" id="q_a">
                                                        </div>
                                                        <label>Artificial Intelligence & Machine Learning</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ml-5 mb-2">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_4" id="q21_4a">
                                                        </div>
                                                        <label>Currently in Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_4" id="q21_4b">
                                                        </div>
                                                        <label>Planning to Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_4" id="q21_4c">
                                                        </div>
                                                        <label>No Plans to invest   </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q21" id="q_a">
                                                        </div>
                                                        <label>Blockchain</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ml-5 mb-2">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_5" id="q21_5a">
                                                        </div>
                                                        <label>Currently in Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_5" id="q21_5b">
                                                        </div>
                                                        <label>Planning to Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_5" id="q21_5c">
                                                        </div>
                                                        <label>No Plans to invest   </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q21" id="q_a">
                                                        </div>
                                                        <label>Big Data </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ml-5 mb-2">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_6" id="q21_6a">
                                                        </div>
                                                        <label>Currently in Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_6" id="q21_6b">
                                                        </div>
                                                        <label>Planning to Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_6" id="q21_6c">
                                                        </div>
                                                        <label>No Plans to invest   </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q21" id="q_a">
                                                        </div>
                                                        <label>Cloud Computing   </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ml-5 mb-2">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_7" id="q21_6a">
                                                        </div>
                                                        <label>Currently in Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_7" id="q21_6b">
                                                        </div>
                                                        <label>Planning to Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_7" id="q21_6c">
                                                        </div>
                                                        <label>No Plans to invest   </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q21" id="q_a">
                                                        </div>
                                                        <label>Advanced Robotics    </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ml-5 mb-2">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_8" id="q21_8a">
                                                        </div>
                                                        <label>Currently in Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_8" id="q21_8b">
                                                        </div>
                                                        <label>Planning to Use</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q21_8" id="q21_8c">
                                                        </div>
                                                        <label>No Plans to invest   </label>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class=" mt-2  mb-2 ml mr-2 d-flex justify-content-start">
                                                <div class="input_block">
                                                    <input type="checkbox" name="q20" id="q20_g">
                                                </div>
                                                <!--label>Other (Specify) </label-->
                                                <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>

                                          <!----QUESTION-22---->
                                          <li>
                                            <h4>What are your major goals in investing in supply chain automation? </h4>

                                            <div class="ml">
                                                <div class="d-flex flex-column justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q22" id="q22_a">
                                                        </div>
                                                        <label>Improve reaction to unplanned disruptions </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q22" id="q22_b">
                                                        </div>
                                                        <label>Increase supply chain resilience </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q22" id="q22_b">
                                                        </div>
                                                        <label>Improve customer service levels </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q22" id="q22_b">
                                                        </div>
                                                        <label>Improve overall business performance   </label>
                                                    </div>

                                                   
                                                    <div class="mr-2 d-flex justify-content-start">
                                                        <div class="input_block">
                                                            <input type="checkbox" name="q22" id="q22_g">
                                                        </div>
                                                        <!--label>Other (Specify) </label-->
                                                        <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                    </div>

                                                
                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>

                                          <!----QUESTION-23---->
                                          <li>
                                            <h4>What is the level of your company’s digital supply chain maturity as compared to your nearest competitor? </h4>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q23" id="q23_a">
                                                        </div>
                                                        <label>Well Above Average </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q23" id="q23_b">
                                                        </div>
                                                        <label>Above Average</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q23" id="q23_b">
                                                        </div>
                                                        <label>About Average </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q23" id="q23_b">
                                                        </div>
                                                        <label>Slightly Below Average    </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q23" id="q23_b">
                                                        </div>
                                                        <label>Well Below Average   </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q23" id="q23_b">
                                                        </div>
                                                        <label>Don’t Know    </label>
                                                    </div>

                                                
                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>

                                        <!----QUESTION-24---->
                                        <li>
                                            <h4>According to your opinion, how much value will smart supply chain deliver to your company in the coming 2 to 4 years?</h4>

                                            <div class="ml">
                                                <div class="d-flex flex-wrap justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q24" id="q24_a">
                                                        </div>
                                                        <label>0-5% reduction in operational costs</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q24" id="q24_b">
                                                        </div>
                                                        <label>5%-10% reduction in operational costs</label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q24" id="q24_b">
                                                        </div>
                                                        <label>10%-15% reduction in operational costs </label>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q24" id="q24_b">
                                                        </div>
                                                        <label>15+% reduction in operational costs   </label>
                                                    </div>

                                                   
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="radio" name="q24" id="q24_b">
                                                        </div>
                                                        <label>Don’t Know    </label>
                                                    </div>

                                                
                                                </div>
                                            </div>

                                            <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                            <div class="w-100 px-3">
                                                                <input type="hidden" class="single-slider" value="0"/>
                                                            </div>
                                                        </div--->

                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control   comments_block" id="comment_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>


                                        </li>

                                           <!---25th QUESTION-->

                                           <li>
                                            <h4>Connected supply chain is the future. If you agree, then rate your company’s willingness to invest in the following? </h4>

                                            <div class="ml">
                                                <div class="d-flex flex-column justify-content-start toggle">
                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_25a" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Data sharing platforms </label>
                                                    </div>

                                                    <div id="comment_25a" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_25b" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Partner connectivity via cloud   
                                                        </label>
                                                    </div>

                                                    <div id="comment_25b" aria-expanded="false"
                                                        class="collapse mb-2   ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_25c" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>IoT solutions with partners   </label>
                                                    </div>

                                                    <div id="comment_25c" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div class="w-100 px-2 ">
                                                                <input type="hidden" class="single-slider"
                                                                    value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                    style="font-weight: bold; ">Slide Bar
                                                                    Score</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_25d" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Blockchain solutions with partners   </label>
                                                    </div>

                                                    <div id="comment_25d" aria-expanded="false"
                                                        class="collapse mb-2   ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_25e" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Asset sharing platforms</label>
                                                    </div>

                                                    <div id="comment_25e" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_25f" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Other (Specify)</label>
                                                    </div>

                                                    <div id="comment_25f" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mr-2 d-flex options">
                                                        <div class="input_block">
                                                            <input type="checkbox" data-toggle="collapse"
                                                                data-target="#comment_25g" aria-expanded="false"
                                                                aria-controls="collapseOne">
                                                        </div>
                                                        <label>Already invested in one or multiple of the above   </label>
                                                    </div>

                                                    <div id="comment_25g" aria-expanded="false"
                                                        class="collapse mb-2  ">
                                                        <div class="w-100 ">
                                                            <div>
                                                                <div class="w-100 px-2 ">
                                                                    <input type="hidden" class="single-slider"
                                                                        value="0" />
                                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                                        style="font-weight: bold; ">Slide Bar
                                                                        Score</span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>


                                            <div class="ml mt-3">
                                                <div id="comment_01" aria-expanded="false" class="collapse show">
                                                    <textarea class="form-control   comments_block" id="comt_01"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>

                                        </li>

                                          <!--QUESTION-26-->
                                          <li>
                                            <h4>Did we miss anything? Chime in with your thoughts </h4>
                                            <div class="ml mt-2">
                                                <div class="w-100">
                                                    <textarea class="form-control comments_block" id="comment_24"
                                                        rows="2" placeholder="Add Question "></textarea>
                                                </div>
                                            </div>

                                        </li>


                                        <!---QUESTION-27-->
                                        <li>
                                            <h4>Please rate this program and the attributes we covered </h4>
                                            <div class="ml mt-3 mb-2" id="q4_rank">
                                                <div class="w-100 px-2 ">
                                                    <input type="hidden" class="single-slider" value="0" />
                                                    <span class="pt-2 pb-3 text-dark d-block"
                                                        style="font-weight: bold; ">Slide Bar Score</span>
                                                </div>
                                            </div>

                                            <div class="ml mt-2">
                                                <div aria-expanded="false" class="collapse show">
                                                    <textarea class="form-control   comments_block" id="comment_25"
                                                        rows="2" placeholder="Comments"></textarea>
                                                </div>
                                            </div>

                                        </li>

                                        </ul>

                                    </form>
                                    <hr />
                                    <div class="row text-center mb-2">
                                        <a href="javascript:void(0)" onClick="getSubmitValue('<%=session("EID")%>')"
                                            class="button1 p-2 rounded-0 shadow-sm submit_model_button"
                                            style="width:80px !important; color:#fff !important" type="submit"
                                            class="button1 p-2 rounded-0 shadow-sm" src="images/login.gif"
                                            name="btnsubmit" value="OK" style="width:80px !important">SUBMIT</a>
                                    </div>

                                </div>
                                <!---QUESTIONER END HERE-->

                            </div>
                            <!---END:HEADING-->

                        </div>
                        <!---END:COLLAPSE-->
                            <!---END:COLLAPSE-->

		</div>
	</div>	
			
			
				 
		
			
			</div>




                                </div>

                                <!-- Categories for home page end -->

                        </div>
                        <!-- Body End here -->
                    </div>
                </div>
                <!-- Wrapper / End -->

                <!-- Footer start-->
                <!--#include file="ASPIncludes/BottomStrip.asp"-->
                <!---footer_end-->
                <!---BEGIN: Model-->

                <div id="linkedin_mobel">
                    <div class="h-100 w-100 d-flex justify-content-center align-items-center">

                        <div class="modal rounded-0" style="display:block !important">


                            <!--p class="text-center">For a 2-stage verification.</p-->
                            <p class="text-center" style="font-size: 15px; font-weight: bold;">For a 2-Stage verification process, please sign in with LinkedIn below</p>
                            <a href="LogInUsingLinkedinApp/loginLinkedin.asp?"><img src="images/linkedin.svg" class="mx-auto" style="width: 165px;"></a>
                            <!-- <a href="#" rel="modal:close">Close</a>-->

                        </div>
                    </div>
                </div>

              

                            <!-----END: MODEL -->
                            <script src="https://www.strategyr.com/js/limit.text.js"></script>
                            
                            <script src="https://www.strategyr.com/scripts/jquery.range.js"></script>
                            <script src="scripts/jquery.js"></script>
                            <script src="scripts/jsradiotoggle.js"></script>
                            <script src="scripts/jquery.range.js"></script>
                           
<script>
    $('.single-slider').jRange({
        from: 1,
        to: 10,
        step: 0.5,
        scale: ['1', '|', '2', '|', '3', '|', '4', '|', '5', '|', '6', '|', '7', '|', '8', '|', '9', '|', '10'],
        format: '%s',
        width: 300,
        showLabels: false,
        snap: true,


    });

</script>


<script>
    $('a.submit_model_button').click(function (event) {
        $("#submit_model").modal({
            fadeDuration: 250,
            clickClose: false,
        });
        return false;
    });
</script>


<script>
    $(document).ready(function () {
        $('.toggle').jsRadioToggle();
    })
</script>


<script>
    $(".single-slider").removeAttr("style");
    var windowWidth = $(window).width();
    if (windowWidth <= 480) {
        //Means the screen is mobile add a class 
        $(".slider-container").removeAttr("style");

    }
    else {

    }

</script>


</body>

</html> 