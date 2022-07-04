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
<!--link rel='stylesheet' href="css/eco_systems.css" async-->
<link rel="stylesheet" href="css/competitive_style1.css" />
<link rel="stylesheet" href="css/landing_page_new.css" />

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

<script type="text/javascript">


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

function AddAllComp_metris(code)
{
 //alert(code);
    //var v= $('input[type=radio].rankclass:checked');
	   // $(v).each(function(i){
		    // alert($(this));
			 
			
	//});
	
	 alert("Data Updated Sucessfully");
}


function AddMarket_Influencer_Score(cpcode,mcpcode) {	 

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
		if (vcpCode != null && vMCPcode != '' && vMCPcode != null && infsno != '')
		  { 
		
			 $.ajax({
				url: "Ajax_AddILP_Market_Influencer_Score.asp",
				type: "POST",
				data:'vcpCode='+encodeURIComponent(vcpCode)+'&vMCPcode='+encodeURIComponent(vMCPcode)+'&infsno='+encodeURIComponent(infsno)+'&vtxtval='+encodeURIComponent(vtxtval)+'&vctxtRtype='+encodeURIComponent(vctxtRtype)+'', 				
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
			  else
			  {
				alert('Value cannot be left blank');
				$("#Rank"+vcpCode).focus();
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
<link rel="stylesheet" href="css/influencer_style.css" />
      <link rel="stylesheet" href="css/jquery.range.css" />
      <link rel="stylesheet" href="css/share/sharer.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

	
	
	 
				  
<%
code =request("code")
%>
<!-- Categories for home page Start -->

<div class="container">
	 <!---BEGN REPORT TITLE--->
			<!--INCLUDE FILE="newReportTitle_New1.asp" -->
        <!---END REPORT TITLE--->					

<div class="w-100">
	<div class="row mb-0 mx-0">
		<!--<div class="w-100 text-left mb-2 ">
            <h3 class="text-primary text_orange font-weight-bold m-0 line-height-normal mt-2 text-center mb-2" style="font-size:18px;">COMPETITIVE METRICS</h3>
 
		</div>-->
		<%Set RSInfpeople = Server.CreateObject("ADODB.Recordset")
			
			inf_Query="SELECT sno as id, noofreports,first_name as firstname,Last_name as lastname,filename,companyName,title as headline,'' as imgorder, (case when image_path is null then logo_local else image_path end) as image_url,Filename_MD5 ,Cmp_hidden_code as cmpid,market_acumen,EmployeeCountry as location,mcpcodes from GIA_MC_PROGRAM.dbo.vwInfluencersPeople WHERE sno=" & trim(request("id")) & " and filename='" & trim(request("code")) &"'"		
			''response.write inf_Query
			RSInfpeople.Open inf_Query, DataSource4
			If Not RSInfpeople.EOF Then
			companyname=trim(RSInfpeople("companyName"))
			filemd5 = trim(ucase(RSInfpeople("filename_md5")))
			cmpID = Trim(RSInfpeople("cmpid"))
			infsno=Trim(RSInfpeople("id"))
			''response.write trim(RSInfpeople("mcpcodes"))
			%>
	
		<!---BEGIN: TOP INFLUENCER LABLE -->
            <div class="w-100">
               <div id="influencer_lable" class="bg-white border shadow p-2 ">
                  <div class="row mb-0 ">
                     <h3 class="influencer_name"> <%=RSInfpeople("firstname")%>&nbsp;<%=RSInfpeople("lastname")%><input type="hidden" value="<%=infsno%>" id="hdninfsno"> </h3>
                  </div>
                  <div class="d-flex">
                     <div class="left_block">
                        <div class="row mb-0 mt-2">
                           <div class="middle_column">
                              <div class="img-block">
                                 <div class="w-100 h-100 bg-danger d-flex justify-content-center align-items-center"
                                    style="overflow: hidden">
                                    <img src="<%=RSInfpeople("image_url")%>" class="img-fluid">
                                 </div>
                              </div>
                              <div class="label_aside">
                                 <h4 class="text-dark "><%=RSInfpeople("headline")%></h4>
                                 <h4 class="text-dark"><%=RSInfpeople("companyName")%></h4>
                                 <h4 class="text-dark"><%=RSInfpeople("location")%></h4>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="right_block">
                        <div class="w-100 top_result">
                           <img src="images/Influener_lable_02.svg"
                              class="influencer_lable" />
                        </div>
                     </div>
                  </div>
                  </div->
               </div>
               <!---COPY FROM HERE-->
               <!---BEGIN COMPATITIVE---->
            </div>
		<!-- end influencer label-->	
			<!---BEGIN: INFLUENCER AREA -->
            <div  class="table-responsive border-0">
               <div class="mt-3 position-relative pb-3 d-flex flex-column">
                  <!---BEGIN: INFLUENCER TABLE-->
                  <table id="Influencer_table">
                     <!---TABLE HEADER-->
                     <thead class="font-weight-bold">
                        <tr class="m-0 p-0">
                           <th class="d-flex flex-wrap justify-content-between">
                              <h4 class="ml-1">MARKET INFLUENCE </h4>
                              <h4>
                                 SCORE
                                 <!--span class="text-danger">*</span-->
                              </h4>
                           </th>
                        </tr>
                     </thead>
                     <!---TABLE BODY-->
                     <tbody>
					 <%Set RSInfProjects = Server.CreateObject("ADODB.Recordset")
					inf_ProjectQuery="SELECT top 10  code,title,file_name,dop  from stat_globind.dbo.mcpnewtopic WHERE code in (select distinct trim(token) from dbo.String_Split('" & trim(RSInfpeople("mcpcodes")) &"',';'))"		
						
						RSInfProjects.Open inf_ProjectQuery, DataSource4,3
						'response.write inf_ProjectQuery
						totProjs= RSInfpeople("noofreports")
						'response.write totProjs
						If Not RSInfProjects.EOF Then
						While not RSInfProjects.EOF
						''response.write trim(RSInfpeople("mcpcodes"))
						%>
					
                        <!---ROW BEGIN-->
                        <tr>
                           <td>
                              <div class="w-100 d-flex my-2">
                                 <div class="w-100 d-flex justify-content-between">
                                    <div class="d-flex justify-content-start">
                                       <div class="input_block">
                                          <input type="checkbox" data-toggle="collapse"
                                             data-target="#collapse_<%=trim(RSInfProjects("code"))%>"
                                             aria-expanded="true"
                                             aria-controls="collapseOne" class="mr-2">
                                       </div>
                                       <h4 class="font-weight-bold"><a
                                          href="<%=trim(RSInfProjects("file_name"))%>"
                                          target="new" class="text-dark"><%=trim(RSInfProjects("title"))%></a> 
                                       </h4>
                                    </div>
                                    <div class="scroe_block">
                                      <input type="text" class="mr-1 numbersOnly" value=""
                                          id="<%=trim(RSInfProjects("code"))%>txtval" onkeypress='return isNumberKey(event,this)' onkeyup="this.value = fnc(this.value, 5, 10)"  onchange="AddMarket_Influencer_Score('<%=RSInfpeople("filename")%>','<%=trim(RSInfProjects("code"))%>')"/>
                                    </div>
                                 </div>
                              </div>
                              <!---COLLAPSE FOR TABLE ROW--->
                              <div id="collapse_<%=trim(RSInfProjects("code"))%>" aria-expanded="false" class="collapse">
                                 <div class="d-flex justify-content-between"
                                    id="crowd_rank_box">
                                    <input type="hidden" class="single-slider col-2"
                                       value="5" id="<%=trim(RSInfProjects("code"))%>Sval" name="<%=trim(RSInfProjects("code"))%>Sval"
                                       onchange="myFunction('<%=trim(RSInfProjects("code"))%>txtval',this.value);AddMarket_Influencer_Score('<%=RSInfpeople("filename")%>','<%=trim(RSInfProjects("code"))%>')">
                                    <div class="na_block ">
                                       <input type="radio" name="Opt<%=trim(RSInfProjects("code"))%> value="N/A" onchange="AddMarket_Influencer_Score('<%=RSInfpeople("filename")%>','<%=trim(RSInfProjects("code"))%>')"
                                          customatt="radio_option" id="Opt<%=trim(RSInfProjects("code"))%>"
                                          class="na_radio mx-1"> <span
                                          class="na">N/A</span>
                                    </div>
                                 </div>
                              </div>
                           </td>
                        </tr>
					<%	RSInfProjects.movenext
					wend
					end if
					set RSInfProjects=nothing
					%>
                        
                      
                     </tbody>
                  </table>
                  <!---END: INFLUENCER TABLE-->
                  <!---BEGIN: VIEW MORE & SUBMIT  AREA-->
                  <table id="Influencer_table">
                     <tr>
					<%
					if session("EID") <>"" then%>
                        <td class="comp_sub">
                           <p class="font-weight-bold mb-0">
                           <%if cint(totProjs)>10 then %>  <span class="float-left">
                              <a href="Report_Influencer_Details.asp?code=<%=RSInfpeople("filename")%>&id=<%=RSInfpeople("id")%>" class="view_entire_pool_btn">View
                              More...</a>
                              </span><%end if%>
                           </p>
                           <a href="#" onclick="AddAllComp_metris111('MCP-1889')"
                              class="submit-button my-2  float-right" type="button"> SUBMIT
                           </a>
                        </td>
					<%else%>
                        <td class="comp_sub">
                           <p class="font-weight-bold mb-0">
						   <%if cint(totProjs)>10 then %>
                              <span class="float-left">
                              <a href="LoginRepeat.asp" class="view_entire_pool_btn">View
                              More...</a>
                              </span>
							  <%end if%>
                           </p>
                           <a href="LoginRepeat.asp" 
                              class="submit-button my-2  float-right" type="button"> SUBMIT
                           </a>
                        </td>
					<%end if
					%>
                     </tr>
                  </table>
                  <!---END: VIEW MORE & SUBMIT  AREA-->
                  <!---BEGIN: NOTE MESSAGE-->
                  <div class="border-0 font-weight-bold table_note" id="Influencer_table">
                     <sapn class="text-danger ">*</sapn>
                     Validated responses are published.
                     Profile owner has data display discretion.
                  </div>
                  <!---END: NOTE MESSAGE-->
               </div>
               <!---TABLE END-->
            </div>
            <!---END: INFLUENCER AREA -->
			 <!---BEGIN: COMPANY NAME -->
            <div class="w-100 text-center">
               <a href="companyinsider.asp?code=<%=filemd5%>&cmpID=<%=cmpID%>"
                  class="view_entire_pool_btn font-weight-bold" target="new">Affiliate <%=companyname%></a>
            </div>
            <!---END: COMPANY NAME -->
            <%end if%>


            <!--BEGIN  BUTTON AND COLLAPSE BLOCK-->
           
            <div ID="COLLAPSE_BLOCK">
                  <!---BEGIN: BOTTOM THREE BUTTONS -->
                  <div class="w-100 mt-3">
                     <span
                        class="d-flex flex-md-row flex-sm-row  justify-content-center flex-lg-nowrap flex-xl-nowrap flex-md-nowrap flex-sm-wrap"
                        id="company_page_btn">
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
                        data-target="#social_icon" aria-expanded="true"
                        aria-controls="collapseOne" type="button">
                     SOCIAL SHARE
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

                              <div class="form_box">
                                 <form method="post" name="reg" onsubmit="return validatefrm1()">
                              <!--GENDER BLOCK START-->
                                 <div class="text_field_block" style="text-align:left;">
                                    <input type="text" name="userfirstname" class="w-100" maxlength="50" onblur=" " value="First Name" required="" placeholder="First Name">
                                 </div>
                              
                              <div class="text_field_block" style="text-align:left;">
                                 <input type="text" name="txtlastname" maxlength="50" required="" value="Last Name" onblur="" class="w-100" placeholder="lastname">
                                 </div>
                  
                              <div class="text_field_block" style="text-align:left;">
                                 <input type="email" name="txtemail" maxlength="50" required="" value="Email" onblur="" class="w-100" placeholder="email">
                                 </div>

<div class="text_field_block" style="text-align:left;">
                                 <input type="text" name="txtdesignation" maxlength="50" required="" value="Designation" onblur="" class="w-100" placeholder="Designation">
                                 </div>


<div class="text_field_block">
<button type="submit" class="button1 mx-auto rounded-0 shadow  d-block" style="width: 80px;font-weight:bold;" name="btnsubmit" onclick="return validateform();" value="NEXT">SUBMIT</button>
</div>
                              
                           </form></div>

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

                              <div class="form_box">
                                 <form method="post" name="reg" onsubmit="return validatefrm1()">
                              <!--GENDER BLOCK START-->
                                 <div class="text_field_block" style="text-align:left;">
                                    <input type="text" name="userfirstname" class="w-100" maxlength="50" onblur=" " value="First Name" required="" placeholder="First Name">
                                 </div>
                              
                              <div class="text_field_block" style="text-align:left;">
                                 <input type="text" name="txtlastname" maxlength="50" required="" value="Last Name" onblur="" class="w-100" placeholder="lastname">
                                 </div>
                  
                              <div class="text_field_block" style="text-align:left;">
                                 <input type="email" name="txtemail" maxlength="50" required="" value="Email" onblur="" class="w-100" placeholder="email">
                                 </div>

<div class="text_field_block" style="text-align:left;">
                                 <input type="text" name="txtdesignation" maxlength="50" required="" value="Designation" onblur="" class="w-100" placeholder="Designation">
                                 </div>
<div class="text_field_block">
<a  href="#linkedin_mobel" rel="modal:open" type="submit" class="button1 mx-auto rounded-0 shadow  d-block submit_button" style="width: 80px;font-weight:bold;" name="btnsubmit" onclick="return validateform();" value="SUBMIT">SUBMIT</a>
</div>
                           </form></div>

                           </div>

                           
                        </div>
                     </div>
                  
                  <!---END: COLLAPSE FOR ENRICH PROFILE BUTTON -->
               
                  <!---BEGIN: COLLAPSE FOR SHARE BUTTON -->
                
                     <div id="social_icon" aria-expanded="false" class="collapse w-100" style=""  data-parent="#COLLAPSE_BLOCK">
                        <div class="d-flex flex-wrap justify-content-center mt-3"
                           id="crowd_rank_box">
                           <div class="w-100 text-center border-top">
                              <h4 class="font-weight-bold  my-2"
                                 style="font-size: 20px!important;">SHARE THIS PROFILE</h4>
                           </div>
                           <div class="well centered">
                              <a class="sharer" data-media="facebook" href="">Facebook</a>
                              <a class="sharer" data-media="google" href="">Google</a>
                              <a class="sharer" data-media="twitter" data-shorten="true"
                                 data-title="#sharer is an impressive sharing plugin. Check it out!"
                                 href="">Twitter</a>
                              <a class="sharer" data-media="linkedin"
                                 data-title="Impressive sharing plugin"
                                 data-summary="Check it out this impressive jQuery plugin to share sites and apps over SNS."
                                 href="">Linked-in</a>
                           </div>
                        </div>
                     </div>
               
                  <!---END: COLLAPSE FOR SHARE BUTTON -->

                  <!--END: BUTTON AND COLLAPSE BLOCK-->
            </div>



               

	
	</div>

<!-- Categories for home page end -->

</div>
<!-- Body End here -->

</div><!-- Wrapper / End -->

<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->
<!---BEGIN: Model-->


<div id="linkedin_mobel" class="modal">
<!--  <p>Thanks for clicking. That felt good.</p>-->
  <p class="text-center" style="font-size: 15px; font-weight: bold;">Login with LinkedIn  </p>
   <a href="#"><img src="images/linkedin.svg" class="mx-auto" style="width: 165px;"></a>
 <!-- <a href="#" rel="modal:close">Close</a>-->
</div>


<!-----END: MODEL -->
<script src="js/limit.text.js"></script>
   <script src="scripts/sharer.js"></script>
   <script src="scripts/jquery.range.js"></script>
<script>

 $(document).ready(function(){

   $('.inputselector').click(function(e){
         $(this).parent().addClass('active');
    });

    $('.inputselector').focusout(function(e){
         $(this).parent().removeClass('active');
    });
})   
</script>




<script>
      $('.single-slider').jRange({
          from: 5,
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
   <script>
      function myFunction(txtname, taxval) {
          // 01txtval.val(val);
          $("#" + txtname).val(taxval);
          // alert("The input value has changed. The new value is: " + val);
      }
   </script>
    <!---SHARE ICON SCRIPT -->
   <script type="text/javascript">
      $(document).ready(function () {
          $('.sharer').sharer();
      });
   </script>

<script>
   $('button.submit_button').click(function(event) {
   $("#linkedin_mobel").modal({
     fadeDuration: 250,
     clickClose: false,    
   });
   return false;
 });
   </script>



</body>
</html>