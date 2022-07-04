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
    <title>GENERATION Z Survey - StrategyR.com</title>
    <meta name="description" content="B2C, B2B, B2G Survey " />
    <meta name="keywords" content="B2C, B2B, B2G Survey - StrategyR.com, business profile, domain expertise, world standing, complete profile" />
    <meta name="p:domain_verify" content="e373fc05e5338589a9a20fa7eb8cbeea" />
    <meta name="robots" content="index, follow" />
    <meta name="classification" content="business profile" />
    <meta name="revisit-after" content="5 days" />
    <meta name="author" content="strategyr.com" /
    <meta name="identifier-url" content="www.strategyr.com" />
    <meta name="distribution" content="Global" />
    <meta name="coverage" content="Worldwide" />
    <meta name="rating" content="General" />
    <meta name="language" content="English" />
    <meta http-equiv="Keep-Alive" content="300">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <meta name="p:domain_verify" content="2d36e07dec67d2a8d0bea712d690fe78" />
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
                                            <h1 class="font-weight-bold  line-height-normal"> GENERATION Z </h1>
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
        
                                                     <!---1ST QUESTION-->
                                                     <li>
                                                        <h4>What is your age?</h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-lg-wrap flex-xl-wrap flex-md-wrap flex-sm-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q5" customatt="radio_option"
                                                                            id="q1_a">
                                                                    </div>
                                                                    <label>55 to 73 (Boomer)  </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q5" customatt="radio_option"
                                                                            id="q1_b">
                                                                    </div>
                                                                    <label>39 to 54 (Generation X)</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q5" customatt="radio_option"
                                                                            id="q1_c">
                                                                    </div>
                                                                    <label>23 to 38 (Millennials)</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q5" customatt="radio_option"
                                                                            id="q1_d">
                                                                    </div>
                                                                    <label>7 to 24 (Generation Z) </label>
                                                                </div>
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
                                                        <h4>	What is your gender?</h4>
                                                        <div class="ml">
        
                                                            <div class="d-flex flex-wrap justify-content-start ">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q2" id="q2_a">
                                                                    </div>
                                                                    <label>Male </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q2" id="q2_b">
                                                                    </div>
                                                                    <label>Female</label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q2" id="q2_d">
                                                                    </div>
                                                                    <label>Gender – Non Conforming  </label>
                                                                </div>
                                                            </div>
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
                                                    </li>
        
                                                     <!---3rd QUESTION-->
                                                     <li>
                                                        <h4>How important is religious faith in your life?</h4>
                                                        <div class="ml">
        
                                                            <div class="d-flex flex-wrap justify-content-start ">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q3" id="q3_a">
                                                                    </div>
                                                                    <label>Very Important </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q3" id="q3_b">
                                                                    </div>
                                                                    <label>Moderately Important </label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q3" id="q3_d">
                                                                    </div>
                                                                    <label>Not Very Important </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q3" id="q3_f">
                                                                    </div>
                                                                    <label>Not Important  </label>
                                                                </div>
                                                            </div>
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                      <!---4nd QUESTION-->
                                                      <li>
                                                        <h4>As a measure of tolerance to other religions, do you have friends who belong to other religions?</h4>
                                                        <div class="ml">
        
                                                            <div class="d-flex flex-wrap justify-content-start ">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q4" id="q4_a">
                                                                    </div>
                                                                    <label>Yes </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q4" id="q4_b">
                                                                    </div>
                                                                    <label>No</label>
                                                                </div>
        
                                                            </div>
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
                                                      </li>
        
                                                       <!---5nd QUESTION-->
                                                       <li>
                                                        <h4>Which of the following social media platforms do you use? Select all that apply</h4>
                                                        <div class="ml">
        
                                                            <div class="d-flex flex-wrap justify-content-start ">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_a">
                                                                    </div>
                                                                    <label>SnapChat </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_b">
                                                                    </div>
                                                                    <label>Twitter</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_c">
                                                                    </div>
                                                                    <label>Google+</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_d">
                                                                    </div>
                                                                    <label>LinkedIn</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_f">
                                                                    </div>
                                                                    <label>Facebook</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_g">
                                                                    </div>
                                                                    <label>YouTube</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_h">
                                                                    </div>
                                                                    <label>Tumblr</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_i">
                                                                    </div>
                                                                    <label>Reddit</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_j">
                                                                    </div>
                                                                    <label>Instagram</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_k">
                                                                    </div>
                                                                    <label>Pinterest</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_l">
                                                                    </div>
                                                                    <label>Tiktok</label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" id="q5_m">
                                                                    </div>
                                                                    <label>WhatsApp</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex justify-content-start">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q5" customatt="radio_option"
                                                                            id="q4_f" data-toggle="#q5_rank">
                                                                    </div>
                                                                    <!--label>Other (Specify) </label-->
                                                                    <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                    height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                        
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
                                                      </li>
        
                                                       <!---6rd QUESTION-->
                                                     <li>
                                                        <h4>How often do you visit social media sites?</h4>
                                                        <div class="ml">
        
                                                            <div class="d-flex flex-lg-wrap flex-xl-wrap flex-md-wrap flex-sm-column justify-content-start ">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q6" id="q6_a">
                                                                    </div>
                                                                    <label>Daily </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q6" id="q6_b">
                                                                    </div>
                                                                    <label>Several Times a Day  </label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q6" id="q6_d">
                                                                    </div>
                                                                    <label>Few Times a Week </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q6" id="q6_e">
                                                                    </div>
                                                                    <label>Few Times a Month </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q6" id="q6_f">
                                                                    </div>
                                                                    <label>Do Not Use </label>
                                                                </div>
                                                            </div>
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                     <!---7rd QUESTION-->
                                                     <li>
                                                        <h4>From where do you get your news about current affairs and politics?</h4>
                                                        <div class="ml">
        
                                                            <div class="d-flex flex-lg-wrap flex-xl-wrap flex-md-wrap flex-sm-column justify-content-start ">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7" id="q7_a">
                                                                    </div>
                                                                    <label>Social Media</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7" id="q7_b">
                                                                    </div>
                                                                    <label>Newspaper – Hard Copy </label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7" id="q7_d">
                                                                    </div>
                                                                    <label>Newspaper – Online </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7" id="q7_e">
                                                                    </div>
                                                                    <label>Magazines – Hard Copy </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7" id="q7_f">
                                                                    </div>
                                                                    <label>Magazines – Online </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7" id="q7_f">
                                                                    </div>
                                                                    <label>Internet Blogs/News site</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7" id="q7_f">
                                                                    </div>
                                                                    <label>Television</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7" id="q7_f">
                                                                    </div>
                                                                    <label>YouTube</label>
                                                                </div>
                                                            </div>
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                     <!---8th QUESTION-->
        
                                                     <li>
                                                        <h4>Which of the below are your top social & economic issues? Please rank them on basis of your level of concern. </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8a" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Healthcare/Disease Prevention </label> 
                                                                </div>
        
                                                                <div id="comment_8a" aria-expanded="false" class="collapse my-2 ">
                                                                    <div class="w-100">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                                                                                
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8b" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Racial Justice </label> 
                                                                </div>
        
                                                                <div id="comment_8b" aria-expanded="false" class="collapse my-2 ">
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8c" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Net Neutrality </label> 
                                                                </div>
        
                                                                <div id="comment_8c" aria-expanded="false" class="collapse my-2 ">
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8d" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Unemployment</label> 
                                                                </div>
        
                                                                <div id="comment_8d" aria-expanded="false" class="collapse my-2 ">
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8e" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Climate Change</label> 
                                                                </div>
        
                                                                <div id="comment_8e" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8f" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Economic Growth </label> 
                                                                </div>
        
                                                                <div id="comment_8f" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8g" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Wealth Inequality</label> 
                                                                </div>
        
                                                                <div id="comment_8g" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8h" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Crime & Personal Safety</label> 
                                                                </div>
        
                                                                <div id="comment_8h" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8i" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Extremism, Terrorism & Conflict </label> 
                                                                </div>
        
                                                                <div id="comment_8i" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8j" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Women’s Rights</label> 
                                                                </div>
        
                                                                <div id="comment_8j" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8k" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>LGBTQ Rights </label> 
                                                                </div>
        
                                                                <div id="comment_8k" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_8l" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Immigration Reforms</label> 
                                                                </div>
        
                                                                <div id="comment_8l" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <input type="hidden" class="single-slider" value="0" />
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
        
                                                      <!---9th QUESTION-->
        
                                                      <li>
                                                        <h4>Do you believe in environmental stewardship? If yes, then how passionate a believer are you? </h4>
        
                                                      
        
                                                        <div class="ml ml-3">
                                                            <div class="d-flex  justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q9"  customatt="radio_option" id="q9_a"  data-toggle="#q9_a_rank">
                                                                        </div>
                                                                    <label>Yes</label> 
                                                                </div>
        
                                                               
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q9"  customatt="radio_option" id="q9_b"  >
                                                                        </div>
                                                                    <label>No</label> 
                                                                </div>
        
                                                                
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q9"  customatt="radio_option" id="q9_c" >
                                                                        </div>
                                                                    <label>Don’t Know  </label> 
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                        <div class="ml ml-3">
                                                            <div class="mt-2 mb-4 target" id="q9_a_rank" >
                                                                <div class="w-100 px-2">
                                                                    <input type="hidden" class="single-slider" value="0" />
                                                                </div>
                                                            </div>
        
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                        <!---10th QUESTION-->
                                                        <li>
                                                            <h4>Do you believe that you as an individual have the power to drive change on societal issues that matter most to you? </h4>
                                                            <div class="ml">
            
                                                                <div class="d-flex flex-wrap justify-content-start ">
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q10" id="q10_a">
                                                                        </div>
                                                                        <label>Yes </label>
                                                                    </div>
            
                                                                    <div class="mr-2 d-flex options">
            
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q10" id="q10_b">
                                                                        </div>
                                                                        <label>No</label>
                                                                    </div>
            
            
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q10" id="q10_d">
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
        
                                                         <!---11rd QUESTION-->
                                                     <li>
                                                        <h4>If yes to the above question, then have you done any of the following?</h4>
                                                        <div class="ml">
        
                                                            <div class="d-flex flex-column justify-content-start  toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" id="q11_a" customatt="radio_option">
                                                                    </div>
                                                                    <label>Donated to a Cause/Charities </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" id="q11_b" customatt="radio_option">
                                                                    </div>
                                                                    <label>Been a Volunteer of a Community Organization  </label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" id="q11_d" customatt="radio_option">
                                                                    </div>
                                                                    <label>Participated in Public Protest, March or Rally</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" id="q11_f" customatt="radio_option">
                                                                    </div>
                                                                    <label>Boycotted an Activity or Company  </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" id="q11_f" customatt="radio_option">
                                                                    </div>
                                                                    <label>Created Social Media Content Related to Social or Economic Issues that Matter to You  </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex justify-content-start">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" customatt="radio_option"
                                                                            id="q4_f" data-toggle="#q5_rank">
                                                                    </div>
                                                                    <!--label>Other (Specify) </label-->
                                                                    <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                    height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                       
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
        
                                                    <!---12th QUESTION-->
        
                                                    <li>
                                                        <h4>Do you support liberal values on the following? </h4>
        
                                                      
        
                                                        <div class="ml ml-3">
        
                                                            <h6 style="font-size: 14.5px; font-weight: bold; margin-bottom: 4px; color: #424141; margin-left: 8px;">Same Sex Marriage</h6>
                                                            <div class="d-flex  justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q12_1"  customatt="radio_option" id="q12_1_a"  data-toggle="#q12_1_a_rank">
                                                                        </div>
                                                                    <label>Yes</label> 
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q12_1"  customatt="radio_option" id="q12_1_b"  >
                                                                        </div>
                                                                    <label>No</label> 
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q12_1"  customatt="radio_option" id="q12_1_c" >
                                                                        </div>
                                                                    <label>Don’t Know  </label> 
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                        <div class="ml ml-3">
                                                            <div class="mt-2 mb-4 target" id="q12_1_a_rank" >
                                                                <div class="w-100 px-2">
                                                                    <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                    <input type="hidden" class="single-slider" value="0" />
                                                                </div>
                                                            </div>
        
                                                        </div>
        
                                                        <!----------brak------------>
        
                                                        <div class="ml ml-3">
        
                                                            <h6 style="font-size: 14.5px; font-weight: bold; margin-bottom: 4px; color: #424141; margin-left: 8px;">Equal Treatment for Transgenders</h6>
                                                            <div class="d-flex  justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q12_2"  customatt="radio_option" id="q12_2_a"  data-toggle="#q12_2_a_rank">
                                                                        </div>
                                                                    <label>Yes</label> 
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q12_2"  customatt="radio_option" id="q12_2_b"  >
                                                                        </div>
                                                                    <label>No</label> 
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q12_2"  customatt="radio_option" id="q12_2_c" >
                                                                        </div>
                                                                    <label>Don’t Know  </label> 
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                        <div class="ml ml-3">
                                                            <div class="mt-2 mb-4 target" id="q12_2_a_rank" >
                                                                <div class="w-100 px-2">
                                                                    <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                    <input type="hidden" class="single-slider" value="0" />
                                                                </div>
                                                            </div>
        
                                                        </div>
        
                                                        <!-------BREAK-------->
        
                                                        <div class="ml ml-3">
        
                                                            <h6 style="font-size: 14.5px; font-weight: bold; margin-bottom: 4px; color: #424141; margin-left: 8px;">Equal Rights for Men & Women</h6>
                                                            <div class="d-flex  justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q12_3"  customatt="radio_option" id="q12_1_a"  data-toggle="#q12_3_a_rank">
                                                                        </div>
                                                                    <label>Yes</label> 
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q12_3"  customatt="radio_option" id="q12_3_b"  >
                                                                        </div>
                                                                    <label>No</label> 
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q12_3"  customatt="radio_option" id="q12_3_c" >
                                                                        </div>
                                                                    <label>Don’t Know  </label> 
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                        <div class="ml ml-3">
                                                            <div class="mt-2 mb-4 target" id="q12_3_a_rank" >
                                                                <div class="w-100 px-2">
                                                                    <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                    <input type="hidden" class="single-slider" value="0" />
                                                                </div>
                                                            </div>
        
                                                        </div>
        
        
        
                                                        
        
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
        
        
                                                     <!---13th QUESTION-->
                                                     <li>
                                                        <h4>What kind of leadership do you prefer in your company?</h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q13" customatt="radio_option"
                                                                            id="q13_a">
                                                                    </div>
                                                                    <label>The visionary leader  </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q13" customatt="radio_option"
                                                                            id="q13_b">
                                                                    </div>
                                                                    <label>The coaching leader</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q13" customatt="radio_option"
                                                                            id="q13_c">
                                                                    </div>
                                                                    <label>The affiliative leader</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q13" customatt="radio_option"
                                                                            id="q13_d">
                                                                    </div>
                                                                    <label>The democratic leader </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q13" customatt="radio_option"
                                                                            id="q13_e">
                                                                    </div>
                                                                    <label>The pace-setting leader </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q13" customatt="radio_option"
                                                                            id="q13_f">
                                                                    </div>
                                                                    <label>The commanding leader </label>
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                        <!---div class="ml mt-2 mb-4 target" id="q5_rank" >
                                                                        <div class="w-100 px-3">
                                                                            <input type="hidden" class="single-slider" value="0"/>
                                                                        </div>
                                                                    </div--->
        
                                                                    <div class="ml mt-2">
                                                                        <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                            <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                                        </div>
                                                                    </div>
        
        
                                                    </li>
        
        
                                                      <!---14th QUESTION-->
                                                      <li>
                                                        <h4>How Important is Diversity, Equity & Inclusion (DEI) in a company?</h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q14" customatt="radio_option"
                                                                            id="q14_a">
                                                                    </div>
                                                                    <label>Very important so much so it influences your decision to accept or decline employment offers </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q14" customatt="radio_option"
                                                                            id="qq14_b">
                                                                    </div>
                                                                    <label>Not a very important consideration in filtering employment offers </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q14" customatt="radio_option"
                                                                            id="q14_c">
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
        
        
                                                          <!---15rd QUESTION-->
                                                          <li>
                                                            <h4>Gen Z is already in the workforce! How do you think the widening generation gap will impact the workplace?</h4>
                                                            <div class="ml">
            
                                                                <div class="d-flex flex-column justify-content-start  toggle">
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q15" id="q15_a" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will Create Challenges in Managing Multigenerational Teams  </label>
                                                                    </div>
            
                                                                    <div class="mr-2 d-flex options">
            
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q15" id="q15_b" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will Infuse New Blood and Innovation Into the Teams  </label>
                                                                    </div>
            
            
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q15" id="q15_d" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will Create Challenges Arising Out of Different Work Expectations Across Generations</label>
                                                                    </div>
            
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q15" id="q15_f" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will Drive Adoption of More Digital Work Technologies & Practices  </label>
                                                                    </div>
            
                                                                   
                                                                    <div class="mr-2 d-flex justify-content-start">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q15" customatt="radio_option"
                                                                                id="q4_f" data-toggle="#q5_rank">
                                                                        </div>
                                                                        <!--label>Other (Specify) </label-->
                                                                        <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                        height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                                    </div>
            
                                                                </div>
                                                            </div>
            
                                                            <div class="ml mt-2 mb-4 target" id="q15_rank">
                                                                <div class="w-100 ">
                                                                    <input type="text" class="form-control  w-100" id="other_spacity" rows="1">
                                                                </div>
                                                            </div>
            
            
                                                            <div class="ml mt-2">
                                                                <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                    <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                                </div>
                                                            </div>
            
                                                        </li>
            
                                                           <!---16rd QUESTION-->
                                                           <li>
                                                            <h4>If you are 24 years or below, then as a Gen Z worker</h4>
                                                            <div class="ml">
            
                                                                <div class="d-flex flex-column justify-content-start  toggle">
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q16" id="q16_a" customatt="radio_option">
                                                                        </div>
                                                                        <label>Do you prefer a millennial manager over a boomer   </label>
                                                                    </div>
        
                                                                    <div class="d-flex  justify-content-start toggle">
                                                                        <div class="mr-2 d-flex options">
                                                                            <div class="input_block">
                                                                                <input type="radio" name="q12_1" customatt="radio_option" id="q12_1_a" data-toggle="#q12_1_a_rank">
                                                                                </div>
                                                                            <label>Yes</label> 
                                                                        </div>
        
                                                                        <div class="mr-2 d-flex options">
                                                                            <div class="input_block">
                                                                                <input type="radio" name="q12_1" customatt="radio_option" id="q12_1_b">
                                                                                </div>
                                                                            <label>No</label> 
                                                                        </div>
        
                                                                        <div class="mr-2 d-flex options">
                                                                            <div class="input_block">
                                                                                <input type="radio" name="q12_1" customatt="radio_option" id="q12_1_c">
                                                                                </div>
                                                                            <label>Don’t Know  </label> 
                                                                        </div>
        
                                                                    </div>
            
                                                                    <div class="mr-2 d-flex options">
            
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q16" id="q16_b" customatt="radio_option">
                                                                        </div>
                                                                        <label>Would you like multiple check-ins from your manager & more frequent feedbacks  </label>
                                                                    </div>
            
            
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q16" id="q16_d" customatt="radio_option">
                                                                        </div>
                                                                        <label>Would you prefer human element to your teams like more face-to-face communication</label>
                                                                    </div>
            
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q16" id="q16_f" customatt="radio_option">
                                                                        </div>
                                                                        <label>Would rather not work for companies that do not prioritize diversity, equity & inclusion  </label>
                                                                    </div>
        
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q16" id="q16_g" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will demand a work-life balance  </label>
                                                                    </div>
            
            
                                                                   
                                                                    <div class="mr-2 d-flex justify-content-start">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q16" customatt="radio_option"
                                                                                id="q4_f" data-toggle="#q5_rank">
                                                                        </div>
                                                                        <!--label>Other (Specify) </label-->
                                                                        <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                        height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                                    </div>
            
                                                                </div>
                                                            </div>
            
                                                            <div class="ml mt-2">
                                                                <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                    <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                                </div>
                                                            </div>
            
                                                        </li>
        
        
                                                           <!---17rd QUESTION-->
                                                           <li>
                                                            <h4>Gen Z consumers are now in the market. How do you think this will affect your company’s branding & marketing strategy?</h4>
                                                            <div class="ml">
            
                                                                <div class="d-flex flex-column justify-content-start  toggle">
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q17" id="q17_a" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will need to engage with more digital marketing tools like social commerce   </label>
                                                                    </div>
            
                                                                    <div class="mr-2 d-flex options">
            
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q17" id="q17_b" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will need to provide more value for money  </label>
                                                                    </div>
            
            
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q17" id="q17_d" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will need to provide more transparency about your brand’s social & environmental impact</label>
                                                                    </div>
            
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q17" id="q17_f" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will need to step up on extreme customization, immediate deliveries and on-demand services </label>
                                                                    </div>
        
                                                                    <div class="mr-2 d-flex options">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q17" id="q17_g" customatt="radio_option">
                                                                        </div>
                                                                        <label>Will need to focus more on your company’s corporate social responsibility (CSR) programs  </label>
                                                                    </div>
            
            
                                                                   
                                                                    <div class="mr-2 d-flex justify-content-start">
                                                                        <div class="input_block">
                                                                            <input type="radio" name="q17" customatt="radio_option"
                                                                                id="q4_f" data-toggle="#q5_rank">
                                                                        </div>
                                                                        <!--label>Other (Specify) </label-->
                                                                        <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                        height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                                    </div>
            
                                                                </div>
                                                            </div>
            
                                                            <div class="ml mt-2 mb-4 target" id="q17_rank">
                                                                <div class="w-100 ">
                                                                    <input type="text" class="form-control  w-100" id="other_spacity" rows="1">
                                                                </div>
                                                            </div>
            
            
                                                            <div class="ml mt-2">
                                                                <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                    <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                                </div>
                                                            </div>
            
                                                        </li>
        
        
                                                           <!---18th QUESTION-->
                                                    <li>
                                                        <h4>How would you rate your mental health? </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-wrap justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q18" customatt="radio_option"
                                                                            id="q18_a">
                                                                    </div>
                                                                    <label>Excellent </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q18" customatt="radio_option"
                                                                            id="q18_b">
                                                                    </div>
                                                                    <label>Good </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q18" customatt="radio_option"
                                                                            id="q18_c">
                                                                    </div>
                                                                    <label>Average</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q18" customatt="radio_option"
                                                                            id="q18_d">
                                                                    </div>
                                                                    <label>Poor</label>
                                                                </div>
        
                                                                
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q18" customatt="radio_option"
                                                                            id="q18_d">
                                                                    </div>
                                                                    <label>Don’t Know</label>
                                                                </div>
                                                            </div>
                                                        </div>
        
                                                      
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                                <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                            </div>
                                                        </div>
        
        
                                                    </li>
        
        
                                                      <!---19th QUESTION-->
        
                                                      <li>
                                                        <h4>Would you be willing to seek medical help/support when in need?</h4>
        
                                                      
        
                                                        <div class="ml ml-3">
                                                            <div class="d-flex  justify-content-start toggle">
                                                              
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q19"  customatt="radio_option" id="q19_b"  >
                                                                        </div>
                                                                    <label>Yes</label> 
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q19"  customatt="radio_option" id="q19_a"  data-toggle="#q19_a_rank">
                                                                        </div>
                                                                    <label>No</label> 
                                                                </div>
        
                                                                
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q19"  customatt="radio_option" id="q19_c" >
                                                                        </div>
                                                                    <label>Don’t Know  </label> 
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                        <div class="ml ml-3">
                                                            <div class="mt-2 mb-4 target" id="q19_a_rank" >
                                                                <div class="w-100 px-0">
                                                                   
                                                                        <div >
                                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                                <div class="mr-2 d-flex options ">
                                                                                    <div class="input_block">
                                                                                        <input type="checkbox" name="q19_2_a"  id="q19_2_a">
                                                                                    </div>
                                                                                    <label>Feel Stigmatized </label>
                                                                                </div>
                        
                                                                                <div class="mr-2 d-flex options">
                                                                                    <div class="input_block">
                                                                                        <input type="checkbox" name="q19_2_a" id="q19_2">
                                                                                    </div>
                                                                                    <label>No Easy Access to Metal Health Services</label>
                                                                                </div>
        
                                                                                <div class="mr-2 d-flex options">
                                                                                    <div class="input_block">
                                                                                        <input type="checkbox" name="q19_2_a"  id="q19_2_a">
                                                                                    </div>
                                                                                    <label>Lack of Information </label>
                                                                                </div>
        
                                                                                <div class="mr-2 d-flex options">
                                                                                    <div class="input_block">
                                                                                        <input type="checkbox" name="q19_2_a"  id="q19_2_a">
                                                                                    </div>
                                                                                    <label> Bootstrap Mentality and Denial </label>
                                                                                </div>
        
                                                                                <div class="mr-2 d-flex options">
                                                                                    <div class="input_block">
                                                                                        <input type="checkbox" name="q19_2_a"  data-toggle="collapse"
                                                                                        id="q19_2_other" data-target="#q19_2_other"
                                                                                        aria-expanded="true" aria-controls="collapseOne">
                                                                                    </div>
                                                                                    <label>Others (Specify) </label>
                                                                                </div>
            
                                                                                <div id="q19_2_other" aria-expanded="false" class="collapse">
                                                                                    <textarea class="form-control  w-100" id="q10_e_text"
                                                                                        rows="2"></textarea>
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
        
                                                    <!---20th QUESTION-->
        
                                                    <li>
                                                        <h4>If you are a Gen Z, how then would you relate to and rank the following characteristics of this generation?  </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_20a" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Believe Diversity Should Be the Norm   </label> 
                                                                </div>
        
                                                                <div id="comment_20a" aria-expanded="false" class="collapse my-2 ">
                                                                    <div class="w-100">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                                                                                
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_20b" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Born “Digital Natives”  </label> 
                                                                </div>
        
                                                                <div id="comment_20b" aria-expanded="false" class="collapse my-2 ">
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_20c" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Are More Financially-Minded </label> 
                                                                </div>
        
                                                                <div id="comment_20c" aria-expanded="false" class="collapse my-2 ">
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_20d" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Take Personal Responsibility & Accountability to Influence Societal Change & Create a Sustainable World</label> 
                                                                </div>
        
                                                                <div id="comment_20d" aria-expanded="false" class="collapse my-2 ">
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_20e" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Are Open to Addressing Their Mental Health Challenges</label> 
                                                                </div>
        
                                                                <div id="comment_20e" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_20f" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Are Shrewd & Environmentally Aware Consumers </label> 
                                                                </div>
        
                                                                <div id="comment_20f" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_20g" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Are Politically Progressive</label> 
                                                                </div>
        
                                                                <div id="comment_20g" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
                                                                            </div>
                        
                                                                        </div>
                                                                    </div>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox"  data-toggle="collapse" data-target="#comment_20h" aria-expanded="false" aria-controls="collapseOne">
                                                                        </div>
                                                                    <label>Strongly Believe in corporate social responsibility & business purpose beyond profit</label> 
                                                                </div>
        
                                                                <div id="comment_20h" aria-expanded="false" class="collapse my-2 " >
                                                                    <div class="w-100 ">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider" value="0" />
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
        
        
                                                          <!--21th Question-->
                                              <li>
                                                <h4>Did we miss anything? Chime in with your thoughts </h4>
                                              
                                              
        
                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Add Question" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>
                                                
                                            </li>
        
        
                                             <!---22th QUESTION-->
                                             <li>
                                                <h4>Please rate this program and the attributes we covered </h4>
        
        
                                                <div class="ml mt-2 mb-4" id="q22_rank">
                                                    <div class="w-100 px-3">
                                                        <input type="hidden" class="single-slider" value="0" />
                                                    </div>
                                                </div>
        
                                                <div class="ml mt-2">
                                                    <div id="comment_01" aria-expanded="false" class="collapse show ">
                                                        <textarea class="form-control  comments_block" placeholder="Comments" id="ans_3" rows="2"></textarea>
                                                    </div>
                                                </div>
        
                                            </li>
                                            
        
        
        
                                                  
        
        
                                                </ul>
                                            </form>
        
                                            
                                        </div>
                                        <hr/>
                                        <div class="row text-center mb-2">
                                            <a href="javascript:void(0)" class="button1 p-2 rounded-0 shadow-sm submit_model_button" style="width:80px !important; color:#fff !important" type="submit" src="images/login.gif" name="btnsubmit" value="OK">SUBMIT</a>
                                        </div>
        
        
        
        
        
                                    </div>
                                    <!---END:HEADING-->
        
                                </div>
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