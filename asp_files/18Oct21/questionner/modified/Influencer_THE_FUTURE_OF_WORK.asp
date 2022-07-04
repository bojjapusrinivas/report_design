<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<%
If trim(session("EID"))="" then
	response.write ("<p align ='center'><br/><br/><font face='verdana' color='red' size='3'><b>Please login to view the furture of work survey</b></font></p>")
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




            <%

''response.write session("infcode") 

%>
                <input type="hidden" name="HDNinfcode" id="HDNinfcode" value="<%=trim(session(" infcode "))%>">
                <input type="hidden" name="HDNCPcode" id="HDNCPcode" value="<%=trim(Code)%>">
                <!-- Categories for home page Start -->

                <div class="container">
                    <!---BEGN REPORT TITLE--->
                    <!--INCLUDE FILE="newReportTitle_New1.asp" -->
                    <!---END REPORT TITLE--->

                    <div class="w-100">
                        <div class="row mb-0 mx-0">
                            
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
                                 <!---BEGIN:COLLAPSE-->
                        <div class="my-3 w-100 p-0" id="questionnaire">

                            <!---BEGIN:HEADING-->
                            <div class=" border position-relitive" id="questionnaire_block">
                                <div class="row text-primary  w-100 pb-2 mt-3 mb-0 text-center mt-0"
                                    id="questionnaire_title">
                                    <h1 class="font-weight-bold  line-height-normal"> THE FUTURE OF WORK</h1>
                                    <h2 class="line-height-normal">VALIDATED EMPLOYEE SURVEY</h2>
                                    

                                </div>



                                <h3 class="d-block w-xl-95 w-lg-95 w-md-100 w-sm-100 w-100 mx-auto mt-0 mb-2 p-2 "
                                    style="font-style: italic; line-height: normal; font-size: 15px !important;">Privacy
                                    - Participants’ identities are never disclosed. Analyses by industry, rankings by
                                    company, and related trends and stats are published.
                                </h3>
                                <hr />

                                <!---QUESTION START HERE-->
                                <div class="mt-2 w-100">

                                    <form id="questioner">

                                        <ul class="question mt-2 mb-3">


                                            <!---1nd QUESTION-->
                                            <li>
                                                <h4>Has your company adopted WFH amid this pandemic?</h4>
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

                                                        <!--div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q1" id="q_c">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div-->
                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>
                                            </li>

                                            <!---2nd QUESTION-->
                                            <li>
                                                <h4>Are you currently employed on a WFH/hybrid work model?</h4>
                                                <div class="ml">

                                                    <div class="d-flex flex-wrap justify-content-start ">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                
                                                                <input type="radio" name="q2" id="q2_a">
                                                            </div>
                                                            <label>Yes </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">

                                                            <div class="input_block">
                                                                <input type="radio" name="q2" id="q2_b">
                                                            </div>
                                                            <label>No </label>
                                                        </div>
                                                        <!--div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q1" id="q_c">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div-->
                                                    </div>
                                                </div>
                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>
                                            </li>

                                            <!---3ST QUESTION-->

                                            <li>
                                                <h4>How has WFH affected you?</h4>

                                                <h5>Positively </h5>

                                                <div class="ml ">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_1" data-toggle="collapse"
                                                                id="q3_a" data-target="#comment_q3_a"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>No Commute </label>
                                                        </div>

                                                        <div id="comment_q3_a" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_1" data-toggle="collapse"
                                                                id="q3_b" data-target="#comment_q3_b"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Time With Family</label>
                                                        </div>

                                                        <div id="comment_q3_b" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_1" data-toggle="collapse"
                                                                id="q3_c" data-target="#comment_q3_c"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Flexible Schedule </label>
                                                        </div>

                                                        <div id="comment_q3_c" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>


                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_1" data-toggle="collapse"
                                                                id="q3_d" data-target="#comment_q3_d"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Work from Anywhere</label>
                                                        </div>

                                                        <div id="comment_q3_d" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_1" data-toggle="collapse"
                                                                id="q3_e" data-target="#comment_q3_e"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Greater Job Satisfaction</label>
                                                        </div>

                                                        <div id="comment_q3_e" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>

                                                <h5 class="mt-3">Negatively </h5>

                                                <div class="ml ">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_2" data-toggle="collapse"
                                                                id="q3_2_a" data-target="#comment_q3_2_a">
                                                            </div>
                                                            <label>Collaborating & Communication Challenges </label>
                                                        </div>

                                                        <div id="comment_q3_2_a" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_2" data-toggle="collapse"
                                                                id="q3_2_b" data-target="#comment_q3_2_b">
                                                            </div>
                                                            <label>Distractions at Home</label>
                                                        </div>

                                                        <div id="comment_q3_2_b" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_2" data-toggle="collapse"
                                                                id="q3_2_c" data-target="#comment_q3_2_c">
                                                            </div>
                                                            <label>Lack of Reliable Wi-Fi </label>
                                                        </div>

                                                        <div id="comment_q3_2_c" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>


                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_2" data-toggle="collapse"
                                                                id="q3_2_d" data-target="#comment_q3_2_d">
                                                            </div>
                                                            <label>Different Team Time Zones</label>
                                                        </div>

                                                        <div id="comment_q3_2_d" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_2" data-toggle="collapse"
                                                                id="q3_2_e" data-target="#commentq3_2_e">
                                                            </div>
                                                            <label>Unplugging After Work</label>
                                                        </div>
                                                       
                                                        <div id="commentq3_2_e" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_2" data-toggle="collapse"
                                                                id="q3_2_f" data-target="#comment_q3_2_f">
                                                            </div>
                                                            <label>Loneliness</label>
                                                        </div>

                                                        <div id="comment_q3_2_f" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q3_2" data-toggle="collapse"
                                                                id="q3_2_g" data-target="#comment_q3_2_g">
                                                            </div>
                                                            <label>Staying Motivated</label>
                                                        </div>

                                                        <div id="comment_q3_2_g" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>



                                                

                                            </li>

                                            <!---4ST QUESTION-->

                                            <li>
                                                <h4>Has WFH made you more productive? If yes, please assign a percentage. </h4>



                                                <div class="ml ">
                                                    <div class="d-flex  justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q4" customatt="radio_option"
                                                                    id="q4_a" data-toggle="#q4_a_rank">
                                                            </div>
                                                            <label>Yes</label>
                                                        </div>



                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q4" customatt="radio_option"
                                                                    id="q4_b">
                                                            </div>
                                                            <label>No</label>
                                                        </div>



                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q4" customatt="radio_option"
                                                                    id="q4_c">
                                                            </div>
                                                            <label>Not Sure </label>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="ml ">
                                                    <div class="mt-2 mb-4 target" id="q4_a_rank">
                                                        <div class="w-100 px-2">
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="%" rows="1" >
                                                        </div>
                                                    </div>

                                                </div>


                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>
                                            <!---5 ST QUESTION-->

                                            <li>
                                                <h4>Which of the following you believe has been responsible for your
                                                    improved WFH productivity? </h4>

                                                <div class="ml ">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" data-toggle="collapse"
                                                                id="q5_a" data-target="#comment_q5_a"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Fewer interruptions </label>
                                                        </div>

                                                        <div id="comment_q5_a" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" data-toggle="collapse"
                                                                id="q5_b" data-target="#comment_q5_b"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>More focused time</label>
                                                        </div>

                                                        <div id="comment_q5_b" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" data-toggle="collapse"
                                                                id="q5_c" data-target="#comment_q5_c"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Quieter work environment </label>
                                                        </div>

                                                        <div id="comment_q5_c" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>


                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" data-toggle="collapse"
                                                                id="q5_d" data-target="#comment_q5_d"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>More comfortable workspace</label>
                                                        </div>

                                                        <div id="comment_q5_d" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q5" data-toggle="collapse"
                                                                id="q5_e" data-target="#comment_q5_e"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Not being involved in office politics</label>
                                                        </div>

                                                        <div id="comment_q5_e" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q1" customatt="radio_option"
                                                                    id="q4_f" data-toggle="#q5_rank">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                        </div>


                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!---6 ST QUESTION-->

                                            <li>
                                                <h4>Has your company seen solid productivity increases with the WFH model? If yes, please assign a percentage. </h4>


                                                <div class="ml ">
                                                    <div class="d-flex  justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" customatt="radio_option"
                                                                    id="q6_a" data-toggle="#q6_a_rank">
                                                            </div>
                                                            <label>Yes</label>
                                                        </div>



                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" customatt="radio_option"
                                                                    id="q6_b">
                                                            </div>
                                                            <label>No</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q6" customatt="radio_option"
                                                                    id="q6_c">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="ml ">

                                                    <div class="mt-2 mb-4 target" id="q6_a_rank">
                                                        <div class="w-100 px-2">
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="%" rows="1" >
                                                        </div>
                                                    </div>

                                                </div>


                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!---7 ST QUESTION-->

                                            <li>
                                                <h4>How has your company supported employees working remotely? </h4>

                                                <div class="ml ">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" data-toggle="collapse"
                                                                id="q7_a" data-target="#comment_q7_a"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Provided monetary compensation to buy new home-office
                                                                equipment </label>
                                                        </div>

                                                       

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" data-toggle="collapse"
                                                                id="q7_b" data-target="#comment_q7_b"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Offered special emotional and mental health programs
                                                                for remote workforce</label>
                                                        </div>


                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" data-toggle="collapse"
                                                                id="q7_c" data-target="#comment_q7_c"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Implemented flexible working hours </label>
                                                        </div>

                                                    


                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" data-toggle="collapse"
                                                                id="q7_d" data-target="#comment_q7_d"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Allotted schedules to maintain regular virtual
                                                                contact</label>
                                                        </div>

                                                     

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" data-toggle="collapse"
                                                                id="q7_e" data-target="#comment_q7_e"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Access to learning and development (L&D)
                                                                opportunities to upskill & reskill</label>
                                                        </div>

                                                    

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q7" data-toggle="collapse"
                                                                id="q7_f" data-target="#comment_q7_f"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Provided technology support for hybrid working
                                                                needs</label>
                                                        </div>

                                                     

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q1" customatt="radio_option"
                                                                    id="q4_f" data-toggle="#q5_rank">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                        </div>


                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!---8 ST QUESTION-->

                                            <li>
                                                <h4>For the enterprise employer what do you think are the benefits of
                                                    WFH? </h4>
                                                <div class="ml ">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" data-toggle="collapse"
                                                                id="q8_a" data-target="#comment_q8_a"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>More efficient & less time consuming communication
                                                            </label>
                                                        </div>

                                                        <div id="comment_q8_a" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" data-toggle="collapse"
                                                                id="q8_b" data-target="#comment_q8_b"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Productivity gains as telecommuting employees are
                                                                more productive</label>
                                                        </div>

                                                        <div id="comment_q8_b" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" data-toggle="collapse"
                                                                id="q8_c" data-target="#comment_q8_c"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Lower operational costs </label>
                                                        </div>

                                                        <div id="comment_q8_c" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" data-toggle="collapse"
                                                                id="q8_d" data-target="#comment_q8_d"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Higher staff retention rates</label>
                                                        </div>

                                                        <div id="comment_q8_d" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" data-toggle="collapse"
                                                                id="q8_e" data-target="#comment_q8_e"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Greater diversity in recruitment</label>
                                                        </div>

                                                        <div id="comment_q8_e" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q8" data-toggle="collapse"
                                                                id="q8_f" data-target="#comment_q8_f"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Easier team building</label>
                                                        </div>

                                                        <div id="comment_q8_f" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q1" customatt="radio_option"
                                                                    id="q4_f" data-toggle="#q5_rank">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>
                                            </li>

                                            <!---9nd QUESTION-->
                                            <li>
                                                <h4>Videoconferencing is more effective than business travel & physical conferences. Do you agree? If no, then state your reasons. </h4>


                                                <div class="ml ">
                                                    <div class="d-flex  justify-content-start toggle">
                                                        



                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q9" customatt="radio_option"
                                                                    id="q9_b">
                                                            </div>
                                                            <label>Yes</label>
                                                        </div>


                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q9" customatt="radio_option"
                                                                    id="q9_a" data-toggle="#q9_a_rank">
                                                            </div>
                                                            <label>No</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q9" customatt="radio_option"
                                                                    id="q9_c">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="ml ">
                                                    <div class="mt-2 mb-4 target" id="q9_a_rank">
                                                        <div class="w-100 px-2">
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder=" " rows="1" >
                                                        </div>
                                                    </div>

                                                </div>


                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!---10 ST QUESTION-->

                                            <li>
                                                <h4>What do you believe are the true benefits of WFH for employees?</h4>
                                                <div class="ml ">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q10" data-toggle="collapse"
                                                                id="q10_a" data-target="#comment_q10_a"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Strong work-life balance </label>
                                                        </div>

                                                        <div id="comment_q10_a" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q10" data-toggle="collapse"
                                                                id="q10_b" data-target="#comment_q10_b"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Freedom to work and live anywhere</label>
                                                        </div>

                                                        <div id="comment_q10_b" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q10" data-toggle="collapse"
                                                                id="q10_c" data-target="#comment_q10_c"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Job satisfaction </label>
                                                        </div>

                                                        <div id="comment_q10_c" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q10" data-toggle="collapse"
                                                                id="q10_d" data-target="#comment_q10_d"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Lifestyle flexibility</label>
                                                        </div>

                                                        <div id="comment_q10_d" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q10" data-toggle="collapse"
                                                                id="q10_e" data-target="#comment_q10_e"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>A boon for women especially working mothers</label>
                                                        </div>

                                                        <div id="comment_q10_e" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q10" data-toggle="collapse"
                                                                id="q10_f" data-target="#comment_q10_f"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>A bonus for introverts</label>
                                                        </div>

                                                        <div id="comment_q10_f" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>
                                            </li>

                                            <!---11 ST QUESTION-->

                                            <li>
                                                <h4>Which of the following areas you believe WFH has helped you optimize
                                                    & by what scale? </h4>
                                                <div class="ml ">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q11" data-toggle="collapse"
                                                                id="q11_a" data-target="#comment_q11_a"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Number of working hours spent on carrying out work
                                                                processes </label>
                                                        </div>

                                                        <div id="comment_q11_a" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q11" data-toggle="collapse"
                                                                id="q11_b" data-target="#comment_q11_b"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Time spent on collaborating with colleagues</label>
                                                        </div>

                                                        <div id="comment_q11_b" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q11" data-toggle="collapse"
                                                                id="q11_c" data-target="#comment_q11_c"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Commuting time </label>
                                                        </div>

                                                        <div id="comment_q11_c" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q11" data-toggle="collapse"
                                                                id="q11_d" data-target="#comment_q11_d"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Making tasks simpler & reducing the time spent on
                                                                each</label>
                                                        </div>

                                                        <div id="comment_q11_d" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q11" data-toggle="collapse"
                                                                id="q11_e" data-target="#comment_q11_e"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Lower absenteeism</label>
                                                        </div>

                                                        <div id="comment_q11_e" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q1" customatt="radio_option"
                                                                    id="q4_f" data-toggle="#q5_rank">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" ></input>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>
                                            </li>

                                            <!---12 ST QUESTION-->

                                            <li>
                                                <h4>Do you think WFH will continue even into the post pandemic period &
                                                    what’s your confidence level? </h4>

                                                    <div class="ml ">
                                                    <div class="d-flex  justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q12" customatt="radio_option"
                                                                    id="q12_a" data-toggle="#q12_a_rank">
                                                            </div>
                                                            <label>Yes</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q12" customatt="radio_option"
                                                                    id="q12_b">
                                                            </div>
                                                            <label>No</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q12" customatt="radio_option"
                                                                    id="q12_c">
                                                            </div>
                                                            <label>Not Sure </label>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="ml">
                                                    <div class="mt-2 mb-4 target" id="q12_a_rank">
                                                        <div class="w-100 px-3">
                                                            <input type="hidden" class="single-slider" value="8" />
                                                            <span class="pt-2 pb-3 text-dark d-block"
                                                            style="font-weight: bold; ">Slide Bar
                                                            Score</span>

                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!---13 ST QUESTION-->
                                            <li>
                                                <h4>What percentage of your company’s workforce you see will be working
                                                    from home by 2022? </h4>


                                                <div class="ml ">
                                                    <div class="d-flex   justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q13" customatt="radio_option"
                                                                    id="q13_a" data-toggle="#q13_a_rank">
                                                            </div>
                                                            <label> &#10094 15%</label>
                                                        </div>


                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q13" customatt="radio_option"
                                                                    id="q13_b">
                                                            </div>
                                                            <label>20% to 40%</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q13" customatt="radio_option"
                                                                    id="q13_c">
                                                            </div>
                                                            <label> &#10095; 50% </label>
                                                        </div>

                                                    </div>
                                                </div>


                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!---14 ST QUESTION-->
                                            <li>
                                                <h4>Which of the following roles in your company you believe are better
                                                    suited for WFH? </h4>


                                                <div class="ml ">
                                                    <div class="d-flex  flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14"
                                                                    customatt="radio_option" id="q14_a"
                                                                    data-toggle="#q13_a_rank">
                                                            </div>
                                                            <label> Customer Service Executive</label>
                                                        </div>


                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14"
                                                                    customatt="radio_option" id="q14_b">
                                                            </div>
                                                            <label>Accountant</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14"
                                                                    customatt="radio_option" id="q14_c">
                                                            </div>
                                                            <label> Business Development Officer</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14"
                                                                    customatt="radio_option" id="q14_c">
                                                            </div>
                                                            <label> Program Manager</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14"
                                                                    customatt="radio_option" id="q14_c">
                                                            </div>
                                                            <label>HR Executive</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14"
                                                                    customatt="radio_option" id="q14_c">
                                                            </div>
                                                            <label>Web Developer</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14"
                                                                    customatt="radio_option" id="q14_c">
                                                            </div>
                                                            <label>Project Manager </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q14"
                                                                    customatt="radio_option" id="q14_c">
                                                            </div>
                                                            <label>Territory Sales Manager </label>
                                                        </div>


                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q1" customatt="radio_option"
                                                                    id="q4_f" data-toggle="#q5_rank">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" ></input>
                                                        </div>

                                                    </div>
                                                </div>


                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!---15 ST QUESTION-->

                                            <li>
                                                <h4>What do you think are the current barriers to work from anywhere?
                                                </h4>
                                                <div class="ml ">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q15" data-toggle="collapse"
                                                                id="q15_a" data-target="#comment_q15_a"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Want of technology to optimize and improve remote
                                                                performance </label>
                                                        </div>

                                                        <div id="comment_q15_a" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q15" data-toggle="collapse"
                                                                id="q15_b" data-target="#comment_q15_b"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Unreliable internet & home Wi-Fi</label>
                                                        </div>

                                                        <div id="comment_q15_b" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q15" data-toggle="collapse"
                                                                id="q15_c" data-target="#comment_q15_c"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Lack of visibility into network performance for IT
                                                                departments </label>
                                                        </div>

                                                        <div id="comment_q15_c" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q15" data-toggle="collapse"
                                                                id="q15_d" data-target="#comment_q15_d"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            </div>
                                                            <label>Security Issues </label>
                                                        </div>

                                                        <div id="comment_q15_d" aria-expanded="false" class="collapse">
                                                            <div class="w-100 px-3">
                                                               
                                                                <input type="hidden" class="single-slider" value="0" />
                                                                <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                            </div>
                                                        </div>

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q1" customatt="radio_option"
                                                                    id="q4_f" data-toggle="#q5_rank">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" ></input>
                                                        </div>



                                                    </div>
                                                </div>
                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>
                                            </li>

                                            <!---16 nd QUESTION-->
                                            <li>
                                                <h4>Does your company plan any additional technology investments to
                                                    strengthen remote working?</h4>
                                                <div class="ml">

                                                    <div class="d-flex flex-wrap justify-content-start ">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q16" id="q16_a">
                                                            </div>
                                                            <label>Yes </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">

                                                            <div class="input_block">
                                                                <input type="radio" name="q16" id="q16_b">
                                                            </div>
                                                            <label>No </label>
                                                        </div>
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q16" id="q16_c">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>


                                            </li>


                                            <!---17 ST QUESTION-->

                                            <li>
                                                <h4>How will the office of the future be different?</h4>
                                                <div class="ml ">
                                                    <div class="d-flex flex-column justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q17" customatt="radio_option"
                                                                    id="q17_a" data-toggle="#q17_a_rank">
                                                            </div>
                                                            <label>More male dominated </label>
                                                        </div>

                                                     
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q17" customatt="radio_option"
                                                                    id="q17_b" data-toggle="#q17_b_rank">
                                                            </div>
                                                            <label>More diverse and inclusive</label>
                                                        </div>

                                                       

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q17" customatt="radio_option"
                                                                    id="q17_c" data-toggle="#q17_c_rank">
                                                            </div>
                                                            <label>More flexible & agile </label>
                                                        </div>

                                                      

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q17" customatt="radio_option"
                                                                    id="q17_d" data-toggle="#q17_d_rank">
                                                            </div>
                                                            <label>More space & an open office floor plan </label>
                                                        </div>

                                                      

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q17" customatt="radio_option"
                                                                    id="q17_d" data-toggle="#q17_e_rank">
                                                            </div>
                                                            <label>Pods for workers instead of rows of desks </label>
                                                        </div>

                                                      

                                                        <div class="mr-2 d-flex justify-content-start">
                                                            <div class="input_block">
                                                                <input type="checkbox" name="q1" customatt="radio_option"
                                                                    id="q4_f" data-toggle="#q5_rank">
                                                            </div>
                                                            <!--label>Other (Specify) </label-->
                                                            <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" ></input>
                                                        </div>

                                                     



                                                    </div>
                                                </div>
                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>
                                            </li>


                                            <!---18 ST QUESTION-->

                                            <li>
                                                <h4>Do you believe that WFH can actually boost diversity, equity & inclusion (DEI)?</h4>


                                                <div class="ml ">
                                                    <div class="d-flex  justify-content-start toggle">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q18" customatt="radio_option"
                                                                    id="q18_a" data-toggle="#q18_a_rank">
                                                            </div>
                                                            <label>Yes</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q18" customatt="radio_option"
                                                                    id="q18_b">
                                                            </div>
                                                            <label>No</label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q18" customatt="radio_option"
                                                                    id="q18_c">
                                                            </div>
                                                            <label>Not Sure </label>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="ml ">
                                                    <div class="mt-2 mb-4 target" id="q18_a_rank">
                                                        <div class="w-100 px-2">

                                                            <div class=" ">
                                                                <div
                                                                    class="d-flex flex-column justify-content-start toggle">
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="checkbox" name="q18_01"
                                                                                 id="q18_01_a"
                                                                                >
                                                                        </div>
                                                                        <label>Ability to Build More Diverse Teams
                                                                        </label>
                                                                    </div>

                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="checkbox" name="q18_01"
                                                                                id="q18_01_b"
                                                                               >
                                                                        </div>
                                                                        <label>Marginalized groups feel a greater sense
                                                                            of safety</label>
                                                                    </div>

                                                                  
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="checkbox" name="q18_01"
                                                                                id="q18_01_c"
                                                                                >
                                                                        </div>
                                                                        <label>Benefits people with physical
                                                                            disabilities by making previously
                                                                            inaccessible workplaces accessible </label>
                                                                    </div>


                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="checkbox" name="q18_01"
                                                                                 id="q18_01_d"
                                                                                >
                                                                        </div>
                                                                        <label>Promotes gender equality & closes the
                                                                            gender gap by offering women better
                                                                            opportunities and greater flexibility
                                                                        </label>
                                                                    </div>


                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="checkbox" name="q18_01"
                                                                                 id="q18_01_f"
                                                                                >
                                                                        </div>
                                                                        <label>Reduces risk of racial prejudice and
                                                                            attitudes</label>
                                                                    </div>

                                                                  

                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="checkbox" name="q18_01"
                                                                                 id="q18_01_h"
                                                                                >
                                                                        </div>
                                                                        <label>Eliminates visual bias in the
                                                                            workplace</label>
                                                                    </div>

                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                            <!---19nd QUESTION-->
                                            <li>
                                                <h4>Employees want more certainty about post pandemic working
                                                    arrangements. Do you agree with this statement?</h4>
                                                <div class="ml">

                                                    <div class="d-flex flex-wrap justify-content-start ">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q19" id="q19_a">
                                                            </div>
                                                            <label>Yes </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">

                                                            <div class="input_block">
                                                                <input type="radio" name="q19" id="q19_b">
                                                            </div>
                                                            <label>No </label>
                                                        </div>
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q19" id="q19_c">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>


                                              <!---22nd QUESTION-->
                                              <li>
                                                <h4>Do you believe that in your company workers from all backgrounds are benefiting from technological innovations?</h4>
                                                <div class="ml">

                                                    <div class="d-flex flex-column justify-content-start ">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q22" id="q22_a">
                                                            </div>
                                                            <label>Yes - Workers are reaping gains from technology and automation </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">

                                                            <div class="input_block">
                                                                <input type="radio" name="q22" id="q22_b">
                                                            </div>
                                                            <label>No – Automation has taken over human jobs</label>
                                                        </div>
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q22" id="q22_c">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>

                                             <!---23nd QUESTION-->
                                             <li>
                                                <h4>Does your company give opportunities for reskilling and reinvention for workers displaced by technology and changing requirements?</h4>
                                                <div class="ml">

                                                    <div class="d-flex flex-column justify-content-start ">
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q23" id="q23_a">
                                                            </div>
                                                            <label>Yes </label>
                                                        </div>

                                                        <div class="mr-2 d-flex options">

                                                            <div class="input_block">
                                                                <input type="radio" name="q23" id="q23_b">
                                                            </div>
                                                            <label>No</label>
                                                        </div>
                                                        <div class="mr-2 d-flex options">
                                                            <div class="input_block">
                                                                <input type="radio" name="q23" id="q23_c">
                                                            </div>
                                                            <label>Don’t Know </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>



  <!---24 ST QUESTION-->

  <li>
    <h4>How has digital & artificial intelligence changed your work?</h4>
    <div class="ml ">
        <div class="d-flex flex-column justify-content-start toggle">
            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q24" customatt="radio_option"
                        id="q24_a" data-toggle="#q24_a_rank">
                </div>
                <label>It has added a new dimension to my role  </label>
            </div>

         
            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q24" customatt="radio_option"
                        id="q24_b" data-toggle="#q24_b_rank">
                </div>
                <label>Has stolen elements of my job</label>
            </div>

           

            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q24" customatt="radio_option"
                        id="q24_c" data-toggle="#q24_c_rank">
                </div>
                <label>Forced me to change jobs and reskill myself </label>
            </div>

          

            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q24" customatt="radio_option"
                        id="q24_d" data-toggle="#q24_d_rank">
                </div>
                <label>Made my job easier and more efficient  </label>
            </div>

          

         

          

            <div class="mr-2 d-flex justify-content-start">
                <div class="input_block">
                    <input type="checkbox" name="q1" customatt="radio_option"
                        id="q24_f" data-toggle="#q24_rank">
                </div>
                <!--label>Other (Specify) </label-->
                <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1">
            </div>

            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q24" customatt="radio_option"
                        id="q24_d" data-toggle="#q24_e_rank">
                </div>
                <label>Don’t Know  </label>
            </div>
         



        </div>
    </div>
    <div class="ml mt-2">
        <div id="comment_01" aria-expanded="false" class="collapse show ">
            <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
        </div>
    </div>
