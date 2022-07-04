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
                                <!---BEGIN:COLLAPSE-->
                                <div class="collapse my-3 w-100 p-0 show" id="questionnaire">

                                    <!---BEGIN:HEADING-->
                                    <div class=" border position-relitive" id="questionnaire_block">
                                        <div class="row text-primary  w-100 pb-2 mt-3 mb-0 text-center mt-0"
                                            id="questionnaire_title">
                                            <h1 class="font-weight-bold  line-height-normal">B2C - B2B - B2G</h1>
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
                                                        <h4>Which of the following business models your company falls into?</h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-wrap justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q1" customatt="radio_option"
                                                                            id="q1_a">
                                                                    </div>
                                                                    <label>B2C</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q1" customatt="radio_option"
                                                                            id="q1_b">
                                                                    </div>
                                                                    <label>B2B</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q1" customatt="radio_option"
                                                                            id="q1_c">
                                                                    </div>
                                                                    <label>B2G </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex justify-content-start">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q1" customatt="radio_option"
                                                                            id="q4_f" data-toggle="#q5_rank">
                                                                    </div>
                                                                    <!--label>Other (Specify) </label-->
                                                                    <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                    height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                                </div>
        
        
        
                                                            </div>
                                                        </div>
                                                        <div class="mt-2 mb-4 target" id="q1_rank">
                                                            <div class="w-100 px-2 ml">
                                                                <textarea class="form-control" id="ans_3" rows="1" style="width: 250px; !important"></textarea>
                                                            </div>
                                                        </div>
        
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Add Question" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                    <!---2nd QUESTION-->
        
                                                    <li>
                                                        <h4>What do you believe are the biggest challenges facing direct
                                                            marketers worldwide? </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" data-toggle="collapse"
                                                                            data-target="#comment_2a" aria-expanded="false"
                                                                            aria-controls="collapseOne">
                                                                    </div>
                                                                    <label>Technology Skills </label>
                                                                </div>
        
                                                                <div id="comment_2a" aria-expanded="false"
                                                                    class="collapse my-2 ">
                                                                    <div class="w-100">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider"
                                                                                    value="0" />
                                                                            </div>
        
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_2b" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Integrating Customer Insights Into Decision Making
                                                                </label>
                                                            </div>
        
                                                            <div id="comment_2b" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_2c" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Managing Data Quality</label>
                                                            </div>
        
                                                            <div id="comment_2c" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_2d" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Content Development Skills</label>
                                                            </div>
        
                                                            <div id="comment_2d" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_2e" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Developing Expertise in New Channels</label>
                                                            </div>
        
                                                            <div id="comment_2e" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_8l" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Other (Specify)</label>
                                                            </div>
        
                                                            <div id="comment_8l" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comments" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                    <!---3ST QUESTION-->
                                                    <li>
                                                        <h4> Are the above challenges the same for B2C, B2B & B2G companies?
                                                        </h4>
                                                        <div class="ml">
        
                                                            <div class="d-flex flex-wrap justify-content-start ">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q3" id="q3_a">
                                                                    </div>
                                                                    <label>Yes </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
        
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q3" id="q3_b">
                                                                    </div>
                                                                    <label>No </label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q3" id="q3_d">
                                                                    </div>
                                                                    <label>Don’t Know</label>
                                                                </div>
                                                            </div>
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comments" ></textarea>
                                                            </div>
                                                        </div>
                                                    </li>
        
                                                    <!---4nd QUESTION-->
        
                                                    <li>
                                                        <h4>As a B2C, B2B or B2G marketer, which of the following matters the
                                                            most to you? </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" data-toggle="collapse"
                                                                            data-target="#comment_4a" aria-expanded="false"
                                                                            aria-controls="collapseOne">
                                                                    </div>
                                                                    <label>Increase Website Traffic </label>
                                                                </div>
        
                                                                <div id="comment_4a" aria-expanded="false"
                                                                    class="collapse my-2 ">
                                                                    <div class="w-100">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider"
                                                                                    value="0" />
                                                                            </div>
        
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
                                                                <label>Generate Leads </label>
                                                            </div>
        
                                                            <div id="comment_4b" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
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
                                                                <label>Drive Revenue</label>
                                                            </div>
        
                                                            <div id="comment_4c" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_4d" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Improve ROI</label>
                                                            </div>
        
                                                            <div id="comment_4d" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
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
                                                                <label>Lower the Cost Per Lead</label>
                                                            </div>
        
                                                            <div id="comment_4e" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_4f" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Improve Brand & Product Awareness</label>
                                                            </div>
        
                                                            <div id="comment_4f" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
        
                                                            <div class="mr-2 d-flex justify-content-start">
                                                                <div class="input_block">
                                                                    <input type="checkbox" name="q4" customatt="radio_option"
                                                                        id="q4_f" data-toggle="#q5_rank">
                                                                </div>
                                                                <!--label>Other (Specify) </label-->
                                                                <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                            </div>
        
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comments" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
        
                                                    <!---5nd QUESTION-->
        
                                                    <li>
                                                        <h4>What do you believe are the toughest challenges in lead generation?
                                                        </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" data-toggle="collapse"
                                                                            data-target="#comment_5a" aria-expanded="false"
                                                                            aria-controls="collapseOne">
                                                                    </div>
                                                                    <label>Differentiating from Competitors</label>
                                                                </div>
        
                                                                <div id="comment_5a" aria-expanded="false"
                                                                    class="collapse my-2 ">
                                                                    <div class="w-100">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider"
                                                                                    value="0" />
                                                                            </div>
        
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_5b" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Privacy Concerns/Regulations</label>
                                                            </div>
        
                                                            <div id="comment_5b" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_5c" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Rising Costs of Customer Acquisition</label>
                                                            </div>
        
                                                            <div id="comment_5c" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_5d" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Internal/Operational Issues</label>
                                                            </div>
        
                                                            <div id="comment_5d" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_5e" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Reaching Target Audience</label>
                                                            </div>
        
                                                            <div id="comment_5e" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_5f" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>Decreasing Conversion on Promotions</label>
                                                            </div>
        
                                                            <div id="comment_5f" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
        
                                                            <div class="mr-2 d-flex justify-content-start">
                                                                <div class="input_block">
                                                                    <input type="checkbox" name="q4" customatt="radio_option"
                                                                        id="q4_f" data-toggle="#q5_rank">
                                                                </div>
                                                                <!--label>Other (Specify) </label-->
                                                                <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                            </div>
        
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comments" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
        
                                                    <!---6ST QUESTION-->
        
                                                    <li>
                                                        <h4>What are the digital channels of marketing used by your company?
                                                        </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-wrap justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q6"
                                                                            customatt="radio_option" id="q6_a">
                                                                    </div>
                                                                    <label>Website </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q6"
                                                                            customatt="radio_option" id="q6_b">
                                                                    </div>
                                                                    <label>Web Applications</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q6"
                                                                            customatt="radio_option" id="q6_c">
                                                                    </div>
                                                                    <label>Mobile App </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q6"
                                                                            customatt="radio_option" id="q6_d">
                                                                    </div>
                                                                    <label>Email</label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex justify-content-start">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q6" customatt="radio_option"
                                                                            id="q4_f" data-toggle="#q5_rank">
                                                                    </div>
                                                                    <!--label>Other (Specify) </label-->
                                                                    <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                    height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                                </div>
        
        
        
                                                            </div>
                                                        </div>
        
                                                        <div id="comment_q6_e" aria-expanded="false" class="collapse">
                                                            <textarea class="form-control  w-100 ml" id="q6_e_text"
                                                                rows="2"></textarea>
                                                        </div>
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comments" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                    <!---7ST QUESTION-->
        
                                                    <li>
                                                        <h4>What personalization strategies are adopted by your company?</h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7"
                                                                            customatt="radio_option" id="q7_a">
                                                                    </div>
                                                                    <label>Virtual Events </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7"
                                                                            customatt="radio_option" id="q7_b">
                                                                    </div>
                                                                    <label>Virtual Shopping Support Programs</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7"
                                                                            customatt="radio_option" id="q7_c">
                                                                    </div>
                                                                    <label>Live Chat & Video </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7"
                                                                            customatt="radio_option" id="q7_d">
                                                                    </div>
                                                                    <label>Virtual Reality/Artificial Reality Shopping
                                                                        Assistant</label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7"
                                                                            customatt="radio_option" id="q7_d">
                                                                    </div>
                                                                    <label>None of the Above</label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex justify-content-start">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q7" customatt="radio_option"
                                                                            id="q4_f" data-toggle="#q5_rank">
                                                                    </div>
                                                                    <!--label>Other (Specify) </label-->
                                                                    <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                    height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                                </div>
        
        
        
                                                            </div>
                                                        </div>
        
                                                        <div id="q7_e_text" aria-expanded="false" class="collapse">
                                                            <textarea class="form-control  w-100 ml" id="q6_e_text"
                                                                rows="2"></textarea>
                                                        </div>
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comments" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                    <!---8ST QUESTION-->
        
                                                    <li>
                                                        <h4>In which of the following areas do you use personalization
                                                            strategies the most to improve customer experience? </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-wrap justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q8"
                                                                            customatt="radio_option" id="q8_a">
                                                                    </div>
                                                                    <label>Sales </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q8"
                                                                            customatt="radio_option" id="q8_b">
                                                                    </div>
                                                                    <label>Marketing </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q8"
                                                                            customatt="radio_option" id="q8_c">
                                                                    </div>
                                                                    <label>Customer Service </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q8"
                                                                            customatt="radio_option" id="q8_d">
                                                                    </div>
                                                                    <label>None of the Above </label>
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comments" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
        
                                                    <!---9nd QUESTION-->
        
                                                    <li>
                                                        <h4>What value would you assign to the importance of content in
                                                            marketing? </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" data-toggle="collapse"
                                                                            data-target="#comment_9a" aria-expanded="false"
                                                                            aria-controls="collapseOne">
                                                                    </div>
                                                                    <label>For B2C Companies </label>
                                                                </div>
        
                                                                <div id="comment_9a" aria-expanded="false"
                                                                    class="collapse my-2 ">
                                                                    <div class="w-100">
                                                                        <div class="ml">
                                                                            <div class="w-100">
                                                                                <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                                <input type="hidden" class="single-slider"
                                                                                    value="0" />
                                                                            </div>
        
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_9b" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>For B2B Companies</label>
                                                            </div>
        
                                                            <div id="comment_9b" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                            <div class="mr-2 d-flex options">
                                                                <div class="input_block">
                                                                    <input type="checkbox" data-toggle="collapse"
                                                                        data-target="#comment_9c" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                </div>
                                                                <label>For B2G Companies</label>
                                                            </div>
        
                                                            <div id="comment_9c" aria-expanded="false" class="collapse my-2 ">
                                                                <div class="w-100 ">
                                                                    <div class="ml">
                                                                        <div class="w-100">
                                                                            <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
                                                                            <input type="hidden" class="single-slider"
                                                                                value="0" />
                                                                        </div>
        
                                                                    </div>
                                                                </div>
                                                            </div>
        
                                                        </div>
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comments" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                    <!---10ST QUESTION-->
        
                                                    <li>
                                                        <h4>What are the content assets in your marketing arsenal? </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-column justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q10"
                                                                            customatt="radio_option" id="q10_a">
                                                                    </div>
                                                                    <label>Case studies/client success stories </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q10"
                                                                            customatt="radio_option" id="q10_b">
                                                                    </div>
                                                                    <label>White papers </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q10"
                                                                            customatt="radio_option" id="q10_c">
                                                                    </div>
                                                                    <label>Webinars/other videos </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q10"
                                                                            customatt="radio_option" id="q10_d">
                                                                    </div>
                                                                    <label>eBooks </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q10"
                                                                            customatt="radio_option" id="q10_d">
                                                                    </div>
                                                                    <label>Infographics </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q10"
                                                                            customatt="radio_option" id="q10_d">
                                                                    </div>
                                                                    <label>Blogs </label>
                                                                </div>
        
        
                                                                <div class="mr-2 d-flex justify-content-start">
                                                                    <div class="input_block">
                                                                        <input type="checkbox" name="q4" customatt="radio_option"
                                                                            id="q4_f" data-toggle="#q5_rank">
                                                                    </div>
                                                                    <!--label>Other (Specify) </label-->
                                                                    <input type="text" class="form-control  other_specify" id="other_spacity" placeholder="Other (Specify)" rows="1" style="width: 150px !important;
                                                                    height: 27px;margin-top: -5px;margin-left: 0px;"></input>
                                                                </div>
        
        
        
                                                            </div>
                                                        </div>
        
                                                       
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comments" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
        
                                                    <!---11ST QUESTION-->
        
                                                    <li>
                                                        <h4>What percentage of sales is generated through your company’s
                                                            website? </h4>
        
                                                        <div class="ml">
                                                            <div class="d-flex flex-wrap justify-content-start toggle">
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" customatt="radio_option"
                                                                            id="q11_a">
                                                                    </div>
                                                                    <label>&#60 5% </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" customatt="radio_option"
                                                                            id="q11_b">
                                                                    </div>
                                                                    <label>5% to 15% </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" customatt="radio_option"
                                                                            id="q11_c">
                                                                    </div>
                                                                    <label>16% to 25% </label>
                                                                </div>
        
                                                                <div class="mr-2 d-flex options">
                                                                    <div class="input_block">
                                                                        <input type="radio" name="q11" customatt="radio_option"
                                                                            id="q11_d">
                                                                    </div>
                                                                    <label>&#62 25% </label>
                                                                </div>
        
                                                            </div>
                                                        </div>
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comment" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
                                                    <!--20th Question-->
                                                    <li>
                                                        <h4>Did we miss anything? Chime in with your thoughts </h4>
        
                                                       
        
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Add Question" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
        
                                                    <!---21th QUESTION-->
                                                    <li>
                                                        <h4>Please rate this program and the attributes we covered </h4>
        
        
                                                        <div class="ml mt-2 mb-4" id="q13_rank">
                                                            <div class="w-100 px-3">
                                                                 <span class="pb-3 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>  <input type="hidden" class="single-slider" value="0" />
                                                            </div>
                                                        </div>
        
                                                        <div class="ml mt-2">
                                                            <div id="comment_01" aria-expanded="false" class="collapse show">
                                                                <textarea class="form-control   comments_block" id="comt_01"  rows="2" placeholder="Comment" ></textarea>
                                                            </div>
                                                        </div>
        
                                                    </li>
        
        
        
        
        
        
                                                </ul>
        
        
                                            </form>
                                            <hr />
                                            <div class="row text-center mb-2">
                                                <a href="javascript:void(0)"
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