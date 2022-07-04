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
<title>CF - CARBON FOOTPRINT - Validated Employee Survey - StrategyR.com</title>
<meta name="description" content="DEI - Diversity, Equity and Inclusion - Validated Employee Survey"/>
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
<link rel='stylesheet' href="css/eco_systems.css" async>
<link rel='stylesheet' href="css/animate.css" async>
<link rel='stylesheet' href="css/QUESTIONNAIRE_STYLE.CSS" async>
<link rel="stylesheet" href="css/jquery.range.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="css/Survey.css"/>



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

function Redirect(){
<%
		
		
		
			if (((trim(Request("chksearch"))="Title & Keywords") or (trim(Request("chksearch"))="Only Report Title")) and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("showsearchNew.asp?search="&Request("search"))
			End if 

			if ((trim(Request("chksearch"))="Company Names") and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("ShowCompaniesList.asp?search="&Request("search")&"&PageView=Show")
				
			End if 
		
	%>
}

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

function AddQuestionermsg() {

    var vfName =  $("#txtFirstName").val();
	var vlName = $("#txtLastName").val();
	var vEmail = $("#txtEmail").val();
	var vCPCode = $("#txtCpcode").val();
        // alert(vCPCode);		
	  if (vfName != null && vfName != '' && vlName != null && vlName != '' && vEmail != null && vEmail != '')
		  { 
		   // alert("Data Updated Sucessfully");
			$.ajax({
				url: "Ajax_AddDEIUSERQuestioner.asp",
				type: "POST",
				data:'vfName='+encodeURIComponent(vfName)+'&vlName='+encodeURIComponent(vlName)+'&vEmail='+encodeURIComponent(vEmail)+'&vCPCode='+encodeURIComponent(vCPCode)+'', 				
				success: function(data){
				//alert(data);
				 alert("Data Updated Sucessfully");
					
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
			 alert("All fields are mandatory and cannot be left blank");
		    }
}
function AddQuestioner(vQno,vQtxt,vSubtitle,vSelOption,vsRank,vsComments,vsQno) {	 

//alert(vsQno);
  
 var vfName =  $("#txtFirstName").val();
	 var vlName = $("#txtLastName").val();
	  var vEmail = $("#txtEmail").val();	  
	   var vCPCode = $("#txtCpcode").val();	   
	   var vRank;
	   if (vsRank != '0')
	   {	   
	     vRank = $("#"+vsRank).val();
       }	
       else{
	   vRank ='0'
	   }	   
	 
	 var vComments = vsComments.replace("'", "‘");

  
 
  // var vcpCode = cpcode;
	// var vMCPcode = mcpcode;
	 
    // var vtxtRval = $("#Rank"+vcpCode).val();
	// var vtxtRtype = "Rtype" + vcpCode;
	// var varqualitative=  $('input[id="qualitative"]:checked').val(); 
	 // alert (vtxtRank);
	// var vtxtRtype=  $('input[id='+vtxtRtype+']:checked').val(); 
	// alert(vtxtRtype);
	 // alert(vtxtRval);
	//alert("Data Saved");
		if (vQtxt != null && vQtxt != '' && vQno != null && vQno != '')
		  {  
			// alert(vtxtRval);
			 $.ajax({
				url: "Ajax_AddDEIQuestioner.asp",
				type: "POST",
				data:'vQno='+encodeURIComponent(vQno)+'&vQtxt='+encodeURIComponent(vQtxt)+'&vSubtitle='+encodeURIComponent(vSubtitle)+'&vSelOption='+encodeURIComponent(vSelOption)+'&vRank='+encodeURIComponent(vRank)+'&vComments='+encodeURIComponent(vComments)+'&vfName='+encodeURIComponent(vfName)+'&vlName='+encodeURIComponent(vlName)+'&vEmail='+encodeURIComponent(vEmail)+'&vCPCode='+encodeURIComponent(vCPCode)+'&vsQno='+encodeURIComponent(vsQno)+'', 				
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
			 // else
			 // {
				//alert('Value cannot be left blank');
			//  }		
		 

        
		}
		
function AddQuestionerforCHK(vQno,vQtxt,vSubtitle,vSelOption,vsRank,vsComments,vsQno,vChkName) {	 

//alert(vsQno);
  
 var vfName =  $("#txtFirstName").val();
	 var vlName = $("#txtLastName").val();
	  var vEmail = $("#txtEmail").val();	  
	   var vCPCode = $("#txtCpcode").val();	   
	   var vRank;
	   if (vsRank != '0')
	   {	   
	     vRank = $("#"+vsRank).val();
       }	
       else{
	   vRank ='0'
	   }	   
	 
	 var vComments = vsComments.replace("'", "‘");

  
  var vChkNameval
  // var vcpCode = cpcode;
	// var vMCPcode = mcpcode;
	 
    // var vtxtRval = $("#Rank"+vcpCode).val();
	// var vtxtRtype = "Rtype" + vcpCode;	              
	// var varqualitative=  $('input[id="exampleRadios21"]:checked')
	//alert (varqualitative);
	
	if($("#"+vChkName).is(":checked"))
	{
	  vChkNameval="checked";
	}
	else
	{
	  vChkNameval="unchecked";
	}
	//alert(vChkNameval);
	// var vtxtRtype=  $('input[id='+vtxtRtype+']:checked').val(); 
	// alert(vtxtRtype);
	 // alert(vtxtRval);
	//alert("Data Saved");
		if (vQtxt != null && vQtxt != '' && vQno != null && vQno != '')
		  {  
			// alert(vtxtRval);
			 $.ajax({
				url: "Ajax_AddDEIQuestionerCHK.asp",
				type: "POST",
				data:'vQno='+encodeURIComponent(vQno)+'&vQtxt='+encodeURIComponent(vQtxt)+'&vSubtitle='+encodeURIComponent(vSubtitle)+'&vSelOption='+encodeURIComponent(vSelOption)+'&vRank='+encodeURIComponent(vRank)+'&vComments='+encodeURIComponent(vComments)+'&vfName='+encodeURIComponent(vfName)+'&vlName='+encodeURIComponent(vlName)+'&vEmail='+encodeURIComponent(vEmail)+'&vCPCode='+encodeURIComponent(vCPCode)+'&vsQno='+encodeURIComponent(vsQno)+'&vChkNameval='+encodeURIComponent(vChkNameval)+'', 				
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
			 // else
			 // {
				//alert('Value cannot be left blank');
			//  }		
		 

        
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
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

	
	<script type="text/javascript">
	function Redirect(){
	<%
		
		
		
			if (((trim(Request("chksearch"))="Search by keyword or Company") or (trim(Request("chksearch"))="Only Report Title")) and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("showsearchNew.asp?search="&Request("search"))
			End if 

			if ((trim(Request("chksearch"))="Company Names") and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("ShowCompaniesList.asp?search="&Request("search")&"&PageView=Show")
				
			End if 
		
	%>
	}
	
	function callsubmit()
	{
		alert ("Thank you. Your data has been submitted successfully")
	}
	</script>
	 
				  
<%
code =request("code")
%>
<!-- Categories for home page Start -->

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
                                <div class="show  my-0 w-100 p-0" id="survey_template">

                                    <!---BEGIN:HEADING-->
                                    <div class="position-relitive">
                                            <div class="row text-primary  w-100 pb-0 mb-0 text-center mt-0" id="survey_title">
                                                    <h2 class="mt-0 px-3 p-0">CARBON FOOTPRINT</h2>
													<h3 class="font-weight-bolder line-height-normal">A StrategyR Executive Survey</h3>
													
                                            </div>
                                            <!--h3 class="d-block w-xl-95 w-lg-95 w-md-100 w-sm-100 w-100 mx-auto mt-0 mb-2 p-2 " style="font-style: italic; line-height: normal; font-size: 15px !important;">Privacy - Participants’ identities are never disclosed. Analyses by industry, rankings by company, and related trends and stats are published.
                                            </h3-->
                                                        </h3>
                                            <hr/>

                                            <!---QUESTION START HERE-->
                                            <div class="mt-2 w-100">
                                                
                                                <div class="row mb-2 w-lg-85 w-xl-85 w-md-100 w-sm-100 w-100 mx-auto">

                                                    <p class="  mb-2">
                                                        The world today stands at a crossroads. A low carbon future is our only hope for preventing a catastrophic biodiversity collapse. Corporates are very much a vital part of the solution to climate crisis as they are a problem. A disproportionately large number of people believe that not enough is being done by industries and their stakeholders to curb emissions. It is time for companies to start talking about solving their emission problems and do a bit more to minimize their environmental impact. Benefits of managing carbon footprint are numerous and “sustainability” is more than just a buzzword in today’s business world. That said, how many companies are actually integrating sustainability principles into their business?   What companies really think about business sustainability and how it impacts their short- and long-term value creation? What executives think about the effectiveness of their carbon footprint management programs? How educated, engaged and involved are employees in a company’s sustainability goals? How do company measure, monitor their carbon footprint and set goals for improvement? How real is the problem of greenwashing? Your responses will help us find out.
        
                                                    </p>
                                                    <p class="  mb-2">GIA’s Executive Insights Campaign evokes creative solutions to complex problems and presents solutions through a dynamic virtual community of domain experts. The survey program is designed to help companies understand how their commitment to reduce emissions compares with their actual environmental footprint. By capturing employee views, opinions, and perspectives on the Who, What, When Where, Why and How’s of carbon footprint and its management in companies, the survey shares ideas on how mitigation strategies can be made more meaningful and impactful.    </p>
                                                    <p class="  mb-2">Enterprise executives are invited to participate in our ongoing survey of this trending topic of great interest. Our survey results are published in a comprehensive quarterly report. More than 600K executives are engaged from about 72K companies worldwide.  Participants are offered complimentary trending data, influencer insights, and an executive summary of our study findings. Participants also receive a 20% discount on annual subscription to our program which includes quarterly published reports.   </p>
        
                                                    <p class="mb-2 font-weight-bold mt-3"> Here’s How You Will Benefit </p>
        
                                                    <ul class="forteen columns text-left gia_list_display mb-0 ml-3">
                                                        <li>Self report your goals, objectives, experiences and share objective information and subjective views and opinions in the context of sustainability and carbon footprint management. Participating in the survey will help you reflect on your experience to see patterns and opportunities for learning you may have missed. </li>
                                                        <li>Access our survey report and discover new curated insights shared by
                                                            corporate leaders & domain experts and use them to shape your
                                                            priorities.</li>
                                                        <li>Access our survey report and discover new curated insights shared by corporate leaders & domain experts and use them to shape your priorities.
                                                        </li>
                                                        <li>Find out what’s hard to achieve and why and how successful companies on track to meet their carbon-emission-reduction targets got there.</li>
                                                        <li>Be inspired to infuse new vigor into your carbon sequestration strategies and get answers to questions you may confront along your sustainability journey as an organization.</li>
                                                        <li>View & track all influencers in this space. </li>
                                                        <li>Read trending news, stories and updates.  
                                                        </li>
                                                        <li>Access audio and video transcripts from hundreds of influencer interviews, speeches, podcasts, open table conferences and more. 
                                                        </li>
                                                    </ul>
        
                                                  
                                                </div>
                        

                                                <div class="row mb-0">
                                                    <div id="survey_dash_board">
                                                        
                                                        <div class="d-flex justify-content-center">
                        
                                                            <div class="text-center  dashboard_block ">
                                                                <img src="https://www.strategyr.com/chat_page_icon/doman-01.svg" class="img_icon"/>
                                                                <h5>Outreach</h5>
                                                                <div class="d-flex justify-content-center w-100 border-top">
                                                                <h6>2734  </h6>
                                                                <span class="asterisk">*</span>
                                                                </div>
                                                            </div>
                        
                                                            <div class="text-center  dashboard_block">
                                                                <img src="https://www.strategyr.com/chat_page_icon/Competitors.svg" class="img_icon"/>
                                                                <h5>Companies</h5>
                                                               
                                                                <div class="d-flex justify-content-center w-100 border-top">
                                                                    <h6>7561  </h6>
                                                                    <span class="asterisk">*</span>
                                                                    </div>
                                                            </div>
                        
                                                            <div class="text-center  dashboard_block">
                                                                <img src="https://www.strategyr.com/chat_page_icon/unique-01.svg" class="img_icon"/>
                                                                <h5>Responses</h5>
                                                                <div class="d-flex justify-content-center w-100 border-top">
                                                                    <h6>582  </h6>
                                                                    <span class="asterisk">*</span>
                                                                    </div>
                                                            </div>
                                                            
                                                        </div>    
                                                        
                                                    </div>
                        
                        
                                            </div>
												
													<div class="row">                                                    
                                                            <div class="w-100 ">
                                                               
                                                                
                                                                <span class="d-flex flex-md-row flex-sm-row  justify-content-center mt-0 mt-lg-2 mt-md-0 mt-sm-0">
																<%if session("EID") <>"" then%>
																<a href="Influencer_CARBON_FOOTPRINT.asp" style="color:#fff!important; font-weight:600" class="rounded-0    btn_type_03 "  type="submit"  name="btnsubmit" value="OK"  >SURVEY</a>
																<%else%>
																<a href="https://www.strategyr.com/LoginRepeat.asp" style="color:#fff!important; font-weight:600" class="rounded-0     btn_type_03 "    type="submit"  name="btnsubmit" value="OK"  >SURVEY</a>
																<%end if%>
																
																<%if session("EID") <>"" then%>
																<a href="javascript:void(0)"   style="color:#fff!important; font-weight:600"  class="rounded-0    btn_type_03 " type="submit"  name="btnsubmit" value="OK"  >TRENDS</a>
																<%else%>
																<a href="https://www.strategyr.com/LoginRepeat.asp" style="color:#fff!important; font-weight:600" class="rounded-0     btn_type_03 "  type="submit"  name="btnsubmit" value="OK"  >TRENDS</a>
																<%end if%>
															
																<%if session("EID") <>"" then%>
																<a href="https://www.strategyr.com/Survey_Influencers.asp?stype=<%=request("stype")%>" style="color:#fff!important; font-weight:600" class="rounded-0     btn_type_03 " type="submit"  name="btnsubmit" value="OK"  >INFLUENCERS</a>
																<%else%>
																<a href="https://www.strategyr.com/LoginRepeat.asp" style="color:#fff!important; font-weight:600" class="rounded-0     btn_type_03 "  type="submit"  name="btnsubmit" value="OK"  >INFLUENCERS</a>
																<%end if%>
															
																<a href="https://www.strategyr.com/market-report-carbon-footprint-forecasts-global-industry-analysts-inc.asp" style="color:#fff!important; font-weight:600;" class="rounded-0     btn_type_03 "  type="submit"  name="btnsubmit" value="OK" style="background: #23B14D !important;"  >REPORT</a>
																
																</span>
                                                             
                                                            </div> 
                                                    </div>

                                                    <div class="row w-lg-85 w-xl-85 w-md-100 w-sm-100 w-100 mx-auto">
                                                        <span class="text-primary font-weight-bold">*</span> Stats are ongoing and dynamic </span><br/>
                                                        
                                                            <span class="text-danger">*</span> <a href="LoginRepeat.asp" class="font-weight-bold">Login</a> <span class="text-dark">to view what's trending, influencer insights and to participate in our ongoing survey.</span>
                                
                                                        
                                                        
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

</div><!-- Wrapper / End -->




<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="scripts/jquery.range.js"></script>
<script>
    $('.single-slider').jRange({
        from:1,
        to: 10,
        step: 0.5,
        scale: ['1','|','2','|','3','|','4','|','5','|','6','|','7','|','8','|','9','|','10'],
        format: '%s',
        width:300,
        showLabels: true,
        snap: true,
      
    });
	
	$('.single-slider27, .single-slider25 .single-slider23').jRange({
        from:1,
        to: 10,
        step: 0.5,
        scale: ['1','|','2','|','3','|','4','|','5','|','6','|','7','|','8','|','9','|','10'],
        format: '%s',
        width:300,
        showLabels: true,
        snap: true,
      
    });

</script>

<script>
    $('[name="collapseGroup1"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse1').collapse('show')
    }else{
        $('#collapse1').collapse('hide')
    }
    });

    $('[name="collapseGroup2"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse2').collapse('show')
    }else{
        $('#collapse2').collapse('hide')
    }
    });

    $('[name="collapseGroup3"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse3').collapse('show')
    }else{
        $('#collapse3').collapse('hide')
    }
    });

    $('[name="collapseGroup4"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse4').collapse('show')
    }else{
        $('#collapse4').collapse('hide')
    }
    });

    $('[name="collapseGroup5"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse5').collapse('show')
    }else{
        $('#collapse5').collapse('hide')
    }
    });

    $('[name="collapseGroup6"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse6').collapse('show')
    }else{
        $('#collapse6').collapse('hide')
    }
    });

    $('[name="collapseGroup7"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse7').collapse('show')
    }else{
        $('#collapse7').collapse('hide')
    }
    });

    $('[name="collapseGroup8"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse8').collapse('show')
    }else{
        $('#collapse8').collapse('hide')
    }
    });

    $('[name="collapseGroup9"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse9').collapse('show')
    }else{
        $('#collapse9').collapse('hide')
    }
    });

    $('[name="collapseGroup10"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse10').collapse('show')
    }else{
        $('#collapse10').collapse('hide')
    }
    });

    $('[name="collapseGroup11"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse11').collapse('show')
    }else{
        $('#collapse11').collapse('hide')
    }
    });

    $('[name="collapseGroup12"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse12').collapse('show')
    }else{
        $('#collapse12').collapse('hide')
    }
    });


    $('[name="collapseGroup13"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse13').collapse('show')
    }else{
        $('#collapse13').collapse('hide')
    }
    });


    $('[name="collapseGroup14"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse14').collapse('show')
    }else{
        $('#collapse14').collapse('hide')
    }
    });


    $('[name="collapseGroup15"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse15').collapse('show')
    }else{
        $('#collapse15').collapse('hide')
    }
    });


    $('[name="collapseGroup16"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse16').collapse('show')
    }else{
        $('#collapse16').collapse('hide')
    }
    });


    $('[name="collapseGroup17"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse17').collapse('show')
    }else{
        $('#collapse17').collapse('hide')
    }
    });


    $('[name="collapseGroup18"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse18').collapse('show')
    }else{
        $('#collapse18').collapse('hide')
    }
    });


    $('[name="collapseGroup19"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse19').collapse('show')
    }else{
        $('#collapse19').collapse('hide')
    }
    });


    $('[name="collapseGroup20"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse20').collapse('show')
    }else{
        $('#collapse20').collapse('hide')
    }
    });


    $('[name="collapseGroup21"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse21').collapse('show')
    }else{
        $('#collapse21').collapse('hide')
    }
    });


    $('[name="collapseGroup22"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse22').collapse('show')
    }else{
        $('#collapse22').collapse('hide')
    }
    });


    $('[name="collapseGroup23"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse23').collapse('show')
    }else{
        $('#collapse23').collapse('hide')
    }
    });

    $('[name="collapseGroup24"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse24').collapse('show')
    }else{
        $('#collapse24').collapse('hide')
    }
    });


    $('[name="collapseGroup25"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse25').collapse('show')
    }else{
        $('#collapse25').collapse('hide')
    }
    });

    $('[name="collapseGroup26"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse26').collapse('show')
    }else{
        $('#collapse26').collapse('hide')
    }
    });


    $('[name="collapseGroup27"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse27').collapse('show')
    }else{
        $('#collapse27').collapse('hide')
    }
    });

    $('[name="collapseGroup28"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse28').collapse('show')
    }else{
        $('#collapse28').collapse('hide')
    }
    });

    $('[name="collapseGroup29"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse29').collapse('show')
    }else{
        $('#collapse29').collapse('hide')
    }
    });

    $('[name="collapseGroup30"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse30').collapse('show')
    }else{
        $('#collapse30').collapse('hide')
    }
    });

    $('[name="collapseGroup31"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse31').collapse('show')
    }else{
        $('#collapse31').collapse('hide')
    }
    });

    $('[name="collapseGroup32"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse32').collapse('show')
    }else{
        $('#collapse32').collapse('hide')
    }
    });

    $('[name="collapseGroup33"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse33').collapse('show')
    }else{
        $('#collapse33').collapse('hide')
    }
    });

    $('[name="collapseGroup34"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse34').collapse('show')
    }else{
        $('#collapse34').collapse('hide')
    }
    });

    $('[name="collapseGroup35"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse35').collapse('show')
    }else{
        $('#collapse35').collapse('hide')
    }
    });

    $('[name="collapseGroup36"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse36').collapse('show')
    }else{
        $('#collapse36').collapse('hide')
    }
    });

    $('[name="collapseGroup37"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse37').collapse('show')
    }else{
        $('#collapse37').collapse('hide')
    }
    });

    $('[name="collapseGroup38"]').on('change', function(){  
    if($(this).val()  === "yes"){
        $('#collapse38').collapse('show')
    }else{
        $('#collapse38').collapse('hide')
    }
    });


</script>



<script>
    var windowWidth = $(window).width(); 
     if(windowWidth <= 480){ 
     //Means the screen is mobile add a class 
        $(".slider-container").removeAttr("style");

     } 
     else{ 
     

     } 
    $(".single-slider").removeAttr("style");
    </script>




	<script>
    $('a.submit_model_button').click(function(event) {
    $("#submit_model").modal({
      fadeDuration: 250,
      clickClose: false,    
    });
    return false;
  });
    </script>

</body>
</html>