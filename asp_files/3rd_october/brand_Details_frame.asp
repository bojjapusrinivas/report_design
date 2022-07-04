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
%>
================================================== -->
<meta charset="utf-8">
<title>PROFILE - <%=FName%>&nbsp;<%=LName%> - <%=companyname%> - StrategyR.com</title>
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
 <link rel="stylesheet" href="css/brand_influencer.css" />
      <link rel="stylesheet" href="css/jquery.range.css" />
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
				url: "Ajax_AddMarket_Influence_Profile.asp",
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
				//alert('Value cannot be left blank');
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


      <link rel="stylesheet" href="css/jquery.range.css" />
      <link rel="stylesheet" href="css/share/sharer.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!---FROM HERE COPY STYLES-->

<!---UPTO HERE STYLES-->

<style>
   .modal {
      max-width: 800px !important;
   }

   .modal.brand_image_library{
       height: auto;
   }
</style>
	
<input type="hidden" name="HDNinfcode" id="HDNinfcode" value="<%=trim(session("infcode"))%>">
<input type="hidden" name="HDNCPcode" id="HDNCPcode" value="<%=trim(Code)%>">
<!-- Categories for home page Start -->
<div class="container">
   <!---COPY FORM HERE-->
   <!---BEGIN: TOP INFLUENCER LABLE -->
   <div class="w-100">
      <div id="influencer_lable" class="bg-white border shadow p-2 ">
         <div class="row mb-0 ">
            <h3 class="influencer_name"> XBOX</h3>
         </div>
         <div class="d-flex">
            <div class="left_block" style="width:100%;">
               <div class="row mb-0 mt-0">
                  <div class="middle_column">
                     <div class="img-block">
                        <div class="w-100 h-100 d-flex justify-content-start align-items-center"
                           style="overflow: hidden">
                           <img src="https://bojjapusrinivas.github.io/report_design/images/Xbox.png" class="img-fluid">
                        </div>
                     </div>
                     <div class="label_aside">
                        <h4 class="text-dark ">Microsoft Corportion</h4>
                        <h4 class="text-dark">USA</h4>
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
         </div->
      </div>
      <!---COPY FROM HERE-->
      <!---BEGIN COMPATITIVE---->
   </div>
   <!---END: TOP INFLUENCER LABLE -->
   <HR />
   <!---BEGIN: INFLUENCER AREA -->
   <div  class="table-responsive border-0">
      <div class="mt-3 position-relative pb-3 d-flex flex-column">
         <!---BEGIN: INFLUENCER TABLE-->
         <table id="Influencer_table">
            <!---TABLE HEADER-->
            <thead class="font-weight-bold">
               <tr class="m-0 p-0">
                  <th class="w-100 text-center py-2">
                     <h4 class="ml-1 py-2">BRAND INFLUENCE </h4>
                  </th>
               </tr>
            </thead>
            <!---TABLE BODY-->
            <tbody>
               <!---ROW BEGIN-->

               <!---THIS TR SHOULD BE LOOPED-->
               <tr>
                  <td>
                     <div class="w-100 d-flex my-2">
                        <div class="w-100 d-flex justify-content-between">
                           <div class="d-flex justify-content-start">
                              <div class="input_block">
                                 <input type="checkbox" data-toggle="collapse"
                                    data-target="#collapse_001"
                                    aria-expanded="true"
                                    aria-controls="collapseOne" class="mr-2">
                              </div>
                              <h4 class="font-weight-bold"><a
                                 href="#"target="new" class="text-dark">Video Games</a> 
                              </h4>
                           </div>
                          
                        </div>
                     </div>
                     <!--- FIRST COLLAPSE SETION FOR TABLE ROW--->
                     <div id="collapse_001" aria-expanded="false" class="collapse">
                           <div class="w-100">

                            
                              <div class="d-flex justify-content-start flex-wrap py-2 w-100 border-top">

                                <!---THIS SHOULD BE LOOPED AS PER THE LIST OF SEGMENTS-->
                                 <div class="d-flex mr-3">
                                       <input type="checkbox"  class="mr-1"  data-toggle="collapse" data-target="#mobile_Games" aria-expanded="true"  aria-controls="collapseOne">
                                       <p class="ml-1">Mobile Games</p>
                                 </div>
                                 
                              
                              </div>
                            </div>

                            <div class="w-100 border-top  py-2" id="block_01">

                                <!---SECOND COLLAPSE AS CHECKED CHECKBOX-->
                                 <!---Mobile Games-->
                                 <div id="mobile_Games" aria-expanded="false" class="collapse " >
                                       <div class="d-flex justify-content-start">
                                          <p>Mobile Games -</p>
                                          <a href="#brand_image_library" rel="modal:open" class="link2 font-weight-bold">ADD FROM IMAGE LIBRARY</a>
                                       </div>
                                 </div>
                                <!---SECOND COLLAPSE ENDS HERE-->

                            </div>

                        </div>
                    
                  </td>
               </tr>
                <!---THIS TR LOOPED ENDS-->


             
            </tbody>
         </table>
         <!---END: INFLUENCER TABLE-->
         <!---BEGIN: VIEW MORE & SUBMIT  AREA-->
         <table id="Influencer_table">


            <tr class="border">
               <td class="comp_sub">
                  <p class="font-weight-bold mb-0">
                     <span class="float-left">
                     <a href="LoginRepeat.asp" class="view_more">More...</a>
                     </span>
                  </p>
                  <a href="#" onclick="AddAllComp_metris('MCP-1889')"
                     class="submit-button my-2  float-right" type="button"> SUBMIT
                  </a>
               </td>
            </tr>


            <tr style="background:#fff" class="w-100">
               <td class="w-100 py-2 border-0">
                              <div class="d-flex justify-content-start align-items-center w-100 mt-2  ">                                         
                                   <p class="mr-2 mb-1"> Add missing  segment for the brand</p>
                                   <a href="#addnew_brand" rel="modal:open" class="ml-2 rounded-0  font-weight-bold  text-blue add_country" style="color:#169FE6 !important;font-size:14px !important; margin-top: -2px;">ADD SEGMENT</a>
                              </div>
                          
               </td>
            </tr>
         
         </table>
         <!---END: VIEW MORE & SUBMIT  AREA-->
      </div>
      <!---TABLE END-->
   </div>
   <!---END: INFLUENCER AREA -->
  
   <!---COPY UP TO HERE-->
