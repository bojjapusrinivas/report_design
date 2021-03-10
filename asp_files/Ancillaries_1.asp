
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]>
<!-->
<!--include file="aspincludes/CheckSQLInc.asp"-->
<html lang="en">
<!--<![endif]-->

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
  function RemoveSegment(name,type) {	 
 
	 var vSegment = name;//document.getElementById("txtSegment").value;	 
	 var vGiaCode = document.getElementById("txtGiaCode").value;
	 var vencID = document.getElementById("txtencID").value;
	 var vSegmentType = type;//$('input[id="DDlSegmentsType"]:checked').val();
	 
	 //alert (vGiaCode);
	//alert (vSegmentType);
	         
			 if((vSegment!="") && (vSegmentType!="")&&(vSegmentType!==undefined))
			 {
			 $.ajax({
				url: "Ajax_RemoveGIA_Research_Feedback_Segment.asp",
				type: "POST",
				data:'vSegment='+encodeURIComponent(vSegment)+'&vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&vSegmentType='+encodeURIComponent(vSegmentType)+'', 				
				success: function(data){
				alert("Segment Deleted Sucessfully");
				parent.location.reload();
					//document.getElementById(CbTag).value ="";
					//document.getElementById(CbLink).value ="";
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
				alert('Segment cannot be left blank');
			  }		
		}
		
  
  
  function addNewSegment() {	 
	 var vSegment = $("#txtSegment").val();//document.getElementById("txtSegment").value;	 
	 var vGiaCode = document.getElementById("txtGiaCode").value;
	 var vencID = document.getElementById("txtencID").value;
	 var vSegmentType = $('input[id="DDlSegmentsType"]:checked').val();
	 
	 //alert (vGiaCode);
	//alert ("type:"+ vSegmentType);
	//alert ("seg"+ vSegment);
	         
			 if((vSegment!="") && (vSegmentType!="")&&(vSegmentType!==undefined))
			 {
			 $.ajax({
				url: "Ajax_AddGIA_Research_Feedback_Segment.asp",
				type: "POST",
				data:'vSegment='+encodeURIComponent(vSegment)+'&vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&vSegmentType='+encodeURIComponent(vSegmentType)+'', 				
				success: function(data){
				alert("Segment Added Sucessfully");
				parent.location.reload();
					//document.getElementById(CbTag).value ="";
					//document.getElementById(CbLink).value ="";
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
				alert('Segment cannot be left blank');
			  }		
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
		
		
		function Add_Ancillaries1(vSegment,vRegion,vYeartype,VgetData)
		{
		
		// var vtxtRegionVal = $("#AddNewCountry"+RegionName).val();
	     var vGiaCode = $('input[id="txtGiaCode"]').val();
	     var vencID = $('input[id="txtencID"]').val(); 
		 var vemail_ID = $('input[id="Email_ID"]').val();
		 //var vUnites = $('input[id="MARKET_MEASURE_USD"]:checked').val();
		 //var vCurrency = $('input[id="MARKET_MEASURE_USD"]:checked').val();	
		 
		 var vCurrencyName = $('input[id="TXTCurrencyName"]').val();
		 var vCurrencyExchangeRate = $('input[id="TXTCurrencyExchangeRate"]').val();
		 var vCurrencyUnits = $('input[id="TXTCurrencyUnits"]').val();
		 var vCurrencyCode = $('input[id="TXTCurrencyCode"]').val();
		 //TXTCurrencyCode
		 
		 //REGION
		 var vRegionsList = $('input[id="REGION"]:checked').map(function()
            {
                return $(this).val();
            }).get();

	
		 //SEGMENTS
		 var vSegmentsList = $('input[id="DDlSegmentsList"]:checked').map(function()
            {
                return $(this).val();
            }).get();
		//alert (vSegmentsList);
		if((vGiaCode!="") && (vGiaCode!==undefined) && (vencID!="") && (vencID!==undefined) && (vRegionsList!="") && (vRegionsList!==undefined) && (vSegmentsList!="") && (vSegmentsList!==undefined) )
		{ 
		    $.ajax({
					url: "Ajax_AddAncillaries_1.asp",
					type: "POST",
					data:'vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&vCurrencyName='+encodeURIComponent(vCurrencyName)+'&vCurrencyExchangeRate='+encodeURIComponent(vCurrencyExchangeRate)+'&vSegment='+encodeURIComponent(vSegmentsList)+'&vRegion='+encodeURIComponent(vRegionsList)+'&vCurrencyUnits='+encodeURIComponent(vCurrencyUnits)+'&vCurrencyCode='+encodeURIComponent(vCurrencyCode)+'', 		
					success: function(data){
					//alert(data);
					//alert("Data Added Sucessfully");
					//parent.location.reload();
					window.location.href = "https://www.strategyr.com/Ancillaries_2.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"&gregion="+encodeURIComponent(vRegion)+"&stype="+encodeURIComponent(vSegment)+"&YearType="+encodeURIComponent(vYeartype)+"&getDATA="+encodeURIComponent(VgetData)+"&email_ID="+encodeURIComponent(vemail_ID)+"&type=submit";
					//window.location.href = "https://www.strategyr.com/Ancillaries_2.asp?code=+"vGiaCode+&encID=<%=Trim(request("encID"))%>&gregion=<%=trim(request("region"))%>&stype=<%=trim(request("DDlSegmentsList"))%>&YearType=<%=trim(request("YearType"))%>&getDATA=<%=trim(request("getDATA"))%>&type=submit";
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
			alert('Segments / Regions cannot be left blank!');
		}
		
		}
		
		
		function Add_Ancillaries1_collaborate(vSegment,vRegion,vYeartype,VgetData)
		{
		
		// var vtxtRegionVal = $("#AddNewCountry"+RegionName).val();
	     var vGiaCode = $('input[id="txtGiaCode"]').val();
	     var vencID = $('input[id="txtencID"]').val(); 
		 var vemail_ID = $('input[id="Email_ID"]').val();
		 //var vUnites = $('input[id="MARKET_MEASURE_USD"]:checked').val();
		 //var vCurrency = $('input[id="MARKET_MEASURE_USD"]:checked').val();	
		 
		 var vCurrencyName = $('input[id="TXTCurrencyName"]').val();
		 var vCurrencyExchangeRate = $('input[id="TXTCurrencyExchangeRate"]').val();
		 var vCurrencyUnits = $('input[id="TXTCurrencyUnits"]').val();
		 var vCurrencyCode = $('input[id="TXTCurrencyCode"]').val();
		 //TXTCurrencyCode
		 
		 //REGION
		 var vRegionsList = $('input[id="REGION"]:checked').map(function()
            {
                return $(this).val();
            }).get();

	
		 //SEGMENTS
		 var vSegmentsList = $('input[id="DDlSegmentsList"]:checked').map(function()
            {
                return $(this).val();
            }).get();
		//alert (vSegmentsList);
		if((vGiaCode!="") && (vGiaCode!==undefined) && (vencID!="") && (vencID!==undefined) && (vRegionsList!="") && (vRegionsList!==undefined) && (vSegmentsList!="") && (vSegmentsList!==undefined) )
		{ 
		    
			window.location.href = "https://www.strategyr.com/Ancillaries_2.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"&gregion="+encodeURIComponent(vRegion)+"&stype="+encodeURIComponent(vSegment)+"&YearType="+encodeURIComponent(vYeartype)+"&getDATA="+encodeURIComponent(VgetData)+"&email_ID="+encodeURIComponent(vemail_ID)+"&type=submit";
					
		}	
		else
		{
			alert('Segments / Regions cannot be left blank!');
		}
		
		}
		
	function addNewRegion(RegionName){
	var vtxtRegionVal = $("#AddNewCountry"+RegionName).val();
	///var vtxtRegionVal = $('input[id="AddNewCountryASIA-PACIFIC"]:checked').val();
	var vGiaCode = $('input[id="txtGiaCode"]').val();
	var vencID = $('input[id="txtencID"]').val();
	//undefined
	alert (vtxtRegionVal);
	
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
	
	//////
	function addNewRegionASIA(RegionName){
	
	var vtxtRegionVal = $('input[id="AddNewCountryASIA-PACIFIC"]:checked').val();
	var vGiaCode = $('input[id="txtGiaCode"]').val();
	var vencID = $('input[id="txtencID"]').val();
	//undefined
	alert (vtxtRegionVal);
	
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
	
	function addNewRegionCountry(RegionName){
	
	var vtxtRegionVal = $('input[id="AddNewCountryEUROPE"]:checked').val();
	var vGiaCode = $('input[id="txtGiaCode"]').val();
	var vencID = $('input[id="txtencID"]').val();
	//undefined
	alert (vtxtRegionVal);
	var res = vtxtRegionVal.split("##");
	var vtxtRegionVal1 = res[0];
	var RegionName1 = res[1];
		if((vtxtRegionVal!="") && (vtxtRegionVal!==undefined))
		{ 
			//alert (vtxtRegionVal);
			//alert (RegionName);
			///ReportCode = '"&trim(request("vGiaCode"))&"' and eNcID ='"&trim(request("vencID"))&"' and Country_Name ='"&trim(request("vRegion"))&"'" 
			$.ajax({
					url: "Ajax_AddGIA_Research_Feedback_Region.asp",
					type: "POST",
					data:'vRegion='+encodeURIComponent(RegionName1)+'&Country_Name='+encodeURIComponent(vtxtRegionVal1)+'&vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'', 		
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
	
	
	//////
	function addNewRegionEUROPE(RegionName){
	
	var vtxtRegionVal = $('input[id="AddNewCountryEUROPE"]:checked').val();
	var vGiaCode = $('input[id="txtGiaCode"]').val();
	var vencID = $('input[id="txtencID"]').val();
	//undefined
	alert (vtxtRegionVal);
	
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
	
	///addNewRegionLATIN('LATIN_AMERICA')
//addNewRegionMIDDLE('MIDDLE_EAST');

	//////
	function addNewRegionLATIN(RegionName){
	
	var vtxtRegionVal = $('input[id="AddNewCountryLATIN_AMERICA"]:checked').val();
	var vGiaCode = $('input[id="txtGiaCode"]').val();
	var vencID = $('input[id="txtencID"]').val();
	//undefined
	alert (vtxtRegionVal);
	
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
	
	
	//////
	function addNewRegionMIDDLE(RegionName){
	
	var vtxtRegionVal = $('input[id="AddNewCountryMIDDLE_EAST"]:checked').val();
	var vGiaCode = $('input[id="txtGiaCode"]').val();
	var vencID = $('input[id="txtencID"]').val();
	//undefined
	alert (vtxtRegionVal);
	
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
	
	function deleteSegmentName(cid1){
		alert (cid1);
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
		SQL = "SELECT * FROM MCPNewTopic WHERE NewCODE='" & session("ReportCode") & "'"
	Else
		SQL = "SELECT * FROM MCPNewTopic WHERE newCODE='" & session("ReportCode") & "'"
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
			session("ReportTitle") = ucase(Trim(RS("title")))
			RPT_MCP_CODE = Trim(RS("code"))
	End If
	set RS = nothing
	set conn = Nothing
	session("giacode")=giacode
	
	intRptID = Trim(request("code"))
	code = Trim(request("code"))
	strReportTitle = trim(ucase(strReportTitle)) 
	''intReportCode = session("ReportCode") 

	
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
<body id="simulator_page">
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
                        <div class="sixteen columns head_title_block text-center  d-flex justify-content-center">
                            <h2 style="font-weight:bold; color:#900;line-height: 23px;" class="mt-2 font-size-20"> <%=strReportTitle%>&nbsp; (<%=code%>)</h2>
                        </div>
                        <div class="mobile_display" style="text-align:center; width:100% !important"> <img src="https://www.strategyr.com/resize_img/sig_100.jpg" alt="GIA" class="logo signatrue_logo" style="width:90px; height:auto; margin:0 auto; padding-top:10px"> </div>
                    </div>
                </header>
                <!---- END : HEADER SECTION ---->
	<form name="frmadd" method="post" action="Ancillaries_1.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>">			

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
	
	Function checked_STR_Other(val1,val2)    
		SplitVal=Split(val1,",")
		For Each x In SplitVal
		''If Len(Trim(x))=Len(Trim(val2)) then
			If Instr(Trim(val2), Trim(x))>0 Then
				  checked_STR_Other = "checked"					  
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
	Dim SplitMarketANDvalue, Currency_Name, Get_Units_Name, Get_Units_Currency
	
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
	
	
	'''''''**********************************************''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		'''''GET THE DATA FROM THE TABLE
		''''' SEGMENTS AND REGIONS DATA FROM THE Ancillaries_1 TABLE
		'''''''**********************************************''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		Set Conn = Server.CreateObject("ADODB.Connection")
		Conn.Open Datasource7
		
		RecChkSQL = "SELECT * FROM Ancillaries_1 WHERE Code = '"&trim(giacode)&"' and eNcID ='"&trim(request("encID"))&"'"
		
 
		Dim existSegmentNames, existCountryNames
		existSegmentNames = ""
		existCountryNames = ""
		Set RecChkRS = Server.CreateObject("ADODB.Recordset")
		RecChkRS.Open RecChkSQL, Conn
		If Not RecChkRS.EOF Then
			existSegmentNames = trim(RecChkRS("Segments"))
			existCountryNames = trim(RecChkRS("Regions"))
		End If	
		Set RecChkRS = nothing		
		set Conn = Nothing
		
		''''' SELECT        TOP (200) Collborate_ID, First_Name, Last_Name, Email_ID, Report_ID, Collaborate_Type, Segment_Name, Region_Name, Report_Table_Code, Date_Added, Collaborate_Status, Source_Email_ID, Collaborate_Password, Company, encID, User_Type FROM            App_User_Collaborate
		
		'''''''If trim(Request("Email_ID")) is not null (This is a user who has been invited to finish the data
		If trim(Request("Email_ID"))<>"" Then
		
			Set Conn99 = Server.CreateObject("ADODB.Connection")
			Conn99.Open Datasource1
			
			RecChkSQL = "SELECT * FROM App_User_Collaborate WHERE Report_ID = '"&trim(giacode)&"' and eNcID ='"&trim(request("encID"))&"' and Email_ID='"&trim(Request("Email_ID"))&"'"
			 
			''
			Set RecChkRS = Server.CreateObject("ADODB.Recordset")
			RecChkRS.Open RecChkSQL, Conn99
			If Not RecChkRS.EOF Then
				existSegmentNames = ""
					existCountryNames = ""
				existSegmentNames = trim(RecChkRS("Segment_Name"))
				existCountryNames = trim(RecChkRS("Region_Name"))
			End If	 
			Set RecChkRS = nothing
			set Conn99 = Nothing
		
		End If
		
	'''response.write "segmentname = "&existSegmentNames
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
			Get_Units_Name= trim(RSAnalytics("Units_Name"))
			Get_Units_Currency = trim(RSAnalytics("Units_Currency"))
		end if
		set RSAnalytics=nothing
		''response.write SQLrptGIA
		
		'''response.write session("EID")%>
                <main class="w-xl-85 w-lg-85 w-md-95 w-sm-100 mx-auto">
				<div class="w-100  text-center  modules_page_title text-center"> <h3 >SETTINGS</h3></div>
                    <!----Begin:CURRENCY Section---->
                    <section class="pb-2 mt-4 border-bottom">
                        <div class="row mx-0  my-2 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                            <div class="w-100">
                                <h4 class="m-0 font-weight-bold" style="font-size: 16px !important;color: #900; !important"> MARKET MEASURE</h4>
                            </div>

                            <div class="w-100">
                                <div class="d-flex flex-xl-row flex-lg-row flex-md-row  flex-sm-column">
                                    <div class="ml-0 mr-5 mb-1 mt-2 send_collaborate_list">
                                        <div class="w-100 mb-2 d-flex flex-wrap">
                                            <input type="checkbox" name="USD_MEASURE" id="USD_MEASURE" value="USD" checked=""><%if trim(Currency_Name) <> "" then 
									response.write trim(ucase(currency_code))
								else 
									response.write ("USD")
								end if%> &nbsp;&nbsp;&nbsp;<%If trim(request("Email_id"))="" then%><!--<span class="ml-3 d-sm-none "><a href="#currency_block" rel="modal:open" class="mb-2  p-1 rounded-0  mx-2 text-blue" style="color:#169FE6 !important">CHANGE CURRENCY</a></span>--><%End If%>
                                        </div>
                                        <div class="w-100">
                                            <div class="d-flex flex-wrap ">
                                                <!--span> <input type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="THOUSAND"  > THOUSAND &nbsp;&nbsp;</span-->
                                                <span><input type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="MILLION" <%=checked(trim(ucase(Currency_Units)),"MILLION")%>>Million &nbsp;&nbsp;</span> 
												<span><input type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="BILLION" <%=checked(trim(ucase(Currency_Units)),"BILLION")%>>Billion &nbsp;&nbsp;</span>
                                                <span><input type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="TRILLION" <%=checked(trim(ucase(Currency_Units)),"TRILLION")%>>Trillion</span>
                                            </div>
                                        </div>
										<div class="w-100 mt-2 ">
											<%If trim(request("Email_id"))="" then%><span ><a href="#currency_block" rel="modal:open" class="mb-2  text-blue" style="color:#169FE6 !important">CHANGE CURRENCY</a></span><%End If%>
										</div>
                                    </div>
                                    <div class="ml-0 mr-5 mb-1 mt-2 send_collaborate_list ">
                                        <div class="w-100 mb-2 d-flex flex-wrap">
                                            <input type="checkbox" name="UNITS_MEASURE" id="UNITS_MEASURE" value="UNITS" <%=checked(trim(request("UNITS_MEASURE")),"UNITS")%> checked> 
											
											<%if trim(Get_Units_Name) <> "" then 
												response.write trim(ucase(Get_Units_Name))
											else 
												response.write ("UNITS")
											end if%>
                                        </div>
                                        <div class="w-100">
                                            <div class="d-flex flex-wrap ">
                                                <input type="radio" name="MARKET_MEASURE_UNITS" id="MARKET_MEASURE_UNITS" value="Actual" <%=checked(trim(Get_Units_Currency),"Actual")%> checked> Actual &nbsp;&nbsp;
                                                <input type="radio" name="MARKET_MEASURE_UNITS" id="MARKET_MEASURE_UNITS" value="Million" <%=checked(trim(Get_Units_Currency),"Million")%>>Million&nbsp;&nbsp;
                                                <input type="radio" name="MARKET_MEASURE_UNITS" id="MARKET_MEASURE_UNITS" value="Billion" <%=checked(trim(Get_Units_Currency),"Billion")%>>Billion
                                            </div>
                                        </div>
										<div class="w-100 mt-2 ">
											<%If trim(request("Email_id"))="" then%><span ><a href="#units_block" rel="modal:open" class="mb-2  text-blue" style="color:#169FE6 !important">CHANGE UNITS</a></span><%End If%>
										</div>
                                    </div>
										<input type="hidden" id="TXTCurrencyName" name="TXTCurrencyName" value="<%=Currency_Name%>">
										<input type="hidden" id="TXTCurrencyExchangeRate" name="TXTCurrencyExchangeRate" value="<%=Currency_Exchange_Rate%>">
										<input type="hidden" id="TXTCurrencyUnits" name="TXTCurrencyUnits" value="<%=Currency_Units%>">
										<input type="hidden" id="TXTCurrencyCode" name="TXTCurrencyUnits" value="<%=trim(ucase(currency_code))%>">
										<input type="hidden" id="Email_ID" name="Email_ID" value="<%=trim(request("Email_ID"))%>">
                                </div>
                            </div>
                        </div>
                    </section>
                    <!----End:CURRENCY Section---->
                    <!----Begin:SEGMENT Section---->
                    <section id="segment" class="mt-4 pb-2  border-bottom">

                        <div class="row mx-0  mt-1 mb-0 px-lg-3 px-sm-0 px-md-2 px-xl-3 d-flex">
                            <div class="left_column w-100 d-flex">
                                <h4 class="m-0 font-weight-bold" style="font-size: 16px !important;color: #900 !important;">SEGMENT</h4>  <!-- <a href="#segment_block" rel="modal:open" class=" rounded-0 ml-4 d-sm-none text-blue add_segment" style="color:#169FE6 !important; color: #FFF">ADD SEGMENT</a>-->
                            </div>
                            
                        </div>

                        <div class="row mx-0  mt-0 mb-2 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                           
                            <div class="w-100 mt-2">
								<!--- SEGMENT DIV START -->
                                <div data-brackets-id="62782" class="d-flex justify-content-start flex-wrap w-100 flex-sm-column ">
								
								<%Set RSSegmentsList = Server.CreateObject("ADODB.Recordset")
									SegmentsListQry="select SegmentID as Segment_ID, Name, Type from vwReports_GIA_Segments$ where GIA_No='" & session("giacode") & "' and Name not like 'Other %' "

									Set Conn7 = Server.CreateObject("ADODB.Connection")
									Set RSRegions = Server.CreateObject("ADODB.Recordset")
									Conn7.Open Datasource7
									RSSegmentsList.Open SegmentsListQry, Conn7 '',1,2
									If trim(existSegmentNames)="" then
										if Trim(request("DDlSegmentsList")) <> "" then
											segmentname= Trim(request("DDlSegmentsList"))
										else
											segmentname= Trim(request("sname"))
										end if
									Else
										segmentname = trim(existSegmentNames)
									End If
									If Not RSSegmentsList.EOF Then
										while not RSSegmentsList.EOF%>
										<div class=" ml-0 mr-5 mb-1 " style="text-align:left">
											<!--<option value="WORLD"  >WORLD</option>-->
											<input data-brackets-id="62784" type="checkbox" name="DDlSegmentsList" id="DDlSegmentsList" <%=checked_STR_Other(Trim(segmentname),Trim(RSSegmentsList("Name")))%> value="<%=Trim(RSSegmentsList("Name"))%>"> <%=RSSegmentsList("Name")%> <!--[<%=RSSegmentsList("Type")%>]-->
										</div>
										<%
										RSSegmentsList.MoveNext
										Wend
									End If 
								
										 %>
									<!--</select>-->
									<%
									Set RSRegions = Nothing
									Set RSSegmentsList = Nothing%>
									
                                    
									<%''''ADD THE ADDED SEGMENTS FOR THE USER from TABLE: GIA_Research_Feedback_Segments (ReportCode,eNcID,Segment,UpdateDate,Status)
									SegmentsListQry1="select  Segment as Name,SegmentType from GIA_Research_Feedback_Segments where ReportCode='" & trim(session("giacode")) & "' and eNcID='"&trim(request("encID"))&"' and Segment not like 'Other %' "
									Set RSSegmentsList = Server.CreateObject("ADODB.Recordset")
									RSSegmentsList.Open SegmentsListQry1, Conn7 
									''response.write SegmentsListQry
									if Trim(request("DDlSegmentsList")) <> "" then
										segmentname= Trim(request("DDlSegmentsList"))
									else
										segmentname= Trim(request("sname"))
									end if
									%>
									<%If Not RSSegmentsList.EOF Then
									 while not RSSegmentsList.EOF%> 
									 
									<div class=" ml-0 mr-5 mb-1 " style="text-align:left;text-transform: capitalize;">
											<!--<option value="WORLD"  >WORLD</option>-->
											<input data-brackets-id="62784" type="checkbox" name="DDlSegmentsList" id="DDlSegmentsList" <%=checked_STR_Other(Trim(segmentname),Trim(RSSegmentsList("Name")))%> value="<%=Trim(RSSegmentsList("Name"))%>"> <%=RSSegmentsList("Name")%> 
											(<a onclick='RemoveSegment("<%=Trim(RSSegmentsList("Name"))%>","<%=Trim(RSSegmentsList("SegmentType"))%>")'>REMOVE</a>)
									</div>
			   
									<%RSSegmentsList.MoveNext
									Wend
									End If 
									Set RSSegmentsList = Nothing%>
                                </div>
								<!--- SEGMENT DIV END -->
								<input type='textbox' id='txtGiaCode' name='txtGiaCode' size="12" value="<%=session("giacode")%>" style="display:none">
								<input type='textbox' id='txtencID' name='txtencID' size="12" value="<%=request("encID")%>" style="display:none">
                            </div>
							<div class="w-100 mt-2 ">
								 <%If trim(request("Email_id"))="" then%><a href="#segment_block" rel="modal:open" class=" rounded-0 mr-2 text-blue add_segment" style="color:#169FE6 !important; color: #FFF">ADD SEGMENT</a><%End If%>
							</div>
                        </div>
                    </section>
                    <!----End:SEGMENT : Section---->
                    <!----Begin: REGION/COUNTRY:--->
                    <section id="region_section" class="mt-4 pb-2 border-bottom">
                        <div class="row mx-0  my-2 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                            <div class="w-100">
                                <h4 class="font-weight-bold m-0" style="font-size:16px !important;color: #900 !important;"> REGION/COUNTRY</h4>
                            </div>
                            <div class="w-100">
                               
								
								<% CountryQry="select distinct country_name,[dbo].[GetRegionbyCountryname](country_name) as region_name from GIA_Analytix.dbo.vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='"& session("giacode") &"' order by region_name"
								Set RSCountry = Server.CreateObject("ADODB.Recordset")
								RSCountry.Open CountryQry, Datasource7
								If trim(existCountryNames)="" Then
									if Trim(request("REGION"))<> "" then
										cname= Trim(request("REGION"))
									else
										cname= Trim(request("cname"))
									
									end if
								Else
									cname = trim(existCountryNames)
								End If 
								If trim(ucase(cname))="USA" then
									cname = "United States"
								End If
								If Not RSCountry.EOF Then %> 

                                <!--REGION--->
                                <div class="row mb-1 ">
                                    <div class="w-100 d-flex px-0 mt-2">
                                        <b class="mr-3" style ="letter-spacing:-1px;"><%=Trim(ucase(RSCountry("region_name")))%></b>
										<%Dim RegionValueModal
										RegionValueModal = Trim(ucase(RSCountry("region_name")))
										If instr(Trim(ucase(RSCountry("region_name")))," ")> 0 then
											RegionValueModal = replace(RegionValueModal," ","_")
										End If
										%>
                                        <!--<a href="#<%=Trim(RegionValueModal)%>" rel="modal:open" class="m rounded-0  d-sm-none text-blue add_countryadd_country" style="color:#169FE6 !important">ADD COUNTRY</a>-->
                                    </div>
									
									<%region=Trim(RSCountry("region_name"))
									 while not RSCountry.EOF%>
									<%if region<>Trim(RSCountry("region_name")) then%>
									</div><div class="row mb-0 ">
									<div class="w-100  mt-3">
                                        <b class="mr-3" style="letter-spacing:-1px;"><%=Trim(ucase(RSCountry("region_name")))%></b>
										<%''Dim RegionValueModal
										RegionValueModal = Trim(ucase(RSCountry("region_name")))
										If instr(Trim(ucase(RSCountry("region_name")))," ")> 0 then
											RegionValueModal = replace(RegionValueModal," ","_")
										End If
										
										%>
										<%If ucase(Trim(RSCountry("region_name")))<>"CHINA" and ucase(Trim(RSCountry("region_name")))<>"CANADA" and ucase(Trim(RSCountry("region_name")))<>"UNITED STATES" Then%>
                                        <!--<a href="#<%=Trim(RegionValueModal)%>" rel="modal:open" class="mb-2 ml-3  p-1 rounded-0 d-sm-none  text-blue add_country" style="color:#169FE6 !important">ADD COUNTRY</a>-->
										<%End If%>
                                    </div>
									<div class="d-flex justify-content-start flex-wrap w-100 ">
									<%End If%>
										
                                        <div class="ml-0 mr-5 mb-1 mt-2 send_collaborate_list" style="text-align:left;float:left;">
                                           <input type="checkbox" name="REGION" id="REGION" <%=checked_STR_Other(Trim(cname),Trim(RSCountry("country_name")))%>  value="<%=Trim(RSCountry("country_name"))%>"> <%=RSCountry("country_name")%>
                                        </div>
									
									
									<%region=Trim(RSCountry("region_name"))
										RSCountry.MoveNext
										Wend%>
										
									<%End If
									Set RSCountry = Nothing%>
									 </div>
								 </div>
								</div>
								</div>
					</section>
                    <!----Begin: REGION/COUNTRY:--->
					
					<%''''ReportCode,eNcID,Region,UpdateDate,Status
							CountryQryUSER="select Region, country_name from GIA_Research_Feedback_Region where ReportCode='"& session("giacode") &"' and eNcID='"&trim(request("encID"))&"'"
							''response.write CountryQryUSER
							Set RSCountryUSER = Server.CreateObject("ADODB.Recordset")
						   RSCountryUSER.Open CountryQryUSER, Datasource7
							if Trim(request("REGION"))<> "" then
								cname= Trim(request("REGION"))
							else
								cname= Trim(cname)
							
							end if
							If trim(ucase(cname))="USA" then
								cname = "United States"
							End If
							If Not RSCountryUSER.EOF Then 
							%> 
							<section>
								<div class="row mx-0  mb-2  mt-2 px-lg-3 px-sm-0 px-md-2 px-xl-3">
							<!----REGION USER ADDED--->
							
									<div class="left_column">
										<h4 class="mt-1">USER ADDED</h4>
									</div>
									<div class="right_column  py-2">
									<% while not RSCountryUSER.EOF
									
									%>	

										<div class="w-xl-30 w-lg-30 w-md-50 w-sm-100 mx-0 mt-2" style="text-align:left;float:left;">
                                        	<input type="checkbox" name="REGION" id="REGION" <%=checked_STR_Other(Trim(cname),Trim(RSCountryUSER("country_name")))%>  value="<%=Trim(RSCountryUSER("country_name"))%>"><%=RSCountryUSER("country_name")%> [<%=RSCountryUSER("region")%>]
										 </div>									
										
									<%RSCountryUSER.MoveNext
										Wend%>
								</div>		
								</div>
							</section>
							<%	end if%>
							
                    <!---MESSAGE---->
                    
					<div class="w-100 mt-2 ">
								 
								  <%If trim(request("Email_id"))="" then%><a href="#EUROPE" rel="modal:open" class=" rounded-0   text-blue add_country" style="color:#169FE6 !important;font-size:14px !important">ADD COUNTRY</a>
								  <%Else%>
								  <b>NOTE:</b> As a collaborate user you cannot change the settings. Please contact the person who has invited you to collaborate for any updates.
								  <%End If%>
							</div>
                   	</div>     		
		</section>
                            <div id="main">
<form name="frmadd" method="post" action="Ancillaries_2.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>&gregion=<%=trim(request("gregion"))%>&stype=<%=trim(request("stype"))%>&YearType=<%=trim(request("YearType"))%>&getDATA=<%=trim(request("getDATA"))%>&type=submit">
							 <div class="d-flex justify-content-center flex-nowrap w-100 mb-4 mx-auto bottom_links ">
                                
								<%If trim(request("Email_id"))="" then%>
                                   <button type="button"   name="btnsubmit" value="  NEXT  " onclick="Add_Ancillaries1();" class="btn btn-gia-primary text-white rounded-0 shadow m-3 font-weight-bold p-2">SAVE & NEXT</button>
								<%Else%>
									<button type="button"   name="btnsubmit" value="  NEXT  " onclick="Add_Ancillaries1_collaborate();" class="btn btn-gia-primary text-white rounded-0 shadow m-3 font-weight-bold p-2">NEXT</button>
								<%End If%>
									
									<!--a class="  bt-3 p-1" href="#alert" rel="modal:open">ALERTS</a>
                                
                                    <a href="#feedback_pop" rel="modal:open" class="  bt-1 p-1">FEEDBACK </a>
                                    <a href="https://www.strategyr.com/GIA_Research_collaborate.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>"  target="_new">COLLABORATE</a>
									
                                    <a class="  p-1  bt-3" data-toggle="collapse" href="#stats" role="button" aria-expanded="false" aria-controls="collapseExample">STATS</a-->
                                </div>
</form>
                                <div class="row collapse border stats_block" id="stats" data-parent="#main" data-parent="#main">
                                    <div class="p-2">
                                        <h2 align="center" class="font-weight-bold font-size-20 py-2 border-bottom text-center primary_color ">STATS</h2>
                                        <div class="d-flex flex-xl-row flex-lg-row flex-md-column flex-sm-column ">
                                            <div class="w-xl-50 w-lg-50 w-md-100 w-sm-100 my-2">
                                                <div class="p-2 ">
                                                    <h5 align="center" class="font-weight-bold font-size-15 py-2 border-bottom text-center  text-dark ">PEER-TO-PEER </h5>
                                                    <div class="w-100 border">
													<%
													
													Set RSStatsList = Server.CreateObject("ADODB.Recordset")
													STATSListQry="select * from APP_Simulator_Stats_14Jan21 where (MCP_CODE='" & session("giacode") & "' OR NT_CODE='" & session("giacode") & "')"

													Set Conn9 = Server.CreateObject("ADODB.Connection")
													Conn9.Open Datasource4
													''RSStatsList.CursorLocation=3 
													''response.write SegmentsListQry
													RSStatsList.Open STATSListQry, Conn9 '',1,2
													
													%>
                                                        <table class="table">
                                                            <thead class="thead-dark">
                                                                <tr>
                                                                    <th scope="col">YEAR</th>
                                                                    <th scope="col">PROJECT</th>
                                                                    <th scope="col">PLATFORM</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>2020</td>
                                                                    <td><%=round(trim(RSStatsList("Peer-to-Peer_Project_2020")))%></td>
                                                                    <td><%=round(trim(RSStatsList("Peer-to-Peer_Platform_2020")))%></td>
                                                                </tr>
                                                                <tr>

                                                                    <td>2021</td>
                                                                    <td><%=round(trim(RSStatsList("Peer-to-Peer_Project_2021")))%></td>
                                                                    <td><%=round(trim(RSStatsList("Peer-to-Peer_Platform_2021")))%></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="w-xl-50 w-lg-50 w-md-100 w-sm-100 my-2">
                                                <div class="p-2">
                                                    <h5 align="center" class="font-weight-bold font-size-15 py-2 border-bottom text-center  text-dark ">COMPANIES ENGAGED </h5>
                                                    <div class="w-100  border">
                                                        <table class="table">
                                                            <thead class="thead-dark">
                                                                <tr>
                                                                    <th scope="col">YEAR</th>
                                                                    <th scope="col">PROJECT</th>
                                                                    <th scope="col">PLATFORM</th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>2020</td>
                                                                    <td><%=round(trim(RSStatsList("Companies_Engaged_Project_2020")))%></td>
                                                                    <td><%=round(trim(RSStatsList("Companies_Engaged_Platform_2020")))%></td>
                                                                </tr>
                                                                <tr>

                                                                    <td>2021</td>
                                                                    <td><%=round(trim(RSStatsList("Companies_Engaged_Project_2021")))%></td>
                                                                    <td><%=round(trim(RSStatsList("Companies_Engaged_Platform_2021")))%></td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
											<%
											Set RSStatsList = Nothing
											Set Conn9 = Nothing
											%>
                                        </div>
                                    </div>
                                </div>


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



    <!----feedback--->
    <div id="feedback_pop" class="modal">
        <div class="w-100">


            <div class="p-3">
                <h3 align="center" class="font-weight-bold font-size-20 py-2 border-bottom text-center primary_color ">FEEDBACK</h3>

                <div class="my-2">
                    <div class="form-group">
                        <p class="text-left"> Product Innovaion @ StrategyR is an unending journey.  Your candid feedback helps us improvise.</p>
						<p>Overal Experience<br> &nbsp;<INPUT TYPE="Radio" Name="Experience" ID="E" Value="Excellent"><LABEL FOR="E">Excellent</LABEL>&nbsp;&nbsp;
						&nbsp;<INPUT TYPE="Radio" Name="Experience" ID="G" Value="Good"><LABEL FOR="G">Good</LABEL>&nbsp;&nbsp;&nbsp;<INPUT TYPE="Radio" Name="Experience" ID="O" Value="Okay"> <LABEL FOR="O">Okay</LABEL>&nbsp;
						&nbsp;&nbsp;<INPUT TYPE="Radio" Name="Experience" ID="N" Value="Not Satisfactory"><LABEL FOR="N">Not Satisfactory</LABEL>&nbsp;
						</p>
						Comments
                        <textarea class="form-control w-100 m-0" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <div class="w-100 text-center mb-0">
                        <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow">SUBMIT</button>
                        <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
                    </div>



                <!--/div>

            </div-->




        </div>


    </div>
	  </div>
                        </div>

                    </section>






    <!----Alert_BOX--->
    <div id="alert" class="modal">
        <div class="row alert_block">


            <div class="p-3">
                <h3 align="center" class="font-weight-bold font-size-20 py-2 border-bottom text-center primary_color ">ALERTS</h3>

                <div class="my-2">
                    <!--p align="left">Request a Global Expert Panel Registry. </p-->
                    <p style="font-size:15px !important" class="text-darker">Receive activity alerts for project updates. </p>
                    <div class="mb-3 ml-2">
                        <input data-brackets-id="213770" type="checkbox" name="alert" id="checkAll" onclick="toggle()" class="mb-3" value="ALL ALERTS" style="margin-top:2px">&nbsp;ALL ALERTS
                        <br />

                        <input data-brackets-id="213770" class="ml-4 mb-3" type="checkbox" name="alert" id="ALL_ALERTS" onclick="toggle()" value="ALL ALERTS" style="margin-top:2px">&nbsp;Peer-to-Peer
                        <br />

                        <input data-brackets-id="213770" class="ml-4 mb-3" type="checkbox" name="alert" id="ALL_ALERTS" onclick="toggle()" value="ALL ALERTS" style="margin-top:2px">&nbsp;Competitive Enterprise
                        <br />

                        <input data-brackets-id="213770" class="ml-4 mb-3" type="checkbox" name="alert" id="ALL_ALERTS" onclick="toggle()" value="ALL ALERTS " style="margin-top:2px">&nbsp;Project Updates



                    </div>

                    <div>
                        FREQUENCY: &nbsp;
                        <input data-brackets-id="206492" type="radio" name="Frequency" id="Month" value="Month" style="margin-top:2px" checked="">&nbsp;Month&nbsp;&nbsp;

                        <input data-brackets-id="206492" type="radio" name="Frequency" id="Quarter" value="Quarter" style="margin-top:2px" checked="">&nbsp;Quarter&nbsp;&nbsp;
						<input data-brackets-id="206492" type="radio" name="Frequency" id="Frequency" value="None" style="margin-top:2px" checked="">&nbsp;None
                    </div>

                </div>
                <hr>
                <div class="row text-center mb-0">
                    <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow">SUBMIT</button>
                    <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
                </div>


            </div>


        </div>
    </div>





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

function addNewUnits() {

var vGiaUnits = $('input[id="txtunits"]').val();
var vencID = $('input[id="txtencID"]').val();
var vGiaCode = $('input[id="txtGiaCode"]').val();
var vGetCurrency = $('input[id="MARKET_MEASURE_UNITS"]:checked').val();
alert (vGiaUnits);
			if(vGiaUnits!="")
			 {
			  $.ajax({
				url: "Ajax_AddGIA_Research_Add_Units.asp",
				type: "POST",
				data:'GIAUnits='+encodeURIComponent(vGiaUnits)+'&vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&vGetCurrecy='+encodeURIComponent(vGetCurrency)+'', 		
				success: function(data){
				//alert(data); //&vCurrencyExchange='+encodeURIComponent(vCurrencyExchange)+'
				alert("Units Added Sucessfully");
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
				alert('New Units text cannot be left blank');
			  }	
}

function addExistingUnits(){

var vGiaUnits = $('input[name="inlineRadioOptions"]:checked').val();
var vencID = $('input[id="txtencID"]').val();
var vGiaCode = $('input[id="txtGiaCode"]').val();
var vGetCurrency = $('input[id="MARKET_MEASURE_UNITS"]:checked').val();
//alert (vGiaUnits);
			if(vGiaUnits!="")
			 {
			  $.ajax({
				url: "Ajax_AddGIA_Research_Add_Existing_Units.asp",
				type: "POST",
				data:'GIAUnits='+encodeURIComponent(vGiaUnits)+'&vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&vGetCurrecy='+encodeURIComponent(vGetCurrency)+'', 		
				success: function(data){
				//alert(data); //&vCurrencyExchange='+encodeURIComponent(vCurrencyExchange)+'
				alert("Units Added Sucessfully");
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
				alert('New Units text cannot be left blank');
			  }	

}
</script>
<div id="currency_block" class="modal">
        <div class="row m-0 ">
            <h3 class="text-center w-100 font-weigth-bold" style="color: #900;"><b>CHANGE CURRENCY</b> (Exchange rate)</h3>
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
            <button class="btn btn-gia-primary btn-sm m-3 p-2 rounded-0 shadow" onclick="addNewCurrency()">UPDATE</button>
        </div>
    </div>
	
<div id="units_block" class="modal">
        <div class="row m-0 ">
            <h3 class="text-center w-100 font-weigth-bold" style="color: #900;"><b>CHANGE UNITS</b></h3>
            <hr/>
			<div class="text-center mb-3">
			<h4 class="text-center w-100 nb-3 font-weigth-bold"><b>ADD NEW UNITS </b></h4><input type="textbox" name="txtunits" id="txtunits"> <button class="border-0" style="color:#169FE6 !important" onclick="addNewUnits()">ADD & UPDATE</button>	
			</div>			
             <div class="d-flex flex-wrap justify-content-center justify-content-md-between">	
			<h4 class="text-center nb-3 w-100 font-weigth-bold"><b>SELECT EXISTING UNITS </b></h4>		
			<div data-brackets-id="33023" class="d-flex flex-wrap w-lg-100 w-xl-100 w-md-100 w-sm-100 mx-auto ">			
			<%''select * from REPORTS_GSA_REGIONS$
			Dim Units_name
			Units_name = "UNITS"
						UnitsQry = "SELECT * FROM PROJECT_UNITS_VALUE$ order by sno"
						''response.write CountryQry
						Set RSUnits = Server.CreateObject("ADODB.Recordset")
					   RSUnits.Open UnitsQry, Datasource7						
						If Not RSUnits.EOF Then 
							while not RSUnits.EOF%>								
								 <div class="form-check form-check-inline px-2 w-sm-50 w-md-30 w-lg-25 w-xl-30 d-flex">
									<input class="form-check-input" type="radio" name="inlineRadioOptions" id="<%=RSUnits("Units_Name")%>" <%=checked(trim(ucase(Units_name)),trim(ucase(RSUnits("Units_Name"))))%> value="<%=RSUnits("Units_Name")%>" class="Units">
									<label class="form-check-label" for="<%=RSUnits("Units_Name")%>"><%=RSUnits("Units_Name")%> 
									<!--<input type="textbox" id="TxtUnitsExchange<%'=RSCurrency("Currency_Name")%>" name="TxtCurrencyExchange<%'=RSCurrency("Currency_Name")%>" value="<%'=RSCurrency("To_USD_Conversion")%>" >--></label>
									
								</div>
							
							<%RSUnits.MoveNext
							Wend%>
						</select>
						<!--button type="button" class="btn btn-gia-primary btn-sm " style="width:29px; height:29px;" title="Add Region/Country" onClick='addNewRegion()'><i class="fa fa-plus"  aria-hidden="true"></i-->
						
						<%End If
						Set RSUnits = Nothing
						''response.write From_USD_Conversion & " Currency "
						%>
						
            </div>
		
			</div>
            
		</div>
		<hr/>
        <div class="row text-center mb-0">
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow" onclick="addExistingUnits()">UPDATE</button> 
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

<!--- Africa-->

<div id="AFRICA" class="modal">
        <div class="row m-0 ">

            <h3 align="center" class="font-weight-bold font-size-20 py-2  text-center primary_color ">SELECT COUNTRY</h3>
            <hr>
            <div class="d-flex flex-wrap justify-content-center justify-content-md-between">
                <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
                    <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="US Dollar (USD)" value="US Dollar">
                    <label class="form-check-label" for="US Dollar (USD)">Nigeria
                        <!--<input type="textbox" id="TxtCurrencyExchange" name="TxtCurrencyExchange" value="" >-->
                    </label>
                </div>
                <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
                    <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="British Pound (GBP)" value="British Pound">
                    <label class="form-check-label" for="British Pound (GBP)">South Africa
                        <!--<input type="textbox" id="TxtCurrencyExchange" name="TxtCurrencyExchange" value="" >-->
                    </label>
                </div>
				 <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
                    <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="British Pound (GBP)" value="British Pound">
                    <label class="form-check-label" for="British Pound (GBP)">Egypt
                        <!--<input type="textbox" id="TxtCurrencyExchange" name="TxtCurrencyExchange" value="" >-->
                    </label>
                </div>
                <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
                    <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="Euro (EUR)" value="Euro">
                    <label class="form-check-label" for="Euro (EUR)">Algeria
                        <!--<input type="textbox" id="TxtCurrencyExchange" name="TxtCurrencyExchange" value="" >-->
                    </label>
                </div>
                <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
                    <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="Swiss Franc (CHF)" value="Swiss Franc">
                    <label class="form-check-label" for="Swiss Franc (CHF)">Angola
                        <!--<input type="textbox" id="TxtCurrencyExchange" name="TxtCurrencyExchange" value="" >-->
                    </label>
                </div>
                <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
                    <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="Canadian Dollar (CAD)" value="Canadian Dollar">
                    <label class="form-check-label" for="Canadian Dollar (CAD)">Morocco
                        <!--<input type="textbox" id="TxtCurrencyExchange" name="TxtCurrencyExchange" value="" >-->
                    </label>
                </div>
                <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
                    <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="Australian Dollar (AUD)" value="Australian Dollar">
                    <label class="form-check-label" for="Australian Dollar (AUD)">Libya
                        <!--<input type="textbox" id="TxtCurrencyExchange" name="TxtCurrencyExchange" value="" >-->
                    </label>
                </div>
                <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
                    <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="Chinese Yuan (CNY)" value="Chinese Yuan">
                    <label class="form-check-label" for="Chinese Yuan (CNY)">Sudan
                        <!--<input type="textbox" id="TxtCurrencyExchange" name="TxtCurrencyExchange" value="" >-->
                    </label>
                </div>
                

                <!--button type="button" class="btn btn-gia-primary btn-sm " style="width:29px; height:29px;" title="Add Region/Country" onClick='addNewRegion()'><i class="fa fa-plus"  aria-hidden="true"></i-->
            </div>
            <hr>
        </div>
        <div class="row text-center mb-0">
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow" onClick="addNewRegion();">ADD COUNTRY</button>
            <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
        </div>
    </div>
<!-- END Africa -->

    <!----Asia-Pacific--->
    <div id="ASIA-PACIFIC" class="modal">
        <div class="row m-0 ">

            <h3 align="center" class="font-weight-bold font-size-20 py-2  text-center primary_color ">SELECT COUNTRY</h3>
            <hr>
            <div class="d-flex flex-wrap justify-content-center justify-content-md-between">
				<%''select * from REPORTS_GSA_REGIONS$  SELECT * FROM GIA_REGIONS_COUNTRIES$
					CountryQryAP = "select country_name as region_country_name,region,sno as list_id from GIA_Analytix.dbo.GIA_REGIONS_COUNTRIES$ where region='Asia-Pacific' and country_name not in (select distinct country_name from REPORT_COUNTRIES_ANALYTIX$ where gia_no='"& session("giacode") &"')"
					Set RSAPCountry = Server.CreateObject("ADODB.Recordset")
				    RSAPCountry.Open CountryQryAP, Datasource7					
					If Not RSAPCountry.EOF Then %> 					
					
					
						<% while not RSAPCountry.EOF%>
							
							  <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
								<input class="form-check-input" type="checkbox" name="AddNewCountryASIA-PACIFIC" id="AddNewCountryASIA-PACIFIC" value="<%=RSAPCountry("region_country_name")%>">
								<label class="form-check-label" for="<%=RSAPCountry("region_country_name")%>"><%=RSAPCountry("region_country_name")%>
									
								</label>
							</div>
						<%RSAPCountry.MoveNext
						Wend
						''Set RSNewCountry = nothing
						%>
					
					<%End If
					Set RSAPCountry = Nothing
					%>
               

                <!--button type="button" class="btn btn-gia-primary btn-sm " style="width:29px; height:29px;" title="Add Region/Country" onClick='addNewRegion()'><i class="fa fa-plus"  aria-hidden="true"></i-->
            </div>
			
            <hr/>
        </div>
        <div class="row text-center mb-0">
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow" onClick="addNewRegionASIA('ASIA-PACIFIC');">ADD COUNTRY</button>
            <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
        </div>
    </div>



    <!----EUROPE--->
    <div id="EUROPE" class="modal" style="max-width: 600px;">
        <div class="row m-0 ">
            <h3 class="text-center w-100 font-weigth-bold" style="color: #900;"><b>SELECT COUNTRY</b></h3>

            <hr>
            <div class="d-flex flex-wrap justify-content-start justify-content-md-start">
				<%''select * from REPORTS_GSA_REGIONS$  SELECT * FROM GIA_REGIONS_COUNTRIES$
					''CountryQryE = "select country_name as region_country_name,region,sno as list_id from GIA_Analytix.dbo.GIA_REGIONS_COUNTRIES$ where region='Europe' and country_name not in (select distinct country_name from REPORT_COUNTRIES_ANALYTIX$ where gia_no='"& session("giacode") &"')"
					CountryQryE = "select country_name as region_country_name,region,sno as list_id from GIA_Analytix.dbo.GIA_REGIONS_COUNTRIES$ where country_name not in (select distinct country_name from REPORT_COUNTRIES_ANALYTIX$ where gia_no='"& session("giacode") &"') order by region,country_name"
					Set RSECountry = Server.CreateObject("ADODB.Recordset")
				    RSECountry.Open CountryQryE, Datasource7					
					If Not RSECountry.EOF Then %> 					
					
					
						<% while not RSECountry.EOF%>
							
							  <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
								<input class="form-check-input" type="checkbox" name="AddNewCountryEUROPE" id="AddNewCountryEUROPE" value="<%=RSECountry("region_country_name")%>##<%=RSECountry("region")%>">
								<label class="form-check-label" for="<%=RSECountry("region_country_name")%>##<%=RSECountry("region")%>"><%=RSECountry("region_country_name")%> (<%=RSECountry("region")%>)
									
								</label>
							</div>
						<%RSECountry.MoveNext
						Wend
						
						%>
					
					<%End If
					Set RSECountry = Nothing
					%>
                <!--button type="button" class="btn btn-gia-primary btn-sm " style="width:29px; height:29px;" title="Add Region/Country" onClick='addNewRegion()'><i class="fa fa-plus"  aria-hidden="true"></i-->
            </div>
			<!--p class="text-center mb-0 mt-3 text-danger"> Your Contry not hear?</p-->
			<!--div class="text-center p-3 d-flex justify-content-center">
			
			  <input type="textbox" class="p-1 simulator-input-text" id="txtAddCountry" placeholder="ADD YOUR COUNTRY" name="txtAddCountry"><button class="btn btn-gia-primary btn-sm py-1 mx-2 my-1 rounded-0 shadow"  onClick="">GO</button>
			</div>
            <hr-->

        </div>
        <div class="row text-center mb-0">
            <button class="btn btn-gia-primary btn-sm mx-2 m-3 p-2 rounded-0 shadow"  onClick="addNewRegionCountry('EUROPE');">ADD COUNTRY</button>
            <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
        </div>
    </div>

    <!----Latin_America--->
    <div id="LATIN_AMERICA" class="modal">
        <div class="row m-0 ">
            <h3 align="center" class="font-weight-bold font-size-20 py-2  text-center primary_color "> SELECT COUNTRY </h3>
            <hr>
            <div class="d-flex flex-wrap justify-content-center justify-content-md-between">
				<%''select * from REPORTS_GSA_REGIONS$  SELECT * FROM GIA_REGIONS_COUNTRIES$
					CountryQryLA = "select country_name as region_country_name,region,sno as list_id from GIA_Analytix.dbo.GIA_REGIONS_COUNTRIES$ where region='Latin America' and country_name not in (select distinct country_name from REPORT_COUNTRIES_ANALYTIX$ where gia_no='"& session("giacode") &"')"
					Set RSLACountry = Server.CreateObject("ADODB.Recordset")
				    RSLACountry.Open CountryQryLA, Datasource7					
					If Not RSLACountry.EOF Then %> 					
					
					
						<% while not RSLACountry.EOF%>
							
							  <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
								<input class="form-check-input" type="checkbox" name="AddNewCountryLATIN_AMERICA" id="AddNewCountryLATIN_AMERICA" value="<%=RSLACountry("region_country_name")%>">
								<label class="form-check-label" for="<%=RSLACountry("region_country_name")%>"><%=RSLACountry("region_country_name")%>
									
								</label>
							</div>
						<%RSLACountry.MoveNext
						Wend
						
						%>
					
					<%End If
					Set RSLACountry = Nothing
					%>
                
                <!--button type="button" class="btn btn-gia-primary btn-sm " style="width:29px; height:29px;" title="Add Region/Country" onClick='addNewRegion()'><i class="fa fa-plus"  aria-hidden="true"></i-->
            </div>
            <hr>
        </div>
        <div class="row text-center mb-0">
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow" onClick="addNewRegionLATIN('LATIN_AMERICA');">ADD COUNTRY</button>
            <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
        </div>
    </div>


    <!----middle East--->
    <div id="MIDDLE_EAST" class="modal">
        <div class="row m-0 ">
            <h3 align="center" class="font-weight-bold font-size-20 py-2  text-center primary_color "> SELECT COUNTRY </h3>
            <hr>
            <div class="d-flex flex-wrap justify-content-center justify-content-md-between">
				<%''select * from REPORTS_GSA_REGIONS$  SELECT * FROM GIA_REGIONS_COUNTRIES$
					CountryQryME = "select country_name as region_country_name,region,sno as list_id from GIA_Analytix.dbo.GIA_REGIONS_COUNTRIES$ where region='Middle East' and country_name not in (select distinct country_name from REPORT_COUNTRIES_ANALYTIX$ where gia_no='"& session("giacode") &"')"
					Set RSMECountry = Server.CreateObject("ADODB.Recordset")
				    RSMECountry.Open CountryQryME, Datasource7					
					If Not RSMECountry.EOF Then %> 					
					
					
						<% while not RSMECountry.EOF%>
							
							  <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
								<input class="form-check-input" type="checkbox" name="AddNewCountryMIDDLE_EAST" id="AddNewCountryMIDDLE_EAST" value="<%=RSMECountry("region_country_name")%>">
								<label class="form-check-label" for="<%=RSMECountry("region_country_name")%>"><%=RSMECountry("region_country_name")%>
									
								</label>
							</div>
						<%RSMECountry.MoveNext
						Wend
						
						%>
					
					<%End If
					Set RSMECountry = Nothing
					%>
                
                <!--button type="button" class="btn btn-gia-primary btn-sm " style="width:29px; height:29px;" title="Add Region/Country" onClick='addNewRegion()'><i class="fa fa-plus"  aria-hidden="true"></i-->
            </div>
            <hr>
        </div>
        <div class="row text-center mb-0">
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow"  onClick="addNewRegionMIDDLE('MIDDLE_EAST');">ADD COUNTRY</button>
            <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
        </div>
    </div>





    <!---Select segment---->


    <div id="segment_block" class="modal">
        <div class="row m-0 ">
            <div>
				<%Set RSSegmentsType = Server.CreateObject("ADODB.Recordset")
				SegmentsTypeQry="select distinct Type from vwReports_GIA_Segments$ where GIA_No='" & session("giacode") & "' and Name not like 'Other %' "
				Set Conn7 = Server.CreateObject("ADODB.Connection")
				Conn7.Open Datasource7
				RSSegmentsType.Open SegmentsTypeQry, Conn7 '',1,2
				''response.write SegmentsListQry
								%>
				
				
                <div class="btn-group d-flex justify-content-center  flex-wrap">

                    <div class="form-group d-flex p-2 mb-2 justify-content-center w-100">
                        
						
                        <input type="textbox" class="form-control p-2 shadow simulator-input-text w-lg-70 w-xl-70 w-md-80 w-sm-100 " aria-describedby="emailHelp" placeholder="SEGMENT" id="txtSegment" name="txtSegment" >
					        
                       <!-- <div>

                            <button type="button" class="btn  p-1 rounded-0 dropdown-toggle dropdown-toggle-split text-white " id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent" style="background:#e37038;height:29px;width:29px;border-radious:0px!important;">
                                <span class="sr-only">Select type</span>
                            </button>
                            
								
                            
                        </div>-->
						

                    </div>
				
                </div>
					<div class="d-flex justify-content-xl-center justify-content-lg-center  justify-content-md-center justify-content-sm-start  flex-wrap px-2">
					<%If Not RSSegmentsType.EOF Then
						while not RSSegmentsType.EOF%>
					<!--<a class="dropdown-item" href="#"><%'=RSSegmentsType("Type")%></a>-->
						<div class="p-1 mr-2 mt-1 ">
				   <input  type="radio" name="DDlSegmentsType" id="DDlSegmentsType" <%=checked_STR(Trim(segmenttype),Trim(RSSegmentsType("type")))%>   value="<%=Trim(RSSegmentsType("type"))%>"><span> <%=RSSegmentsType("type")%> </span>
				   </div>
					<%RSSegmentsType.movenext
					wend
					end if 
					RSSegmentsType.close
					set RSSegmentsType=nothing
					%>
					</div>
            </div>
            <hr>
        </div>
        <div class="row text-center mb-0 text-sm-center text-md-center text-lg-center text-xl-center">
            <button class="btn btn-gia-primary btn-sm mx-2 p-2 my-2 rounded-0 shadow" onClick='addNewSegment()' style="width:78px;">ADD</button>
            <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
        </div>
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
<script src="js/limit.text.js"></script>

<script>
   $(document).ready(function(){
         $('.textlimit').limitText({
            length: 35
        });
    })

</script>
<script>
    $("#checkAll").click(function() {
        $('input:checkbox').not(this).prop('checked', this.checked);
    });

</script>

</html>
