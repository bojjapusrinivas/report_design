
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]>
<!-->
<html lang="en">
<!--<![endif]-->
<%
get_col_email_string = ""
If trim(session("Collborate_Email_ID"))<>"" Then
	get_col_email_string = "&Email_ID="&trim(session("Collborate_Email_ID"))&""
End If
%>
<head>
    <!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8">
    <title>Market Research Report Collections - StrategyR.com - Global Industry Analysts, Inc.</title>
    <!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
    <!-- CSS
================================================== -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/gia.css">
    <link rel="stylesheet" href="css/colors/blue.css" id="colors">
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel='stylesheet' href="css/all-ie-only.css" />
    <link rel='stylesheet' href="css/tri_page.css" />
    <link rel='stylesheet' href="css/gia_switches.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/wedges_effect.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <link rel="stylesheet" href="css/simulator_styles2.css" />
    <link rel="stylesheet" href="css/input_style.css" />	
    <link rel="stylesheet" href="css/example-styles.css" />
	<link rel="stylesheet" href="css/labels.css" />
    <!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <!--[if IE]>
	<link rel="stylesheet" type="text/css" href="all-ie-only.css" />
<![endif]-->
    <!-- Java Script
================================================== -->
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/jquery.selectnav.js"></script>
    <script src="scripts/jquery.modernizr.js"></script>
    <script src="scripts/jquery.easing.1.3.js"></script>
    <script src="scripts/jquery.contact.js"></script>
    <script src="scripts/jquery.isotope.min.js"></script>
    <script src="scripts/custom.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
   
		<style>
			@media only screen and (max-width: 479px){
				.pricing_impact	{
						width: 95% !important;
					}

			}

		</style>


    <!--- accordion2 script ---->
	<script>
$(".coll_btn").click(function() {
        $(this).parents(".coll_block").find(".pannel").slideToggle();
		 $(this).parents(".coll_block").find("span").toggleClass("active");
		 //$(this).parents(".coll_block").find("span").toggleClass("ui-accordion-icon");
		 $(this).parents(".coll_block").find("coll_alink").addClass("active");
		 $(this).parents(".coll_block").find("button").toggleClass("active");
		 $(this).parents(".coll_block").toggleClass("border_shadow");
		 
    });
	
	$(".compnay_col_close").click(function() {
		$(this).parents(".coll_block").hide;
	});
	
	$(".other_research_btn").click(function(){
		$("#resea_indu").toggle()
	});
	
	$("#resea_indu ul li").click(function(){
		$("#resea_indu_table").css("display","block");
	});
	
				function SubitQuestionnaire()
				{ 
                   //window.location.href = "../GIA_Questionnaire_Final.asp";			 

				   
				}
  </script>


  <script>
