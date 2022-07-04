<!doctype html>
<html lang="en">
<head>
    <!---====== SEO NEEDS /======--->
    <meta charset="utf-8" />
    <link rel="canonical" href="GIA Portal.com" />
    <title>YT Transcription</title>
    <meta name="description" content="GIA Portal" />
    <meta name="keywords" content="GIA Portal" />
    <meta name="p:domain_verify" content="e373fc05e5338589a9a20fa7eb8cbeea" />
    <meta name="robots" content="index, follow" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="author" content="GIA Portal" />
    <meta name="identifier-url" content="GIA Portal" />
    <meta name="distribution" content="Global" />
    <meta name="coverage" content="Worldwide" />
    <meta name="rating" content="General" />
    <meta name="language" content="English" />
    <meta name="p:domain_verify" content="2d36e07dec67d2a8d0bea712d690fe78" />
    <meta property="og:site_name" content="GIA Portal" />
    <meta property="og:type" content="company" />
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <!---====== Favicons ========-->
    <link rel="apple-touch-icon" sizes="57x57" href="img/favicon/apple-touch-icon-57x57.png " />
    <link rel="apple-touch-icon" sizes="60x60" href="img/favicon/apple-touch-icon-60x60.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/favicon/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="img/favicon/apple-touch-icon-152x152.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-touch-icon-180x180.png" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta name="apple-mobile-web-app-title" content="aviationnews.today Template">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32%20.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png" />
    <link rel="shortcut icon" href="img/favicon/favicon.ico" />
    <!---====== Css Links =======--->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/custom_style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
	<link href="easySelectStyle.css" rel="stylesheet"/>
    <!---=======GOOGLE FONTS=====--->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display+SC:400,400i,700,700i,900|Playfair+Display:400,400i,500,500i,600,600i,700,700i|Poppins:200,200i,300,300i,400,400i,500,500i,600,600i,700&display=swap" rel="stylesheet">
    <!---script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script--->
    


	<!--#include file="ADOVBS.asp"-->
    <!--#include file="../ASPIncludes/DBopen.asp"-->
	<!--script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></!--script>
	<script-- src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script---->

	<style>
	.form-group {
    margin-bottom: 5px !important;
	}

	.form-group {
		font-size:15px;
		color:#000 !important;


	}


.form-group input{
	font-size: 13px;
    margin-top: 4px;
	padding:2px 5px;
}

	</style>

	
	<style>
	.modal-backdrop.show {
        opacity: 0.5;
        z-index: -1 !important;
}
.modal1-backdrop.show {
        opacity: 0.5;
        z-index: -1 !important;
}
		/* The Modal (background) */
		.modal {
		  display: none; /* Hidden by default */
		  position: fixed; /* Stay in place */
		  z-index: 1; /* Sit on top */
		  left: 0;
		  top: 0;
		  width: 100%; /* Full width */
		  height: 100%; /* Full height */
		  overflow: auto; /* Enable scroll if needed */
		  background-color: rgb(0,0,0); /* Fallback color */
		  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		}

		/* Modal Content/Box */
		.modal-content {
		  background-color: #fefefe;
		  margin: 15% auto; /* 15% from the top and centered */
		  padding: 20px;

		  border: 1px solid #888;
		  /*width: 30% Could be more or less, depending on screen size */
		}

		/* The Close Button */
		.close {
		  color: #aaa;
		  float: right;
		  font-size: 28px;
		  font-weight: bold;
		}

		.close:hover,
		.close:focus {
		  color: black;
		  text-decoration: none;
		  cursor: pointer;
		}
	</style>

	
  
</head>
<%

	if trim(Request.ServerVariables("http_referer"))="" then
		''Response.Redirect "default.asp?login=sesout"
	end if
	'' if session expired
	if trim(session("AdmFirstName"))="" then
		Response.Redirect "default.asp?login=sesout"
	end If
	
