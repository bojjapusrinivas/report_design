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

                #questionnaire_title h1{
                    font-size: 17px !important;
                    font-weight: 600 !important;
                    color: #E37038;
                    padding: 3px;
                    line-height:19px !important;
                }

                    #questionnaire_block h2 {
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