</li>


<!---24 ST QUESTION-->

<li>
    <h4>When you think about the future of work in your company and how it might affect you, how do you feel? </h4>
    <div class="ml ">
        <div class="d-flex flex-column justify-content-start toggle">
            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q25" customatt="radio_option"
                        id="q25_a" data-toggle="#q25_a_rank">
                </div>
                <label>Excited – as you see new opportunities   </label>
            </div>

         
            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q25" customatt="radio_option"
                        id="q25_b" data-toggle="#q25_b_rank">
                </div>
                <label>Confidant – that you can live up to the challenge</label>
            </div>

           

            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q25" customatt="radio_option"
                        id="q25_c" data-toggle="#q25_c_rank">
                </div>
                <label>Worried & Nervous - because the uncertainty intimidates you   </label>
            </div>

          

            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q25" customatt="radio_option"
                        id="q25_d" data-toggle="#q25_d_rank">
                </div>
                <label>Uninterested – since you wish not to think so far ahead  </label>
            </div>

            <div class="mr-2 d-flex options">
                <div class="input_block">
                    <input type="checkbox" name="q25" customatt="radio_option"
                        id="q25_d" data-toggle="#q25_e_rank">
                </div>
                <label>Don’t Know – as I have no opinion   </label>
            </div>
         
        </div>
    </div>
    <div class="ml mt-2">
        <div id="comment_01" aria-expanded="false" class="collapse show ">
            <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
        </div>
    </div>
</li>



                                            <!--20th Question-->
                                            <li>
                                                <h4>Did we miss anything? Chime in with your thoughts </h4>

                                            


                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Add Question" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>


                                            <!---21th QUESTION-->
                                            <li>
                                                <h4>Please rate this program and the attributes we covered </h4>


                                                <div class="ml mt-2 mb-4" id="q21_rank">
                                                    <div class="w-100 px-3">
                                                       
                                                        <input type="hidden" class="single-slider" value="0" />
                                                        <span class="pt-2 pb-3 text-dark d-block"
                                                                                    style="font-weight: bold; ">Slide Bar
                                                                                    Score</span>
                                                    </div>
                                                </div>

                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>

                                            </li>




                                        </ul>

                                    <hr />
                                    <div class="row text-center mb-2">
                                        <a href="javascript:void(0)" onClick="getSubmitValue('<%=session("EID")%>')"
                                            class="button1 p-2 rounded-0 shadow-sm submit_model_button"
                                            style="width:80px !important; color:#fff !important" type="submit"
                                            class="button1 p-2 rounded-0 shadow-sm" src="images/login.gif"
                                            name="btnsubmit" value="OK" style="width:80px !important">SUBMIT</a>
                                    </div>
                                    </form>
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

</html> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>