'' for paging
	dim k,rec_per_page
	rec_per_page=20
	Dim Cp,rowcount,i
		cp=Request.QueryString("Cp")
		EforEdit=Request.QueryString("E")
	if cp="" then
		cp=1
		EforEdit=cint(rec_per_page)
	end if 
	cpForEdit=cp
  '''''''''''''''''
Function SelectRadio(val1,val2)
 	IF trim(val1) = trim(val2) then
		SelectRadio = " Checked"
	else
		SelectRadio = ""
	End IF
END Function


Function Selected(val1,val2)
	IF trim(val1) = trim(val2) then
		Selected = " Checked"
	else
		Selected = ""
	End IF
END Function

Function SelectedTerm(val1,val2)
	IF Instr(trim(ucase(val2)),trim(ucase(val1)))>0 then
		SelectedTerm = " Checked"
	else
		SelectedTerm = ""
	End IF
	''response.write Instr(trim(ucase(val1)),trim(ucase(val2)))
END Function
%>
<!---====== Bootstrap core CSS =======--->
<body class="template_01" id="template_01">
<!--form-->
    <!---BEGIN:HEADER--->
    <header class="header py-3 fixed-top shadow" id="header">
        <div class="container ">
            <div class="brand_title">
                <img src="img/logo/Brand_logo.svg" />
            </div>
        </div>
    </header>
    <!---END:HEADER--->
    <!---BEGIN:Main Content--->
    <main>
        <div class="container bg_white shadow-sm border">
            
            
			<!---BEGIN: MENU--->
			<!--include file="TopMenu.asp"-->
			<!---END: MENU--->
            
            <!---- BEGIN :REPORT SECTION ---->
            <section class="py-2">
                <div class="row">
                    <div class="container-fluid bg-gray" id="accordion-style-1">
                        <div class="row">
                            <div class="col-12 mx-auto">
                                         	<div>
												<div class="modal-dialog modal-lg">
												  <!-- Modal content -->
												  <div class="modal-content m-0 p-0">
													<!--<span class="close ml-auto">&times;</span>-->
												
														<div class="w-100">
														 <form>
															 
															 <div id="divajax"></div>
																 <div class="row text-center mx-auto mb-3 p-2 alert alert-primary">
																	<h4 class="w-100 font-weight-bold mb-0">ADD YOUTUBE VIDEO </h4>
																  </div>	
																  		<div class="w-100 mt-4 mx-0">
																			<!--div class="row  form-group mx-0 mt-3 d-flex w-100">
																				
																					<label for="staticEmail" class="col-sm-3 font-weight-bold col-form-label py-0 pr-0 ">Company:</label>
																					<div class="col-sm-9">
																					<input type="text" name="TxtCompanyName"  value="" id="TxtCompanyName" placeholder="Company Name" readonly class="ml-1 border w-100">
																					  
																					</div>
																			 </div-->
																			  
																			<div class="row  form-group mx-0  d-flex w-100">																				
																					<label for="staticEmail" class="col-12 font-weight-bold col-form-label py-0 pr-0"><span clas="mr-1" style="color: red;"> * &nbsp;</span>Youtube Link:</label>
																					<div class="col-12">
																					  <input type="text" id="txtYoutubeLink" value="<%=request("vlink")%>"  name="txtYoutubeLink" placeholder="Enter Youtube Link" size="50" class="ml-1 border w-100 p-1">
																					</div>
																				 
																			 </div>
																			 <div class="row  form-group mx-0  d-flex w-100">
																				 
																					<label for="staticEmail" class="col-12 font-weight-bold col-form-label"><span clas="mr-1" style="color: red;"> * &nbsp;</span> Video Title:</label>
																					<div class="col-12">
																					  <input type="text" id="txtTitle" name="txtTitle"  placeholder="Enter Youtube Title" size="50" class="ml-1 border w-100 p-1">
																					</div>
																				  
																			 </div>
																			 <div class="row  form-group mx-0  d-flex w-100">
																				 
																					<label for="staticEmail" class="col-12 font-weight-bold col-form-label"><span clas="mr-1" style="color: red;"> * &nbsp;</span> Video Date:</label>
																					<div class="col-12">
																					  <input type="date" id="txtvDate" name="txtvDate" placeholder="Enter Youtube Date" size="50" class="ml-1 border w-100 p-1">
																					</div>
																				  
																			 </div>
																			 <div class="row  form-group mx-0  d-flex w-100">
																				   <label for="staticEmail" class="col-12 font-weight-bold col-form-label"><span clas="mr-1" style="color: red;"> * &nbsp;</span>Video Duration:</label>
																					<div class="col-12">
																						<input id="txtvDuration" name="txtvDuration"  type="text" placeholder="MM:SS" class="masked ml-1 border w-100 p-1" pattern="(1[0-2]|0[1-9]):(1[5-9]|2\d)" data-valid-example="01:30" />
																					  <!--<input type="time" inputmask="'mask': '00:00:00'" min="1:00" max="23:59" id="txtvDuration" name="txtvDuration" placeholder="Enter Transcription Time" size="50" class="ml-1">-->
																					</div>
																				  
																			 </div>
																			 <div class="row form-group mx-0  d-flex w-100">
																				  	<label for="staticEmail" class="col-12 font-weight-bold  col-form-label"><span clas="mr-1" style="color: red;"> * &nbsp;</span>Description:</label>
																					<div class="col-12">
																					  <input type="text" id="txtDescription" name="txtDescription" placeholder="Enter Youtube Description" size="80" class="ml-1 border w-100 p-1">
																					</div>
																				  
																			 </div>
																			 <!--div class="row  form-group mx-0  d-flex w-100">
																				 
																					<label for="staticEmail" class="col-sm-3 font-weight-bold col-form-label">Transcription Time:</label>
																					<div class="col-sm-9">
																					  <input type="time"  min="1:00" max="23:59" id="txttTime" name="txttTime" placeholder="Enter Transcription Time" size="50" class="ml-1">
																					</div>
																				  
																			 </div-->
																			 <!--div class="row form-group mx-0 mt-1 d-flex w-100">
																					<label for="staticEmail" class="col-sm-3 font-weight-bold  col-form-label" >Transcription:</label>
																					<div class="col-sm-9">
																					  <textarea type="text" id="txtTranscription" name="txtTranscription" style="font-size:13px;" placeholder="Transcription" size="50" cols=70 rows=5 class="ml-1 border w-100"></textarea>
																					</div>
																				  
																			 </div-->
																			 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
																			<script type="text/javascript">
																				$(function () {
																					$("#txtecosystem").click(function () {
																						if ($(this).is(":checked")) {
																							$("#dvecosystem").show();
																						} else {
																							$("#dvecosystem").hide();
																						}
																					});
																				});
																				
																				$(function () {
																					$("#txtProject").click(function () {
																						if ($(this).is(":checked")) {
																							$("#dvprojects").show();
																						} else {
																							$("#dvprojects").hide();
																						}
																					});
																				});
																				//txtSpeaker
																				$(function () {
																					$("#txtSpeaker").click(function () {
																						if ($(this).is(":checked")) {																						    
																							$("#dvspeakers").show().addClass("d-flex").removeClass("d-none");
																						} else {																							
																							$("#dvspeakers").hide().removeClass("d-flex").addClass("d-none");																					
																						}
																					});
																				});
																				//txtSpeaker
																				$(function () {
																					$("#txtCompany").click(function () {
																						if ($(this).is(":checked")) {																						    
																							$("#dvCompany").show();
																						} else {																							
																							$("#dvCompany").hide();																							
																						}
																					});
																				});
																				//dvTrans1
																				$(function () {
																					$("#txtTrans1").click(function () {
																						if ($(this).is(":checked")) {																						    
																							$("#dvTrans1").show();
																						} else {																							
																							$("#dvTrans1").hide();																							
																						}
																					});
																				});
																				</script>
																				
																				
																			 <div class="w-100 my-2 py-2 mt-4" style="background: #f7f7f7; font-size: 17px;color: #144084;">
																				<label for="staticEmail" class="col-sm-3 font-weight-bold mb-0">Keywords</label>
																			</div>


																		<div class="row">

																			 <select id="txtCompanynamenew" data-max="6" multiple="multiple">
																				<option value="CP-4834723">NETGENIQ</option>


																				<option value="CP-4834736">Pneumatech, Inc.</option>
																
																
																				<option value="CP-4834721">Context Labs</option>
																
																
																				<option value="CP-4834743">Labotek A/S</option>
																
																
																				<option value="CP-4834735">Mikropor, Inc.</option>
																
																
																				<option value="CP-4834737">Precision Filtration Products</option>
																
																
																				<option value="CP-4834728">Kronometrix Analytics</option>
																
																
																				<option value="CP-4834724">Veracity by DNV GL</option>
																
																
																				<option value="CP-4834722">Infinidat, Inc.</option>
																
																
																				<option value="CP-4834738">Sullivan-Palatek Inc</option>
            </select>	


																		</div>



																		<div class="row">
																			 <div class="form-group mt-1 col-6 my-2">																				  
																				   <div class="col-12 d-flex ">
																					  <input type="checkbox" width="70px" id="txtecosystem" name="txtecosystem" placeholder="Ecosystem" data-toggle='collapse' data-target='#dvecosystem' class="mt-1"> 
																					  <label for="staticEmail" class=" col-form-label py-0 ml-2 font-weight-bold">Ecosystem</label>
																				   </div>
																				   <div id="dvecosystem" class="col-12 collapse">
																					  <select id="txtEcocsystemname" name="txtEcocsystemname" multiple class="p-2 mt-2 border w-100 d-none" style="font-size:13px; display:none">
																						<%Set Conn = Server.CreateObject("ADODB.Connection")
																							Set rsECO = Server.CreateObject("ADODB.Recordset")
																							Conn.Open DataSource
																							''if trim(session("WHCondition")) <> "" then
																								sqlECO="select  * from stat_globind.dbo.Industrycode where code_status='A' ORDER BY industry"		  
																							''else
																								''sql="select top 5 * from globind1.dbo.Company_Admin_Master where user_status='A'  ORDER BY firstname"		  
																							''end if
																							rsECO.Open sqlECO, Conn
																							If not rsECO.EOF then
																								while not rsECO.EOF %>
																							 <option value="<%=trim(ucase(rsECO("industry")))%>"><%=trim(ucase(rsECO("industry")))%></option>
																							 
																							<% 
																								rsECO.MoveNext
																								wend 
																							end if
																							Set rsECO = nothing

																							%>
																						</select>
																					   </div>
																			 </div>
																			<div class="form-group mt-1 col-6 my-2">
																			 
																			   <div class="col-12 d-flex">
																				  <input type="checkbox" width="70px" id="txtProject" name="txtProject" placeholder="Project" data-toggle='collapse' data-target='#dvprojects' class="mt-1">
																				  <label for="staticEmail" class="ml-2  col-form-label py-0 font-weight-bold">Topic</label>
																			   </div>
																			   <div id="dvprojects" class="col-12 collapse">
																				  <select id="txtProjectname" name="txtProjectname" multiple class="p-2 mt-2 border w-100" style="font-size:13px; display:none">
																							<%Set Conn = Server.CreateObject("ADODB.Connection")
																							Set rsECO = Server.CreateObject("ADODB.Recordset")
																							Conn.Open DataSource
																							''if trim(session("WHCondition")) <> "" then
																								sqlECO="select top 10 * from stat_globind.dbo.mcpnewtopic where display_flag='Y' ORDER BY title"		  
																							''else
																								''sql="select top 5 * from globind1.dbo.Company_Admin_Master where user_status='A'  ORDER BY firstname"		  
																							''end if
																							rsECO.Open sqlECO, Conn
																							If not rsECO.EOF then
																								while not rsECO.EOF %>
																							 <option value="<%=rsECO("title")%>"><%=rsECO("title")%></option>
																							 
																							<% 
																								rsECO.MoveNext
																								wend 
																							end if
																							Set rsECO = nothing

																							%>
																							
																						</select>
																			   </div>
																			</div>																		

																			<div class="form-group mt-1 col-6 my-2">
																			 
																			   <div class="col-12 d-flex">
																				  <input type="checkbox" width="70px" id="txtCompany" name="txtCompany" placeholder="Company" data-toggle='collapse' data-target='#dvCompany' class="mt-1"> <label for="staticEmail" class="ml-2  col-form-label py-0 font-weight-bold">Company</label>
																			   </div>
																			   <div id="dvCompany" class="col-12 collapse">
																				  <select id="txtCompanyname" name="txtCompanyname" multiple class="p-2 mt-2 w-100 border " style="font-size:13px;">
																							<%Set Conn = Server.CreateObject("ADODB.Connection")
																							Set rsECO = Server.CreateObject("ADODB.Recordset")
																							Conn.Open DataSource
																							''if trim(session("WHCondition")) <> "" then
																								sqlECO="select top 10 * from GIA_MC_PROGRAM.dbo.InfluencersCompanies ORDER BY NoofReports"		  
																							''else
																								''sql="select top 20 * from GIA_MC_PROGRAM.dbo.InfluencersCompanies where user_status='A'  ORDER BY firstname"		  
																							''end if
																							rsECO.Open sqlECO, Conn
																							If not rsECO.EOF then
																								while not rsECO.EOF %>
																							 <option value="<%=rsECO("Filename")%>"><%=rsECO("Company")%></option>
																							 
																							<% 
																								rsECO.MoveNext
																								wend 
																							end if
																							Set rsECO = nothing

																							%>
																							
																						</select>
																			   </div>
																			</div>
																			
																			<div class="form-group mt-1 col-6 my-2">
																 
																   <div class="col-12 d-flex" valign="top">
																	  
																	  <input type="checkbox" width="70px" id="txtSpeaker" name="txtSpeaker" placeholder="Speaker" data-toggle='collapse' data-target='#speakers_block' class="mt-1"/>
																	 
																	  <label for="staticEmail" class="ml-2  col-form-label py-0 font-weight-bold">Speakers</label>
																   </div>
																   
																   <div id="dvspeakers" name="dvspeakers" class="col-12 mt-3" valign="top"> 

																	<div class="row d-flex flex-wrap collapse" id="speakers_block">
																		<div class="d-flex flex-column col-6">
																			<span class="w-100">
																			<span style="color:red">*</span>First Name: 
																			</span><input type="textbox" width="70px" id="txtfirstName" name="txtfirstName" placeholder="First Name">
																		</div>
																		<div class="d-flex flex-column col-6">
																			<span class="w-100">
																			Last Name: 
																			</span>
																			<input type="textbox" width="70px" id="txtlastName" name="txtlastName" placeholder="Last Name">
																		</div>
																		<div class="d-flex flex-column col-6 mt-3">
																			<span class="w-100">Designation: 
																			</span>
																			<input type="textbox" width="70px" id="txtDesignation" name="txtDesignation" placeholder="Designation">
																		</div>
																		<div class="d-flex flex-column col-6 mt-3">
																			<span class="w-100">Company: 
																			</span>
																			<input type="textbox" width="70px" id="txtSpeakerCompany" name="txtSpeakerCompany" placeholder="Company">
																		</div>
																		<div class="d-flex  flex-column col-6 mt-3">
																			<span class="col-6 pl-0">Gender: 
																			</span>
																			<span class="d-flex mt-2">
																			<span>
																			<input type="radio" width="70px" id="txtGender" name="txtGender" value="Male">
																			&nbsp;Male | &nbsp; 
																			</span>
																			<input type="radio" width="70px" id="txtGender" name="txtGender" value="Female">
																			&nbsp;Female
																			<span>
																			</span></span>
																		</div>
																		<div class="d-flex  flex-column col-6 mt-3">
																		<input type="button" name="btnadd" onclick="AddSpeakers()" value="Add Speaker" class="mx-auto mt-3 mb-2 add-row" style="margin-top: 30px !important;">
																		</div>
																		</div>
																	</div>

																		 </div>



																	
																	
																	<div class=" w-100 mx-3 my-2 py-2 mt-4" style="background: #f7f7f7; font-size: 17px;color: #144084;">
																		<label for="staticEmail" class="col-sm-3 font-weight-bold mb-0">Transcription</label>
																	</div>


																	

																    <div class="row form-group mx-1 mt-1 d-flex w-100 ">																
																    
																	 <div class="row form-group mx-1 mt-1 d-flex w-100 mx-3">
																	 <label for="staticEmail" class="col-12 font-weight-bold  col-form-label pl-2">Source</label>
																	 <div class="col-12 pl-1"><textarea type="text" id="txtTranscription" name="txtTranscription" style="font-size:13px;" placeholder="Full Source Transcription" size="10" cols="50" rows="5" class="ml-1 border my-2 w-100"></textarea></div>
																	</div>
																	
																    
																	 
																	 <div class="row form-group mx-1 mt-1 d-flex w-100">
																	 <table id="tblTranscription"cellpadding="0" cellspacing="0" class="table table-bordered w-100 mx-3">
																	 <tbody><div>
																	 <tr><td colspan="4" class="p-2"><b>Transcription by time</b> &nbsp;<input type="button" onClick="return addcolumn();" value="ADD"><input type="hidden" id="txtsno" value="1"></td></tr>
																	 <tr>
																	 <td valign="top" style="width:25px; text-align:center; padding-top:10px;">1</td>
																	 <td valign="top" style="width:78px;">
																	     <input id="txtvDuration1" name="txtvDuration1"  type="text" placeholder="MM:SS" class="masked ml-1 border my-2" style="margin-0 !important;margin-top:10px; width:70px;" pattern="(1[0-2]|0[1-9]):(1[5-9]|2\d)" data-valid-example="01:30" />
																	 </td>
																	 <td valign="top" style="width:400px;">
																	 <textarea type="text" id="txtTranscription1" name="txtTranscription1" style="font-size:13px; width:488px;" placeholder="Transcription" size="10" cols="90" rows="3" class="ml-1 border my-2 w-30"></textarea>
																	 </td>
																	 <td valign="top" style="width:180px; ">
																	 <select id="txtAllSpeakers1" name="txtAllSpeakers1" class="ml-1 border p-1" style="font-size:13px; margin-top:10px;width:170px;">
																							<%Set Conn = Server.CreateObject("ADODB.Connection")
																							Set rsECO = Server.CreateObject("ADODB.Recordset")
																							Conn.Open DataSource14
																							''if trim(session("WHCondition")) <> "" then
																								sqlECO="SELECT * FROM Youtube_Speakers WHERE yt_link='"&Trim(request("vlink"))&"' and created_by='"&session("AdmEmailID")&"'"		  
																							''else
																								''sql="select top 20 * from GIA_MC_PROGRAM.dbo.InfluencersCompanies where user_status='A'  ORDER BY firstname"		  
																							''end if
																							rsECO.Open sqlECO, Conn%>
																							<option value="0">-Select Speaker-</option>
																							<%If not rsECO.EOF then
																								while not rsECO.EOF %>
																							 <option value="<%=rsECO("sno")%>"><%=rsECO("First_Name")%>&nbsp;<%=rsECO("Last_Name")%></option>
																							 
																							<% 
																								rsECO.MoveNext
																								wend 
																							end if
																							Set rsECO = nothing

																							%>
																							
																						</select>
																	 
																	 <!--input type="button" class="mx-auto" id="btnSave1" name="btnSave" style="height:30px; margin-top:26px;"  value=" Tag Speaker" onclick=""-->
																	 </td></tr>
																	 </div></tbody>
																	 </table>
																	 </div>																		 
																	 
																	 <div class="col-sm-12 py-3 text-center">
																		 <input type="button" class="mx-auto" id="btnSave" name="btnSave"   value=" ADD " onclick="addNEWVideo()" style="background: #144084; border: 0px; color: #fff;padding: 5px 10px;">&nbsp;
																		 <input type="button" class="mx-auto" id="btnClose" name="btnClose" value="CLOSE" data-bs-dismiss="modal" onclick="Btnclose()" style="background: #144084; border: 0px; color: #fff;padding: 5px 10px;">
																	  </div>
																   </div>
																			</div>	
																			
																		</div>
																	
																	 	
															  
														  
														</form>
														</div>
														
												 <div class="w-100">
											     <div class="w-100 p-3">
												  <!--h6>Striped Rows</h6>
												  <p>Speakers Data:</p-->            
												  <table class="table table-striped table-bordered shadow mx-auto w-100" id="tblSpeakers" >
													
													  <%
													  
													    Set MyCon = Server.CreateObject("ADODB.Connection")		
														MyCon.Open Datasource14
														
														RecChkSQL = "SELECT * FROM Youtube_Speakers WHERE yt_link='"&Trim(request("vlink"))&"' and created_by='"&session("AdmEmailID")&"' " 
														Set RecChkRS = Server.CreateObject("ADODB.Recordset")
														RecChkRS.Open RecChkSQL, MyCon	
														''response.write(RecChkSQL)
														'response.end
														'Dim sno
														sno=1
														If Not RecChkRS.EOF Then%>
														 <thead class="table-success text-center">
														  <tr >
														    <th   class="p-1" width="6%">Sno </th>															
															<th   class="p-1" width="24%">Company</th>
															<th   class="p-1" width="20%">First_Name</th>
															<th   class="p-1" width="20%">Last_Name</th>
															<th   class="p-1" width="20">Designation</th>
															<th   class="p-1" width="10%">Gender</th>
														  </tr>
														</thead>
														<tbody>
														
															<% while not RecChkRS.EOF %>															  
															   <tr>
															    <td width="6%" class="text-center p-1"><%=sno%></td>
																<td width="24%" class="text-left p-2"><%=RecChkRS("company")%></td>
																<td width="20%" class="text-left p-2"><%=RecChkRS("First_Name")%></td>
																<td width="20%" class="text-left p-2"><%=RecChkRS("Last_Name")%></td>
																<td width="20%" class="text-left p-2"><%=RecChkRS("Designation")%></td>
																<td width="10%" class="text-center p-2"><%=RecChkRS("Gender")%></td>
															  </tr>	
															
															 <% 
															 sno = sno + 1 
																RecChkRS.MoveNext 
															 Wend%>
															<input type="hidden" id="MaxNum" value="<%=sno-1%>" >
														<%End If
													  set MyCon = Nothing												  
													  
													  
													  %>
													 
													
													 												  
													</tbody>
												  </table>
												</div>	
													
												  </div>
                                                      
												</div>
												    
												</div>
												
									
												 
												
												<!-- iNNER mODEL ENDS-->
									
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!---- BEGIN :REPORT SECTION ----><br><br><br><br>
        </div>
    </main>   
	
    
    <!---End:Main Content--->
    <footer class="fixed-bottom py-2 bg_black">
        <div class="container text-center">
            <p class="f_white">� Global Industry Analysts, Inc., USA. All Rights Reserved.</p>
        </div>
    </footer>
    
    <!---======BEGIN: BACK TO TOP BUTTON =======--->
    <a id="back-to-top" href="#" class="btn  btn-lg back-to-top" role="button" title="Back To Top"><i class=" fa fa-arrow-circle-up"></i></a>
    <!--/form-->
	
</body>


<script src="https://code.jquery.com/jquery-3.6.0.js "></script>
<script src="js/bootstrap.js"></script>
<script src="easySelect.js"></script>

<script>
     $("#txtEcocsystemname").easySelect({
         buttons: true,  
         search: true,
         placeholder: 'Choose Ecosystem',
         placeholderColor: '#524781',
         selectColor: '#524781',
         itemTitle: 'Countrys selected',
         showEachItem: true,
         width: '100%',
         dropdownMaxHeight: '200px'
     })
	 
	 $("#txtProjectname").easySelect({
         buttons: true, //
         search: true,
         placeholder: 'Choose Topic',
         placeholderColor: '#524781',
         selectColor: '#524781',
         itemTitle: 'Countrys selected',
         showEachItem: true,
         width: '100%',
         dropdownMaxHeight: '200px'
     })
	 
	 $("#txtCompanyname").easySelect({
         buttons: true, //
         search: true,
         placeholder: 'Choose Company',
         placeholderColor: '#524781',
         selectColor: '#524781',
         itemTitle: 'Countrys selected',
         showEachItem: true,
         width: '100%',
         dropdownMaxHeight: '200px'
     })

	 
	 $("#txtCompanynamenew").easySelect({
        buttons: true,
        search: true,
        placeholder: 'Company',
        placeholderColor: 'violet',
        selectColor: 'lila',
        itemTitle: 'Color selected',
        showEachItem: true,
        width: '50%',
        dropdownMaxHeight: '450px',
    })
    
 </script>


 
<script>
	document.multiselect('#testSelect1')
		.setCheckBoxClick("checkboxAll", function(target, args) {
			console.log("Checkbox 'Select All' was clicked and got value ", args.checked);
		})
		.setCheckBoxClick("1", function(target, args) {
			console.log("Checkbox for item with value '1' was clicked and got value ", args.checked);
		});

	function enable() {
		document.multiselect('#testSelect1').setIsEnabled(true);
	}

	function disable() {
		document.multiselect('#testSelect1').setIsEnabled(false);
	}
</script>
<script>
		// Get the modal
		var modal = document.getElementById("myModal");
		var modal1 = document.getElementById("myModal1");
		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on the button, open the modal
		btn.onclick = function() {
		  modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		  modal.style.display = "none";
		}
		

		function BtncloseC()
		{
		  // modal.style.display = "none";
		 
		}
		function Btnclose()
		{
		   
		  // $("#myModal1").removeClass("show");
		  // modal1.style.display = "none";		  
		    window.opener.location.reload();
			 window.close();
		}


		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		  if (event.target == modal) {
			modal.style.display = "none";
		  }
		   if (event.target == modal1) {
			modal1.style.display = "none";
		  }
		}

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})


</script>


<script>
	
	function AddIndustryNews(rno) {
	 
	  var McpCode = rno;
	   var vtxtTitle = $('#txtTitle'+rno).val();
	    var vtxtUrl = $('#txtUrl'+rno).val();
		  var vtxtInfo = $('#txtInfo'+rno).val();
		  if (vtxtTitle != null && vtxtTitle != '' && vtxtUrl != null && vtxtUrl != '')
		  {   
		
				$.ajax({
				url: "Ajax_AddIndustryNews.asp",
				type: "POST",
				data:'vtxtTitle='+encodeURIComponent(vtxtTitle)+'&vtxtInfo='+encodeURIComponent(vtxtInfo)+'&vtxtUrl='+encodeURIComponent(vtxtUrl)+'&vMcpCode='+encodeURIComponent(rno)+'',
				success: function(data){
				//alert('Saved');
                var markup = "<tr ><td class='p-1' style='width:20%'>" + vtxtTitle + "</td><td class='p-1' style='width:60%'>" + vtxtUrl + "</td><td class='p-1' style='width:20%'><a style='text-decoration:none' href='News.asp?Sno="+vtxtInfo+"' target='new' onclick=window.open('','new','menubar=no,statusbar=no,toolbar=no,scrollbars=yes,height=200,resizable=yes,width=600,left=450,top=450')>View</a></td></tr>";
                   	$('#tbl'+rno).append(markup);
						 
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
		     alert("Title/URL can`t be left blank");
		  }
		}
		
		
		function addINDCodetoImpact(rno) {
	  
	  var res = rno.split("##");
	  var term = res[0];
	  var type = res[1];
	  var McpCode = res[2];
	
	  if((term != "") && (type!="") && (McpCode=!""))	 
		 {
		  
			$.ajax({
			url: "Ajax_AddINDCodestoImpact.asp",
			type: "POST",
			data:'vterm='+encodeURIComponent(res[0])+'&vtype='+encodeURIComponent(res[1])+'&vMcpCode='+encodeURIComponent(res[2])+'',
			success: function(data){
			//alert(data);
			//$("#Div"+Cpcode+'-'+McpCode).hide();
			//document.getElementById("#Div"+Cpcode+'-'+McpCode).style.display = 'none';
					 
			},
			error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr.status);
			alert(thrownError);
			alert(xhr.responseText);
			}
		  });   
		  } 
		}
		

	  function addToDatabaseNew(rno) {
	  
	  var res = rno.split("##");
	  var Cpcode = res[0];
	  var McpCode = res[1];

	  var ChkboxSel;
	  var ChkSelected;
	  ChkboxSel = "inlineCheckbox"+Cpcode+"-"+McpCode;
		
	  // Check the checkbox status if checked (True) or unckecked (False)
	  ChkSelected = document.getElementById(ChkboxSel).checked;
	  //alert (ChkSelected);

	  //alert(Cpcode);
	 // alert(McpCode);

	  if((Cpcode != "") && (McpCode!=""))
		 {
		  $.ajax({
			url: "Ajax_InfluencersCompaniesMCPCodesadd.asp",
			type: "POST",
			data:'vCpcode='+encodeURIComponent(Cpcode)+'&vMcpCode='+McpCode+'&CHKSelect='+ChkSelected+'',
			success: function(data){
			//alert('Saved');
			//$("#Div"+Cpcode+'-'+McpCode).hide();
			//document.getElementById("#Div"+Cpcode+'-'+McpCode).style.display = 'none';
					 
			},
			error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr.status);
			alert(thrownError);
			alert(xhr.responseText);
			}
		  });   
		  } 
		}


		//////


	function addNewMCP(rno) {
	  var Cpcode = $("#txtMCP"+rno).val();
	  var McpCode = rno;
	  //alert (ChkSelected);

	  //alert(Cpcode);
	 // alert(McpCode);

	  if(Cpcode!="")
		 {
		  $.ajax({
			url: "Ajax_AddMCPCodes.asp",
			type: "POST",
			data:'vCpcode='+encodeURIComponent(Cpcode)+'&vMcpCode='+McpCode+'&CHKSelect=New',
			success: function(data){
			alert('Saved');
			parent.location.reload();
					 
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
		    alert('CP Code can`t be left blank');
		  }

        
		}
	</script>

	<script>
   

	function CKHCompany_Status(Cmp){
	   
	  var Cpcode = Cmp;
      var vCompanytatus = 'N';
  
	    if ($("#chkCompanyStatus"+Cmp).is(":checked")) {
               vCompanytatus = 'Y';
            }
            //alert(vMailerStatus);
		  if((Cpcode != "") && (vCompanytatus !=""))			
		  {		      
			 
			  $.ajax({
						url: "Ajax_UpdateCompanyStatus.asp",
						type: "POST",
						data:'Cpcode='+encodeURIComponent(Cpcode)+'&vCompanytatus='+encodeURIComponent(vCompanytatus)+'',
						success: function(data){
						//alert('Company Tier Updated Successfully!');
						//alert(data);
													 
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				modal.style.display = "none";
				//parent.location.reload();
			  }
			}
  

	///---------------------------
		
	 function EditRow(sno) {
	      
			  
			  $("#txt"+sno).show();

			  
			  $("lbl"+sno).hide();
			  
			  
			   $("#btnedit"+sno).hide();
			   $("#btnupdate"+sno).show();
			   $("#btncancel"+sno).show();
			   
	   
		}


		function CancelRow(sno) {
	      

			   $("#txt"+sno).hide();

			  
			  $("lbl"+sno).show();
			  
			   $("#btnedit"+sno).show();
			   $("#btnupdate"+sno).hide();
			   $("#btncancel"+sno).hide();
			   
	   
		}

		function UpdateIndustry(rno){
                
		    var res = rno.split("##");
			var iSno = res[0];
		    var iCode = res[1];
			
			$("#lbl"+iSno).hide();
			$("#txt"+iSno).show();

		 var vtxtIND_Code = iCode;
		  var vtxtIndustry = $("#txt"+iSno).val(); 
		  
		   if (vtxtIND_Code != null && vtxtIND_Code != '' && vtxtIndustry != null && vtxtIndustry != '' )		 
			 {
			 //alert(vtxtIndustry);
			  $.ajax({
						url: "Ajax_UpdateIndustry.asp",
						type: "POST",
						data:'vtxtInd_Code='+vtxtIND_Code+'&vtxtIndustry='+encodeURIComponent(vtxtIndustry)+'&iSno='+encodeURIComponent(iSno)+'',
						success: function(data){
						//alert(data);
						alert('Industry Update Successfully!');
						
						 $("#lbl"+iSno).show();
						 $("#txt"+iSno).hide();
						  $("#lbl"+iSno).text(vtxtIndustry);
			   
						 // $('#divajax').append(data);

						 CancelRow(iSno);
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				modal.style.display = "none";
				//window.opener.location.reload(false);
				window.opener.location.reload()
			  } 
			  else
			  {
			    
				alert("Indursty Name can't be left blank");
			  
			  }
        


			}
			
			function AddSpeakers()
			{
			
			
			var vTxtCompanyName = '';//$("#TxtCompanyName").val();
		    var vtxtYoutubeLink = $("#txtYoutubeLink").val();
			var vtxtfirstName = $("#txtfirstName").val();
			var vtxtlastName = $("#txtlastName").val();
			var vtxtDesignation = $("#txtDesignation").val();
			var vtxtGender =$('input[id="txtGender"]:checked').val(); 
			var vtxtSpeakerCompany = $("#txtSpeakerCompany").val();
						
			/*alert(vtxtfirstName);
			alert(vtxtlastName);
			alert(vtxtDesignation);
			alert(vtxtGender);*/
			 if (vtxtYoutubeLink != null && vtxtYoutubeLink != '' && vtxtfirstName != null && vtxtfirstName != '')
		 	 {			
                
				$.ajax({
						url: "Ajax_AddNEWVideoSpeakers.asp",
						type: "POST",
						data:'vTxtCompanyName='+encodeURIComponent(vTxtCompanyName)+'&vtxtYoutubeLink='+encodeURIComponent(vtxtYoutubeLink)+'&vtxtfirstName='+encodeURIComponent(vtxtfirstName)+'&vtxtlastName='+encodeURIComponent(vtxtlastName)+'&vtxtDesignation='+encodeURIComponent(vtxtDesignation)+'&vtxtGender='+vtxtGender+'&vtxtSpeakerCompany='+encodeURIComponent(vtxtSpeakerCompany)+'',
						success: function(data){
						 var YTSSno=data;
 						//alert(YTSSno);
						// $('#divajax').append(data);
						 // alert('Data Updated Successfully!');
						    
						    var vtxtMaxNum = $("#MaxNum").val();
							vtxtMaxNum = parseInt(vtxtMaxNum) + 1;
                            var vtxtYoutubeLink = $("#txtYoutubeLink").val();
							var vtxtfirstName = $("#txtfirstName").val();
							var vtxtlastName = $("#txtlastName").val();
							var vtxtDesignation = $("#txtDesignation").val();
							var vtxtGender =$('input[id="txtGender"]:checked').val(); 
						  // var email = $("#email").val();
							var markup = "<tr><td class='text-center'>"+vtxtMaxNum+"</td><td >"+vtxtSpeakerCompany+"</td><td >"+vtxtfirstName+"</td><td >"+vtxtlastName+"</td><td >"+vtxtDesignation+"</td><td class='text-center'>"+vtxtGender+"</td></tr>";
							//alert(markup);
							//$("table tbody").append(markup);
							
							var vFullname = vtxtfirstName + ' '+ vtxtlastName;
							
							var vtxtsno= $("#txtsno").val();
							   for(i=1; i <= vtxtsno; i++)
								{								
											  $('#txtAllSpeakers'+i).append($("<option></option>").attr("value", YTSSno).text(vFullname));   
											   // alert(ele.value +' name = '+ele.text+ '#txtAllSpeakers'+nsno);   
								
								}		 	   
							
							
							
							 $("#tblSpeakers tbody").append(markup);

						  $("#MaxNum").val(vtxtMaxNum);
						 $("#txtfirstName").val(' ');
						 $("#txtlastName").val(' ');	
						 $("#txtDesignation").val(' ');						 
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				//modal.style.display = "none";
				//window.opener.location.reload(false);
				//window.opener.location.reload();
			  
			  } 
			  else
			  {
			    
				alert("Youtube Link / Company can't be left blank");
				$( "#txtYoutubeLink" ).focus();
			  }
			
			
			
			
			
			}
		function addNEWVideo() {
         
		 var vTxtCompanyName =''; //$("#TxtCompanyName").val();
		  var vtxtYoutubeLink = $("#txtYoutubeLink").val();
		  var vtxtTitle = $("#txtTitle").val();
		   var vtxtvDate = $("#txtvDate").val(); 
		    var vtxtvDuration = $("#txtvDuration").val(); 
			 var vtxtDescription = $("#txtDescription").val(); 
			  //var vtxttTime = $("#txttTime").val(); 
			   var vtxtTranscription = $("#txtTranscription").val(); 	

              // var vtxtEcocsystemname = $("#txtEcocsystemname").val(); 	
				var vtxtProjectname	= $("#txtProjectname").val(); 		


			   var selO = document.getElementsByName('txtEcocsystemname')[0];
				var selValues = [];
				for(i=0; i < selO.length; i++){
					if(selO.options[i].selected){
						selValues.push(selO.options[i].value);
					}
				}
			
			   var vtxtEcocsystemname = selValues; 
			   
		
				//alert(vtxtEcocsystemname);			
		  //var vtxtEcocsystemname = selO;
         // alert(vtxtEcocsystemname);
		// alert(vtxtProjectname);
		  // alert(vtxtDescription);
		 // alert(vtxtTranscription);
		
       if (vtxtvDate != null && vtxtvDate != '' && vtxtTitle != null && vtxtTitle != '' && vtxtYoutubeLink != null && vtxtYoutubeLink != '' && vtxtYoutubeLink != null && vtxtYoutubeLink != '' )
		 	 {			
                
				$.ajax({
						url: "Ajax_AddNEWVideo.asp",
						type: "POST",
						data:'vtxtProjectname='+encodeURIComponent(vtxtProjectname)+'&vtxtEcocsystemname='+encodeURIComponent(vtxtEcocsystemname)+'&vtxtTranscription='+encodeURIComponent(vtxtTranscription)+'&vtxtDescription='+encodeURIComponent(vtxtDescription)+'&vtxtvDuration='+vtxtvDuration+'&vtxtvDate='+vtxtvDate+'&vTxtCompanyName='+vTxtCompanyName+'&vtxtYoutubeLink='+encodeURIComponent(vtxtYoutubeLink)+'&vtxtTitle='+encodeURIComponent(vtxtTitle)+'',
						success: function(data){
						// alert(data);
						// $('#divajax').append(data);
						
						  	var vtxtsno= $("#txtsno").val();
							   for(i=1; i <= vtxtsno; i++)
								 {		    
								  
								   var vtxtvDuration = $("#txtvDuration"+i).val();
								   var vtxtTranscription = $("#txtTranscription"+i).val(); 	
									var vtxtAllSpeakers= $("#txtAllSpeakers"+i).val();			   
								 addTranscription(vtxtYoutubeLink,vtxtvDuration,vtxtTranscription,vtxtAllSpeakers);
								
								}			   
						  
						
						
						alert('Data Updated Successfully!');						
						
							 
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				//modal.style.display = "none";
				//window.opener.location.reload(false);
				//window.opener.location.reload();
			  
			  } 
			  else
			  {
			    
				alert("Fields can't be left blank");
			  }
			  


			}

	     function addTranscription(vlink,vduration,vTranscription,vSpeaker) {		
						
				            //alert(vlink);
									// alert(vduration);
									  //alert(vTranscription);
							//alert(vSpeaker);										  
        if (vlink != null && vlink != '' && vduration != null && vduration != '' && vTranscription != null && vTranscription != '' && vSpeaker != null && vSpeaker != '' )		  
			 {
			
			  $.ajax({
						url: "Ajax_AddNewTranscription.asp",
						type: "POST",
						data:'vlink='+encodeURIComponent(vlink)+'&vduration='+encodeURIComponent(vduration)+'&vTranscription='+encodeURIComponent(vTranscription)+'&vSpeaker='+encodeURIComponent(vSpeaker)+'',
						success: function(data){
						//alert('Transcription Added Successfully!');						
						
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				//modal.style.display = "none";
				//window.opener.location.reload(false);
				//window.opener.location.reload()
			  } 
			 // else
			  //{
			    
				//alert("YT link / Duration / Transcription can't be left blank");
			  
			 // }


		}


		function GetCPCode(){
			// alert("Helo");
			  $.ajax({
						url: "Ajax_GetCPCode.asp",						
						dataType: "text",
						success: function(data){						
						modal.style.display = "block";
						$('#txtCP_Code').val(data);
						 //alert(data);		
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				modal.style.display = "none";
				//parent.location.reload();
			 
			}
			
			function addTrendstoIndustry(rno) {
	  
	  var res = rno.split("##");
	  var term = res[0];
	  var type = res[1];
	  var McpCode = res[2];
	 
	   var vChk_Impact = $("#Chk_Impact"+McpCode);
       var checkedVal  =  $('input:radio[name=Chk_Impact'+McpCode+']:checked').val();
        
		if(checkedVal===undefined)
		 { 
		     alert("Please select Posite/Negative impact option first");
		 }
		 else
		 {
			if (term != null && term != '' && type != null && type != '' && McpCode != null && McpCode != '')			
				 {				  
					$.ajax({
					url: "Ajax_AddTrendstoIndustries.asp",
					type: "POST",
					data:'vterm='+encodeURIComponent(term)+'&vtype='+encodeURIComponent(type)+'&vMcpCode='+encodeURIComponent(McpCode)+'',
					success: function(data){
					//alert(data);
					//$("#Div"+Cpcode+'-'+McpCode).hide();
					//document.getElementById("#Div"+Cpcode+'-'+McpCode).style.display = 'none';
							 
					},
					error: function (xhr, ajaxOptions, thrownError) {
					alert(xhr.status);
					alert(thrownError);
					alert(xhr.responseText);
					}
				  });   
				 } 
		  }
		}

	function assignMvalue(aa)
	
	{
	//alert(aa);
	//TxtCompanyName.value=aa;
	// $("#TxtCompanyName").val(aa);
	  document.getElementById("TxtCompanyName").value =aa;
	}
	
	
	function addcolumn()
	{
		
		var sno = $("#txtsno").val();
		var nsno =  parseInt(sno) + 1;
		
		//alert(nsno);
		var addcolumndata = "<tr><td valign='top' style='width:25px; text-align:center; padding-top:10px;'>"+nsno+"</td><td valign='top' style='width:78px;'><input id='txtvDuration"+nsno+"' name='txtvDuration"+nsno+"'  type='text' placeholder='MM:SS' class='masked ml-1 border my-2' style='margin-0 !important;margin-top:10px; width:70px;' pattern='(1[0-2]|0[1-9]):(1[5-9]|2\d)' data-valid-example='01:30' /></td><td valign='top' style='width:400px;'><textarea type='text' id='txtTranscription"+nsno+"' name='txtTranscription"+nsno+"' style='font-size:13px; width:488px;' placeholder='Transcription' size='10' cols='50' rows='3' class='ml-1 border my-2 w-30'></textarea></td><td valign='top' style='width:180px; '><select id='txtAllSpeakers"+nsno+"' name='txtAllSpeakers"+nsno+"' class='ml-1 border p-1' style='font-size:13px; margin-top:10px;width:170px;'></select></td></tr>";
		$("#tblTranscription tbody").append(addcolumndata);		
		
		var values = $.map($('#txtAllSpeakers1 option'), function(ele) 
		{
			  $('#txtAllSpeakers'+nsno).append($("<option></option>").attr("value", ele.value).text(ele.text)); 	  
			   // alert(ele.value +' name = '+ele.text+ '#txtAllSpeakers'+nsno);	   
		});	
		
		$("#txtsno").val(nsno);
	
	}

	</script>
<script>
    $(document).ready(function(){
        $(".add-row1").click(function(){
         
		   
		 var vtxtYoutubeLink = $("#txtYoutubeLink").val();
			var vtxtfirstName = $("#txtfirstName").val();
			var vtxtlastName = $("#txtlastName").val();
			var vtxtDesignation = $("#txtDesignation").val();
			var vtxtGender =$('input[id="txtGender"]:checked').val(); 
          // var email = $("#email").val();
            var markup = "<tr><td >&nbsp;</td><td >"+vtxtYoutubeLink+"</td><td >"+vtxtfirstName+"</td><td >"+vtxtlastName+"</td><td >"+vtxtDesignation+"</td><td >"+vtxtGender+"</td></tr>";
			//alert(markup);
            $("table tbody").append(markup);
		    // $("tblSpeakers").append(markup);
			
        });
        
        // Find and remove selected table rows
       /* $(".delete-row").click(function(){
            $("table tbody").find('input[name="record"]').each(function(){
                if($(this).is(":checked")){
                    $(this).parents("tr").remove();
                }
            });
        });*/
    });    
</script>

</html>