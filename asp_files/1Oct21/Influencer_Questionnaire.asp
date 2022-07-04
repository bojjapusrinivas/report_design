<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <!--#INCLUDE FILE="ADOVBS.asp" -->
    <!--#INCLUDE FILE="aspincludes/dbopen.asp" -->
    <!-- Basic Page Needs
<%
''If trim(session("infcode"))="" then
	If trim(request("infcode"))<>"" Then
		session("infcode") = trim(request("infcode"))
	End If
''End If

	'''' CHECK TO SEE IF trim(request("code")) IS EMPTY
	
	
			Set RSInfpeople = Server.CreateObject("ADODB.Recordset")
			
			If trim(request("code"))<>"" then
				brand_Query="SELECT sno as id, noofreports,first_name as firstname,Last_name as lastname,filename,companyName,title as headline,'' as imgorder, (case when image_path is null then logo_local else image_path end) as image_url,Filename_MD5 ,Cmp_hidden_code as cmpid,market_acumen,EmployeeCountry as location,mcpcodes,app_login_code,ManagementLevel,revenue_tier,email,display_status from GIA_MC_PROGRAM.dbo.vwInfluencersPeople WHERE app_login_code='" & trim(session("infcode")) & "' and filename='" & trim(request("code")) &"'"		
			Else
				brand_Query="SELECT sno as id, noofreports,first_name as firstname,Last_name as lastname,filename,companyName,title as headline,'' as imgorder, (case when image_path is null then logo_local else image_path end) as image_url,Filename_MD5 ,Cmp_hidden_code as cmpid,market_acumen,EmployeeCountry as location,mcpcodes,app_login_code,ManagementLevel,revenue_tier,email,display_status from GIA_MC_PROGRAM.dbo.vwInfluencersPeople WHERE app_login_code='" & trim(session("infcode")) & "'"		
			End If
			
			RSInfpeople.Open brand_Query, DataSource4
			If Not RSInfpeople.EOF Then
			companyname=trim(RSInfpeople("companyName"))
			filemd5 = trim(ucase(RSInfpeople("filename_md5")))
			cmpID = Trim(RSInfpeople("cmpid"))
			infsno=Trim(RSInfpeople("id"))
			''response.write trim(RSInfpeople("mcpcodes"))
			 managementlevel =Trim(RSInfpeople("managementlevel"))
			revenue_tier=Trim(RSInfpeople("revenue_tier"))
			FName = Trim(RSInfpeople("firstname"))
			LName = Trim(RSInfpeople("lastname"))
			Code = Trim(RSInfpeople("filename"))
			infemail=Trim(RSInfpeople("email"))
			display_status=Trim(RSInfpeople("display_status"))
			'' Top % Calculation
			''managementLevel :   M Level,VP Level,C Level,D Level
			''Rvenue Level	: >5billion - RA ,>1 - 5Billion - RB, >500 Million to 1 Billion - RC, >100 Million to 500 Million - RD, > 50 Million to 100 Million - RE, > 10 Million to 50 Million - RF, < 10 Million - RG
			'response.write managementlevel
			'response.write revenue_tier

			if revenue_tier="RA" and (managementlevel ="C Level" or managementlevel ="D Level" or managementlevel ="VP Level") then
				TopPercent="1"
			elseif revenue_tier="RA" and (managementlevel ="M Level") then
				TopPercent="5"
			elseif revenue_tier="RB" and (managementlevel ="C Level" or managementlevel ="D Level" or managementlevel ="VP Level") then
				TopPercent="5"
			else
				TopPercent="0"
			end if
			''response.write toppercent
	If trim(request("code"))<>"" Then
	code = request("code")
	session("CPCode")=request("code")
	else
	
	session("CPCode")=code
End If	
%>
================================================== -->
    <meta charset="utf-8">
    <title>PROFILE -
        <%=FName%>&nbsp;
            <%=LName%> -
                <%=companyname%> - StrategyR.com</title>
    <meta name="description" content="<%=FName%>&nbsp;<%=LName%>’s business profile, domain expertise and world standing. See <%=FName%>'s complete profile." />
    <meta name="keywords" content="<%=FName%>&nbsp;<%=LName%>, <%=companyname%>, business profile, domain expertise, world standing, complete profile" />
    <meta name="p:domain_verify" content="e373fc05e5338589a9a20fa7eb8cbeea" />
    <meta name="robots" content="index, follow" />
    <meta name="classification" content="business profile" />
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
	<link rel='stylesheet' href="css/QUESTIONNAIRE_STYLE.CSS" async>

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

                #questionnaire_title h2{
                    font-size: 17px !important;
                    font-weight: 600 !important;
                    color: #E37038;
                    padding: 3px;
                    line-height:19px !important;
                }

                    #questionnaire_block h3 {
                        font-size: 16px !important;
                        line-height: normal;
                        color: #000000;
                        font-weight: 600 !important;
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

<!-- Wrapper  Start -->

		
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
                            <%If trim(request("GTAct"))<>"" Then
			Set RSRetrieve = Server.CreateObject("ADODB.Recordset")
			sqldisData = "Select * from [GIA_MC_PROGRAM].[dbo].[tbl_Influence_Linkedin_Profile] where Linkedin_id='"&trim(request("GTAct"))&"'"
			RSRetrieve.Open sqldisData, DataSource4
			If Not RSRetrieve.EOF Then
				linkid_1= RSRetrieve("Linkedin_id")
				infcode_1 = RSRetrieve("infcode")
				fName_1 = RSRetrieve("firstname")
				lName_1 = RSRetrieve("lastname")
				Lnkd_EMail = RSRetrieve("Linkedin_email")
				Sess_EMail = RSRetrieve("Session_email")
				PRFL_Picture = "Linkedin_Profile_Images/" &  linkid_1 &".jpg"   ' RSRetrieve("ProfilePicture")
				Sess_ID_1 = RSRetrieve("Session_id")
			End If
			Set RSRetrieve = Nothing
			
			'''[tbl_Market_Influence_Profile]
			'''profile_firstname	profile_lastname	profile_email	profile_Designation

			Set RSRetrieve = Server.CreateObject("ADODB.Recordset")
			sqldisData = "Select * from [GIA_MC_PROGRAM].[dbo].[tbl_Market_Influence_Profile] where infcode='"&trim(infcode_1)&"' and Session_id = '"&Sess_ID_1&"'"
			RSRetrieve.Open sqldisData, DataSource4
			If Not RSRetrieve.EOF Then
				HDLine= RSRetrieve("profile_Designation")
				PRFType = RSRetrieve("profile_Type")
				
			End If
			Set RSRetrieve = Nothing
			%>
                                <div class="w-100">
                                    <div id="linkedin_lable" class="bg-white   p-2 my-3">
                                        <h3 class="text-primary text_orange font-weight-bold m-0 line-height-normal mt-2 text-center mb-2" style="font-size:18px;">ADDED USER VERIFICATION</h3>
                                        <div class="row mb-0 ">
                                            <h3 class="influencer_name border-0"> TYPE:
                                                <%=PRFType%>
                                            </h3>
                                        </div>
                                        <hr class="mt-0">
                                        <div class="d-flex  w-lg-70  w-xl-70 w-md-100 w-sm-100 w-100 mx-auto">
                                            <div class="left_block">
                                                <div class="row mb-0 ">
                                                    <div class="middle_column">
                                                        <div class="img-block">
                                                            <div class="w-100 h-100 bg-danger d-flex justify-content-center align-items-center" style="overflow: hidden">
                                                                <img src="<%=PRFL_Picture%>" class="img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="right_block">
                                                <div class="w-100 top_result">
                                                    <div class="label_aside mt-0">
                                                        <h4 class="text-dark">
                                                            <%=fName_1%>&nbsp;
                                                                <%=lName_1%>
                                                        </h4>
                                                        <h4 class="text-dark">
                                                            <%=HDLine%>
                                                        </h4>

                                                        <%if trim(infemail) <> trim(Lnkd_EMail) then%>
                                                            <h4 class="text-dark">Status: Request Accepted</h4>
                                                            <h5 class="text-dark"><b>Message:</b> Authentication Successful. You now have complete control of your profile.</h5>
                                                            <a href="https://www.strategyr.com/update_Influencer_Details.asp?code=<%=code%>&infcode=<%=trim(infcode_1)%>" target="_blank" class="font-weight-bold">Edit Profile (Click here to change your profile preference from 'Public' to 'Private' and vice versa)</a>
                                                            <%else%>
                                                                <h4 class="text-dark">Status: Pending</h4>
                                                                <h5 class="text-dark"><b>Message:</b> Your authentication couldn’t be matched. We will review your request manually and send you access by email within two business days. Sorry for the inconvenience.</h5>
                                                                <%end if%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr class="mt-2">
                                    </div>

                                    <%End If%>
                                    
                                     <%If trim(session("EID"))="" Then%>
                                    	<!---BEGIN: TOP INFLUENCER LABLE Nonuser -->
                                        <div class="w-100">
                                            <div id="influencer_lable" class="bg-white border shadow p-2 non_user">
                                                <div class="row mb-0 ">
                                                    <h1 class="influencer_name">
                                                        <%=RSInfpeople("firstname")%>&nbsp;
                                                            <%=RSInfpeople("lastname")%><input type="hidden" value="<%=infsno%>" id="hdninfsno"> </h1>
                                                </div>

                                                <div class="d-flex">
                                                    <div class="w-100">
                                                        <div class="row mb-0 mt-2">
                                                            <div class="middle_column w-100">
                                                                <%If trim(session("EID"))<>"" Then%>
                                                                    <div class="img-block">
                                                                        <div class="w-100 h-100  d-flex justify-content-center align-items-center" style="overflow: hidden">

                                                                            <%''response.write "KK " & trim(display_status) & "TT"
										 if (trim(display_status)="P" ) then
											%><img src="" class="img-fluid">
                                                                                <%else %>
                                                                                    <img src="<%=RSInfpeople(" image_url ")%>" class="img-fluid">
                                                                                    <%end if
									%>
                                                                        </div>
                                                                    </div>
                                                                    <%End If%>
                                                                        <%
																		 '' Dim ActCenterVal
																		  ActCenterVal = ""
																		  If trim(session("EID"))="" Then
																			ActCenterVal = "style='text-align:left;'"
																		  End If
																		 
																		  %>
                                                                            <div class="label_aside">
                                                                                <h4 class="text-dark" <%=ActCenterVal%>>
                                                                                    <%=RSInfpeople("headline")%>
                                                                                </h4>
                                                                                <h4 class="text-dark" <%=ActCenterVal%>>
                                                                                    <%=RSInfpeople("companyName")%>
                                                                                </h4>
                                                                                <h4 class="text-dark" <%=ActCenterVal%>>
                                                                                    <%=RSInfpeople("location")%>
                                                                                </h4>
                                                                            </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                              	  </div>
                                                </div->
                                            </div>
                                            <!---COPY FROM HERE-->
                                           

                                        </div>
                                        <!-- end influencer label-->
										<%else%>
                                        <!---BEGIN: TOP INFLUENCER LABLE -->
                                        <div class="w-100">
                                            <div id="influencer_lable" class="bg-white border shadow p-2 ">
                                                <div class="row mb-0 ">
                                                    <h1 class="influencer_name">
                                                        <%=RSInfpeople("firstname")%>&nbsp;
                                                            <%=RSInfpeople("lastname")%><input type="hidden" value="<%=infsno%>" id="hdninfsno"> </h1>
                                                </div>

                                                <div class="d-flex">
                                                    <div class="left_block">
                                                        <div class="row mb-0 mt-2">
                                                            <div class="middle_column">
                                                                <%If trim(session("EID"))<>"" Then%>
                                                                    <div class="img-block">
                                                                        <div class="w-100 h-100  d-flex justify-content-center align-items-center" style="overflow: hidden">

                                                                            <%''response.write "KK " & trim(display_status) & "TT"
										 if (trim(display_status)="P" ) then
											%><img src="" class="img-fluid">
                                                                                <%else %>
                                                                                    <img src="<%=RSInfpeople("image_url")%>" class="img-fluid">
                                                                                    <%end if
									%>
                                                                        </div>
                                                                    </div>
                                                                    <%End If%>
                                                                        <%
							  Dim ActCenterVal
							  ActCenterVal = ""
							  If trim(session("EID"))="" Then
								ActCenterVal = "style='text-align:center;'"
							  End If
							 
							  %>
                                                                            <div class="label_aside">
                                                                                <h4 class="text-dark" <%=ActCenterVal%>>
                                                                                    <%=RSInfpeople("headline")%>
                                                                                </h4>
                                                                                <h4 class="text-dark" <%=ActCenterVal%>>
                                                                                    <%=RSInfpeople("companyName")%>
                                                                                </h4>
                                                                                <h4 class="text-dark" <%=ActCenterVal%>>
                                                                                    <%=RSInfpeople("location")%>
                                                                                </h4>
                                                                            </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="right_block">
                                                        <div class="w-100 top_result">
                                                            <%If trim(session("EID"))<>"" Then%>
                                                                <img src="https://www.strategyr.com/images/Influener_lable_0<%=toppercent%>.svg" class="influencer_lable" />
                                                                <%Else%>
                                                                    <img src="" class="influencer_lable" />
                                                                    <%End If%>
                                                        </div>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                            <!---COPY FROM HERE-->
                                            <!---BEGIN COMPATITIVE---->
                                            <div class="table-responsive border-0">
                                                <div class="mt-3 position-relative pb-1 d-flex flex-column">
                                                    <!---BEGIN: INFLUENCER TABLE-->
                                                    <table id="Influencer_table" class="border-0">
                                                        <!---TABLE HEADER-->
                                                        <thead>
                                                            <tr class="m-0 p-0 border-0">
                                                                <td class="d-flex flex-wrap " style="background-color:#ffffff">
																<p class="px-2">
                                                                    <%=RSInfpeople("firstname")%>&nbsp;
                                                                        <%=RSInfpeople("lastname")%> is a leading market influencer. Profile and expertise is developed using a tiered AI curation followed by in-house team review and validated peer or known-party inputs.
																		</p>
                                                                </td>
                                                            </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>

                                        </div>
                                        <!-- end influencer label-->
                                        <%end if%>
                                        
                                        
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
                                <div class="show  my-3 w-100 p-0" id="questionnaire">

                                    <!---BEGIN:HEADING-->
                                    <div class="shadow-sm border position-relitive" id="questionnaire_block">
                                            <div class="row text-primary  w-100 pb-2 mt-3 mb-0 text-center mt-0" id="questionnaire_title">
                                                   <h2 class="font-weight-bold  line-height-normal">DIVERSITY - EQUITY - INCLUSION</h2>
												   <h3 class="font-weight-bolder line-height-normal">VALIDATED EMPLOYEE SURVEY</h3>
													
                                            </div>
                                            <h3 class="d-block w-xl-95 w-lg-95 w-md-100 w-sm-100 w-100 mx-auto mt-0 mb-2 px-3 py-2 " style="font-style: italic; line-height: normal; font-size: 15px !important;">Privacy - Participants’ identities are never disclosed. Analyses by industry, rankings by company, and related trends and stats are published.
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


                                                </form>
                                                   
                                                    <hr/>
                                                    <div class="row text-center mb-2">
                                                        <a href="javascript:void(0)"  class="button1 p-2 rounded-0 shadow-sm submit_model_button" style="width:80px !important; color:#fff !important" type="submit" class="button1 p-2 rounded-0 shadow-sm" src="images/login.gif" name="btnsubmit" value="OK" style="width:80px !important" >SUBMIT</a>
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

                <%else%>
                    <div class="container">
                        <!---BEGN REPORT TITLE--->
                        <!--INCLUDE FILE="newReportTitle_New1.asp" -->
                        <!---END REPORT TITLE--->

                        <div class="w-100">
                            <div class="row mb-0 mx-0">
                                <div id="social_icon" aria-expanded="false" class="w-100" style="">
                                    <div class="d-flex flex-wrap justify-content-center mt-3" id="crowd_rank_box">
                                        <div class="w-100 text-center border-top">
                                            <h4 class="font-weight-bold  my-2" style="font-size: 20px!important;">THIS PROFILE HAS BEEN REMOVED BY USER</h4>
                                            <%'' response.write "Hi: "&brand_Query
			''response.end%>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%end if%>

                        <%set RSInfpeople = nothing%>

                            <!-----END: MODEL -->
                            <script src="https://www.strategyr.com/js/limit.text.js"></script>
                            <script src="https://www.strategyr.com/scripts/sharer.js"></script>
                            <script src="https://www.strategyr.com/scripts/jquery.range.js"></script>
                            <script>
                                /*
                                 $(document).ready(function(){

                                   $('.inputselector').click(function(e){
                                         $(this).parent().addClass('active');
                                    });

                                    $('.inputselector').focusout(function(e){
                                         $(this).parent().removeClass('active');
                                    });
                                })   */
                            </script>




                            <script>
                                $('.single-slider').jRange({
                                    from: 4.9,
                                    to: 10,
                                    step: 0.5,
                                    scale: ['5', '|', '6', '|', '7', '|', '8', '|', '9', '|', '10'],
                                    format: '%s',
                                    width: 275,
                                    showLabels: false,
                                    snap: true,
                                });
                            </script>


                            <!---RANGE SIDE VALUE TO ANOTHER INPUT -->

                            <!---SHARE ICON SCRIPT -->
                            <script type="text/javascript">
                                $(document).ready(function() {
                                    $('.sharer').sharer();
                                });
                            </script>

                            <script type="text/javascript">
                                $(document).ready(function() {
                                    $(".text_field").bind("keyup", check_field);
                                });

                                $("#submit_form").attr('disabled', true);
                                $("#submit_form").addClass("disable");

                                function check_field() {
                                    var firstname = $("#e_firstname").val();
                                    var lastname = $("#e_lastname").val();
                                    var email = $("#e_email").val();
                                    var designation = $("#e_designation").val();
                                    if (firstname != "" && lastname != "" && email != "" && designation != "") {
                                        $("#submit_form").prop("disabled", false);
                                        $("#submit_form").removeClass("disable");
                                        return true;
                                    } else {
                                        $("#submit_form").prop("disabled", true);
                                        return false;
                                    }
                                }
                            </script>



                            <script>
                                /*$('#submit_form').click(function(event) {
                                    $("#linkedin_mobel").modal({
                                      fadeDuration: 250,
                                      clickClose: false,    
                                    });
                                    return false;
                                  });*/
                            </script>


</body>

</html> 