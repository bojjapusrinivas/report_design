<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
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
	
			If trim(request("infcode"))<>"" then
				brand_Query="SELECT * from sales_navigator WHERE app_login_code='" & trim(session("infcode")) & "'"		
			Else
				brand_Query="SELECT* from sales_navigator WHERE app_login_code='" & trim(session("infcode")) & "'"		
			End If
			'response.write	brand_Query
			'response.end
			RSInfpeople.Open brand_Query, DataSource9
			
			If Not RSInfpeople.EOF Then
			companyname=trim(RSInfpeople("company"))
			filemd5 = trim(ucase(RSInfpeople("app_login_code")))
			cmpID = Trim(RSInfpeople("id"))
			infsno=Trim(RSInfpeople("app_login_code"))
			''response.write trim(RSInfpeople("mcpcodes"))
			 managementlevel =Trim(RSInfpeople("managementlevel"))
			revenue_tier=""  'Trim(RSInfpeople("revenue_tier"))
			FName = Trim(RSInfpeople("first_name"))
			LName = Trim(RSInfpeople("last_name"))
			keywords = Trim(RSInfpeople("keywords"))
			infemail="" 'Trim(RSInfpeople("email"))
			display_status="" 'Trim(RSInfpeople("display_status"))
			
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
	If trim(request("infcode"))<>"" Then
	code = request("infcode")
	session("CPCode")=request("infcode")
	else
	
	
	session("CPCode")=code
	
	
End If	
%>
================================================== -->
<meta charset="utf-8">
<title>PROFILE - <%=FName%>&nbsp;<%=LName%> - <%=companyname%> - StrategyR.com</title>
<meta name="description" content="<%=FName%>&nbsp;<%=LName%>’s business profile, domain expertise and world standing. See <%=FName%>'s complete profile."/>
<meta name="keywords" content="<%=FName%>&nbsp;<%=LName%>, <%=companyname%>, business profile, domain expertise, world standing, complete profile" />
<meta name="p:domain_verify" content="e373fc05e5338589a9a20fa7eb8cbeea"/>
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
<meta name="p:domain_verify" content="2d36e07dec67d2a8d0bea712d690fe78"/>
<meta name="google-site-verification" content="Bde3xUPGs4PkgWyVdVlJ_fHl_VITc2uZv5niZBQb4Pw" />
<link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</head>
<body leftmargin=0 rightmargin=0 topmargin=0 bottommargin=0 onBeforePrint="document.body.style.display='none'" onAfterPrint="document.body.style.display=''" onContextmenu="return false" onSelectstart="return false" onDragstart="return false" >
<link rel="stylesheet" href="https://www.strategyr.com/css/giaslider_css.css">
<link rel="stylesheet" href="https://www.strategyr.com/css/owl/owl.carousel.css">
<link rel="stylesheet" href="https://www.strategyr.com/css/owl/owl.theme.green.css">
<link rel="stylesheet" href="https://www.strategyr.com/css/owl/owl.theme.default.css">
<!--link rel='stylesheet' href="https://www.strategyr.com/css/eco_systems.css" async-->
<link rel="stylesheet" href="https://www.strategyr.com/css/competitive_style1.css" />
<link rel="stylesheet" href="https://www.strategyr.com/css/landing_page_new.css" />

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
%><style>
    .modal {
        max-width: 400px !important;
    }
</style>
<style>

#linkedin_mobel{
	display: none;
        width: 100%;
        height: 100%;
        position: fixed;
        background: rgba(0,0,0,0.95);
        z-index: 9999;
        left: 0px;
        top: 0px;
        overflow: unset;}
</style>
<style type="text/css">
.switch {
  position: relative;
  display: inline-block;
  width: 140px;
  height: 29px;
  margin-top: 7px;
}