function Add_Ancillaries2(vSegment,vRegion,vYeartype,VgetData,vpageLoopVal)
		{
		
		// var vtxtRegionVal = $("#AddNewCountry"+RegionName).val();
	     var vGiaCode = $('input[id="txtGiaCode"]').val();
	     var vencID = $('input[id="txtencID"]').val();
		 var vUnites = $('input[id="MARKET_MEASURE_USD"]:checked').val();
		 var vCurrency = $('input[id="MARKET_MEASURE_UNITS"]:checked').val();
		 vpageLoopVal=vpageLoopVal+1
			<%if maxpageloopval>=vpageLoopVal then%>
			window.location.href = "https://www.strategyr.com/InfluencerModule.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"&type=submit";
			<%else%>
			window.location.href = "https://www.strategyr.com/Ancillaries_2.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"&pageLoopVal="+encodeURIComponent(vpageLoopVal)+"&gregion="+encodeURIComponent(vRegion)+"&stype="+encodeURIComponent(vSegment)+"&YearType="+encodeURIComponent(vYeartype)+"&getDATA="+encodeURIComponent(VgetData)+"&type=submit";
			<%end if%>
		}	
	
	function toggle() {
		  //if (document.getElementById("REGION").value != "")
		 // {
		   // document.getElementById("DDlSegmentsList").value = "";
		 // }						  
		  document.forms["frmadd"].submit();
}


 function AddMultipleRecordstoDB(textIdentity,region,segid,units,stYear,enYear)
  {	
 // alert('hi');
     var vGiaCode = document.getElementById("txtGiaCode").value;
	 var vencID = document.getElementById("txtencID").value;	 
	 //var vCurrencyExchangeRate = $("#TXTCurrencyExchangeRate").val();
	 var vCurrencyExchangeRate = $('input[id="TXTCurrencyExchangeRate"]').val();
	 var vCurrencyName = $('input[id="TXTCurrencyName"]').val();
	 var vCurrencyUnits = $('input[id="TXTCurrencyUnits"]').val();
	 //<input type="hidden" id="TXTCurrencyUnits" name="TXTCurrencyUnits" value="<%=Currency_Units%>">
	//CurrencyUnits
	 
	 //alert (vCurrencyExchangeRate);
	// alert (vCurrencyName);
	 //<input type="hidden" name="TXTCurrencyName" value="<%=Currency_Name%>">
	 //<input type="hidden" name="TXTCurrencyExchangeRate" value="<%=Currency_Exchange_Rate%>">
	 // alert(stYear);
	 // alert(enYear);
	 // enYear = 2013;
	 for (year = stYear; year < enYear; year++) 
	 {
	// alert(year);
      var vtxtVal = $("#txt"+textIdentity+year).val();
	  var vtxtcagrVal = $("#txtcagr"+textIdentity+year).val();
	  var vtxtUNITSVal = $("#txtUNITS"+textIdentity+year).val();
	  var vtxtcagrUNITSVal = $("#txtcagrUNITS"+textIdentity+year).val();
	  // alert(vtxtVal);
	   //  alert(vtxtcagrVal);
		//  alert(vtxtUNITSVal);
		 //  alert(vtxtcagrUNITSVal);
	  
			 if (((vtxtVal!="") && (vtxtVal!==undefined))  || ((vtxtcagrVal!="") && (vtxtcagrVal!==undefined) ) || ((vtxtUNITSVal!="")&&(vtxtUNITSVal!==undefined)) || ((vtxtcagrUNITSVal!="")&&(vtxtcagrUNITSVal!==undefined)))
			 {
			   if ((vtxtcagrVal=="") || (vtxtcagrVal==" "))
			   {
			    vtxtcagrVal=0
			   }
			    if((vtxtVal=="") || (vtxtVal==" "))
			   {
			    vtxtVal=0
			   }
			     if((vtxtUNITSVal=="") || (vtxtUNITSVal==" "))
			   {
			    vtxtUNITSVal=0
			   }
			     if((vtxtcagrUNITSVal=="") || (vtxtcagrUNITSVal==" "))
			   {
			    vtxtcagrUNITSVal=0
			   }
			   
			 $.ajax({
				url: "Ajax_AddGIA_Research_Feedback_Data.asp",
				type: "POST",
				data:'vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&vregion='+encodeURIComponent(region)+'&vyear='+encodeURIComponent(year)+'&vsegid='+encodeURIComponent(segid)+'&vunits='+encodeURIComponent(units)+'&vtxtVal='+encodeURIComponent(vtxtVal)+'&vtxtcagrVal='+encodeURIComponent(vtxtcagrVal)+'&vtxtUNITSVal='+encodeURIComponent(vtxtUNITSVal)+'&vtxtcagrUNITSVal='+encodeURIComponent(vtxtcagrUNITSVal)+'&vCurrencyExchangeRate='+encodeURIComponent(vCurrencyExchangeRate)+'&vCurrencyName='+encodeURIComponent(vCurrencyName)+'&vCurrencyUnits='+encodeURIComponent(vCurrencyUnits)+'', 				
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
			  /*else
			  {
				alert('Value cannot be left blank');
			  }	*/
	  }
    alert("Data Updated Sucessfully");
  }
  
  function addToDatabaseShares(fname)
  {	 
	 // var vrelevetVal = $('input[id="CompanyRelevCP-101284"]:checked').val();
	  var vrelevetVal =  $('input#CompanyRelev' +fname).prop('checked');
	  var vM2027Share = $("#M2027Share"+fname).val();
	  	var vM2021Share = $("#M2021Share"+fname).val();
	 //  var vplayerVal =  $('input#Player_' +fname).prop('checked');
	   var vplayerVal= $("#Player_"+fname).val();   // $('input#Player_' +fname).prop('checked'); 
	 // alert(vplayerVal);
	  if ((vrelevetVal == false)|| ((vM2027Share=="") || (vM2021Share==""))){
		alert("Please Check /Add Relevent Date.");
	  }
	  else 
	  { alert("Data Updated Sucessfully");}
	// 
	//  var vrelevetVal = $('input[id="CompanyRelev"+fname]:checked').val();
	
	// alert (vSegmentType);			 
	// alert('Values cannot be left blank');
			 

        
  }
  
  function addPriceTrends(pageLoopVal,maxpageloopval)
  {
  
	 var vGiaCode = document.getElementById("txtGiaCode").value;
	 var vencID = document.getElementById("txtencID").value;
	 var varqualitative=  $('input[id="qualitative"]:checked').val(); 
	
	 //var varSignificant20GNP = $('input[id="Significant20GNP"]:checked').val();
	 //var varSignificant20GNP_Val = $("#Significant20GNP_Val").val();
	 // alert($('#PricingTiersHigh_Val').val().trim().length);
	 //alert(varqualitative);
	 var v_PricingTiersHigh =$('input[id="PricingTiersHigh"]:checked').val();
	 var PricingTiersHigh_Val=$("#PricingTiersHigh_Val").val();
	 var v_PricingTiersLow=$('input[id="PricingTiersLow"]:checked').val();
	 var PricingTiersLow_Val=$("#PricingTiersLow_Val").val();
	//alert(v_PricingTiersHigh);
	
	/* if (parseInt($("#PricingTiersHigh_Val").val().trim().length) <= 0 ) 
	 {
	   PricingTiersHigh_Val= 0 ;
	 }	
	  // alert("hTi");
	 if ( parseInt($("#PricingTiersLow_Val").val().trim().length) <= 0 )
	 {
	  PricingTiersLow_Val= 0 ;
	 }	*/
	PricingTiersHigh_Val=0;
	 PricingTiersLow_Val=0;
	 //alert(v_PricingTiersLow);
	 //alert(PricingTiersLow_Val);
	 
	   var varqualitative_sign;
	    var varqualitative_val;
		
	   if (varqualitative == "Significant20")
	   {
	     varqualitative_val = $("#Significant20GNP_Val").val();
		 varqualitative_sign = $('input[id="Significant20GNP"]:checked').val();
	   }
	   else if (varqualitative == "High10_20")
	   {
	     varqualitative_val = $("#High1020GNP_Val").val();
		 varqualitative_sign = $('input[id="High1020GNP"]:checked').val();
	   }
	   else if (varqualitative == "Moderate5_9")
	   {
	     varqualitative_val = $("#Moderate5_9NP_Val").val();
		 varqualitative_sign = $('input[id="Moderate5_9NP"]:checked').val();
	   }
	    else if (varqualitative == "low5")
	   {
	     varqualitative_val = $("#LowNP").val();
		 varqualitative_sign = $('input[id="LowNP_Val"]:checked').val();
	   }	  
	   
	  // alert(varqualitative_val);
	  // alert(varqualitative_sign);
	 // if(varqualitative_val.length <= 0 )
	// {
	  // varqualitative_val= 0 ;
	// }	
	   
	 var qua2021=$('input[id="YOY20-21NP"]:checked').val();
	 var qua2021_val=$("#YOY20-21NP_val").val();
	 
	 if ( $("#YOY20-21NP_val").val().trim().length <= 0 )
	 {
	    qua2021_val= 0 ;
	 }	  
	 var qua2122=$('input[id="YOY21-22NP"]:checked').val();
	 var qua2122_val=$("#YOY21-22NP_Val").val();
	 
	 if ( $("#YOY21-22NP_Val").val().trim().length <= 0 )
	 {
	  qua2122_val= 0 ;
	 }
	 
	   //alert(qua2122_val); 
	  // alert(qua2122);
	  
	 var qua2223=$('input[id="YOY22-23NP"]:checked').val();
	 var qua2223_val=$("#YOY22-23NP_Val").val(); 	

   if($("#YOY22-23NP_Val").val().trim().length <= 0 )
	 {
	   qua2223_val= 0 ;
	 }	 
	  
	 var qua2324=$('input[id="YOY23-24NP"]:checked').val();
	 var qua2324_val=$("#YOY23-24NP_val").val(); 	
	 
	 if($("#YOY23-24NP_val").val().trim().length <= 0 )
	 {
	   qua2324_val= 0 ;
	 }	
	  
	 var qua2425=$('input[id="YOY24-25NP"]:checked').val();
	 var qua2425_val=$("#YOY24-25NP_Val").val();
	 
	 if($("#YOY24-25NP_Val").val().trim().length <= 0 )
	 {
	   qua2425_val= 0 ;
	 }	
	 
	 var qua2526=$('input[id="YOY25-26NP"]:checked').val();
	 var qua2526_val=$("#YOY25-26NP_Val").val();
	 
	 if($("#YOY25-26NP_Val").val().trim().length <= 0 )
	 {
	   qua2526_val= 0 ;
	 }	
	 
	 var qua2627=$('input[id="YOY26-27NP"]:checked').val();
	 var qua2627_val=$("#YOY26-27NP_Val").val();
	 
	 if($("#YOY26-27NP_Val").val().trim().length <= 0 )
	 {
	   qua2627_val= 0 ;
	 }	
	 		  
	 var vcomments=$("#PriceTrendscomments").val();
	 //alert(vcomments);
	 
	//alert($("#YOY26-27NP_Val").val().trim().length);
	//alert(varqualitative_sign);
	
	
	 
	if ((typeof(varqualitative) !== "undefined") && (typeof(varqualitative_sign) !== "undefined") && (varqualitative_val.trim().length > 0 ))
	 {
	// alert("hi");
		$.ajax({
				url: "Ajax_AddpricingTrends_Data.asp",
				type: "POST",
				data:'PricingTiersLow_Val='+encodeURIComponent(PricingTiersLow_Val)+'&v_PricingTiersLow='+encodeURIComponent(v_PricingTiersLow)+'&PricingTiersHigh_Val='+encodeURIComponent(PricingTiersHigh_Val)+'&v_PricingTiersHigh='+encodeURIComponent(v_PricingTiersHigh)+'&vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&varqualitative='+encodeURIComponent(varqualitative)+'&varqualitative_sign='+encodeURIComponent(varqualitative_sign)+'&varqualitative_val='+encodeURIComponent(varqualitative_val)+'&qua2021='+encodeURIComponent(qua2021)+'&qua2122='+encodeURIComponent(qua2122)+'&qua2223='+encodeURIComponent(qua2223)+'&qua2324='+encodeURIComponent(qua2324)+'&qua2425='+encodeURIComponent(qua2425)+'&qua2526='+encodeURIComponent(qua2526)+'&qua2627='+encodeURIComponent(qua2627)+'&qua2021_val='+encodeURIComponent(qua2021_val)+'&qua2122_val='+encodeURIComponent(qua2122_val)+'&qua2223_val='+encodeURIComponent(qua2223_val)+'&qua2324_val='+encodeURIComponent(qua2324_val)+'&qua2425_val='+encodeURIComponent(qua2425_val)+'&qua2526_val='+encodeURIComponent(qua2526_val)+'&qua2627_val='+encodeURIComponent(qua2627_val)+'&vcomments='+encodeURIComponent(vcomments)+'', 				
				success: function(data){
				//divid.append(data);
				//alert(data);
				//alert("Data Updated Sucessfully");
				var vpageLoopVal= pageLoopVal; <%''=request("pageLoopVal")%>;//+1;
				//alert(maxpageloopval);
				//alert(vpageLoopVal);
				<%''if maxpageloopval=vpageLoopVal then%>
				<%''if 3=request("pageLoopVal") then%>
				if (vpageLoopVal>=maxpageloopval)
				{	
					window.location.href = "https://www.strategyr.com/InfluencerModule.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"<%=get_col_email_string%>&type=submit";
					}
				<%''else%>
				else{
					vpageLoopVal=parseInt(vpageLoopVal)+1;
                    //window.location.href = "https://www.strategyr.com/Ancillaries_2.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"&pageLoopVal="+encodeURIComponent(vpageLoopVal)+"&gregion="+encodeURIComponent(vRegion)+"&stype="+encodeURIComponent(vSegment)+"&YearType="+encodeURIComponent(vYeartype)+"&getDATA="+encodeURIComponent(VgetData)+"&type=submit";				
	               window.location.href = "Ancillaries_2.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"&pageLoopVal="+encodeURIComponent(vpageLoopVal)+"<%=get_col_email_string%>";
				   }
				<%''end if%>
				},
				error: function (xhr, ajaxOptions, thrownError) {
				alert(xhr.status);
				alert(thrownError);
				alert(xhr.responseText);
				}
			  });
		
	 }
	 else{	 
		alert("Please provide Pricing Impact data.");
	 }
	 
	 
  }
  
  function addMarketShares(varSegment,varRegion)
  {
	//alert ("HI");
	     var selectedVariants = '';
                $(":checked").each(function () {
                    selectedVariants = selectedVariants + ($(this).val()) + ",";
					//alert ($(this).val());
                });
				alert ("Companies market shares added "+varSegment + '-' +varRegion);				
				
  }
		
		function addData(year,textIdentity,region,segid,units) {	 

  // alert("hi");
 // alert(segid);
 //alert(year);
 //alert(region);
 
    var vGiaCode = document.getElementById("txtGiaCode").value;
	 var vencID = document.getElementById("txtencID").value;
	 
     var vtxtVal = $("#txt"+textIdentity+year).val();
	 var vtxtcagrVal = $("#txtcagr"+textIdentity+year).val();
	  var vtxtUNITSVal = $("#txtUNITS"+textIdentity+year).val();
	  var vtxtcagrUNITSVal = $("#txtcagrUNITS"+textIdentity+year).val();
	
			 if(vtxtVal!="")
			 {
			 $.ajax({
				url: "Ajax_AddGIA_Research_Feedback_Data.asp",
				type: "POST",
				data:'vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&vregion='+encodeURIComponent(region)+'&vyear='+encodeURIComponent(year)+'&vsegid='+encodeURIComponent(segid)+'&vunits='+encodeURIComponent(units)+'&vtxtVal='+encodeURIComponent(vtxtVal)+'&vtxtcagrVal='+encodeURIComponent(vtxtcagrVal)+'&vtxtUNITSVal='+encodeURIComponent(vtxtUNITSVal)+'&vtxtcagrUNITSVal='+encodeURIComponent(vtxtcagrUNITSVal)+'', 				
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
				alert('Value cannot be left blank');
			  }		
		 

        
		}
		
	function addNewRegion(RegionName){

	var vtxtRegionVal = $("#AddNewCountry"+RegionName).val();
	var vGiaCode = $('input[id="txtGiaCode"]').val();
	var vencID = $('input[id="txtencID"]').val();
	//undefined
	//alert (vtxtRegionVal);
	
		if((vtxtRegionVal!="") && (vtxtRegionVal!==undefined))
		{ 
			//alert (vtxtRegionVal);
			//alert (RegionName);
			///ReportCode = '"&trim(request("vGiaCode"))&"' and eNcID ='"&trim(request("vencID"))&"' and Country_Name ='"&trim(request("vRegion"))&"'" 
			$.ajax({
					url: "Ajax_AddGIA_Research_Feedback_Region.asp",
					type: "POST",
					data:'vRegion='+encodeURIComponent(RegionName)+'&Country_Name='+encodeURIComponent(vtxtRegionVal)+'&vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'', 		
					success: function(data){
					//alert(data);
					alert("Country Added Sucessfully");
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
			alert('Country not selected to be added to the region - '+RegionName);
		}
	
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

	</script>
</head>

<%	Response.Buffer = True
	Response.ExpiresAbsolute = 0
	
	session("security_code") = ""
	session("ReportCode") = ""
	'If trim(session("ReportCode"))="" Then
		session("ReportCode") = trim(request("code"))	
	'End If
	
	If Trim(request("encID"))<>"" then
		If session("security_code") ="" then
		   session("security_code") = Trim(request("encID"))
		End If
	Else
		session("security_code") = ""
	End If
		
	strReportTitle = trim(session("ReportTitle"))
	strReportCode = trim(session("ReportCode"))
	intRptID = trim(session("ReportID"))
Function SelectRadio(val1,val2)
 	IF trim(val1) = trim(val2) then
		SelectRadio = " Checked"
	else
		SelectRadio = ""
	End IF
END Function
	
'''IF Seeions expires log out to main screen'''''
IF trim(session("EID"))="" THEN
	''response.redirect "https://www.strategyr.com/GIA_Research_Program.asp?code="&Trim(request("code"))&"&SessOUT=True"
End If

If Trim(session("isMCP"))="" then
	If Trim(request("code"))<>"" Then
	  ''isMCPCnt = InStr("MCP-1001","-")
	 isMCPCnt = InStr(request("code"),"-")
	 If (isMCPCnt>0) then
		session("isMCP") = "Y"
	 Else
		session("isMCP") = "N"
	 End if
	''response.write session("isMCP")
	End If
End If	



%>
<!--#include file="adovbs.asp"-->
<!--#INCLUDE FILE="aspincludes/dbopen.asp" -->

<%
	DIM RPT_MCP_CODE
	RPT_MCP_CODE = ""
	Set Conn = Server.CreateObject("ADODB.Connection")
	Set RS = Server.CreateObject("ADODB.Recordset")
	Conn.Open DataSource

	
	If session("isMCP") = "N" then
		SQL = "SELECT * FROM MCPNewTopic WHERE NewCODE='" & session("ReportCode") & "' or code ='" & session("ReportCode") & "'"
	Else
		SQL = "SELECT * FROM MCPNewTopic WHERE newCODE='" & session("ReportCode") & "' or code ='" & session("ReportCode") & "'"
	End If
	''response.write sql
	RS.Open SQL, conn,1,2
	If Not RS.EOF Then
			giacode=Trim(RS("newcode"))
			strReportTitle = Trim(RS("title"))
			Companies_List = Trim(RS("companyNames"))
			CpCodes=Trim(RS("CPCodes"))
			region=Trim(RS("region"))
			''If session("isMCP") = "Y" Then
			  Segment_List = Trim(RS("Segments_Covered"))
			''End if
			session("ReportTitle") = (Trim(RS("title")))
			RPT_MCP_CODE = Trim(RS("code"))
			completed=Trim(RS("completed"))
	End If
	set RS = nothing
	set conn = Nothing
	session("giacode")=giacode
	
	intRptID = Trim(request("code"))
	code = Trim(request("code"))
	strReportTitle = trim((strReportTitle)) 
	''intReportCode = session("ReportCode") 
	CMP_SPLT = Split(Companies_List,";")
	
'response.write Companies_List
	
	
	If Trim(request("code"))<>"" Then
		If session("ReportCode") ="" then
		   session("ReportCode") = Trim(request("code"))		   
		End If
	Else
		session("ReportCode") = ""
	End If

	''''FE471CA7EA '''security_code

	If Trim(request("encID"))<>"" then
		If session("security_code") ="" then
		   session("security_code") = Trim(request("encID"))
		End If
	Else
		session("security_code") = ""
	End If

daydisplay=WeekDayName(Weekday(Now())) & ","
'''response.write trim(session("security_code"))
%>
<body id="simulator_page" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" id="landing_page">
    <!-- Wrapper / Start -->
    <div id="wrapper" class="bor-radius">
        <div id="top-line" style="box-shadow:none; height:5px;"> </div>
        <!-- Content
================================================== -->
        <!---BEGN REPORT TITLE--->
        <!---END REPORT TITLE--->
        <!---BEGIN:PAGE CONTENT--->
        <div class="page-content">
            <div class="container">
                <!---- BEGIN : HEADER SECTION ---->
                 <header>
                    <div class="row" style="margin-bottom:0px;">
                        <div class="logo_text px-4">
                            
							<img src="images/strategyr_logo.svg" class="strategyrR_logo text-center mx-auto" style="width:210px !important;">
							
                         </div>
                        <!--<div class="sixteen columns head_title_block text-center  d-flex justify-content-center">
                            <h2 style="font-weight:bold; color:#900;line-height: 23px;" class="mt-2 font-size-20"> <%=strReportTitle%>&nbsp; (<%=code%>)</h2>
                        </div>-->
                        <div class="mobile_display" style="text-align:center; width:100% !important"> <img src="https://www.strategyr.com/resize_img/sig_100.jpg" alt="GIA" class="logo signatrue_logo" style="width:90px; height:auto; margin:0 auto; padding-top:10px"> </div>
                    </div>
					<div class="row site_tag_line mx-4 mb-2 d-md-none d-sm-none">
						StrategyR is a trade mark of Global Industry Analysts, Inc. USA
					</div>
					<div class="row site_tag_line mx-4 mb-2 d-lg-none d-xl-none">
						A trade mark of Global Industry Analysts, Inc.
					</div>
                </header>
				<hr>
				<%title=strReportTitle%>
				<!--#INCLUDE FILE="newReportTitle_New1.asp" -->
                <!---- END : HEADER SECTION ---->
	
	<form name="frmadd" method="post" action="Ancillaries_2.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>&pageLoopVal=<%=Trim(request("pageLoopVal"))%>">	</form>		
		<!--#include file="Lables_new.asp"-->
		<!--#include file="module_menus.asp"-->
	<!--<div class="text-center py-2 font-weight-bold bg_light_gray mb-2 imodule"><a href="InfluencerModule.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>" target='New'>INFLUENCER</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="WorldBrandModule.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>" target='New'>CURATE WORLD BRANDS </a></div>-->
                <!---- BEGIN :CONTENT SSECTION ---->
                <!---Begin: Main Content--->
				
	<%    
		
	Dim Currency_Exchange_Rate
	Currency_Exchange_Rate = 1
	Function Selected(val1,val2)
	IF trim(val1) = trim(val2) then
		Selected = "Selected"
	else
		Selected = ""
	End IF
	END Function
	
	Function checked(val1,val2)
		IF trim(val1) = trim(val2) Then		
			checked = "checked"
		else
			checked = ""
		End IF
	END Function

	Function checked_STR_Working(val1,val2)    
		SplitVal=Split(val1,", ")
		For Each x In SplitVal
		''If Len(Trim(x))=Len(Trim(val2)) then
			If Instr(Trim(val2), Trim(x))>0 Then
				  checked_STR = "checked"			
			   ''else
				''checked_STR = ""
			End If	
		  ''End If 
	   next 
	END Function

	Function checked_STR(val1,val2)    
		SplitVal=Split(val1,", ")
		For Each x In SplitVal
		  SplitVal2=Split(val2,", ")
				For Each y In SplitVal2  
					   If Trim(y)=Trim(x)Then				
						  checked_STR = "checked"
						End if
				Next	  
		Next 
	END Function

	Set Conn = Server.CreateObject("ADODB.Connection")
			
	''Conn.Open DataSource
	SQLrptGIA="select topic,units,region_type,(select report_type  from gia_analytix.dbo.REPORTS_Params$ where gia_analytix.dbo.REPORTS_Params$.gia_no=gia_analytix.dbo.REPORTS_GIA$.gia_no) as reporttype,(select replace(reporting_level,'Data is reported at ','')  from gia_analytix.dbo.REPORTS_Params$ where gia_analytix.dbo.REPORTS_Params$.gia_no=gia_analytix.dbo.REPORTS_GIA$.gia_no) as reportLevel   from gia_analytix.dbo.REPORTS_GIA$ where gia_no='" & giacode & "'"
	''response.write SQLrptGIA
	Set RSAnalytics = Server.CreateObject("ADODB.Recordset")
	RSAnalytics.Open SQLrptGIA, DataSource
	If Not RSAnalytics.EOF Then
		MARKET_MEASURE=RSAnalytics("Units")
		region_type=RSAnalytics("region_type")
		RPT_Level = Trim(RSAnalytics("reportLevel"))
		report_type=Trim(RSAnalytics("reporttype"))
	end if
	''response.write MARKET_MEASURE & "    ----- " & RPT_Level
	set RSAnalytics=nothing
	''US$ Thousand
	''US$ Million
	''US$
	Dim SplitMarketANDvalue, Currency_Name
	
	''InStr(txt,"beautiful")
	If inStr(MARKET_MEASURE," ")>0 Then
		SplitMarketANDvalue = split(MARKET_MEASURE," ")
		Currency_Name = SplitMarketANDvalue(0)
		If trim(ucase(Currency_Name))="US$" Then
			Currency_Name = "US Dollar"
			currency_code = "USD"
		End If
		Currency_Units = SplitMarketANDvalue(1)
	Else
		Currency_Name = MARKET_MEASURE
		Currency_Units = ""
		currency_code = "USD"
	End If
	
	
	''response.write "Currency_Units = "&Currency_Units
	%>
	
	<%
		'''USER DATA RETRIEVAL
		''response.write "MARKET_MEASURE = "&MARKET_MEASURE
		SQLrptGIA="select *  from gia_analytix.dbo.GIA_Research_Feedback_Currency where ReportCode='" & giacode & "' and eNcID='"&Trim(request("encID"))&"'"
	
		Set RSAnalytics = Server.CreateObject("ADODB.Recordset")
		RSAnalytics.Open SQLrptGIA, DataSource
		If Not RSAnalytics.EOF Then
			Currency_Name = trim(RSAnalytics("Currency_Name"))
			Currency_Exchange_Rate = trim(RSAnalytics("to_USD_coversion"))
			Currency_Units = trim(RSAnalytics("Currency_Units"))
			currency_code=trim(RSAnalytics("currency_code"))
		end if
		set RSAnalytics=nothing
		''response.write SQLrptGIA
		
		
		'''''''**********************************************''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		'''''GET THE DATA FROM THE TABLE
		''''' SEGMENTS AND REGIONS DATA FROM THE Ancillaries_1 TABLE
		'''''''**********************************************''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		'''''''**********************************************''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		'''''GET THE DATA FROM THE TABLE
		''''' SEGMENTS AND REGIONS DATA FROM THE Ancillaries_1 TABLE
		'''''''**********************************************''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		Set Conn = Server.CreateObject("ADODB.Connection")
		Conn.Open Datasource7

		RecChkSQL = "SELECT * FROM Ancillaries_1 WHERE Code = '"&trim(giacode)&"' and eNcID ='"&trim(request("encID"))&"'"
 
	
		Set RecChkRS = Server.CreateObject("ADODB.Recordset")
		RecChkRS.Open RecChkSQL, Conn
		If Not RecChkRS.EOF Then
			segmentname = trim(RecChkRS("Segments"))
			cname = trim(RecChkRS("Regions"))
			Pricing_Tire=trim(RecChkRS("Pricing_Tire"))
			segmentname_Show = trim(RecChkRS("Segments"))
			cname_Show = trim(RecChkRS("Regions"))
		End If	 
		set Conn = Nothing
		
		'''response.write "segmentname = "&segmentname
		'''response.write "cname = "&cname
		
		'''''''If trim(Request("Email_ID")) is not null (This is a user who has been invited to finish the data
		If trim(Request("Email_ID"))<>"" Then
		
			Set Conn99 = Server.CreateObject("ADODB.Connection")
			Conn99.Open Datasource1
			
			RecChkSQL = "SELECT * FROM App_User_Collaborate WHERE Report_ID = '"&trim(giacode)&"' and eNcID ='"&trim(request("encID"))&"' and Email_ID='"&trim(Request("Email_ID"))&"'"
			 
			''
			Set RecChkRS = Server.CreateObject("ADODB.Recordset")
			RecChkRS.Open RecChkSQL, Conn99
			If Not RecChkRS.EOF Then
				
				segmentname = trim(RecChkRS("Segment_Name"))
				cname = trim(RecChkRS("Region_Name"))
				
				segmentname_Show = trim(RecChkRS("Segment_Name"))
				cname_Show = trim(RecChkRS("Region_Name"))
			End If	 
			Set RecChkRS = nothing
			set Conn99 = Nothing
		
		End If
		
		''response.write "segmentname = "&segmentname
		'''code=MCP-4107&encID=D8D387EA9&pageLoopVal=5&gregion=undefined&stype=undefined&YearType=undefined&getDATA=undefined&type=submit
		dim SegfinishTime, CNTSegVal, RegfinishTime, CNTRegVal, TotalFinishTime
		SegfinishTime = split(segmentname,",")
		CNTSegVal = ubound(SegfinishTime)+1
		
		RegfinishTime = split(cname,",")
		CNTRegVal = ubound(RegfinishTime)+1
		
		dim GTtimeValue
		GTtimeValue = 8
		
		TotalFinishTime = cdbl(GTtimeValue)*cdbl(CNTSegVal)*cdbl(CNTRegVal)
		
		Dim GTtotalLoops
		GTtotalLoops = cdbl(CNTSegVal)*cdbl(CNTRegVal)
	
		''' GET the LOOP count
		Dim SegmentLoopNo, CountyLoopNo, pageLoopVal
		SegmentLoopNo = 0
		CountyLoopNo = 0
		pageLoopVal = 1
		
		If trim(request("pageLoopVal"))="" then
			SegmentLoopNo = 0
			CountyLoopNo = 0
			pageLoopVal = 1
		Else
			pageLoopVal = trim(request("pageLoopVal"))		
		End If
		
		''response.write "pageLoopVal = "&pageLoopVal
		''' IF CNTSegVal = 3 (0,1,2), CNTSegVal = 4 (0,1,2,3)
		dim xValue
		xValue = 1
		for i = 0 to CNTSegVal-1		
			for m = 0 to CNTRegVal-1
				If (cint(xValue) = cint(pageLoopVal)) Then
				
					SegmentLoopNo = i
					CountyLoopNo = m
				End If
			xValue = xValue + 1
			Next		  
		Next
				
			
		''' GET CURRENT Segment name and Region NAME
		If instr(segmentname,",")>0 then
			CURRENTSegment = split(segmentname,",")
			segmentname_Current = CURRENTSegment(SegmentLoopNo)
		Else
			segmentname_Current = trim(segmentname)
		End If
		
		If instr(cname,",")>0 then
			CURRENTRegion = split(cname,",")
			cname_current = CURRENTRegion(CountyLoopNo)
		Else
			cname_current = trim(cname)
		End If

		
		%>
		<!--#include file="Ancillaries_submenu.asp"-->
                <main class="w-xl-85 w-lg-85 w-md-95 w-sm-100 mx-auto">
			        <div id="divid"></div>
                    <!----Begin:CURRENCY Section---->
                   
					<input type="hidden" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="<%=trim(ucase(Currency_Units))%>">
                                        <input type="hidden" name="USD_MEASURE" id="USD_MEASURE" value="<%=trim(ucase(currency_code))%>" checked=""> 
										<input type="hidden" id="TXTCurrencyName" name="TXTCurrencyName" value="<%=Currency_Name%>">
										<input type="hidden" id="TXTCurrencyExchangeRate" name="TXTCurrencyExchangeRate" value="<%=Currency_Exchange_Rate%>">
										<input type="hidden" id="TXTCurrencyUnits" name="TXTCurrencyUnits" value="<%=Currency_Units%>">
                   
                   
					<input type='textbox' id='txtGiaCode' name='txtGiaCode' size="12" value="<%=session("reportcode")%>" style="display:none">
								<input type='textbox' id='txtencID' name='txtencID' size="12" value="<%=request("encID")%>" style="display:none">
                    
               	
								</div>
				
					
                    <!----Begin: REGION/COUNTRY:--->
					
					
                    <!---MESSAGE---->
                    
					<section id="region_section" class="mt-0">
                      <div class="w-100 mt-0">
						<div id="main">
							<span class="d-flex  justify-content-center">
								<!--<button class="btn btn-gia-primary rounded-0 shadow m-2  " type="button" data-toggle="collapse" data-target="#collapseExample02" aria-expanded="flase" aria-controls="collapseExample"><small>MARKET SHARES</small></button>-->
								<!--<button class="btn btn-gia-primary rounded-0 shadow m-2  " type="button" data-toggle="collapse" data-target="#collapseExample01"  aria-expanded="flase" aria-controls="collapseExample"><small>PRICING TRENDS</small></button>-->
								 
								
							</span>
							<div class=" show my-3" data-parent="#main">
								<div class="w-100  text-center  modules_page_title text-center mt-0">
								<!--<div class=" w-100 text-center mt-2 mb-4"><h3 >PRICING MODULE</h3></div>-->
								
								<%
									  Set Conn = Server.CreateObject("ADODB.Connection")
												Conn.Open Datasource10
												 ''sno, code, encid, cpcode, Scale, type, email_id, date_created,Influencer_sno
												RecChkSQL = "SELECT * FROM Ancillaries_Pricing_Trends WHERE NewCode = '"&trim(request("code"))&"' and encID='"&trim(request("encID"))&"' and email_id='"&trim(session("EID"))&"'" 
											   '' response.write RecChkSQL
												Dim PricingTiersHigh_Val,v_PricingTiersHigh,v_PricingTiersLow,PricingTiersLow_Val,v_pricing_impact,v_simpact_value,v_simpact_percent,v_himpact_value,v_himpact_percent,v_mimpact_value,v_mimpact_percent,v_limpact_value,v_limpact_percent,v_YOY_value_20_21,v_YOY_Trend_20_21,v_YOY_value_21_22,v_YOY_Trend_21_22,v_YOY_value_22_23,v_YOY_Trend_22_23,v_YOY_value_23_24,v_YOY_Trend_23_24,v_YOY_value_24_25,v_YOY_Trend_24_25,v_YOY_value_25_26,v_YOY_Trend_25_26,v_YOY_value_26_27,v_YOY_Trend_26_27,v_Email_ID,v_date_created,v_peer_notes
												 v_pricing_impact=""
												v_simpact_value=" "
												v_simpact_percent=" "
												v_himpact_value=" "
												v_himpact_percent=" "
												v_mimpact_value=" "
												v_mimpact_percent=" "
												v_limpact_value=" "
												v_limpact_percent=" "
												v_YOY_value_20_21=" "
												v_YOY_Trend_20_21=" "
												v_YOY_value_21_22=" "
												v_YOY_Trend_21_22=" "
												v_YOY_value_22_23=" "
												v_YOY_Trend_22_23=" "
												v_YOY_value_23_24=" "
												v_YOY_Trend_23_24=" "
												v_YOY_value_24_25=" "
												v_YOY_Trend_24_25=" "
												v_YOY_value_25_26=" "
												v_YOY_Trend_25_26=" "
												v_YOY_value_26_27=" "
												v_YOY_Trend_26_27=" "
												v_Email_ID=" "
												v_date_created=" "
												v_peer_notes=" "
												v_PricingTiersHigh = " "
												PricingTiersHigh_Val=""
												v_PricingTiersLow=""
												PricingTiersLow_Val=""
												Set RecChkRS = Server.CreateObject("ADODB.Recordset")
												RecChkRS.Open RecChkSQL, Conn
												If Not RecChkRS.EOF Then
												    v_pricing_impact=RecChkRS("pricing_impact")
													
													if v_pricing_impact = "Significant20" then
													   v_simpact_value = RecChkRS("impact_value")
													   v_simpact_percent = RecChkRS("impact_percent")
													elseif v_pricing_impact = "High10_20" then
													   v_himpact_value = RecChkRS("impact_value")
													   v_himpact_percent = RecChkRS("impact_percent")
													elseif v_pricing_impact = "Moderate5_9" then
													   v_mimpact_value = RecChkRS("impact_value")
													   v_mimpact_percent = RecChkRS("impact_percent")
													elseif v_pricing_impact = "low5" then
													   v_limpact_value = RecChkRS("impact_value")
													   v_limpact_percent = RecChkRS("impact_percent")
													end if
													
													
													v_YOY_value_20_21 = RecChkRS("YOY_value_20_21")
													v_YOY_Trend_20_21 = RecChkRS("YOY_Trend_20_21")
													v_YOY_value_21_22 = RecChkRS("YOY_value_21_22")
													v_YOY_Trend_21_22 = RecChkRS("YOY_Trend_21_22")
													v_YOY_value_22_23 = RecChkRS("YOY_value_22_23")
													v_YOY_Trend_22_23 = RecChkRS("YOY_Trend_22_23")
													v_YOY_value_23_24 = RecChkRS("YOY_value_23_24")
													v_YOY_Trend_23_24 = RecChkRS("YOY_Trend_23_24")
													v_YOY_value_24_25 = RecChkRS("YOY_value_24_25")
													v_YOY_Trend_24_25 = RecChkRS("YOY_Trend_24_25")
													v_YOY_value_25_26 = RecChkRS("YOY_value_25_26")
													v_YOY_Trend_25_26 = RecChkRS("YOY_Trend_25_26")
													v_YOY_value_26_27 = RecChkRS("YOY_value_26_27")
													v_YOY_Trend_26_27 = RecChkRS("YOY_Trend_26_27")
													v_Email_ID = RecChkRS("Email_ID")
													v_peer_notes = RecChkRS("peer_notes")    
													v_PricingTiersHigh =RecChkRS("PT_High")
													PricingTiersHigh_Val=RecChkRS("PT_High_Value")
													v_PricingTiersLow=RecChkRS("PT_Low")
													PricingTiersLow_Val=RecChkRS("PT_Low_Value")												
												End If	 
												''response.write(v_impact_value)
												set Conn = Nothing
									
									%>
								 <%
										 '' response.write TRIM(lcase(Pricing_Tire)) & "GGGGGGGGGGGGGGGGGG"
										  if TRIM(lcase(Pricing_Tire)) ="yes" then%>
								<div class=" w-100 text-center mt-2"><h3 style=" color:#000; font-weight:700 ;letter-spacing: -1px; font-size:16px;">PRICING TIERS<a herf="javascript:void(0)" class='text-primary'  style="position: relative;">&nbsp;<i class="fa fa-info-circle info i5"  title="Product/Service/Solution Price Range"></i></a></h3></div>
								
									<div class="container">
									<div id="qualitative">
									<div class="row mx-0  mt-0 mb-2 px-lg-3 px-sm-0 px-md-2 px-xl-3">
									<div class=" w-lg-50 w-xl-50 w-md-75 w-sm-75 text-center mt-2 mx-auto">
                                          <div  class="  w-100  d-flex justify-content-start  flex-wrap">
											
											<div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 pt-1">
											 <div class="w-100 d-flex flex-xs-wrap">
                                              
                                                <span class="mr-2 w-xl-40 w-lg-40 w-md-100 w-sm-100 text-lg-right text-xl-right text-md-right text-sm-left pr-4 ">High</span>
												<span class="d-flex w-xl-60 w-lg-60 w-md-100 w-sm-100 text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">
                                                <input data-brackets-id="62784" type="radio" name="PricingTiersHigh" id="PricingTiersHigh" class="mt-1" <%=SelectRadio(v_PricingTiersHigh,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input class="mt-1" data-brackets-id="62784" type="radio" name="PricingTiersHigh" id="PricingTiersHigh" <%=SelectRadio(v_PricingTiersHigh,"Nagitive")%> value="Nagitive"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input type="text" name="PricingTiersHigh_Val" id ="PricingTiersHigh_Val"  maxlength="6" size="10" tabindex="3"  value="" class="textbox_border border p-1 simulator-input-text" onkeypress="return isNumberKey(event,this)" placeholder="######" style="height:22px;margin-right:3px; width:60px;">(US$)</span>
											</div>


                                            </div>
                                             <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 light_gray_responsive pt-1">
											 <div class="w-100 d-flex flex-xs-wrap">
                                               
                                                <span class="mr-2 w-xl-40 w-lg-40 w-md-100 w-sm-100 text-lg-right text-xl-right text-md-right text-sm-left pr-4">Low</span>
												<span class="d-flex w-xl-60 w-lg-60 w-md-100 w-sm-100 text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">
                                                <input data-brackets-id="62784" type="radio" name="PricingTiersLow" id="PricingTiersLow" class="mt-1" <%=SelectRadio(v_PricingTiersLow,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input class="mt-1" data-brackets-id="62784" type="radio" name="PricingTiersLow" id="PricingTiersLow" <%=SelectRadio(v_PricingTiersLow,"Nagitive")%> value="Nagitive"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input type="text" name="PricingTiersLow_Val" id ="PricingTiersLow_Val"  maxlength="6" size="10" tabindex="3"  value="" class="textbox_border border p-1 simulator-input-text" placeholder="######" onkeypress='return isNumberKey(event,this)' style="height:22px;margin-right:3px; width:60px;">(US$)</span>
											</div>
                                            </div>
										
										</div>
									</div>
									</div>
									</div>
										<%end if%>
											
								<div class=" w-100 text-center mt-4"><h3 style=" color:#000; font-weight:700 ;letter-spacing: -1px; font-size:16px;">PRICING IMPACT<a herf="javascript:void(0)" class='text-primary'>&nbsp;<i class="fa fa-info-circle info tooltippopup"  title="Overall effect on market value of the analyzed products/solutions/services"></i></a></h3></div>
								    
									
									<!----BEGIN: QUALITATIVE---------->
									<div class="container">
									<div id="qualitative">
									<div class="row mx-0  mt-0 mb-2 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                                    <!--div class="left_column">
                                        <h4 class="mt-1"> QUALITATIVE </h4>
                                    </div-->
                                    <div class="mr-3 w-xl-40 w-lg-40 w-md-70 w-sm-70 text-left mx-auto pricing_impact">
                                          <div  class=" w-100  d-flex justify-content-start  flex-wrap">
										 
										  <!----  yyy-->
                                             <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 pt-1">
											 <div class="w-100 d-flex flex-wrap">
                                                <!--<option value="WORLD"  >WORLD</option>-->
                                                <span class="mr-3 w-xl-100  w-lg-100  w-md-100 w-sm-100 text-left radio_buttons">
												<input class='Significant' data-brackets-id="62784" type="radio" name="qualitative" <%=SelectRadio(v_pricing_impact,"Significant20")%> id="qualitative"  value="Significant20">SIGNIFICANT: >20% </span>
												<div class="Significant collapse py-1 bg_light_gray">
												<span class="d-flex w-xl-100 w-lg-100 w-md-100 w-sm-100 text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">
                                                <input data-brackets-id="62784" type="radio" name="Significant20GNP" id="Significant20GNP" class="mt-1" <%=SelectRadio(v_simpact_value,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input class="mt-1" data-brackets-id="62784" type="radio" name="Significant20GNP" id="Significant20GNP" <%=SelectRadio(v_simpact_value,"Nagitive")%> value="Nagitive"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input type="text" name="Significant20GNP_Val" id ="Significant20GNP_Val"  maxlength="4" size="10" tabindex="3"  onkeypress="return isNumberKey(event,this)" value="<%=v_simpact_percent%>" class="textbox_border border p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px; width:45px;">%</span></div>
											</div>


                                            </div>
                                             <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 light_gray_responsive pt-1">
											 <div class="w-100 d-flex flex-wrap">


                                                <!--<option value="WORLD"  >WORLD</option>-->
												<span class="mr-3 w-xl-100  w-lg-100  w-md-100 w-sm-100 text-left radio_buttons">
                                                <input class="hight" data-brackets-id="62787" type="radio" name="qualitative" id="qualitative" <%=SelectRadio(v_impact_value,"High10_20")%> value="High10_20">HIGH: 10-20%</span>
												<div class="hight collapse py-1 bg_light_gray">     
												<span class="d-flex w-xl-100 w-lg-100 w-md-100 w-sm-100 text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">
                                                <input data-brackets-id="62784" type="radio" name="High1020GNP" id="High1020GNP" class="mt-1" <%=SelectRadio(v_himpact_value,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input class="mt-1" data-brackets-id="62784" type="radio" name="High1020GNP" id="High1020GNP"  <%=SelectRadio(v_himpact_value,"Nagitive")%> value="Nagitive"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input type="text" name="High1020GNP_Val" id="High1020GNP_Val" maxlength="4" size="4" tabindex="3" onkeypress="return isNumberKey(event,this)" value="<%=v_himpact_percent%>" class="textbox_border border  p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px; width:45px;">%</span></div>
												</div>
                                            </div>
                                            <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 pt-1">
											<div class="w-100 d-flex flex-wrap">
                                                <!--<option value="WORLD"  >WORLD</option>-->
												 <span class="mr-3 w-xl-100  w-lg-100  w-md-100 w-sm-100 text-left radio_buttons">
                                                <input class="Moderate" data-brackets-id="62790" type="radio" name="qualitative" id="qualitative"  <%=SelectRadio(v_impact_value,"Moderate5_9")%> value="Moderate5_9">MODERATE: 5-9%</span>
												<div class="Moderate collapse py-1 bg_light_gray"> 
												<span class="d-flex w-xl-100 w-lg-100 w-md-100 w-sm-100 text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">
												<input data-brackets-id="62784" class="mt-1" type="radio" name="Moderate5_9NP" id="Moderate5_9NP" <%=SelectRadio(v_mimpact_value,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input class="mt-1" data-brackets-id="62784" type="radio" name="Moderate5_9NP" id="Moderate5_9NP"  <%=SelectRadio(v_mimpact_value,"Nagitive")%> value="Nagitive"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input type="text" name="Moderate5_9NP_Val" id ="Moderate5_9NP_Val"  maxlength="4" size="10" tabindex="3"  onkeypress="return isNumberKey(event,this)" value="<%=v_mimpact_percent%>" class="textbox_border border  p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px; width:45px;">%</span></div>
											</div>
                                            </div>
                                            <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 light_gray_responsive pt-1">
												<div class="w-100 d-flex flex-wrap">
												 <span class="mr-3 w-xl-100  w-lg-100  w-md-100 w-sm-100 text-left radio_buttons">  
                                                <!--<option value="WORLD"  >WORLD</option>-->
                                                <input class='Low' data-brackets-id="62796" type="radio" name="qualitative" id="qualitative" <%=SelectRadio(v_impact_value,"low5")%> value="low5">LOW: < 5% </span>
												<div class="collapse Low py-1 bg_light_gray">
												<span class="d-flex w-xl-100 w-lg-100 w-md-100 w-sm-100 text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">
												<input data-brackets-id="62784" class="mt-1" type="radio" name="LowNP" id="LowNP"  <%=SelectRadio(v_limpact_value,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input class="mt-1" data-brackets-id="62784" type="radio" name="LowNP" id="LowNP"  <%=SelectRadio(v_limpact_value,"Nagitive")%> value="Nagitive"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>&nbsp;&nbsp;
												<input type="text" name="LowNP_Val" id ="LowNP_Val"  maxlength="4" size="10" tabindex="3" onkeypress="return isNumberKey(event,this)" value="<%=v_limpact_percent%>" class="textbox_border border p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px; width:45px;">%</span></div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!----End: QUALITATIVE---------->
							<!----BEGIN: QUANTITATIVE---------->
							<br>
                            <div id="quantitative" class="mt-0">
							<div class="w-100  text-center  modules_page_title text-center mt-0"><h3 style=" color:#000; font-weight:700 ;letter-spacing: -1px; font-size:16px;"><!--YEAR OVER YEAR--> PRICING TRENDS<a herf="javascript:void(0)" class='text-primary'  style="position: relative;">&nbsp;<i class="fa fa-info-circle info tooltippopup"  title="YoY effect on total market value of the analyzed products/solutions/services"></i></a></h3></div>
                                <div class="row mx-0  mt-0 mb-2 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                                    <!--div class="left_column">
                                        <h4 class="mt-1"> QUANTITATIVE </h4>
                                    </div-->
										<div class=" w-lg-80 w-xl-80 w-md-100 w-sm-100 text-center mt-2 mx-auto">

 

                        <div class="  w-100  d-flex justify-content-start  flex-wrap">

 

                            <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 light_gray_responsive pt-1">

                                <div class="w-100 d-flex justify-content-center">

                                    <span class="mr-3  text-left">

                                       2020-2021

                                  </span>
                                    <span class="d-flex  text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">                                   

                                <input data-brackets-id="62784" class="mt-1" type="radio" name="YOY20-21NP" id="YOY20-21NP"  <%=SelectRadio(v_YOY_value_20_21,"Positive")%> value="Positive" checked  ><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                

                                <input class="mt-1 " data-brackets-id="62784" type="radio" name="YOY20-21NP" id="YOY20-21NP"  <%=SelectRadio(v_YOY_value_20_21,"Nagitive")%> value="Nagitive"  style="font-size:11px;margin-left:8px;"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                

                               <input type="text" name="YOY20-21NP_val" id="YOY20-21NP_val" maxlength="4" size="10" tabindex="3" value="<%=v_YOY_Trend_20_21%>" class="textbox_border border  p-1 simulator-input-text " placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px; margin-left:3px; width:45px;">%

                                </span>

                                </div>

                            </div>

 

 

                            <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2">

                                <div class="w-100 d-flex justify-content-center">

                                    <span class="mr-3  text-left">

                                2021-2022

                                </span>

                                <span class="d-flex  text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">
                                <input data-brackets-id="62784" type="radio" name="YOY21-22NP" id="YOY21-22NP" class="mt-1" <%=SelectRadio(v_YOY_value_21_22,"Positive")%>  value="Positive" checked ><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>
                                <input class="mt-1" data-brackets-id="62784" type="radio" name="YOY21-22NP" id="YOY21-22NP" <%=SelectRadio(v_YOY_value_21_22,"Nagitive")%>  value="Nagitive"  style="font-size:11px;margin-left:8px;"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>
                                <input type="text" name="YOY21-22NP_Val" id="YOY21-22NP_Val" maxlength="4" size="10" tabindex="3"  value="<%=v_YOY_Trend_21_22%>" class="textbox_border border  p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px;margin-left:3px; width:45px;">%
                                </span>
                                </div>

                            </div>

                            <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 light_gray_responsive pt-1">

                                <div class="w-100 d-flex justify-content-center">

                                    <span class="mr-3  text-left">

                                2022-2023

                                </span>

 

                                    <span class="d-flex  text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">

                                <input data-brackets-id="62784" type="radio" name="YOY22-23NP" id="YOY22-23NP" class="mt-1" <%=SelectRadio(v_YOY_value_22_23,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                <input class="mt-1" data-brackets-id="62784" type="radio" name="YOY22-23NP" id="YOY22-23NP" <%=SelectRadio(v_YOY_value_22_23,"Nagitive")%> value="Nagitive"  style="font-size:11px;margin-left:8px;"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                <input type="text" name="YOY22-23NP_Val" id="YOY22-23NP_Val" maxlength="4" size="10" tabindex="3" value="<%=v_YOY_Trend_22_23%>" class="textbox_border border  p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px;margin-left:3px; width:45px;">%

                                </span>

                                </div>

                            </div>

 

 

                            <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2">

                                <div class="w-100 d-flex justify-content-center">

                                    <span class="mr-3  text-left">

                                 2023-2024

                                </span>

 

                                    <span class="d-flex  text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">

                                <input data-brackets-id="62784" type="radio" name="YOY23-24NP" id="YOY23-24NP" class="mt-1" <%=SelectRadio(v_YOY_value_23_24,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                <input class="mt-1" data-brackets-id="62784" type="radio" name="YOY23-24NP" id="YOY23-24NP" <%=SelectRadio(v_YOY_value_23_24,"Nagitive")%> value="Nagitive"  style="font-size:11px;margin-left:8px;"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                <input type="text" name="YOY23-24NP_val" id="YOY23-24NP_val" maxlength="4" size="10" tabindex="3" value="<%=v_YOY_Trend_23_24%>" class="textbox_border border  p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px;margin-left:3px; width:45px;">%

                                </span>

                                </div>

                            </div>

 

 

                            <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 light_gray_responsive pt-1">

                                <div class="w-100 d-flex justify-content-center">

                                    <span class="mr-3  text-left">

                                 2024-2025

                                </span>

 

                                    <span class="d-flex  text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">

                                <input data-brackets-id="62784" type="radio" name="YOY24-25NP" id="YOY24-25NP" class="mt-1" <%=SelectRadio(v_YOY_value_24_25,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                <input class="mt-1" data-brackets-id="62784" type="radio" name="YOY24-25NP" id="YOY24-25NP" <%=SelectRadio(v_YOY_value_24_25,"Nagitive")%> value="Nagitive"  style="font-size:11px;margin-left:8px;"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                <input type="text" name="YOY24-25NP_Val" id="YOY24-25NP_Val" maxlength="4" size="10" tabindex="3" value="<%=v_YOY_Trend_24_25%>" class="textbox_border border p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px;margin-left:3px; width:45px;">%

                                </span>

                                </div>

                            </div>

 

 

                            <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2">

                                <div class="w-100 d-flex justify-content-center">
                                <span class="mr-3  text-left">
                                 2025-2026
                                </span> 

                                <span class="d-flex  text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">

                                <input data-brackets-id="62784" type="radio" name="YOY25-26NP" id="YOY25-26NP" class="mt-1" <%=SelectRadio(v_YOY_value_25_26,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                <input class="mt-1" data-brackets-id="62784" type="radio" name="YOY25-26NP" id="YOY25-26NP" <%=SelectRadio(v_YOY_value_25_26,"Nagitive")%> value="Nagitive"  style="font-size:11px;margin-left:8px;"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>

                                <input type="text" name="YOY25-26NP_Val" id="YOY25-26NP_Val" maxlength="4" size="10" tabindex="3"  value="<%=v_YOY_Trend_25_26%>"  class="textbox_border border p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px;margin-left:3px; width:45px;">%

                                </span>

                                </div>

                            </div>

 

 

                            <div class="w-lg-50 w-xl-50 w-md-50 w-sm-100  mb-1 px-2 light_gray_responsive pt-1">

                                <div class="w-100 d-flex justify-content-center">

                                    <span class="mr-3  text-left">

                                 2026-2027

                                </span>

 

                                <span class="d-flex  text-left ml-xl-0 ml-lg-0 ml-md-0 ml-sm-0">

                                <input data-brackets-id="62784" type="radio" name="YOY26-27NP" id="YOY26-27NP" class="mt-1" <%=SelectRadio(v_YOY_value_26_27,"Positive")%> value="Positive" checked><i class="fa fa-plus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>
                                <input class="mt-1" data-brackets-id="62784" type="radio" name="YOY26-27NP" id="YOY26-27NP" <%=SelectRadio(v_YOY_value_26_27,"Nagitive")%> value="Nagitive"  style="font-size:11px;margin-left:8px;"><i class="fa fa-minus mr-2 mt-2" aria-hidden="true" style="font-size:11px"></i>
                                <input type="text" name="YOY26-27NP_Val" id="YOY26-27NP_Val" maxlength="4" size="10" tabindex="3" value="<%=v_YOY_Trend_26_27%>" class="textbox_border border p-1 simulator-input-text" placeholder="##.#" onkeypress="return isNumberKey(event,this)" style="height:22px;margin-right:3px;margin-left:3px; width:45px;">%

                                </span>

                                </div>

                            </div>

 

 

                        </div>

                    </div>


                                    </div>
                                </div><br>
								 <div class="form-group mt-3">
								 <div class=" w-lg-60 w-xl-60 w-md-100 w-sm-100 text-center mt-2 mx-auto">


                        <h4 class="text-center"> PEER NOTES</h4>

                        <textarea class="form-control w-100 m-0" id="PriceTrendscomments"  name="PriceTrendscomments" rows="3"><%=v_peer_notes%></textarea>
						</div>
                    </div>
                    <div class="w-100 text-center mb-0">
                       <!-- <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-3 rounded-0 shadow" onClick="addPriceTrends()">SAVE </button>-->
                        <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
                    </div>
												  

                            </div>
							</div>
                            <!----End: QUALITATIVE---------->
								</div>
							</div>
							
							
							
					</section>

                          
						
						
					<%
					if Trim(request("DDlSegmentsList")) <> "" then
						segmentname= Trim(request("DDlSegmentsList"))
					else
						segmentname= Trim(request("sname"))
					end if
					if Trim(request("REGION"))<> "" then
						cname= Trim(request("REGION"))
					else
						cname= Trim(request("cname"))
					
					end if
							Dim ShowValueButtons
							ShowValueButtons = 0
							''' NEWLY ADDED CODE
							Dim gregion
							gregion = Trim(request("cname"))
							
							''dim sname
							sname = trim(request("sname"))
							
							dim YearType
							YearType = trim(request("YearType"))
							
							'''OR SPLIT THE getDATA VARIABLE TO GET ALL THE ABOVE DATA
							If trim(request("getDATA"))<>"" Then
								Dim FullTableData
								'''''USA-RPCF-ST:Type
								FullTableData = trim(request("getDATA"))
								If instr(trim(FullTableData),":")>0 then
									dim SPLTRequestData, OtherDataSPLT
									SPLTRequestData = split(FullTableData,":")
									'''
									sname = SPLTRequestData(1)
									
									OtherDataSPLT = SPLTRequestData(0)
									
									Dim SPLTcountryANDyear
									SPLTcountryANDyear = split(OtherDataSPLT,"-")
									gregion = SPLTcountryANDyear(0)
									YearType = SPLTcountryANDyear(1)
								End If
							End If
							
							'' IF any value is empty ADD a default values
							If trim(gregion)="" then
								gregion = "United States"
								gregion=request("Region")
							End If
							If trim(YearType)="" then
								YearType = "RPCF"
							End If
							
							Set Conn7 = Server.CreateObject("ADODB.Connection")
							Set RSRegions = Server.CreateObject("ADODB.Recordset")
							Conn7.Open Datasource7
							
							''' IF country is encoded with 3 digit code (like USA - United States, GBR - United Kingdom) etc 	
							If len(gregion)= 3 Then
								'''COUNTRY_NAMES_THREE_DIGITS
								Set GetCountryName = Server.CreateObject("ADODB.Recordset")
								sqlCountryName = "SELECT Country FROM [GIA_Analytix].[dbo].[COUNTRY_NAMES_THREE_DIGITS] where Three_Code='"&trim(gregion)&"'"
								GetCountryName.Open sqlCountryName, Conn7
								If not GetCountryName.EOF then
									gregion = trim(GetCountryName("Country"))
								End IF
							End If
						  gregion=request("gregion")
							multipleRegionList = "'"&Replace(Trim(gregion),", ","', '")&"'"
							
							
							''response.write multipleRegionList
							
							If region="GEO_A" Then  
								RegionsQry="select * from REPORTS_GSA_REGIONS$ where region_country_name in ("& Trim(multipleRegionList)&")"
							Else
								RegionsQry="select * from REPORTS_GSB_REGIONS$ where  region_country_name in ("&Trim(multipleRegionList)&")"
							End If 
							RegionsQry="select distinct country_name AS region_country_name from GIA_Analytix.dbo.vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='"& session("giacode") &"' AND  COUNTRY_NAME in ("&Trim(multipleRegionList)&") "
							RegionsQry="SELECT sno as list_id,country_name AS region_country_name FROM GIA_REGIONS_COUNTRIES$ where country_name in ("&Trim(multipleRegionList)&") "
							'response.write CountryQry
							
							
							if trim(request("stype")) <> "" then
								DDlSegmentsList= "'" & Replace(trim(request("stype")),", ", "','") & "'"
							end if
								If trim(sname)="" then
									Set GetSegmentType = Server.CreateObject("ADODB.Recordset")
									sqlsegmenttype = "SELECT distinct [Type] FROM [GIA_Analytix].[dbo].[REPORT_SEGMENTS$] where gia_no='"&trim(session("giacode"))&"'"
									GetSegmentType.Open sqlsegmenttype, Conn7
									If not GetSegmentType.EOF then
										sname = trim(GetSegmentType("Type"))
									End IF
								End If
							
							''response.write DDlSegmentsList
							
							set YearRs=Server.CreateObject("ADODB.Recordset")
							YearSql="SELECT  GIA_No, H_StartYear, H_EndYear, CF_StartYear, CF_EndYear FROM CreateHeaders WHERE   (GIA_No = '" & session("giacode") & "')"
							YearRs.Open YearSql, Conn7
							If Not YearRs.EOF Then
								HStartYear=trim(YearRs("H_StartYear"))
								HEndYear=trim(YearRs("H_EndYear"))
								CF_StartYear=trim(YearRs("CF_StartYear"))
								CF_EndYear=trim(YearRs("CF_EndYear"))
								
							end if
							''response.write HStartYear & "  " & HEndYear & " " & CF_StartYear & " " & CF_EndYear
							'''2012 2019 (HR) 2020 2027 (RPCF) YearTpe = RPCF & HR
							''response.write RegionsQry
							%>		
                            <div id="main">
<form name="frmadd" method="post" action="GIA_Research_Feedback.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>&gregion=<%=trim(request("gregion"))%>&stype=<%=trim(request("stype"))%>&YearType=<%=trim(request("YearType"))%>&getDATA=<%=trim(request("getDATA"))%>&type=submit">
							 <div class="d-flex justify-content-around flex-wrap w-xl-40 w-lg-40 w-md-60 mt-3  mx-auto bottom_links ">
							 <%
							 If trim(request("pageLoopVal"))<>"" then
								pageLoopVal = cint(trim(request("pageLoopVal")))+1
							 Else
								c = 1
								pageLoopVal=1
							 End If
							''response.write(maxpageloopval)
							 %>
									<a  onClick="addPriceTrends('<%=request("pageLoopVal")%>','<%=maxpageloopval%>')"  class="btn btn-gia-primary rounded-0 shadow p-2 my-3 text-white bt-5">SAVE & NEXT</a>
									<!--&nbsp;&nbsp;<a class="  bt-3 " href="#alert" rel="modal:open">ALERTS</a> &nbsp;&nbsp;<a href="#feedback_pop" rel="modal:open" class="  bt-1">FEEDBACK </a>-->
                                    <!--<a her="" class="  bt-1">SAVE & UPDATE</a>-->
									<!--a type="submit" class=" bt-2"  id="btnEqsubmit" name="btnEqsubmit" value="SUBMIT"onsubmit="return CheckAddData();">SUBMIT FINAL</a>
									<a class="  bt-3 " href="#alert" rel="modal:open">ALERTS</a>
                                
                                    
                                    <a href="https://www.strategyr.com/GIA_Research_collaborate.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>" class="bt-2" target="_new">COLLABORATE</a>
									
                                    <a class="    bt-3" data-toggle="collapse" href="#stats" role="button" aria-expanded="false" aria-controls="collapseExample">STATS</a-->
                                </div>
</form>
                                


                            </div>
						</section>
                        <!--/div-->
                   
                    <!----END:SIMULATOR TABLE------>
                    <!---Begin:sumbit, intelligence, feedback, collborat -->
                   
                    <!---End:sumbit, intelligence, feedback, collborat -->
                </main>
                <!---End: Main Content--->
                <!---- END : CONTENT SSECTION ---->
            </div>

            <!---CONTAINER END--->
        </div>
    </div>
    <!-- Footer
================================================== -->
    <!-- Footer / Start -->
  <!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip_module.asp"-->
<!---footer_end-->







    







    <!----CURRENCY_BLOCK--->
    <form name="frmcurrency">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function addNewCurrency() {
	 
			//var vCurrency = document.getElementById("inlineRadioOptions").value;
			//Currency_Units
			var vCurrency = $('input[id="inlineRadioCurrency"]:checked').val();
			var vGiaCode = $('input[id="txtGiaCode"]').val();
			var vencID = $('input[id="txtencID"]').val();
			var CurrencyUnitsType = $('input[id="MARKET_MEASURE_USD"]:checked').val();
			//var vCurrency=$('input[name="inlineRadioCurrency"]:checked').val();
		//	var vCurrency=$('input[name="inlineRadioCurrency"]:checked', '#frmcurrency').val();
			var vCurrency=$('input[name=inlineRadioOptions]:checked').val()
		//	alert($('input[name=inlineRadioOptions]:checked').val());
		//	alert($("input[name='inlineRadioOptions']:checked").val());
		
			//var vCurrencyExchange = $('input[id="TxtCurrencyExchange"+vCurrency]').val();
			//alert("Test");
			//var gettxtName;
			//gettxtName = "TxtCurrencyExchange"+vCurrency;
			//var vCurrencyExchange = $('input[id="+gettxtName+"]').val();
			
		//	alert (vCurrencyExchange);
			//alert (vencID);
			//alert(vCurrency);
			//alert (CurrencyUnitsType);
			 if(vCurrency!="")
			 {
			  $.ajax({
				url: "Ajax_AddGIA_Research_Feedback_Currency.asp",
				type: "POST",
				data:'CurrencyUnitsType='+encodeURIComponent(CurrencyUnitsType)+'&vCurrency='+encodeURIComponent(vCurrency)+'&vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'', 		
				success: function(data){
				//alert(data); //&vCurrencyExchange='+encodeURIComponent(vCurrencyExchange)+'
				alert("Currency updated Sucessfully");
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
				alert('Region/Country cannot be left blank');
			  }			  
		 

        
		}

</script>
<div id="currency_block" class="modal">
        <div class="row m-0 ">
            <h2 class="text-center w-100 font-weigth-bold"><b>CHANGE CURRENCY</b> (Exchange rate)</h2>
            <hr/>
             <div class="d-flex flex-wrap justify-content-center justify-content-md-between">
			<%''select * from REPORTS_GSA_REGIONS$
						CurrencyQry = "SELECT SNO, Currency_Name, Currency_Code, Currency_Symbol, To_USD_Conversion, From_USD_Conversion FROM CURRENCY_USD_CONVERSION$"
						''response.write CountryQry
						Set RSCurrency = Server.CreateObject("ADODB.Recordset")
					   RSCurrency.Open CurrencyQry, Datasource7						
						If Not RSCurrency.EOF Then 
							while not RSCurrency.EOF%>								
								 <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
									<input class="form-check-input" type="radio" name="inlineRadioOptions" id="<%=RSCurrency("Currency_Name")%> (<%=RSCurrency("Currency_Code")%>)" <%=checked(trim(ucase(currency_name)),trim(ucase(RSCurrency("Currency_Name"))))%> value="<%=RSCurrency("Currency_Name")%>" class="currency">
									<label class="form-check-label" for="<%=RSCurrency("Currency_Name")%> (<%=RSCurrency("Currency_Code")%>)"><%=RSCurrency("Currency_Name")%> (<%=RSCurrency("Currency_Code")%>) 
									<!--<input type="textbox" id="TxtCurrencyExchange<%'=RSCurrency("Currency_Name")%>" name="TxtCurrencyExchange<%'=RSCurrency("Currency_Name")%>" value="<%'=RSCurrency("To_USD_Conversion")%>" >--></label>
									
								</div>
							<%if trim(request("currency"))=RSCurrency("Currency_Name") then
								currencysymbol=RSCurrency("Currency_Name")
								Currency_Exchange_Rate=RSCurrency("From_USD_Conversion")
							else
								currencysymbol="US$"
								Currency_Exchange_Rate=1
							end if
							RSCurrency.MoveNext
							Wend%>
						</select>
						<!--button type="button" class="btn btn-gia-primary btn-sm " style="width:29px; height:29px;" title="Add Region/Country" onClick='addNewRegion()'><i class="fa fa-plus"  aria-hidden="true"></i-->
						
						<%End If
						Set RSCurrency = Nothing
						''response.write From_USD_Conversion & " Currency "
						%>
            </div>
            
        </div>
        <div class="row text-center mb-0">
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow" onclick="addNewCurrency()">UPDATE</button>
        </div>
    </div>
	
</form>
<script type="text/javascript">
function openWindow() {
    window.open("vuL1QuesDataAnalytics.asp",'User',"status=1,width=1200,height=700");
}
</script>
<script type="text/javascript">

   function showMe (box) {   
   //  alert(box);
	var chboxs = document.getElementById(box).style.display;
	var vis = "none";
		if(chboxs=="none"){
		 vis = "block"; }
		if(chboxs=="block"){
		 vis = "none"; }
	document.getElementById(box).style.display = vis;
}
  
</script>

<script>
$(document).ready(function() {
$('a.login-window').click(function() {
    
    //Getting the variable's value from a link 
    var loginBox = $(this).attr('href');

    //Fade in the Popup
    $(loginBox).fadeIn(300);
    
    //Set the center alignment padding + border see css style
   // var popMargTop = ($(loginBox).height() + 24) / 2; 
   // var popMargLeft = ($(loginBox).width() + 24) / 2; 
    var popMargTop = ($(loginBox).height() + 24) / 12; 
    var popMargLeft = ($(loginBox).width() + 24) / 12; 
    
    $(loginBox).css({ 
        'margin-top' : -popMargTop,
        'margin-left' : -popMargLeft
    });
    
    // Add the mask to body
	 $('body').append('<div id="mask"></div>');
    //$('#mask').fadeIn(30);
    
    return false;
});

// When clicking on the button close or the mask layer the popup closed
$('a.close, #mask').live('click', function() { 
  $('#mask , .login-popup').fadeOut(300 , function() {
    $('#mask').remove();  
}); 
return false;
});
});
</script>


</div>








</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="scripts/bootstrap.bundle.js"></script>
<script src="js/jquery.multi-select.js"></script>
<script>
    //----ACCORDION----//
    var acc = document.getElementsByClassName("accordion_key");
    var i;
    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var panel3 = this.nextElementSibling;
            if (panel3.style.maxHeight) {
                panel3.style.maxHeight = auto;
            } else {
                panel3.style.maxHeight = panel3.scrollHeight + "px";
            }
        });
    }

</script>
<script>
    $(window).scroll(function() {
        if ($(this).scrollTop() > 210) {
            $('.simulator_top_header').addClass('fixed-top');
        } else {
            $('.simulator_top_header').removeClass('fixed-top');
        }
    });

</script>

<!---CHECK ALL SCRIPT--->

<script>
    $("#checkAll").click(function() {
        $('input:checkbox').not(this).prop('checked', this.checked);
    });

</script>
<script src="js/limit.text.js"></script>

<script>
   $(document).ready(function(){
         $('.textlimit').limitText({
            length: 35
        });
    })

</script>

<script>
	$('.radio_buttons input[type=radio]').on('change', function () {
		if (!this.checked) return
		$('.collapse').not($('div.' + $(this).attr('class'))).slideUp();
		$('.collapse.' + $(this).attr('class')).slideDown();
	});
	
	</script>

</html>