</div>
<!-- Wrapper / End -->


<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->
<!---BEGIN: Model-->

<!-----END: MODEL -->
<script src="js/limit.text.js"></script>
<script src="scripts/sharer.js"></script>
<script src="scripts/jquery.range.js"></script>

<!--- MODEL FOR ADD SIGMENT ---->
<div id="addnew_brand" class="modal rounded-0">
   <div class="w-100">
      <table class="w-100">
         <tbody>
            <tr>
               <td class="w-100">
                  <div class="d-flex justify-content-start">
                     <!--div class="input_block">
                        <input type="checkbox"class="mr-2">
                     </div-->
                     <div class="input_block w-100">
                        <input type="text"class="mr-2 w-100 border" placeholder="Add New Segment">
                     </div>
                  </div>
                  </div>
               </td>
            </tr>
         </tbody>
      </table>

   </div>
 </div>

 <!--- MODEL FOR IMAGE LIBRARY ---->
 <div id="brand_image_library" class="modal brand_image_library rounded-0 ">
     <div class="w-100">
        <!---BEGIN: COMPANY NAME -->
        <div class="w-100 text-center">
         <h4 class="title2 font-weight-bold p-0 my-0">Microsoft Corporation</h4>
         <h5 class="title3 font-weight-bold p-0 my-0">Unique Brand# <span>276</span></h5>

      </div>
      <!---END: COMPANY NAME -->

      <!---BEGIN: Breadcrumb -->
      <div class="w-100 border-top py-2 border-bottom my-2">
        <nav aria-label="breadcrumb">
        <ol class="breadcrumb rounded-0 p-1 bg-white mb-0">
        <li class="breadcrumb-item"><a href="#">Video Games</a></li>
        <li class="breadcrumb-item">Mobile Games</li>
        </ol>
        </nav>
    </div>
    <!---BEGIN: Breadcrumb -->



      <div class="w-100 unique_brand_list my-3">
            <ul class="d-flex flex-wrap justify-content-around">

                <!-- IMAGE LIBRARY LOOP -->
               <li class="brand_list brand_icon p-2 shadow-sm border">
                <!--IMPORTANT NOTE: INPUT ID SHOULD BE TAGED TO for attrifbute in label id should be diffrent for each input -->
                 <label for="f1name">
                     <img src="https://bojjapusrinivas.github.io/report_design/images/BRAND_LOGO/BRAND_LOGO.jpg" class="img-fluid"/>
                     <div class="selection_box">
                         <input type="checkbox" class="mr-2" id="f1name">
                     </div>
                 </label>
               </li>


          </ul>

          <a class="button1 mx-auto rounded-0 shadow  d-block mt-4 p-1" style="width: 50px;font-weight:bold;" onclick="UpdateInfProfile('437169','CP-100001','');" value="SUBMIT">TAG</a>
       
      </div>


     </div>
   </div>
 



   <!---RANGE SIDE VALUE TO ANOTHER INPUT -->
  
    <!---SHARE ICON SCRIPT -->
  



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