.switch input{
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

.slider i:nth-child(1){
   display: none;
}

.slider i:nth-child(2){
    display: block;
    font-size: 15px;
    font-weight: bold;
    margin-left: 22px;
    color: #FFF;
}

input:checked + .slider i:nth-child(1) {
    display: block;
    font-size: 15px;
    font-weight: bold;
    margin-left: -4px;
    color: #000
}

input:checked + .slider i:nth-child(2){
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

input:checked + .slider:before {
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

input:checked + .slider {
  background-color: #CCC
}

input:focus + .slider {
  box-shadow: 0 0 1px #CCC
}

input:checked + .slider:before {
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

@media only screen and (min-width: 300px) and (max-width: 479px){

    .slider.round {
        transform: scale(0.8);
}

.view_entire_pool_btn{
    font-size: 16px !important;
}


}

  </style>

 <script type="text/javascript">
      function myFunction(txtname,taxval,filename,code) {
          // 01txtval.val(val);
		 // alert(parseFloat(5.5));
		  if (parseFloat(taxval)>5.1)
		  {
			// alert(parseInt(taxval));
			//var taxval1 = taxval.toFixed(1);
			//alert (taxval.toFixed(1));
			/// TO REMOVE ROUND TO 1 DECIMAL POINT IN THE FLOAT TYPE VARIABLE
			taxval = Math.round(taxval * 10) / 10
			$("#" + txtname).val(taxval);
			AddMarket_Influencer_Score(filename,code);
		  }
		 else    
		 {
		   $("#" + txtname).val('');
		 }
		
          // alert("The input value has changed. The new value is: " + val);
      }
   </script>
<script >


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

function fnc(value, min, max) 
{
    if(parseInt(value) < 5 || isNaN(value)) 
        return 5; 
    else if(parseInt(value) > 10) 
        return "10"; 
    else return value;
}

function AddAllComp_metris()
{
 //alert(code);
    //var v= $('input[type=radio].rankclass:checked');
	   // $(v).each(function(i){
		    // alert($(this));
			 
			
	//});
	
	 alert("Market influence score updated successfully");
}
function funMarket_Influence_Profile(pfname,plname,pemail,pDesignation,ptype) {	 
   
     //var vcpCode = cpcode;
	// var vMCPcode = mcpcode;
	var vFirstname =  $("#"+pfname).val();
	var vLastname =  $("#"+plname).val();
	var vEmail =  $("#"+pemail).val();
	var vDesignation =  $("#"+pDesignation).val();	
	
	var infsno=$("#hdninfsno").val();  

	var infcodeCHK = $("#HDNinfcode").val();
  // alert(infsno);
		   if (vFirstname != null && vFirstname != '' && vLastname != null && vLastname != '' && vEmail != null && vEmail != '' && vDesignation !=null && vDesignation !='' && infsno != '')
		    {		
			 $.ajax({ 
				url: "Ajax_AddMarket_Influence_Profile1.asp",
				type: "POST",
				data:'vFirstname='+encodeURIComponent(vFirstname)+'&vLastname='+encodeURIComponent(vLastname)+'&infsno='+encodeURIComponent(infsno)+'&vEmail='+encodeURIComponent(vEmail)+'&vDesignation='+encodeURIComponent(vDesignation)+'&ptype='+encodeURIComponent(ptype)+'&infcodeCHK='+encodeURIComponent(infcodeCHK)+'', 				
				success: function(data){
				//alert(data);
				alert("Thank you. Your first step of verification is complete.");		
				$("#linkedin_mobel").attr("style", "display:block !important"); 
				
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
				alert('All the fields are mandatory');				
			  }	
		}

//


function Change_Influencer_Status(cpcode) {
     
	  //alert(cpcode);
      var vcpCode = cpcode;
	  var infsno=$("#hdninfsno").val();  
	  //alert(vcpCode);
	 
			var varqualitative=  $('input[id="chkremove"]:checked').val();
			// alert(varqualitative);	   
		    // alert(infsno);
	 	
			 if (varqualitative == "on")
			 {
				 varqualitative='N';
			 }
			 else
			 {
				 varqualitative='Y';
			 }
	
			if (varqualitative != null && varqualitative != '' )
			  { 
					 $.ajax({
						url: "Ajax_UpdateInfluencer_Status.asp",
						type: "POST",
						data:'vcpCode='+encodeURIComponent(vcpCode)+'&varqualitative='+encodeURIComponent(varqualitative)+'&infsno='+encodeURIComponent(infsno)+'', 				
						success: function(data){
						//alert(data);
						//alert("Data Updated Sucessfully");		
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					  });
			  } 
			
        
		}
		
function AddMarket_Influencer_Score(cpcode,mcpcode) {	 
     
	 //alert(cpcode);
     var vcpCode = cpcode;
	 var vMCPcode = mcpcode;
	 var infsno=$("#hdninfsno").val();

    // var vtxtSval = $("#"+vMCPcode+"Sval").val();
	 var vtxtval = $("#"+vMCPcode+"txtval").val();
	 
	 
	/*alert(vcpCode);
	alert(vMCPcode);
	
    alert(vtxtSval);
	alert(vtxtval);
	alert(infsno);*/

	 var vtxtRtype = "Opt" + vMCPcode;
	 
	// var varqualitative=  $('input[id="vtxtRtype"]:checked').val(); 
	// alert (varqualitative);
	 
	 var vctxtRtype=  $('input[id='+vtxtRtype+']:checked').val(); 
	 
	 if (vctxtRtype == "on")
	 {
	    vctxtRtype='NA';
	 }
	 else
	 {
	   vctxtRtype='';
	 }
	 //alert(vctxtRtype);
	 
	 // alert(vtxtRval);
	//alert("Data Saved");
		if (vcpCode != null && vMCPcode != '' && vMCPcode != null && infsno != ''  )
		  { 
		
			 $.ajax({
				url: "Ajax_AddILP_Market_Influencer_Score1.asp",
				type: "POST",
				data:'vcpCode='+encodeURIComponent(vcpCode)+'&vMCPcode='+encodeURIComponent(vMCPcode)+'&infsno='+encodeURIComponent(infsno)+'&vtxtval='+encodeURIComponent(vtxtval)+'&vctxtRtype='+encodeURIComponent(vctxtRtype)+'', 				
				success: function(data){
				//alert(data);
			    //$("#forajx").append(data);
				//alert("Data Updated Sucessfully");					
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
				//alert('Value cannot be left blank');
				$("#Rank"+vcpCode).focus();
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
 .ui-autocomplete
 {
 max-height:200px;
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
    #submit_form.disable{
        background-color: #ccc !important;
    }
</style>
<!---UPTO HERE STYLES-->
	
	
	 
				  
<%

''response.write session("infcode") 
'For Each Item in Request.QueryString
'Response.Write Item & ": " & Request.QueryString(Item) & "<br/>"
'Next

%>
<input type="hidden" name="HDNinfcode" id="HDNinfcode" value="<%=trim(session("infcode"))%>">
<input type="hidden" name="HDNCPcode" id="HDNCPcode" value="<%=trim(Code)%>">
<!-- Categories for home page Start -->

<div class="container">
					

<div class="w-100">
	<div class="row mb-0 mx-0">
		<%
		Dim GetLKND_Check
		GetLKND_Check = 0
		If trim(request("GTAct"))<>"" Then
			
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
				PRFL_Picture = "https://www.strategyr.com/Linkedin_Profile_Images/" &  linkid_1 &".jpg"   ' RSRetrieve("ProfilePicture")
				Sess_ID_1 = RSRetrieve("Session_id")
				GetLKND_Check = 1			
			
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
			else
				GetLKND_Check = 0
			End If
			Set RSRetrieve = Nothing
			
			
			If GetLKND_Check = 1 then%>
			<div class="w-100">
               <div id="linkedin_lable" class="bg-white   p-2 my-3">
				<h3 class="text-primary text_orange font-weight-bold m-0 line-height-normal mt-2 text-center mb-2" style="font-size:18px;">ADDED USER VERIFICATION</h3> 
				 <div class="row mb-0 ">
                     <h3 class="influencer_name border-0"> TYPE: <%=PRFType%></h3>
                  </div>
				
				  <hr class="mt-0">
				<div class="d-flex  w-lg-70  w-xl-70 w-md-100 w-sm-100 w-100 mx-auto">
                     <div class="left_block">
                        <div class="row mb-0 ">
                           <div class="middle_column">
                              <div class="img-block">
                                 <div class="w-100 h-100 bg-danger d-flex justify-content-center align-items-center"
                                    style="overflow: hidden">
                                    <img src="<%=PRFL_Picture%>" class="img-fluid">
                                 </div>
                              </div>
                            </div>
			            </div>
                     </div>
                     <div class="right_block">
                        <div class="w-100 top_result">
                           <div class="label_aside mt-0">
                                 <h4 class="text-dark"><%=fName_1%>&nbsp;<%=lName_1%></h4>
                                 <h4 class="text-dark"><%=HDLine%></h4>
                                 
								 <%if trim(infemail) <> trim(Lnkd_EMail) then%>
									 <h4 class="text-dark">Status: Request Accepted</h4>
									 <h5 class="text-dark"><b>Message:</b> Authentication Successful. You now have complete control of your profile.</h5>
									 <a href="https://www.strategyr.com/Update_Influencer_GIA_Details.asp?code=<%=code%>&infcode=<%=trim(infcode_1)%>" target="_blank" class="font-weight-bold">Edit Profile (Click here to change your profile preference from 'Public' to 'Private' and vice versa)</a> 
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
			</div>
			<%End If%>
		<%End If%>
	  <div id="forajx" name="forajx"></div>
		<!---BEGIN: TOP INFLUENCER LABLE -->
            <div class="w-100">
               <div id="influencer_lable" class="bg-white  p-2 non_user">
                  <div class="row mb-0 ">
                     <h1 class="influencer_name"> <%=RSInfpeople("first_name")%>&nbsp;<%=RSInfpeople("last_name")%><input type="hidden" value="<%=infsno%>" id="hdninfsno"> </h1>
                  </div>
				  
                  <div class="d-flex">
                     <div class="w-100">
                        <div class="row mb-0 mt-2">
                           <div class="middle_column w-100">
                              <!--<div class="img-block">
                                 <div class="w-100 h-100  d-flex justify-content-center align-items-center"  style="overflow: hidden">
									<%
									display_status = "Y"
									If trim(session("EID"))<>"" Then
									
									''response.write "KK " & trim(display_status) & "TT"
										 if (trim(display_status)="P" ) then
											%><img src="" class="img-fluid">
										<%else %>
											<img src="<%=RSInfpeople("image_path")%>" class="img-fluid">
										<%end if
									Else%>
										<img src="" class="img-fluid">
									<%End If%>
                                 </div>
                              </div>-->
							  <%
							  Dim ActCenterVal
							  ActCenterVal = ""
							  If trim(session("EID"))="" Then
								ActCenterVal = ""
							  End If
							 
							  %>
                              <div class="label_aside">
                                 <h4 class="text-dark" <%=ActCenterVal%>><%=RSInfpeople("headline")%></h4>
                                 <h4 class="text-dark" <%=ActCenterVal%>><%=RSInfpeople("company")%></h4>
                                 <h4 class="text-dark" <%=ActCenterVal%>><%=RSInfpeople("location")%></h4>
                              </div>
                           </div>
                        </div>
                     </div>
                    <!-- <div class="right_block">
                        <div class="w-100 top_result">
							<%If trim(session("EID"))<>"" Then%>
                           <img src="images/Influener_lable_0<%'=toppercent%>.svg" class="influencer_lable" />
						   <%Else%>
						   <img src="" class="influencer_lable" />
						   <%End If%>
                        </div>
                     </div>-->
                  </div>
                  </div->
               </div>
               <!---COPY FROM HERE-->
               <!---BEGIN COMPATITIVE---->
			   <div class="table-responsive border-0 mb-0 pb-0">
                                                <div class="mt-3 position-relative pb-1 d-flex flex-column">
                                                    <!---BEGIN: INFLUENCER TABLE-->
                                                    <table id="Influencer_table" class="border-0">
                                                        <!---TABLE HEADER-->
														<%
														dim person_Designation, Disp_Value, Disp_Type
														person_Designation = trim(lcase(RSInfpeople("headline")))
														Disp_Value = "market influencer"
														Disp_Type_DEI = ""
														Disp_Type_Carbon = ""
														Disp_Type_FOW = ""
														Disp_Type_GENZ = ""
														Disp_Type_CSR = ""
														Disp_Type_BtoC = ""
														Disp_Type_BC = ""	
														Disp_Type_CC = ""	
														Disp_Type_CS = ""
														Disp_Type_FOL = ""	
														Disp_Type_DT = ""	
														Disp_Type_CE = ""
														Disp_Type_SC = ""
														If instr(person_Designation,"diversity")>0 Then
															Disp_Value = "influencer in DEI"
															Disp_Type_DEI = "DEI"
														elseIf instr(person_Designation,"carbon foo")>0 Then	
															Disp_Value = "influencer in Carbon Footprint"
															Disp_Type_Carbon = "CF"
														elseIf instr(person_Designation,"future of work")>0 Then	
															Disp_Value = "influencer in FUTURE OF WORK"
															Disp_Type_FOW = "FOW"
														elseIf instr(person_Designation,"future of learning")>0 Then	
															Disp_Value = "influencer in Future of Learning"
															Disp_Type_FOL = "FOL"	
														elseIf instr(person_Designation,"generation z")>0 Then	
															Disp_Value = "influencer in GENERATION Z"
															Disp_Type_GENZ = "GZ"														
														elseIf instr(person_Designation,"corporate social responsibilty")>0 Then	
															Disp_Value = "influencer in CSR"
															Disp_Type_CSR = "CSR"
														elseIf instr(person_Designation,"b2c")>0 Then	
															Disp_Value = "influencer in B2C B2B B2G"
															Disp_Type_BtoC = "B2CBG"
														elseIf instr(person_Designation,"blockchain")>0 Then	
															Disp_Value = "influencer in Blockchain"
															Disp_Type_BC = "BC"	
														elseIf instr(person_Designation,"cryptocurrency")>0 Then	
															Disp_Value = "influencer in Cryptocurrency"
															Disp_Type_CC = "CC"	
														elseIf instr(person_Designation,"cybersecurity")>0 Then	
															Disp_Value = "influencer in Cybersecurity "
															Disp_Type_CS = "CS"		
														elseIf instr(person_Designation,"digital transformation")>0 Then	
															Disp_Value = "influencer in Digital Transformation"
															Disp_Type_DT = "DT"
														elseIf instr(person_Designation,"clean energy")>0 Then	
															Disp_Value = "influencer in Clean Energy"
															Disp_Type_CE = "CE"
														elseIf instr(person_Designation,"supply chain")>0 Then	
															Disp_Value = "influencer in Supply Chain"
															Disp_Type_SC = "SC"
														End If
														''response.write Disp_Type_CSR & "NNNNNNNNNNNNNN"
														
														%>
                                                        <thead>
                                                            <tr class="m-0 p-0 border-0">
                                                                <td class="d-flex flex-wrap " style="background-color:#ffffff">
																	<p class="px-2 mb-0">
                                                                    <%=RSInfpeople("first_name")%>&nbsp;
                                                                        <%=RSInfpeople("last_name")%> is a leading <%=Disp_Value%>. Profile and expertise is developed using a tiered AI curation followed by in-house team review and validated peer or known-party inputs.</p>
                                                                </td>
                                                            </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
            </div>
		<!-- end influencer label-->	
		
		  <!---BEGIN: COLLAPSE FOR SHARE BUTTON -->

                                            <div id="social_icon" class="w-100" style="">
                                                <div class="d-flex flex-wrap justify-content-center mt-3 border-bottom" id="crowd_rank_box">
                                                    <div class="w-100 text-center border-top ">
                                                        <h4 class="font-weight-bold  my-2" style="font-size: 17px !important;">SHARE THIS PROFILE</h4>
                                                    </div>
                                                    <div class="well centered">
														<a class="sharer" data-media="linkedin" data-title="Impressive sharing plugin" data-summary="Check it out this impressive jQuery plugin to share sites and apps over SNS." href="">Linked-in</a>
                                                        <a class="sharer" data-media="facebook" href="">Facebook</a>
                                                        <!--a class="sharer" data-media="google" href="mail-to">Google</a-->
                                                        <a class="sharer" data-media="twitter" data-shorten="true" data-title="#sharer is an impressive sharing plugin. Check it out!" href="">Twitter</a>
                                                        
                                                    </div>
                                                </div>
                                            </div>

                                            <!---END: COLLAPSE FOR SHARE BUTTON -->
			
					 <%
					 vkeywords =  replace(keywords,",","','")
						''vkeywords="'CP-5035171'"
				     vkeywords="'"&vkeywords&"'"
					
					''response.write "vkeywords = "&vkeywords
					 
					 Set RSInfProjects = Server.CreateObject("ADODB.Recordset")
					 inf_ProjectQuery="SELECT top 10  code,title,file_name,dop  from GIA_MC_PROGRAM.dbo.mcpnewtopic WHERE code in ((select distinct trim(token) from dbo.String_Split('select top 1 mcpcodes  from gia_mc_program.dbo.InfluencersCompanies where filename in(" & vkeywords & ") )',';'))"		
					 inf_ProjectQuery="SELECT top 10  code,title,file_name,dop  from stat_globind.dbo.mcpnewtopic WHERE code in (select distinct trim(token) from dbo.String_Split((select top 1 mcpcodes  from gia_mc_program.dbo.InfluencersCompanies where filename in(" & vkeywords & ")),';'))"
						'' inf_ProjectQuery="SELECT top 10  code,title,file_name,dop  from stat_globind.dbo.mcpnewtopic WHERE code in ("&vkeywords&")"
						'' response.write(inf_ProjectQuery)
					    
						 RSInfProjects.Open inf_ProjectQuery, DataSource4
						' response.end
						'response.write inf_ProjectQuery
						totProjs=10 '' RSInfpeople("noofreports")
						'response.write totProjs
						Dim checkRecords
						checkRecords = 0
						If Not RSInfProjects.EOF Then%>
						
						<!---BEGIN: INFLUENCER AREA -->
            <div  class="table-responsive border-0">
               <div class="mt-3 position-relative pb-1 d-flex flex-column">
                  <!---BEGIN: INFLUENCER TABLE-->
                  <table id="Influencer_table">
                     <!---TABLE HEADER-->
                     <thead class="font-weight-bold">
                        <tr class="m-0 p-0">
                           <th class="d-flex flex-wrap justify-content-between">
                              <h4 class="ml-1">Market Influence Score </h4>
                              <h4>
                                 
                                 <!--span class="text-danger">*</span-->
                              </h4>
                           </th>
                        </tr>
                     </thead>
                     <!---TABLE BODY-->
                     <tbody>
					 
						<%checkRecords = 1
						While not RSInfProjects.EOF
						''response.write trim(RSInfpeople("mcpcodes"))
						
						
						'''''''''''Working
						Set rsMetrics = Server.CreateObject("ADODB.Recordset")								
							''SqlMetrics="select * from tbl_Market_Influence_Score1 where CP_code in ('"&RSInfpeople("filename")&"') and MCP_code='" & RSInfProjects("code") & "'  and infcode='" & trim(session("infcode")) & "'"
							SqlMetrics="select * from tbl_Market_Influence_Score1 where  MCP_code='" & RSInfProjects("code") & "'  and infcode='" & trim(session("infcode")) & "'"
													
							'response.write SqlMetrics
							rsMetrics.Open SqlMetrics,DataSource4
							dim chkshow,chkval
							   chkshow = ""
							   
							if not rsMetrics.EOF Then
								 RanK_Type=rsMetrics("RanK_Type")
								 Rank=CDbl(rsMetrics("Rank"))
								'highlight="highlight"
								chkshow = "show"
								chkval= "checked"
								''chkshow = "" 
								'if trim(Rank) = "5" and RanK_Type="" then
									'chkshow = "" 
									'Rank = ""
								'end if
							else
								RanK_Type=""
								Rank = ""
								highlight=""
								chkshow = ""
								chkval= ""
							end if
							set rsMetrics=nothing
							'if trim(RSInfProjects("Logo_background_color"))<>"" then
							'backcolor="background-color:" & RSInfProjects("Logo_background_color")
							'else
							'backcolor="background-color:#f1f1f1;"
							'end if	
							
						%>
					
                        <!---ROW BEGIN-->
                        <tr>
                           <td>
                              <div class="w-100 d-flex my-2">
                                 <div class="w-100 d-flex justify-content-between">
                                    <div class="w-100 d-flex justify-content-between">
                                       <div class="input_block d-flex">
                                          <input type="checkbox" data-toggle="collapse" <%=chkval%>
                                             data-target="#collapse_<%=trim(RSInfProjects("code"))%>"
                                             aria-expanded="true"
                                             aria-controls="collapseOne" class="mr-2">
                                       
									   
                                       <h4 class="font-weight-bold"><a
                                          href="https://www.strategyr.com/<%=trim(RSInfProjects("file_name"))%>?encid=<%= trim(session("infcode"))%>"
                                          target="new" class="text-dark"><%=trim(RSInfProjects("title"))%></a> 
                                       </h4>
									   </div>
									   <h4 class="mr-lg-2 mr-xl-2 mr-md-2 mr-sm-1 pr-1">Score</h4>
                                    </div>
                                    
                                 </div>
                              </div>
                              <!---COLLAPSE FOR TABLE ROW--->
                              <div id="collapse_<%=trim(RSInfProjects("code"))%>" aria-expanded="false" class="collapse <%=chkshow%>">
                                 <div class="d-flex justify-content-between"
                                    id="crowd_rank_box">
                                    <input type="hidden" class="single-slider col-2" onchange="myFunction('<%=trim(RSInfProjects("code"))%>txtval',this.value,'<%'=RSInfpeople("filename")%>','<%=trim(RSInfProjects("code"))%>');" value="<%=Rank%>" id="<%=trim(RSInfProjects("code"))%>Sval" name="<%=trim(RSInfProjects("code"))%>Sval">
                                    <div class="na_block ">
										<div class="scroe_block">										
											<input type="text" class="mr-1 numbersOnly" value="<%=Rank%>" id="<%=trim(RSInfProjects("code"))%>txtval"  onchange="AddMarket_Influencer_Score('<%'=RSInfpeople("filename")%>','<%=trim(RSInfProjects("code"))%>')"/>
										</div>  
									<div class="d-flex">										
										<input type="hidden" <%=checked("NA",RanK_Type)%> name="Opt<%=trim(RSInfProjects("code"))%> value="N/A" onchange="AddMarket_Influencer_Score('<%'=RSInfpeople("filename")%>','<%=trim(RSInfProjects("code"))%>')" customatt="radio_option" id="Opt<%=trim(RSInfProjects("code"))%>" class="na_radio ml-0"> 
										<!--<span class="na">N/A</span>-->
									</div>
                                    </div>
                                 </div>
								 <div class="w-100">
                                  	<span class="pb-2 ml-2 text-dark d-block" style="font-weight: bold; ">Slide Bar Score</span>
								 </div>
									
                              </div>
                           </td>
                        </tr>
					<%	RSInfProjects.movenext
					wend
					%>
						
					<%end if
					set RSInfProjects=nothing
					%>
                        
                     
						
					
                     </tbody>
                  </table>
                  <!---END: INFLUENCER TABLE-->
                  <!---BEGIN: VIEW MORE & SUBMIT  AREA-->
                  <table id="Influencer_table">
                     <tr>
					<%
					If checkRecords=1 Then
					if session("EID") <>"" then%>
                        <td class="comp_sub">
						<div class="d-flex d-flex justify-content-end">
                           
                           <%if cint(totProjs)>10 then %>  
						   <p class="font-weight-bold mb-0 mt-0">
						   <span class="float-left">
                              <a href="https://www.strategyr.com/Report_Influencer_Details.asp?code=<%=RSInfpeople("filename")%>&infcode=<%=RSInfpeople("app_login_code")%>" class="view_entire_pool_btn">
                              More...</a>
							     
                              </span><%end if%>
                           </p>
						   <!--div>
								<label class="switch">
									<input type="checkbox">
									<span class="slider round d-flex justify-content-between">
										<i>PRIVATE</i>
										<i>PUBLIC</i>
									</span>
								</label>
							</div-->
                           <a href="#" onclick="AddAllComp_metris()"
                              class="submit-button my-2  float-right" type="button"> SUBMIT
                           </a>
						   </div>  
                        </td>
					<%else%>
                        <td class="comp_sub">
						<div class="d-flex d-flex justify-content-between">
                          
						   <%if cint(totProjs)>10 then %>
							 <p class="font-weight-bold mb-0 mt-0">
                              <span class="float-left">
                              <a href="https://www.strategyr.com/LoginRepeat.asp" class="view_entire_pool_btn">
                              More...</a>
							        
                              </span>
								</p>							  
							<%end if%>  
							<!--div>
								<label class="switch">
									<input type="checkbox">
									<span class="slider round d-flex justify-content-between">
										<i>PRIVATE VIEW</i>
										<i>PUBLIC VIEW</i>


									</span>
								</label>
							</div-->
                           <a href="https://www.strategyr.com/LoginRepeat.asp" onclick="AddAllComp_metris()"
                              class="submit-button my-2  float-right" type="button"> SUBMIT
                           </a>
						  </div> 
                        </td>
					<%end if
					end if
					%>
					          
                     </tr>
					 </table>
                     <!---TABLE BODY-->
                    
                              <div class="w-100 text-center"> <h4 class="font-weight-bold font-size-20 mt-2" >
									   <%
									   If trim(Disp_Type_DEI)="DEI" then
											response.write "<a href='https://www.strategyr.com/DEI_Survey.asp?stype=diversity' style='color: #255e91;'>Diversity Equity & Inclusion</a>"
										End If
										if  trim(Disp_Type_Carbon)="CF" then
											response.write "<a href='https://www.strategyr.com/CF_Survey.asp?stype=carbon footprint' style='color: #255e91;'>Carbon Footprint</a>"
										End If
										if trim(Disp_Type_FOW)="FOW" then
											response.write "<a href='https://www.strategyr.com/FOW_Survey.asp?stype=FUTURE OF WORK' style='color: #255e91;'>Future of Work</a>"	
										End If
										if trim(Disp_Type_FOL)="FOL" then
											response.write "<a href='https://www.strategyr.com/FOL_Survey.asp?stype=Future of Learning' style='color: #255e91;'>Future of Learning</a>"	
										End If
										if  trim(Disp_Type_GENZ)="GZ" then
											response.write "<a href='https://www.strategyr.com/GZ_Survey.asp?stype=GENERATION Z' style='color: #255e91;'>Generation Z</a>"	
										End If
										if  trim(Disp_Type_CSR)="CSR" then
											response.write "<a href='https://www.strategyr.com/CSR_Survey.asp?stype=CSR' style='color: #255e91;'>Corporate Social Responsibilty</a>"	
										End If
										if  trim(Disp_Type_BtoC)="B2CBG" then
											response.write "<a href='https://www.strategyr.com/B2CBG_Survey.asp?stype=B2C' style='color: #255e91;'>B2C B2B B2G</a>"	
										End If
										if  trim(Disp_Type_DT)="DT" then
											response.write "<a href='https://www.strategyr.com/DT_Survey.asp?stype=Digital Transformation' style='color: #255e91;'>Digital Transformation</a>"	
										End If
										if  trim(Disp_Type_ACS)="ACS" then
											response.write "<a href='https://www.strategyr.com/ACS_Survey.asp?stype=ACS' style='color: #255e91;'>Auto Chip Shortage</a>"	
										End If
										if  trim(Disp_Type_BC)="BC" then
											response.write "<a href='https://www.strategyr.com/BC_Survey.asp?stype=BC' style='color: #255e91;'>Blockchain</a>"	
										End If
										if  trim(Disp_Type_CC)="CC" then
											response.write "<a href='https://www.strategyr.com/CC_Survey.asp?stype=CC' style='color: #255e91;'>Cryptocurrency</a>"	
										End If
										if  trim(Disp_Type_CS)="CS" then
											response.write "<a href='https://www.strategyr.com/CS_Survey.asp?stype=CS' style='color: #255e91;'>Cybersecurity </a>"	
										End If
										''Disp_Type_CE = ""
										''Disp_Type_SC = ""
										if  trim(Disp_Type_CE)="CE" then
											response.write "<a href='https://www.strategyr.com/CE_Survey.asp' style='color: #255e91;'>US Auto Clean Energy Policy</a>"	
										End If
										if  trim(Disp_Type_SC)="SC" then
											response.write "<a href='https://www.strategyr.com/SCL_Survey.asp' style='color: #255e91;'>Supply Chain and Logistics </a>"	
										End If
									   %></h4>
								</div>
							
					   <!--tr style="background:#fff;"><td>
                                <div class="d-flex">
								<input id="chkremove" name="chkremove" type="checkbox" onclick="Change_Influencer_Status('<%'=RSInfpeople("filename")%>')">
								<span class="text-danger font-italic">
									Please remove my profile from this platform	
								 <span>
									
                                </div>
								</td>
                                <tr-->
                  
                  <!---END: VIEW MORE & SUBMIT  AREA-->
                  <!---BEGIN: NOTE MESSAGE-->
                  <!--div class="border-0 font-weight-bold table_note" id="Influencer_table">
                     <sapn class="text-danger ">*</sapn>
                     View our ongoing research program, participaate in oursurvey, checkout our influncer insights and what's trending
                  </div-->
                  <!---END: NOTE MESSAGE-->
               </div>
               <!---TABLE END-->
            </div>
            <!---END: INFLUENCER AREA -->
			 <!---BEGIN: COMPANY NAME -->
            <!--div class="w-100 text-center">
               <a href="https://www.strategyr.com/companyinsider.asp?code=<%=filemd5%>&cmpID=<%=cmpID%>&encID=<%=trim(session("infcode"))%>"
                  class="view_entire_pool_btn font-weight-bold" target="new"><%=companyname%></a>
            </div-->
            <!---END: COMPANY NAME -->
            <%end if%>


            <!--BEGIN  BUTTON AND COLLAPSE BLOCK-->
           
            <div ID="COLLAPSE_BLOCK" class="mb-2">
                 <!---BEGIN: BOTTOM THREE BUTTONS -->
                                            <div class="w-100 mt-1">
                                                <span class="d-flex flex-md-row flex-sm-row  justify-content-center flex-lg-nowrap flex-xl-nowrap flex-md-nowrap flex-sm-wrap mb-3" id="company_page_btn">
                     <a  target="new" class="btn rounded-0 p-2 shadow inf_btn  "
                        data-toggle="collapse" data-target="#claim_profile" aria-expanded="true"
                        aria-controls="collapseOne" type="button">
                     CLAIM PROFILE
                     </a>
                     <a  target="new" class="btn rounded-0 p-2 shadow inf_btn  "
                        data-toggle="collapse" data-target="#enrich_profile" aria-expanded="true"
                        aria-controls="collapseOne" type="button">
                     ENRICH PROFILE
                     </a>
                     <a  target="new"
                        class="btn rounded-0 p-2 shadow inf_btn  " data-toggle="collapse"
                        data-target="#view_profile" aria-expanded="true"
                        aria-controls="collapseOne" type="button">
                     	VIEW PROFILE
                     </a>
                     </span>
                                            </div>
                                            <!---END: BOTTOM THREE BUTTONS -->
                  
                  <!---BEGIN: COLLAPSE FOR CLAIM PROFILE BUTTON -->

                                            <div id="claim_profile" aria-expanded="false" class="w-100 collapse " data-parent="#COLLAPSE_BLOCK" style="">

                                                <div class="w-xl-60 w-lg-60 w-md-100 w-sm-100 mx-auto mt-4">
                                                    <div class="w-100 text-center border-top py-2">
                                                        <h4 class="font-weight-bold  my-2" style="font-size: 20px!important;">CLAIM PROFILE</h4>
                                                    </div>
                                                    <div class="w-100 px-3">
														
													<span class="text-danger ">*</span>Requires 2-factor authentication to claim profile.
                                                        <div class="form_box">
                                                            <form method="post" name="reg" onsubmit="return validatefrm1()">
                                                                <!--GENDER BLOCK START-->
                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="text" name="c_firstname" id="c_firstname" class="w-100" maxlength="50" value="<%=session(" FirstName ")%>" required="" placeholder="First Name">
                                                                </div>

                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="text" name="c_lasttname" id="c_lasttname" maxlength="50" required="" value="<%=session(" LastName ")%>" class="w-100" placeholder="Last Name">
                                                                </div>

                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="email" name="c_email" id="c_email" maxlength="50" required="" value="" class="w-100" placeholder="Domain Email Only">
                                                                </div>

                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="text" name="c_designation" id="c_designation" maxlength="50" required="" value="<%=session(" title ")%>" class="w-100" placeholder="Designation">
                                                                </div>


                                                                <div class="text_field_block">
                                                                    <a class="button1 mx-auto rounded-0 py-1  d-block" style="width: 80px;font-weight:bold;" onclick="funMarket_Influence_Profile('c_firstname','c_lasttname','c_email','c_designation','CLAIM PROFILE');" value="NEXT">SUBMIT</a>

                                                                </div>

                                                            </form>
                                                        </div>

                                                    </div>


                                                </div>
                                            </div>

                                            <!---END: COLLAPSE FOR CLAIM PROFILE BUTTON -->


                                            <!---BEGIN: COLLAPSE FOR ENRICH PROFILE BUTTON -->

                                            <div id="enrich_profile" aria-expanded="false" data-parent="#COLLAPSE_BLOCK" class="collapse w-100" style="">
                                                <div class="w-xl-60 w-lg-60 w-md-100 w-sm-100 mx-auto mt-4">
                                                    <div class="w-100 text-center border-top py-2">
                                                        <h4 class="font-weight-bold  my-2" style="font-size: 20px!important;">ENRICH PROFILE</h4>
                                                    </div>
                                                    <div class="w-100 px-3">
														
                                            <span class="text-danger ">*</span>Requires 2-factor authentication to enrich profile.
                                                        <div class="form_box" id="contact_form">
                                                            <form method="post" name="reg" onsubmit="return check_field(); return validatefrm1()">
                                                                <!--GENDER BLOCK START-->
                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="text" name="e_firstname" id="e_firstname" class="text_field w-100" maxlength="50" value="<%=session(" FirstName ")%>" required="" placeholder="First Name">
                                                                </div>

                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="text" name="e_lasttname" id="e_lasttname" maxlength="50" required="" value="<%=session(" LastName ")%>" class="text_field w-100" placeholder="lastname">
                                                                </div>

                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="email" name="e_email" id="e_email" maxlength="50" required="" value="" class="text_field w-100" placeholder="Domain Email Only">
                                                                </div>

                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="text" name="e_designation" id="e_designation" maxlength="50" required="" value="<%=session(" title ")%>" class="text_field w-100" placeholder="Designation">
                                                                </div>
                                                                <div class="text_field_block">
                                                                    <a href="#" id="submit_form" class="button1 mx-auto rounded-0 py-1  d-block submit_button" style="width: 80px;font-weight:bold;" onclick="funMarket_Influence_Profile('e_firstname','e_lasttname','e_email','e_designation','ENRICH PROFILE');" value="SUBMIT">SUBMIT</a>
                                                                    <!-- <button  id="submit_form" rel="modal:open" class="button1 mx-auto rounded-0 shadow  d-block submit_button" style="float: none;" onclick="funMarket_Influence_Profile('e_firstname','e_lasttname','e_email','e_designation','ENRICH PROFILE');" value="SUBMIT">SUBMIT</button>
								 <input type="submit" id="submit_form" name="send_mail" value="SUBMIT FORM" class="button1 mx-auto rounded-0 shadow  d-block submit_button" style="float: none;">-->
                                                                </div>
                                                            </form>
                                                        </div>

                                                    </div>


                                                </div>
                                            </div>

                                            <!---END: COLLAPSE FOR ENRICH PROFILE BUTTON -->


                                            <!---BEGIN: COLLAPSE FOR VIEW PROFILE BUTTON -->
                                            <div id="view_profile" aria-expanded="false" data-parent="#COLLAPSE_BLOCK" class="collapse w-100" style="">
                                                <div class="w-xl-60 w-lg-60 w-md-100 w-sm-100 mx-auto mt-4">

                                                    <div class="w-100 text-center border-top py-2">
                                                        <h4 class="font-weight-bold  my-2" style="font-size: 20px!important;">VIEW PROFILE</h4>
                                                    </div>

                                                    <div class="w-100 px-3">

														<span class="text-danger ">*</span>Requires 2-factor authentication to view profile.
                                                        <div class="form_box">
                                                            <form method="post" name="reg" onsubmit="return validatefrm1()">
                                                                <!--GENDER BLOCK START-->
                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="text" name="c_firstname" id="c_firstname" class="w-100" maxlength="50" value="<%=session(" FirstName ")%>" required="" placeholder="First Name">
                                                                </div>

                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="text" name="c_lasttname" id="c_lasttname" maxlength="50" required="" value="<%=session(" LastName ")%>" class="w-100" placeholder="Last Name">
                                                                </div>

                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="email" name="c_email" id="c_email" maxlength="50" required="" value="" class="w-100" placeholder="Domain Email Only">
                                                                </div>

                                                                <div class="text_field_block" style="text-align:left;">
                                                                    <input type="text" name="c_designation" id="c_designation" maxlength="50" required="" value="<%=session(" title ")%>" class="w-100" placeholder="Designation">
                                                                </div>


                                                                <div class="text_field_block">
                                                                    <a class="button1 mx-auto rounded-0 py-1  d-block" style="width: 80px;font-weight:bold;" onclick="funMarket_Influence_Profile('c_firstname','c_lasttname','c_email','c_designation','VIEW PROFILE');" value="NEXT">SUBMIT</a>

                                                                </div>

                                                            </form>
                                                        </div>

                                                    </div>

                                                </div>
                                            </div>

                                             <!---END: COLLAPSE FOR VIEW PROFILE BUTTON -->

                  <!--END: BUTTON AND COLLAPSE BLOCK-->
            </div>

 <div class="border-0 font-weight-bold table_note" id="Influencer_table">
                                            <span class="text-danger ">*</span>Claim your profile to assume total control of your profile; Enrich this profile if you’re a peer or know the influencer; Requires 2-factor authentication to view profile. 
                                           
                                        </div>


               

	
	</div>

<!-- Categories for home page end -->

</div>
<!-- Body End here -->
</div>
</div><!-- Wrapper / End -->
<%set RSInfpeople = nothing%>

<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->
<!---BEGIN: Model-->

<div id="linkedin_mobel">
	<div class="h-100 w-100 d-flex justify-content-center align-items-center">

	<div class="modal rounded-0" style="display:block !important"> 


	<!--p class="text-center">For a 2-stage verification.</p-->
	  <p class="text-center" style="font-size: 15px; font-weight: bold;">For a 2-Stage verification process, please sign in with LinkedIn below</p>
	  <!-- <a href="https://www.strategyr.com/LogInUsingLinkedinApp/loginLinkedin1.asp?infcode=<%=session("infcode")%>&scode=<%=session("infcode")%>"><img src="https://www.strategyr.com/images/linkedin.svg" class="mx-auto" style="width: 165px;"></a>-->
	   <a href="https://www.strategyr.com/LogInUsingLinkedinApp/loginLinkedin_InfGIA.asp?infcode=<%=session("infcode")%>&scode=<%=session("infcode")%>&fname=<%=fname%>&lname=<%=lname%>"><img src="https://www.strategyr.com/images/linkedin.svg" class="mx-auto" style="width: 165px;"></a>
	 <!-- <a href="#" rel="modal:close">Close</a>-->

	</div>
</div>
</div>



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
      $(document).ready(function () {
          $('.sharer').sharer();
      });
   </script>

<script type="text/javascript">
    $(document).ready(function(){
     $(".text_field").bind("keyup", check_field);
    });
    
    $("#submit_form").attr('disabled', true);
    $("#submit_form").addClass("disable");

    function check_field()
    {
     var firstname=$("#e_firstname").val();
     var lastname=$("#e_lastname").val();
     var email=$("#e_email").val();
     var designation=$("#e_designation").val();
     if(firstname!="" && lastname!="" && email!="" && designation!="")
     {
      $("#submit_form").prop( "disabled", false);
      $("#submit_form").removeClass("disable");
      return true;
     }
     else
     {
      $("#submit_form").prop( "disabled", true);
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