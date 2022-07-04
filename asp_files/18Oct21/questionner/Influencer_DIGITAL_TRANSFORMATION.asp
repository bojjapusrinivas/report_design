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
                                    <h1 class="font-weight-bold  line-height-normal" style="color: #E37038;"> DIGITAL TRANSFORMATION </h1>
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

                                             <!---1st QUESTION-->
                                             <li>
                                                <h4>Transformation in general is hard and digital ones are always even harder. Do you agree with the statement?</h4>
                                                <div class="ml">

                                                    <div class="d-flex flex-wrap justify-content-start ">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q1" id="q1_a">
                                                            </div>
                                                            <label>Yes </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">

                                                            <div class="input_block">
                                                                <input type="radio" name="q1" id="q1_b">
                                                            </div>
                                                            <label>No </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q1" id="q1_c">
                                                            </div>
                                                            <label>Maybe </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q1" id="q1_d">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_02"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>
                                            </li>

                                             <!---2nd QUESTION-->
                                             <li>
                                                <h4>Where is your company on this journey?</h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q2" id="q1_a">
                                                            </div>
                                                            <label>Still in status quo (business as usual)</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q2" id="q2_b">
                                                            </div>
                                                            <label>Planning</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q2" id="q2_c">
                                                            </div>
                                                            <label>Testing</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q2" id="q2_d">
                                                            </div>
                                                            <label>Implementing </label>
                                                        </div>
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q2" id="q2_e">
                                                            </div>
                                                            <label>Reached a stage of convergence (as successful digital transformations are all about integration) </label>
                                                        </div>
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q2" id="q2_f">
                                                            </div>
                                                            <label>Digital maturity & dynamic adaptation to ever-changing business technology scenarios  </label>
                                                        </div>
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q2" id="q2_g">
                                                            </div>
                                                            <label>Outcomes have been delivered </label>
                                                        </div>
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q2" id="q2_h">
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

                                            
                                            <!--03rd Question-->

                                            <li>
                                                <h4>What has been the guiding objective of digital transformation for your company?</h4>
                                                <div class="ml">
                                                    <div class="d-flex flex-wrap  justify-content-start">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3" id="q3_a">
                                                            </div>
                                                            <label>Operational efficiency & innovation </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3" id="q3_b">
                                                            </div>
                                                            <label>Improved customer engagement  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3" id="q3_c">
                                                            </div>
                                                            <label>Marketing & sales enablement
                                                            </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3" id="q3_d">
                                                            </div>
                                                            <label>Business model adaptability  </label>
                                                        </div>



                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3" id="q3_f">
                                                            </div>
                                                            <label>Workforce empowerment </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3" id="q3_g">
                                                            </div>
                                                            <label>Product portfolio innovation  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3" id="q3_f">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify"
                                                                id="other_spacity" placeholder="Other (Specify)"
                                                                rows="1"></input>
                                                        </div>


                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_11"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                             <!---04th QUESTION-->

                                             <li>
                                                <h4>What questions will you ask to measure the success of your digital transformation efforts?</h4>

                                                <div class="ml">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" data-toggle="collapse"
                                                                    data-target="#comment_4a" aria-expanded="false"
                                                                    aria-controls="collapseOne">
                                                            </div>
                                                            <label>Has employee productivity improved?</label>
                                                        </div>

                                                        <div id="comment_4a" aria-expanded="false"
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
                                                                    data-target="#comment_4b" aria-expanded="false"
                                                                    aria-controls="collapseOne">
                                                            </div>
                                                            <label>Have you seen ROI on your investment?
                                                            </label>
                                                        </div>

                                                        <div id="comment_4b" aria-expanded="false"
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
                                                                    data-target="#comment_4c" aria-expanded="false"
                                                                    aria-controls="collapseOne">
                                                            </div>
                                                            <label>What is the level of adoption and usability of new technologies deployed? </label>
                                                        </div>

                                                        <div id="comment_4c" aria-expanded="false"
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
                                                                    data-target="#comment_4d" aria-expanded="false"
                                                                    aria-controls="collapseOne">
                                                            </div>
                                                            <label>Has your pace of business innovation improved?</label>
                                                        </div>

                                                        <div id="comment_4d" aria-expanded="false"
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
                                                                    data-target="#comment_4e" aria-expanded="false"
                                                                    aria-controls="collapseOne">
                                                            </div>
                                                            <label>Are you reaching more customers with higher levels of satisfaction? </label>
                                                        </div>

                                                        <div id="comment_4e" aria-expanded="false"
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
                                                                    data-target="#comment_4g" aria-expanded="false"
                                                                    aria-controls="collapseOne">
                                                            </div>
                                                            <label>Have you reduced operational costs? </label>
                                                        </div>

                                                        <div id="comment_4g" aria-expanded="false"
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
                                                                <input type="checkbox" 
                                                                     id="q4_f">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text"
                                                                class="form-control  other_specify other_spacify"
                                                                id="other_spacity" placeholder="Other (Specify)"
                                                                rows="1">
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

                                             <!---05st QUESTION-->
                                             <li>
                                                <h4>Transformation in general is hard and digital ones are always even harder. Do you agree with the statement?</h4>
                                                <div class="ml">

                                                    <div class="d-flex flex-wrap justify-content-start ">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q5" id="q5_a">
                                                            </div>
                                                            <label>Yes – Fully </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">

                                                            <div class="input_block">
                                                                <input type="radio" name="q5" id="q5_b">
                                                            </div>
                                                            <label>Yes – Partially</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q5" id="q5_c">
                                                            </div>
                                                            <label>No </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q5" id="q5_d">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_05"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>
                                            </li>

                                            <!---06st QUESTION-->
                                            <li>
                                                <h4>Has your digital transformation initiative already delivered positive outcomes in terms of contributing to business growth?</h4>
                                                <div class="ml">

                                                    <div class="d-flex flex-wrap justify-content-start ">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" id="q6_a">
                                                            </div>
                                                            <label>Yes  </label>
                                                        </div>
                                                       

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" id="q6_b">
                                                            </div>
                                                            <label>No </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" id="q6_c">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_05"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>
                                            </li>

                                             
                                            <!--07rd Question-->

                                            <li>
                                                <h4>If the answer to the above question is yes, then what digital technologies and tools did you implement?  </h4>
                                                <div class="ml">
                                                    <div class="d-flex flex-lg-row flex-xl-row flex-wrap flex-md-row flex-sm-column flex-column  justify-content-start">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_a">
                                                            </div>
                                                            <label>Traditional Web Technologies </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_b">
                                                            </div>
                                                            <label>Cloud Based Services  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_c">
                                                            </div>
                                                            <label>Mobile Internet Technologies
                                                            </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_d">
                                                            </div>
                                                            <label>Big data  </label>
                                                        </div>



                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_f">
                                                            </div>
                                                            <label>IoT</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_g">
                                                            </div>
                                                            <label>Artificial Intelligence Tools  </label>
                                                        </div>


                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_h">
                                                            </div>
                                                            <label>Robotics  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_i">
                                                            </div>
                                                            <label>Augmented Reality </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_j">
                                                            </div>
                                                            <label>Additive Manufacturing/3D Printing   </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_k">
                                                            </div>
                                                            <label>Software Defined Networking    </label>
                                                        </div>

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" id="q7_l">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify"
                                                                id="other_spacity" placeholder="Other (Specify)"
                                                                rows="1"></input>
                                                        </div>


                                                    </div>
                                                </div>
                                                <br/>
                                                <h5 class="text-dark">By how much has COVID-19 accelerated digital transformation in your company?  </h5>
                                                <div class="ml">
                                                    <div class="d-flex flex-lg-row flex-xl-row flex-md-row flex-sm-column flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options ">
                                                            <div class="input_block">
                                                                <input type="radio" name="q7_2" id="q7_2_a">
                                                            </div>
                                                            <label>&#60 1 Year </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q7_2" id="q7_2_b">
                                                            </div>
                                                            <label>1 to 2 Years</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q7_2" id="q7_2_c">
                                                            </div>
                                                            <label>3 to 4 Years </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q7_2" id="q7_2_d">
                                                            </div>
                                                            <label>5 to 6 Years</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options ">
                                                            <div class="input_block">
                                                                <input type="radio" name="q7_2" id="q7_2_f">
                                                            </div>
                                                            <label>&#62 6 Years </label>
                                                        </div>



                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_11"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>

                                            </li>


                                            <!--08rd Question-->

                                            <li>
                                                <h4>What are industries you believe are poised to benefit the most by digital transformation?    </h4>
                                                <div class="ml">
                                                    <div class="d-flex flex-wrap  justify-content-start">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q8" id="q8_a">
                                                            </div>
                                                            <label>Finance & Insurance </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q8" id="q8_b">
                                                            </div>
                                                            <label>Manufacturing  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q8" id="q8_c">
                                                            </div>
                                                            <label>Healthcare
                                                            </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q8" id="q8_d">
                                                            </div>
                                                            <label>Consumer Goods  </label>
                                                        </div>



                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q8" id="q8_f">
                                                            </div>
                                                            <label>Retail </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q8" id="q8_g">
                                                            </div>
                                                            <label>Utilities </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q8" id="q8_h">
                                                            </div>
                                                            <label>Public Sector </label>
                                                        </div>

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="radio" name="q8" id="q8_i">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify"
                                                                id="other_spacity" placeholder="Other (Specify)"
                                                                rows="1"></input>
                                                        </div>
                                                   </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_11"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                             <!--09rd Question-->

                                             <li>
                                                <h4>What outcomes do you expect from your digital transformation initiatives?</h4>
                                                <div class="ml">
                                                    <div class="d-flex flex-wrap  justify-content-start">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q9" id="q9_a">
                                                            </div>
                                                            <label>Increase in Revenue  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q9" id="q9_b">
                                                            </div>
                                                            <label>Improvement of Customer Relationships  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q9" id="q9_c">
                                                            </div>
                                                            <label>Strengthening competitiveness 
                                                            </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q9" id="q9_d">
                                                            </div>
                                                            <label>Cost Reductions  </label>
                                                        </div>



                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q9" id="q9_f">
                                                            </div>
                                                            <label>Operational Efficiencies</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q9" id="q9_g">
                                                            </div>
                                                            <label>Improved Customer Satisfaction  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q9" id="q9_h">
                                                            </div>
                                                            <label>Better Supplier Relations </label>
                                                        </div>

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q9" id="q9_i">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify"
                                                                id="other_spacity" placeholder="Other (Specify)"
                                                                rows="1"></input>
                                                        </div>


                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_11"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!--10rd Question-->

                                            <li>
                                                <h4>What’s slowing down your digital transformation?   </h4>
                                                <div class="ml">
                                                    <div class="d-flex flex-wrap  justify-content-start">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q10" id="q10_a">
                                                            </div>
                                                            <label>Glitches in IT systems which are meant to work together </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q10" id="q10_b">
                                                            </div>
                                                            <label>Security holes  </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q10" id="q10_c">
                                                            </div>
                                                            <label>Unprepared & untrained workforce
                                                            </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q10" id="q10_d">
                                                            </div>
                                                            <label>Siloed investments that frustrates convergence & integration  </label>
                                                        </div>



                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q10" id="q10_f">
                                                            </div>
                                                            <label>Moving too quickly without an action plan</label>
                                                        </div>

                                                      

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="radio" name="q10" id="q10_i">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify"
                                                                id="other_spacity" placeholder="Other (Specify)"
                                                                rows="1"></input>
                                                        </div>
                                                   </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div class="w-100">
                                                        <textarea class="form-control   comments_block" id="comment_q10"
                                                            rows="2" placeholder="Comments"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                             <!---11th QUESTION-->
                                             <li>
                                                <h4>Did we miss anything? Chime in with your thoughts</h4>


                                                <div class="ml mt-3">
                                                    <div   class="collapse show">
                                                        <textarea class="form-control   comments_block" id="comment_11"
                                                            rows="2" placeholder="Add Question"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!---12th QUESTION-->
                                            <li>
                                                <h4> Please rate this program and the attributes we covered </h4>


                                                <div class="ml mt-3 mb-2" id="q4_rank">
                                                    <div class="w-100 px-2 ">
                                                        <input type="hidden" class="single-slider" value="0" />
                                                        <span class="pt-2 pb-3 text-dark d-block"
                                                            style="font-weight: bold; ">Slide Bar Score</span>
                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div  aria-expanded="false" class="collapse show">
                                                        <textarea class="form-control   comments_block" id="comment_12"
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