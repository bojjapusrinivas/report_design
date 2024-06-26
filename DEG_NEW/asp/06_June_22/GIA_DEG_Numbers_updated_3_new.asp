 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
       if(window.history.forward(1) != null)
           window.history.forward(1);
</script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        GIA - ANALYTICAL TOOL 
    </title>
    <!-- CSS STYLES-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
    <link rel="stylesheet" href="https://bojjapusrinivas.github.io/report_design/DEG_NEW/gia_switches.css" />
    <link rel="stylesheet" href="deg_custom_styles.css" />
	<link rel="stylesheet" href="handle-counter.min.css" />
	<style>
        #segment_allication .ranking_slider .irs.irs--big.js-irs-0.irs-with-grid:nth-child(2) {
            display: NONE;
        }

        .js-range-slider {
            DISPLAY: NONE;
        }

        #segment_allication .ranking_slider p,
        #market-staging .ranking_slider p {
            display: none;
        }
		#segment_allocation_primary p {
		display: none !important;
}
    </style>
    <!--SCRIPTS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>
	<!--<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<!--- TO PRINT WITH BACKGROUND COLOR ON THE PRINTER-->
	<style type="text/css">
	@media print { body { -webkit-print-color-adjust: exact; } }
	</style>
	<!--- END PRINT WITH BACKGROUND COLOR ON THE PRINTER-->
	
	<SCRIPT LANGUAGE="VBScript" RUNAT="Server">
		function getStartEndYearValues(GTMCPCode)
			Set MyCon_StartEndYear = Server.CreateObject("ADODB.Connection")		
			MyCon_StartEndYear.Open Datasource7
						Set rsStartEndYear = Server.CreateObject("ADODB.Recordset")
						rsStartEndYear.ActiveConnection = MyCon_StartEndYear
						usqlStartEndYear="select * from REPORTS_GIA$  where GIA_no='" &  trim(GTMCPCode) & "'"					
						rsStartEndYear.Open usqlStartEndYear
						If not rsStartEndYear.eof Then
							getStartEndYearValues = trim(rsStartEndYear("ORIG_YEAR"))&"::"&trim(rsStartEndYear("START_YEAR"))&"::"&trim(rsStartEndYear("END_YEAR"))&""
						Else
							getStartEndYearValues = "2012::2019::2030"
						End If
						Set rsStartEndYear = Nothing
			Set MyCon_StartEndYear = Nothing
		end function
	</script>
	<script>
	function getGIApageRefresh(GIANO)
	{
		//alert (GIANO);
		
		var vGIANO = $("#txtGIA_NO").val(); 
			//alert (RegCountryName);
			//alert (Type1);
						
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				 //alert(vGIANO);				 
				  $.ajax({
							url: "Ajax_AnalytixPercentDataUpdate_MS.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){							
							alert('Data Refreshed');						
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 
		//GetGiaData(GIANO);
	}
	
	
  	function GetGiaData(GIANO) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(vGIANO); 
				if (vGIANO =='')
				{
					vGIANO = GIANO;
				}
				if (vGIANO != null && vGIANO != '' )		 
				 {	 
				  $.ajax({				        	
							url: "getGIAData_new.asp", 
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){
							//alert(data);
							//REGION,UNITS, ORIG_YEAR, ORIG_VALUE, START_YEAR, START_VALUE, START_VALUE1,START_TWEAKED_VALUE,END_YEAR, END_VALUE,CAGR, TWEAKED_CAGR,Region_Type,type_count
						if (data.length > 1)
							{ 
							var res = data.split("##");
							var vTopic = res[0];
						    var vsegCount = res[1];		
						    var vB2B = res[2];	
							// alert(vB2B);
							
							 $("#txtTOPIC").val(vTopic);
							  $("#txtSEG_Count").val(vsegCount);
							 
							  if (vB2B=="Y") 
							  {
								  $("#rdB2B").prop("checked", true);	
								}
								else
								{
									$("#rdB2B").prop("checked", false);
							    }
							
							 if (vB2C=="Y") 
							   {
								$("#rdB2C").prop("checked", true);	
								}
								else
								{
									$("#rdB2C").prop("checked", false);
							    }
								if (vB2G=="Y") 
							  {
								 $("#rdB2G").prop("checked", true);	
								}
								else
								{
									$("#rdB2G").prop("checked", false);
							    }
							 var vB2G = res[3];	
							 var vB2C = res[4];
							 var vREGION = res[5];
							 var vUNITS = res[6];
							 var vORIG_YEAR=res[7];
							 $('#txtORIG_YEAR').val(vORIG_YEAR);
							 var vORIG_VALUE=res[8];
							 $("#txtORIG_VALUE").val(vORIG_VALUE);
							 var vSTART_YEAR=res[9];
							 $('#txtSTART_YEAR').val(vSTART_YEAR);	
							 //$('#txtMarket_YEAR option:eq(3)').prop('selected', true)
							// $('#txtMarket_YEAR option[value="+vSTART_YEAR+"]').attr('selected', 'selected');
							//alert(vSTART_YEAR);
							 $('#txtMarket_YEAR option[value=' + vSTART_YEAR + ']').attr('selected', 'selected');
							 var vSTART_VALUE=res[10];
							  $("#txtSTART_VALUE").val(vSTART_VALUE);
							 var vSTART_VALUE1=res[11];
							 $("#txtSTART_VALUE1").val(vSTART_VALUE1);
							 var vSTART_TWEAKED_VALUE=res[12]; 
							 $("#txtSTART_TWEAKED_VALUE").val(vSTART_TWEAKED_VALUE);
							  $("#txtMarket_VALUE").val(vSTART_TWEAKED_VALUE);
							 var vEND_YEAR = res[13];
							  $("#txtEND_YEAR").val(vEND_YEAR);
							 var vEND_VALUE=res[14];
							  $("#txtEND_VALUE").val(vEND_VALUE);
							 var vTWEAKED_END =res[15];
							 $("#txtTWEAKED_END_VALUE").val(vTWEAKED_END);
							 var vCAGR=res[16];
							 $("#txtCAGR").val(vCAGR);							 
							 var vTWEAKED_CAGR=res[17];
							  $("#txtCAGR_TWEAK_PERCENTAGE").val(vTWEAKED_CAGR);
							  $("#txtMarket_CAGR").val(vTWEAKED_CAGR);
							
							 var v2014_YOY = res[20];
							 var v2019_YOY = res[21];
							 var v2030_YOY = res[22];
							 
							 //txtMarket_VALUE14
							 $("#txtMarket_VALUE14").val(v2014_YOY);
							 $("#txtMarket_VALUE19").val(v2019_YOY);
							 $("#txtMarket_VALUE30").val(v2030_YOY);
							 
							 var vRegion_Type=res[18]; 							 
							 
							 $("#HidGIO_Type").val(vRegion_Type);
							
							if(vRegion_Type=="GEO_A")
							 {
							   $("#rdGEOA").prop("checked", true);	
							 }
							 
							 if(vRegion_Type=="GEO_B")
							 {
							   $("#rdGEOB").prop("checked", true);	
							 }
							
							 if(vRegion_Type=="GEO_C")
							 {
							   $("#rdGEOC").prop("checked", true);	
							 }
							 
								var vtype_count=res[19];
								//alert(vtype_count); 
								$("#rdtype_count").val(vtype_count); 
								//alert(vORIG_YEAR);
								//
								// alert(vSTART_YEAR);
								//				  
						    
								// alert(vTopic);
								//  alert(vsegCount);
							    
								//baseline_data_table.append(vGetSegData);
								
								GetSegData_Primary(GIANO);
								GetSegData(GIANO);
								GetSegTypeData(GIANO);
								GetSegTypePrimaryAppdata_C(GIANO);
								GetSegTypePrimaryAppdata_B(GIANO);
								GetSegmentShowData(GIANO);
								ViewImpactData();
								
								getCountryTweeks(GIANO,vRegion_Type);
								//getCountryTweeks_DataDisplay(GIANO,vRegion_Type);
								/// IF exists then show the generated data
								getCountryTweeks_DataDisplay_Tool(GIANO,vRegion_Type);
								getCompetitiveMarketPosition(GIANO);
								
								getCountryATTRIBUTES(GIANO,vRegion_Type);
								getSegTypeallocation(GIANO);
								ViewSecondary_Market_Factors('PANDEMIC');
								ViewSecondary_Market_Factors('SUPPLY_CHAIN');
								ViewSecondary_Market_Factors('CHIP_SHORTAGE');
								
								//UpdateReportCMP('0','','ALL');
							  }
							  else
							  {
								$("#rdB2B").prop("checked", false);
								$("#rdB2C").prop("checked", false);
								$("#rdB2G").prop("checked", false);
								$("#rdGEOA").prop("checked", false);	
								$("#rdGEOB").prop("checked", false);	
								$("#rdGEOB").prop("checked", false);	
								$("#txtTOPIC").val('');
								$("#txtSEG_Count").val('');
								$("#txtORIG_VALUE").val('');
								$("#txtSTART_VALUE").val('');
								$("#txtSTART_VALUE1").val('');
								$("#txtSTART_TWEAKED_VALUE").val('');
								$("#txtCAGR").val('');	
								$("#txtCAGR_TWEAK_PERCENTAGE").val('');
								$("#txtMarket_VALUE").val('');
								$("#txtMarket_CAGR").val('');									  
							  }
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});				
				  } 
		}		
		
		function GetCountryTypeTweeks(vCountry)
		{
		  
		                    var vGIANO = $("#txtGIA_NO").val(); 
		                    var GIOType = $("#HidGIO_Type").val(); 
							 getCountryTweeksNEW(vGIANO,GIOType,vCountry);
							// alert(vGIANO);
							// alert(vCountry);
							//  alert(GIOType);
		
		}
		
		function getCountryTweeksNEW(vGIANO,GIOType,vCountry) {	
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getCountryTweeks_new.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&GIOType='+GIOType+'&vCountry='+vCountry+'',							    
							success: function(data){
							//alert(data); 
							$('#'+vCountry).empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		}
		
		
			function GetSegData(GIANO) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);
//			url: "getSegData.asp",	
				  $.ajax({
							
							url: "getSegData_sub.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){							
							//var vGetSegData = data;
							//alert(data);
							//alert(data);
							//REGION,UNITS, ORIG_YEAR, ORIG_VALUE, START_YEAR, START_VALUE, START_VALUE1,START_TWEAKED_VALUE,END_YEAR, END_VALUE,CAGR, TWEAKED_CAGR,Region_Type,type_count
						    //var res = data.split("##");
							//var vTopic = res[0];
						    // var vsegCount = res[1];		
						    //var vB2B = res[2];
							
							$('#segment_allication').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});				
				  } 	
		}
		
		///segment_allocation_primary
			function GetSegData_Primary(GIANO) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getSegData_Primary_new.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){							
							//var vGetSegData = data;
								//alert(data);
							//alert(data);
							//REGION,UNITS, ORIG_YEAR, ORIG_VALUE, START_YEAR, START_VALUE, START_VALUE1,START_TWEAKED_VALUE,END_YEAR, END_VALUE,CAGR, TWEAKED_CAGR,Region_Type,type_count
						    
 							 //var res = data.split("##");
							 //var vTopic = res[0];
						    // var vsegCount = res[1];		
						     //var vB2B = res[2];	
							 $('#segment_allocation_primary').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});				
				  } 	
		}
		
		function GetSegTypeData(GIANO) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getSegTypeData.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){
							
							//var vGetSegData = data;
								//alert(data);
							//alert(data);
							//REGION,UNITS, ORIG_YEAR, ORIG_VALUE, START_YEAR, START_VALUE, START_VALUE1,START_TWEAKED_VALUE,END_YEAR, END_VALUE,CAGR, TWEAKED_CAGR,Region_Type,type_count
						    
 							 //var res = data.split("##");
							 //var vTopic = res[0];
						    // var vsegCount = res[1];		
						     //var vB2B = res[2];	
							 $('#modality_table').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});				
				  } 
		}
		
		function GetSegTypePrimaryAppdata_C(GIANO) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getSegTypePrimaryAppdataData.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){
							
							//var vGetSegData = data;
								//alert(data);
							//alert(data);
							//REGION,UNITS, ORIG_YEAR, ORIG_VALUE, START_YEAR, START_VALUE, START_VALUE1,START_TWEAKED_VALUE,END_YEAR, END_VALUE,CAGR, TWEAKED_CAGR,Region_Type,type_count
						    
 							 //var res = data.split("##");
							 //var vTopic = res[0];
						    // var vsegCount = res[1];		
						     //var vB2B = res[2];	
							 //
							$('#SegPrimaryAppData').empty().append(data);
							var addChanel="<div style='float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px'><input type='checkbox' name='rdSegType' customatt='radio_option' style='float:left' class='mr-2' ><b>End-Use</b>&nbsp;&nbsp;&nbsp;<input type='checkbox' name='rdSegType' <input type='checkbox' name='rdSegType' customatt='radio_option' style='float:left' class='mr-2' ><b>Technology</b>&nbsp;&nbsp;&nbsp;<input type='checkbox' data-toggle='collapse' data-target='#SHOW_ADD_APPLICATION' aria-expanded='false' aria-controls='collapseExample' class='float-left mx-2 mt-2'><b>Other</b> &nbsp;(select to add new)</div>";
							/// below removing the data to show only the technology and end-use
							///$('#SegPrimaryAppData1').empty().append(data+addChanel);
							$('#SegPrimaryAppData1').empty().append(addChanel);
							 
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});				
				  }
		}
		
		
		function GetSegTypePrimaryAppdata_B(GIANO) { 
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getSegTypePrimaryAppdataData_B.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){
							
							//var vGetSegData = data;
								//alert(data);
							//alert(data);
							//REGION,UNITS, ORIG_YEAR, ORIG_VALUE, START_YEAR, START_VALUE, START_VALUE1,START_TWEAKED_VALUE,END_YEAR, END_VALUE,CAGR, TWEAKED_CAGR,Region_Type,type_count
						    
 							 //var res = data.split("##");
							 //var vTopic = res[0];
						    // var vsegCount = res[1];		
						     //var vB2B = res[2];	
							 //SegPrimaryData
							$('#SegPrimaryData').empty().append(data);							
							 
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});				
				  }
		}

		//SegmentShowData
		
		function updateKeyApplicationType(KeySegName,PrmySegName)
		{
			var vGIANO = $("#txtGIA_NO").val(); 
			//alert (vGIANO);
			//var vGIOType = $("input[name='chkKeySegType']:checked").val();
			var vKey_Value = $("input[name='chkKeySegType"+KeySegName+"']:checked").val();
			//alert (vKey_Value);
			//alert (PrmySegName);
			if (vKey_Value == KeySegName)
			{
				//alert ('Value checked');
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "UpdateSegTypeKeyAppValue.asp",
							type: "POST",
							data:'vGIANO='+encodeURIComponent(vGIANO)+'&vKeySegName='+encodeURIComponent(KeySegName)+'&vPrmySegName='+encodeURIComponent(PrmySegName)+'',
							success: function(data){
							//alert(data);
							GetSegTypePrimaryAppdata_B(vGIANO);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});				
				  }
			}
			else
			{
				alert ('Please select other application to make it as key application');
				$("input[name='chkKeySegType"+KeySegName+"']").prop("checked", true);
			}
		}

		function GetSegmentShowData(GIANO) { 
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getSegmentShowData_SHORT_NEW.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){
							
							//var vGetSegData = data;
								//alert(data);
							//alert(data);
							//REGION,UNITS, ORIG_YEAR, ORIG_VALUE, START_YEAR, START_VALUE, START_VALUE1,START_TWEAKED_VALUE,END_YEAR, END_VALUE,CAGR, TWEAKED_CAGR,Region_Type,type_count
						    
 							 //var res = data.split("##");
							 //var vTopic = res[0];
						    // var vsegCount = res[1];		
						     //var vB2B = res[2];	
							 //SegPrimaryData
							$('#SegmentShowData').empty().append(data);							
							 
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});				
				  }
		}
		
		function UpdateStagingCountry(str)
		{
		//alert('slider');
		 var res = str.split("##"); 		
			var vGIAType = res[0];
		    var vCountry = res[1];
			var vCountryVal = $("#rank_input_"+vCountry).val(); 
			//alert(vGIAType);
			//alert(vCountry);
			//alert(vCountryVal);		
				if (vGIAType != null && vGIAType != '' )		 
				 {	
				  $.ajax({
							url: "AjaxUpdateCountryTweeks.asp",
							type: "POST",
							data:'vCountry='+vCountry+'&vCountryVal='+vCountryVal+'&vGIAType='+vGIAType+'',							    
							success: function(data){
							//alert('Done');
							 //$('#secondary_attribute').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});				
				  } 
		}
		
		
		function UpdatedMarketsizeData()
		{
		   var vGIANO = $("#txtGIA_NO").val();					
			var vMarketYear = $("#txtMarket_YEAR").val(); 
			var vMarketSize = $("#txtMarket_VALUE").val(); 
			var vMarketCagr = $("#txtMarket_CAGR").val(); 
			
			var GT2014=$("#txtMarket_VALUE14").val(); 
			var GT2019=$("#txtMarket_VALUE19").val(); 
			var GT2030=$("#txtMarket_VALUE30").val(); 
		
		  
		  if (vGIANO != null && vGIANO != '' )		 
				 {	
				 //alert(vGIANO);	 
				  $.ajax({
							url: "AjaxAddMarketSizeData.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&GT2030='+GT2030+'&GT2019='+GT2019+'&GT2014='+GT2014+'&vMarketYear='+vMarketYear+'&vMarketSize='+vMarketSize+'&vMarketCagr='+vMarketCagr+'',							    
							success: function(data){
							//alert('Done');
							ViewMarketsizeData_A3();
							 //$('#secondary_attribute').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});				
				  }		  
		}
		
		function UpdateReportCMP(vSegID,VSegName,vMarketPosition)
		{
		 
		    var vGIANO = $("#txtGIA_NO").val();	
		    if (vGIANO != null && vGIANO != '' )		 
				 {	
				//alert(VSegName); 
				  $.ajax({
							url: "AjaxUpdateReportCMP.asp",
							type: "POST",
							data:'vGIANO='+encodeURIComponent(vGIANO)+'&vSegID='+encodeURIComponent(vSegID)+'&VSegName='+encodeURIComponent(VSegName)+'&vMarketPosition='+encodeURIComponent(vMarketPosition)+'',						    
							success: function(data){
							//alert('Done');							
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});			
				  }	 
		}
		
		function UpdateReportCMP_Value(vGIANO,vSegID,vWorld,vRegion,vActivityLevel,vMarketShare,vReportStatus)
		{
			if (vGIANO != null && vGIANO != '' )		 
				 {	
				  $.ajax({
							url: "AjaxUpdateReportCMP_value.asp",
							type: "POST",
							data:'vGIANO='+encodeURIComponent(vGIANO)+'&vSegID='+encodeURIComponent(vSegID)+'&vWorld='+encodeURIComponent(vWorld)+'&vRegion='+encodeURIComponent(vRegion)+'&vActivityLevel='+encodeURIComponent(vActivityLevel)+'&vMarketShare='+encodeURIComponent(vMarketShare)+'&vReportStatus='+encodeURIComponent(vReportStatus)+'',						    
							success: function(data){
							//alert('Done');							
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});			
				  }	 
		}
		
		
		function UpdateSecondary_Market_Factors(vImpact_Type,Impact_Type,vImpact_YEAR)
		{
		   
		   var vGIANO = $("#txtGIA_NO").val();
		   var vImpact_Type = vImpact_Type;	   
		    var vImpact_YEAR;
			var vImpact_Percentage;	
			var vImpact_Factor= '';	
			var Impact_FactorName = Impact_Type +'q8'+	vImpact_YEAR		
			//alert("rank_input_"+Impact_Type+"_"+vImpact_YEAR);
		
								 vImpact_YEAR = vImpact_YEAR;//$("#txtCovid_YEAR").val(); 								 
								 vImpact_Factor = $("input[name='"+Impact_FactorName+"']:checked").val();
								 vImpact_Percentage = $("#rank_input_"+Impact_Type+"_"+vImpact_YEAR).val();								
			
		  if (vGIANO != null && vGIANO != '' )		 
				 {	
				 //alert(vImpact_Factor);	
				  $.ajax({
							url: "AjaxAddSecondaryMarketFactorsData.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&vImpact_YEAR='+vImpact_YEAR+'&vImpact_Percentage='+encodeURIComponent(vImpact_Percentage)+'&vImpact_Type='+encodeURIComponent(vImpact_Type)+'&vImpact_Factor='+encodeURIComponent(vImpact_Factor)+'',							    
							success: function(data){
													
							
							/*if(vImpact_Type=='PANDEMIC')
								$('#PANDEMIC_Impact_table').empty().append(data);
							 else if(vImpact_Type=='SUPPLY CHAIN')
								$('#SUPPLY_CHAIN_table').empty().append(data);
							 else if(vImpact_Type=='CHIP SHORTAGE')
								$('#CHIP_SHORTAGE_table').empty().append(data); */
								
								//ViewSecondary_Market_Factors(vImpact_Type);
								
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  }
				  else
				  {alert('REPORT CODE can`t be left blank');}
		  
		}
		
		function ViewSecondary_Market_Factors(vImpact_Type) {
		//alert(vImpact_Type);
				var vGIANO = $("#txtGIA_NO").val();
				var vImpact_Type = vImpact_Type;
				if (vGIANO != null && vGIANO != '' )		 
				 {		
				//alert(vImpact_Type); 				 
				  $.ajax({
							url: "AjaxViewSecondaryMarketFactorsData.asp",
							type: "POST",						
							data:'vGIANO='+vGIANO+'&vImpact_Type='+encodeURIComponent(vImpact_Type)+'',						    
							success: function(data){
														 
							 if(vImpact_Type=='PANDEMIC')
							 {
								$('#PANDEMIC_Impact_table').empty().append(data);
								 //alert('pan'); 
								}
							 else if(vImpact_Type=='SUPPLY_CHAIN')
							 {
								$('#SUPPLY_CHAIN_table').empty().append(data);
								// alert('supp'); 
								}
							 else if(vImpact_Type=='CHIP_SHORTAGE')
							  {
								$('#CHIP_SHORTAGE_table').empty().append(data);
								 //alert('chip'); 
								}
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 			 
				
		}
		
		function ViewMarketsizeData_A3() {
				var vGIANO = $("#txtGIA_NO").val(); 
				
				if (vGIANO != null && vGIANO != '' )		 
				 {	
					 
				  $.ajax({
							url: "AjaxViewMarketSizeData_A3.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',							    
							success: function(data){
							  //alert(vGIANO);		
							 $('#Marketsize_tableA3').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		}
		
		function Remove_MKT_size(Remove_Year)
		{
			var text11;
			var vGIANO = $("#txtGIA_NO").val(); 
			if (confirm("Do you want to remove the year data "+Remove_Year) == true) {
				  $.ajax({
								url: "AjaxRemoveMarketSizeData_A3.asp",
								type: "POST",
								data:'vGIANO='+vGIANO+'&GIOYear='+Remove_Year+'',							    
								success: function(data){
									alert(data);		
									//$('#Marketsize_tableA3').empty().append(data);
								},
								error: function (xhr, ajaxOptions, thrownError) {
								alert(xhr.status);
								alert(thrownError);
								alert(xhr.responseText); 
								}
							});
					
			} else {
			  text11 = "You have canceled the operation";
			  alert (text11);
			}
		}
		
		function getCountryTweeks(GIANO,GIOType) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(GIOType);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "ViewgetCountryList_new.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&GIOType='+GIOType+'',							    
							success: function(data){
							
							 $('#Country_Tweek_table').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				  } 
		}
		
		function getCountryTweeks_DataDisplay(GIANO,GIOType) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(GIOType);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "ViewgetCountryList_DataDisplay.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&GIOType='+GIOType+'',							    
							success: function(data){
							
							 $('#Display_SegmentsData_released').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				  } 
		}
		
		///Display_SegmentsData_generated
		
		function getCountryTweeks_DataDisplay_Tool(GIANO,GIOType) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(GIOType);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "ViewgetCountryList_DataDisplay_Tool_new.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&GIOType='+GIOType+'',							    
							success: function(data){
							
							 $('#Display_SegmentsData_generated').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				  } 
		}
		
		
		function funAddChannel() {
				var vGIANO = $("#txtGIA_NO").val(); 
				var vSegTypeName=$("#Txt_Channel").val(); 
				//alert(ChkVal);
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			 
				  $.ajax({
							url: "AjaxAddChannelTypes.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&vSegTypeName='+encodeURIComponent(vSegTypeName)+'',							    
							success: function(data){
							 //alert('Done');	
                              
							 GetSegData_Primary(vGIANO);
							 GetSegTypePrimaryAppdata_C(vGIANO);
							 GetSegData(vGIANO);
							 
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});				
				  } 
		}
		
		
		
		function ChangeChannelTypes(ChkVal) {
				var vGIANO = $("#txtGIA_NO").val(); 
				var vSegTypeName=ChkVal;
				//alert(ChkVal);
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
							 
				  $.ajax({
							url: "AjaxUpdateChannelTypes.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&vSegTypeName='+encodeURIComponent(ChkVal)+'',							    
							success: function(data){
							//alert(data);
							// $('#Country_Tweek_table').empty().append(data);
							
							 
							
							 GetSegData_Primary(vGIANO);
							 GetSegTypePrimaryAppdata_C(vGIANO);
							 GetSegData(vGIANO);
							 
							
							 
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		}
		
		function getCountryATTRIBUTES(GIANO,GIOType) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(GIOType);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getCountryATTRIBUTES.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&GIOType='+GIOType+'',							    
							success: function(data){
							
							 $('#secondary_attribute').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		} 
		function GetSourceData() {
				var vGIANO = $("#txtReportCode").val(); 
			   // alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "AjaxViewSourceData.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){							
							 $('#BaseLine_Source_table').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		} 
		         
		function AddSourceData() {
				var vGIANO = $("#txtReportCode").val(); 
				var vSrcText = $("#txtSrcText").val(); 
				var vSrcLink = $("#txtSrcLink").val(); 
				var GIO_WRLD_US= $("input[name='s2_WRLD']:checked").val();
				//alert(GIO_WRLD_US);
				if (vGIANO != null && vGIANO != '' && vSrcLink != null && vSrcLink != '')		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "AjaxAddSourceData.asp",
							type: "POST",
							 data:'vGIANO='+encodeURIComponent(vGIANO)+'&vSrcText='+encodeURIComponent(vSrcText)+'&vSrcLink='+encodeURIComponent(vSrcLink)+'&vSrcRegion='+encodeURIComponent(GIO_WRLD_US)+'',
							 success: function(data){
							 alert('Done');
							 GetSourceData()
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		}
		
		function ViewImpactData()		
		{
		
		  var vGIANO = $("#txtGIA_NO").val(); 
			   /// alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "AjaxViewSecondaryImpactData.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){							
							 $('#Impact_view').empty().append(data);
							 
							 $("#HidImpacts").val(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		
		}
		
		function funAddImpacts() {
				
				var vGIANO = $("#txtGIA_NO").val(); 
				var vImpact = $("#Txt_Impact").val(); 
				//alert(vImpact);
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' && vImpact != null && vImpact != '')		 
				 {			
				alert(vImpact);				 
				  $.ajax({
							url: "AjaxAddSecondaryImpactData.asp",
							type: "POST",
							 data:'vGIANO='+encodeURIComponent(vGIANO)+'&vImpact='+encodeURIComponent(vImpact)+'',
							 success: function(data){
							// alert(data);
							ViewImpactData();
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
					 alert('Impact Name can't be left blank');
					}*/				
		}
		
		
		function funAddSegments() {
				
				var vGIANO = $("#txtGIA_NO").val(); 
				var vSegCount = $("#Txt_SegCount").val(); 
				//alert(vSegCount);	
				
				//
				//alert(vImpact);
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' && vSegCount != null && vSegCount != '')		 
				 {			
				//alert(vSegCount);				 
				  $.ajax({
							url: "AjaxDisplaySegData.asp",
							type: "POST",
							 data:'vGIANO='+encodeURIComponent(vGIANO)+'&vSegCount='+encodeURIComponent(vSegCount)+'',
							 success: function(data){
							 //alert(data); 
							 //ViewImpactData();
							 $('#MARKET_SEGMENT_table').empty().append(data);							 
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
					 alert('Impact Name can't be left blank');
					}*/				
		}
		
		
		function show_reports(fmd5, cpcode) {				
				//var vGIANO = $("#txtGIA_NO").val(); 
				//var vSegCount = $("#Txt_SegCount").val(); 
				//alert(vSegCount);	
				
				//
				//alert(vImpact);
				//alert(vGIANO);
				if (fmd5 != null && fmd5 != '' && cpcode != null && cpcode != '')		 
				 {			
				//alert(vSegCount);				 
				  $.ajax({
							url: "Show_Company_Reports.asp",
							type: "POST",
							 data:'fmd5='+encodeURIComponent(fmd5)+'&cpcode='+encodeURIComponent(cpcode)+'',
							 success: function(data){
							 //alert(data); 
							 //ViewImpactData();
							 $('#Projects_'+cpcode).empty().append(data);							 
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
					 alert('Impact Name can't be left blank');
					}*/				
		}
		
		
		function getSegTypeallocation(GIANO) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert('hi');
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getSegTypeALLOCATIONS.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',
							success: function(data){
							
							 $('#SegTypeALLOCATIONS').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		}
		
		function SegTotalvalueCalculation_100(vSegSno,vStartSegNm,vSgCnt,vCountry,vSegTypeName,vsegName)
		{
		
		   var vSegTotal;
		   vSegTotal = 0;
		   var vSegTName=vSegTypeName;
		   
		   vSegTypeName = vSegTypeName.replace(' ','').replace('-','');
		   //alert(vSegSno);
		   
			var vSegmentIDNSno 
			vSegmentIDNSno = vSegSno.split("_");
			var vOnlyReportCode=vSegmentIDNSno[0];
			var vOnlySno=vSegmentIDNSno[1];
		    
		  // alert(vSegSno);
		  // alert(vOnlyReportCode);
		  // alert(vOnlySno);
		  
		   var vSgCnttorun = parseInt(vStartSegNm)-1 + parseInt(vSgCnt) ;
			alert(vStartSegNm);
			alert(vSgCnttorun);		   
			alert(vSgCnt);
		   for (var  i = vStartSegNm; i <= vSgCnttorun; i++) 
			{
			    vSegTotal = (+vSegTotal) + (+parseFloat($("#rank_input_"+vSegSno+'_'+i+'_'+vSgCnt+'_'+vCountry+'_'+vsegName).val()).toFixed(2));				
				
			}
			
		     //alert(vSegTotal);	 		
			vSegTotal = vSegTotal.toFixed(1);
				//rank_input_90001_3_1_8_United_States_Segment1
				//rank_input_90001_4_2_8_United_States_Segment1
		        if (vSegTotal<100 || vSegTotal>100)
					{
						//alert('Segment values must equal to  100'); 	
						//alert(vSegTotal);						
					    $("#txt_Total_"+vSegTypeName+"_"+vCountry+"_"+vsegName).val(vSegTotal);	
						$("#txt_Total_"+vSegTypeName+"_"+vCountry+"_"+vsegName).css('background-color', '#cc0000');						
					} 
				else
					{ 
					  // alert(vSegTotal);
					   	$("#txt_Total_"+vSegTypeName+"_"+vCountry+"_"+vsegName).css('background-color', '#66cc00');	
						$("#txt_Total_"+vSegTypeName+"_"+vCountry+"_"+vsegName).val(vSegTotal);
						for (var  i = 1; i <= vSgCnt; i++) 
						   {	
							    var vGIOType;	
								//vGIOType = 'GEO_A';
								//GD2014_90001_3_8_United_States_Segment1
								
								var vGIOType = $("input[name='rdGEO']:checked").val();								
								var vSegval = $("#rank_input_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
								var vGD2014 = $("#GD2014_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
								var vGD2019 = $("#GD2019_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
								var vGD2030 = $("#GD2030_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
								var vMultiplier = $("#Countryplayers_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
								
								//alert(vSegTName);
								//alert(i);
								//alert(vSegval);
								//alert(vCountry);
								//alert(vGD2014);
								//alert(vGD2019);
								//alert(vGD2030);
								//alert(vMultiplier);
								//addCountryTweek(vSegTName,i,vGIOType,vSegval,vCountry,vGD2014,vGD2019,vGD2030,vMultiplier);			
								
								//addCountryTweek(vSegTName,i,vGIOType,vSegval,vCountry,vGD2014,vGD2019,vGD2030,vMultiplier);								
						   }							   
					}
		} 
		
		function SegCountryTotalAdd(vSegSno,vStartSegNm,vSgCnt,vCountry,vSegTypeName,vsegName)
		{
		
		   var vSegTotal;
		   vSegTotal = 0;
		   var vSegTName=vSegTypeName;
		   
		   vSegTypeName = vSegTypeName.replace(' ','').replace('-','');
		   //alert(vSegSno);
		   
			var vSegmentIDNSno 
			vSegmentIDNSno = vSegSno.split("_");
			var vOnlyReportCode=vSegmentIDNSno[0];
			var vOnlySno=vSegmentIDNSno[1];
		    
		   //alert(vSegSno);
		   //alert(vOnlyReportCode);
		   //alert(vOnlySno);
		  
		   var vSgCnttorun = parseInt(vStartSegNm)-1 + parseInt(vSgCnt) ;
			//alert(vStartSegNm);
			//alert(vSgCnttorun);		   
			//alert(vSgCnt);
		  
			i = 1;
				//rank_input_90001_3_1_8_United_States_Segment1
				//rank_input_90001_4_2_8_United_States_Segment1
		        
				var vGIOType;	
				//vGIOType = 'GEO_A';
				//GD2014_90001_3_8_United_States_Segment1
				
				var vGIOType = $("input[name='rdGEO']:checked").val();								
				var vSegval = $("#rank_input_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
				var vGD2014 = $("#GD2014_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
				var vGD2019 = $("#GD2019_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
				var vGD2030 = $("#GD2030_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
				var vMultiplier = $("#Countryplayers_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
				var vPercentage = $("#rank_input_"+vSegSno+'_'+vSgCnt+'_'+vCountry+"_"+vsegName).val();
				
				
				//alert(vSegTName);
				//alert(vSegval);
				//alert(vCountry);
				//alert(vGD2014);
				//alert(vGD2019);
				//alert(vGD2030);
				//alert(vMultiplier);
				//addCountryTweek(vSegTName,i,vGIOType,vSegval,vCountry,vGD2014,vGD2019,vGD2030,vMultiplier);			
				
				addCountryTweek(vSegTName,vSegSno,vGIOType,vSegval,vCountry,vGD2014,vGD2019,vGD2030,vMultiplier,vPercentage);							
						  							   
					
		} 
		
		
		function PrimarySegmentTotalvalueCalculation_100(vSegID)
		{
		 	   //alert(vSegID);	
		  strSeg=$(txtsegStr).val();
		  
		  //rank_input_274
		  //txtCAGR_Percentage10
		  var segtotal;
		  segtotal=0;
		  vSeg = strSeg.split('##');
		   //alert(vSeg.length);	
		  for(var i=0; i< vSeg.length; i++){
				//alert(vSeg[i])
				segtotal = parseInt(segtotal) + parseInt($("#rank_input_"+vSeg[i]).val());				 
			}
		 // alert(segtotal);
		  $("#txtCAGR_Percentage10").val(segtotal.toFixed(1));
		  TotalEqul100checking('txtCAGR_Percentage10',segtotal); 
		}
		function TotalEqul100checking(vtxtName,vSegTotal)
		{
		//alert(vtxtName);
		 //alert(vSegTotal);
		  if (parseInt(vSegTotal)<100 || parseInt(vSegTotal)>100)
					{
						//alert('Segment values must equal to  100'); 					     
					    $("#"+vtxtName).val(vSegTotal.toFixed(1));	
						 $("#"+vtxtName).attr('style', 'color: #cc0000 !important;');
						//$("#"+vtxtName).css('background-color', '#cc0000 !important;');
						//alert('red'); 						
					} 
				else
					{
						$("#"+vtxtName).val(vSegTotal.toFixed(1));	
						 $("#"+vtxtName).attr('style', 'color: #66cc00 !important;');
						//alert('green'); 	
						//$("#"+vtxtName).css('background-color', '#66cc00 !important;');					
					}
		
		}
		
		function ChannelTotalvalueCalculation_100(vSegID,vSegmentID,vSgCnt,vSegType)
		{
		  var vSegTotal;		  
		  vSegTotal = 0; 
		  vSginc  = parseInt(vSegmentID) + parseInt(vSgCnt) - 1;
		  for (var  i = vSegmentID; i <= vSginc; i++) 
			{							
			 vSegTotal =   (+vSegTotal) + (+parseFloat($("#rank_input_"+vSegID+vSegmentID).val()).toFixed(2));
			  // alert(("#rank_input_"+vSegID+vSegmentID)); 
			 vSegmentID  = parseInt(vSegmentID) +1;			
			}
			// alert("#rank_input_total_"+vSegID+'_'+vSegType);	
		    //alert(vSegTotal);		
			//alert(vSegTotal.toFixed(1));			
		   
		  if (vSegTotal<100 || vSegTotal>100)
			{						
				   $("#rank_input_total_"+vSegID+'_'+vSegType).val(vSegTotal.toFixed(1));										   
			} 
			else
			{					
				  $("#rank_input_total_"+vSegID+'_'+vSegType).val(vSegTotal.toFixed(1));						
			}
		}
		
		//SegmentTotalvalueCalculation_100('<%=Segment_ID%>','<%=DcolYear%>','<%=GTCountry_Name%>')
		//segment_percentage_<%=Segment_ID%>_<%=DcolYear%>_<%=GTCountry_Name%>
		///SegmentPercentagevalueCalculation_100('7938-1','6','1','2020','United_States','BusinessProcess','Business Process','Percentage','18343.7')
		function SegmentPercentagevalueCalculation_100(vSegmentID,vTotSegs,vStartSegID,vYear,vCountry,vSegType,OvSegType,vPtype,YearTotVal)
		{
	     //alert(OvSegType);
		 var vSegmentIDNSno 
		 vSegmentIDNSno = vSegmentID.split("-");
		 var vOnlyReportCode=vSegmentIDNSno[0];
		 var vOnlySno=vSegmentIDNSno[1];
		 //alert(YearTotVal);
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 // vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vSegmentID+"_"+vYear+"_"+vCountry).val()).toFixed(2));
		 //segment_size_7956-1_2020_United_States	
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 var vSegSize;
		 vSegSize = 0;
		 var vSegSizeTotal;
		 vSegSizeTotal = 0;
		 vSginc  = parseInt(vTotSegs) + parseInt(vStartSegID) - 1;
		 for (var  i = vStartSegID; i <= vSginc; i++) 
			{							
				
				vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				 //vSegSize = (+vSegSize) + (+parseFloat($("#segment_size_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));				
				 //alert("#segment_percentage_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry);
				 //alert($("#segment_percentage_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val());
				 //vSegmentID  = parseInt(vSegmentID) +1;			
			}
			//alert(vSegSize);
			
			//alert(vSegTotal);
			
		   vSegSize = parseFloat($("#actual_segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val()).toFixed(1);
		   vSegSizeTotal = parseFloat($("#actual_segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val()).toFixed(1);
		   
		   $("#segment_percentage_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));
		
		   /*var vTxtTotValue;
		   vTxtTotValue = "#segment_percentage_total_"+vSegType+"_"+vYear+"_"+vCountry;
		   TotalEqul100checking(vTxtTotValue,vSegTotal);*/
		 		   
		  if (vSegTotal<100 || vSegTotal>100)
			{	
					//segment_percentage_total_Product_2019_United_States			
				  										   
				 // $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));

				// UPDATE THE MARKET SIZE
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));				
					
				}
				
				
			} 
			else
			{					
				 // $("#segment_percentage_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));						
				 // $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));
					// UPDATE THE MARKET SIZE
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));
				}
			}
			
			vSegSize = $("#segment_size_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			
			vSegPercent = $("#segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegSize = $("#actual_segment_size_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegPercent=$("#actual_segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vYearTotVal = vSegSizeTotal;
			
			updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,'Percentage',vOldSegSize,vOldSegPercent,vYearTotVal);
		}
		
	function updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,vMtype,vOldSegSize,vOldSegPercent,YearTotVal) {
		//alert(vSegmentID);
		var vGIANO = $("#txtGIA_NO").val(); 
		
		//alert(vSegSize);
		//alert(vOldSegSize);
		//alert(vOldSegPercent); 
		//alert(YearTotVal);
		var YearTotVal;
		YearTotVal = 0;
		//alert(vYear);
		//vGIANO,vSegID,vSegType,vsegYear,vCountry,vSegSize ,vSegSize,vMtype,vOldSegSize,vOldSegPercent
				
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "AjaxUpdateSegments_Data_log.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&vSegID='+encodeURIComponent(vSegmentID)+'&vSegType='+encodeURIComponent(OvSegType)+'&vsegYear='+encodeURIComponent(vYear)+'&vCountry='+encodeURIComponent(vCountry)+'&vSegSize='+encodeURIComponent(vSegSize)+'&vSegPercent='+encodeURIComponent(vSegPercent)+'&vMtype='+encodeURIComponent(vMtype)+'&vOldSegSize='+encodeURIComponent(vOldSegSize)+'&vOldSegPercent='+encodeURIComponent(vOldSegPercent)+'&YearTotVal='+encodeURIComponent(YearTotVal)+'',
							success: function(data){							
							//alert(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 			 
				
		}
		
  function updatePercentageValue_MS(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,vMtype,vOldSegSize,vOldSegPercent,YearTotVal) {
		//alert(vSegmentID);
		var vGIANO = $("#txtGIA_NO").val(); 
		
		//alert(vSegSize);
		//alert(vOldSegSize);
		//alert(vOldSegPercent); 
		//alert(YearTotVal);
		var YearTotVal;
		YearTotVal = 0;
		//alert(vYear);
		//vGIANO,vSegID,vSegType,vsegYear,vCountry,vSegSize ,vSegSize,vMtype,vOldSegSize,vOldSegPercent
				
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "Ajax_SegmetDataTotalRegionUpdate_MS.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&vSegID='+encodeURIComponent(vSegmentID)+'&vSegType='+encodeURIComponent(OvSegType)+'&vsegYear='+encodeURIComponent(vYear)+'&vCountry='+encodeURIComponent(vCountry)+'&vSegSize='+encodeURIComponent(vSegSize)+'&vSegPercent='+encodeURIComponent(vSegPercent)+'&vMtype='+encodeURIComponent(vMtype)+'&vOldSegSize='+encodeURIComponent(vOldSegSize)+'&vOldSegPercent='+encodeURIComponent(vOldSegPercent)+'&YearTotVal='+encodeURIComponent(YearTotVal)+'',
							success: function(data){							
							//alert(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 			 
				
		}
	

		//Size function	
		
		function SegmentSizeTotalvalueCalculation_100(vSegmentID,vTotSegs,vStartSegID,vYear,vCountry,vSegType,OvSegType)
		{  		   
		    // alert("Total"); 
			 var vSegmentIDNSno 
			 vSegmentIDNSno = vSegmentID.split("-");
			 var vOnlyReportCode=vSegmentIDNSno[0];
			 var vOnlySno=vSegmentIDNSno[1];
		     vSegSize = $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val();
			 //alert("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry);
			 //alert(vSegSize);
			 vYearTotVal = vSegSize;
			 vSegPercent = 100; //$("#segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			 vOldSegSize = $("#actual_segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val();
			  vYearTotVal = vOldSegSize;
			 vOldSegPercent=100; //$("#actual_segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
		     updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,'Total',vOldSegSize,vOldSegPercent,vYearTotVal);
		}
		function SegmentSizevalueCalculation_100(vSegmentID,vTotSegs,vStartSegID,vYear,vCountry,vSegType,OvSegType)
		{
	     
		 var vSegmentIDNSno 
		 vSegmentIDNSno = vSegmentID.split("-");
		 var vOnlyReportCode=vSegmentIDNSno[0];
		 var vOnlySno=vSegmentIDNSno[1];
		 //alert(vOnlyReportCode);
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 // vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vSegmentID+"_"+vYear+"_"+vCountry).val()).toFixed(2));
		 //segment_size_7956-1_2020_United_States	
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 var vSegSizeTotal;
		 vSegSizeTotal = 0;
		 var vSegSize;
		 vSegSize = 0;
		 vSginc  = parseInt(vTotSegs) + parseInt(vStartSegID) - 1;
		 for (var  i = vStartSegID; i <= vSginc; i++) 
			{							
				//vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				vSegSize = (+vSegSize) + (+parseFloat($("#segment_size_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				//alert($("#segment_size_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val());
				//  alert($("#segment_percentage_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val());
				//vSegmentID  = parseInt(vSegmentID) +1;			
			}
			//alert(vSegSize);
		    vSegSizeTotal=$("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));
		   /*if (vSegTotal<100 || vSegTotal>100)
			{	
					//segment_percentage_total_Product_2019_United_States			
				  $("#segment_percentage_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));										   
				  $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));

				// UPDATE THE MARKET SIZE
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));
				}
			} 
			else
			{					
				  $("#segment_percentage_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));						
				  $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));
					// UPDATE THE MARKET SIZE
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));
				}
			}*/
			
			vSegSize = $("#segment_size_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vYearTotVal=vSegSizeTotal;
			vSegPercent = $("#segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegSize = $("#actual_segment_size_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegPercent=$("#actual_segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,'Size',vOldSegSize,vOldSegPercent,vYearTotVal);
		}
		
		function SegmentSizevalueCalculation_100_MS(vSegmentID,vTotSegs,vStartSegID,vYear,vCountry,vSegType,OvSegType)
		{
	     
		 var vSegmentIDNSno 
		 vSegmentIDNSno = vSegmentID.split("-");
		 var vOnlyReportCode=vSegmentIDNSno[0];
		 var vOnlySno=vSegmentIDNSno[1];
		 //alert(vOnlyReportCode);
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 // vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vSegmentID+"_"+vYear+"_"+vCountry).val()).toFixed(2));
		 //segment_size_7956-1_2020_United_States	
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 var vSegSizeTotal;
		 vSegSizeTotal = 0;
		 var vSegSize;
		 vSegSize = 0;
		 vSginc  = parseInt(vTotSegs) + parseInt(vStartSegID) - 1;
		/* for (var  i = vStartSegID; i <= vSginc; i++) 
			{							
				//vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				vSegSize = (+vSegSize) + (+parseFloat($("#segment_size_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				//alert($("#segment_size_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val());
				//  alert($("#segment_percentage_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val());
				//vSegmentID  = parseInt(vSegmentID) +1;			
			}
			//alert(vSegSize);
		    vSegSizeTotal=$("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));*/
			
		   /*if (vSegTotal<100 || vSegTotal>100)
			{	
					//segment_percentage_total_Product_2019_United_States			
				  $("#segment_percentage_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));										   
				  $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));

				// UPDATE THE MARKET SIZE
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));
				}
			} 
			else
			{					
				  $("#segment_percentage_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));						
				  $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));
					// UPDATE THE MARKET SIZE
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));
				}
			}*/
			vSegSizeTotal=$("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val();
			alert(vSegSizeTotal);
			vSegSize = $("#segment_size_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vYearTotVal=vSegSizeTotal;
			vSegPercent = $("#segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegSize = $("#actual_segment_size_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegPercent=$("#actual_segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,'Total',vOldSegSize,vOldSegPercent,vYearTotVal);
			
			
		}
		
		
		function SegmentSizeTotalvalueCalculation_100_MS(vSegmentID,vTotSegs,vStartSegID,vYear,vCountry,vSegType,OvSegType)
		{
	     
		 var vSegmentIDNSno 
		 vSegmentIDNSno = vSegmentID.split("-");
		 var vOnlyReportCode=vSegmentIDNSno[0];
		 var vOnlySno=vSegmentIDNSno[1];
		 //alert(vOnlyReportCode);
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 // vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vSegmentID+"_"+vYear+"_"+vCountry).val()).toFixed(2));
		 //segment_size_7956-1_2020_United_States	
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 var vSegSizeTotal;
		 vSegSizeTotal = 0;
		 var vSegSize;
		 vSegSize = 0;
		 vSginc  = parseInt(vTotSegs) + parseInt(vStartSegID) - 1;
		 for (var  i = vStartSegID; i <= vSginc; i++) 
			{							
				//vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				//vSegSize = (+vSegSize) + (+parseFloat($("#segment_size_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				//alert($("#segment_size_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val());
				//  alert($("#segment_percentage_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val());
				//vSegmentID  = parseInt(vSegmentID) +1;			
			}
			//alert(vSegSize);
		    vSegSizeTotal=$("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val();
			//alert(vSegSizeTotal);
		   /*if (vSegTotal<100 || vSegTotal>100)
			{	
					//segment_percentage_total_Product_2019_United_States			
				  $("#segment_percentage_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));										   
				  $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));

				// UPDATE THE MARKET SIZE
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));
				}
			} 
			else
			{					
				  $("#segment_percentage_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));						
				  $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));
					// UPDATE THE MARKET SIZE
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));
				}
			}*/
			//segment_size_total_
			vSegSize = $("#segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val();
			vYearTotVal=vSegSizeTotal;
			//alert(vSegSize+"MMMM");
			vSegPercent = $("#segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegSize = $("#actual_segment_size_total_"+vSegType+"_"+vYear+"_"+vCountry).val();
			vOldSegPercent=$("#actual_segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,'Total',vOldSegSize,vOldSegPercent,vYearTotVal);
		}
		
		function SegmentPercentagevalueCalculationH_100(vSegmentID,vTotSegs,vStartSegID,vYear,vCountry,vSegType,OvSegType)
		{	     
		 var vSegmentIDNSno 
		 vSegmentIDNSno = vSegmentID.split("-");
		 var vOnlyReportCode=vSegmentIDNSno[0];
		 var vOnlySno=vSegmentIDNSno[1];
		 //alert(vOnlyReportCode);
		 var vSegTotal;		  
		 vSegTotal = 0;
		 var vSegSize;
		 vSegSize=0;
			var vSegSizeTotal;
		 vSegSizeTotal=0;		 
		 // vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vSegmentID+"_"+vYear+"_"+vCountry).val()).toFixed(2));
		 //segment_size_7956-1_2020_United_States
		  vSginc  = parseInt(vTotSegs) + parseInt(vStartSegID) - 1;
		  for (var  i = vStartSegID; i <= vSginc; i++) 
			{							
				vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_H_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				//vSegSize = (+vSegSize) + (+parseFloat($("#segment_size_H_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
			    			 
			}
			//alert(vSegSize);
			 vSegSize = parseFloat($("#actual_segment_size_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val()).toFixed(1)
		   $("#segment_percentage_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));
			vSegSizeTotal=vSegSize;
					   
		   if (vSegTotal<100 || vSegTotal>100)
			{	
				// segment_percentage_total_Product_2019_United_States			
				//  $("#segment_percentage_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));
				//  $("#segment_size_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));
				// UPDATE THE MARKET SIZE
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_H_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_H_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_H_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_H_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));
					
					
				}
			} 
			else
			{					
				//  $("#segment_percentage_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));	
				//  $("#segment_size_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));
				for (var  j = vStartSegID; j <= vSginc; j++) 
				{							
					var gtsizeValue
					gtsizeValue = (vSegSize * $("#segment_percentage_H_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val())/100
					$("#segment_size_H_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtsizeValue.toFixed(1));
					
					var gtpercentageValue
					gtpercentageValue = ($("#segment_size_H_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val()*100)/vSegSize
					$("#segment_percentage_H_"+vOnlyReportCode+"-"+j+"_"+vYear+"_"+vCountry).val(gtpercentageValue.toFixed(1));
				}
			}
			
			gtsizeValue = $("#segment_size_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vSegPercent = $("#segment_percentage_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegSize = $("#actual_segment_size_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegPercent=$("#actual_segment_percentage_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			//alert(vOldSegPercent);
			vYearTotVal=vSegSizeTotal;
			
			updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,'Percentage',vOldSegSize,vOldSegPercent,vYearTotVal);
		} 
		
		function SegmentSizeTotalvalueCalculationH_100(vSegmentID,vTotSegs,vStartSegID,vYear,vCountry,vSegType,OvSegType)
		{  		   
		     //alert("HTotal");
			 var vSegmentIDNSno 
			 vSegmentIDNSno = vSegmentID.split("-");
			 var vOnlyReportCode=vSegmentIDNSno[0];
			 var vOnlySno=vSegmentIDNSno[1];
		     vSegSize = $("#segment_size_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val();
			 vSegPercent = 100; //$("#segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			 vOldSegSize = $("#actual_segment_size_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val();
			 vOldSegPercent=100; //$("#actual_segment_percentage_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
		     updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,'Total',vOldSegSize,vOldSegPercent,vOldSegSize,vOldSegSize);
		}
		//size  historics
		
		
		///Not necessary this function
		
		function SegmentSizevalueCalculationH_100_MS(vSegmentID,vTotSegs,vStartSegID,vYear,vCountry,vSegType,OvSegType)
		{
	     
		 var vSegmentIDNSno 
		 vSegmentIDNSno = vSegmentID.split("-");
		 var vOnlyReportCode=vSegmentIDNSno[0];
		 var vOnlySno=vSegmentIDNSno[1];
		 //alert(vOnlyReportCode);
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 // vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vSegmentID+"_"+vYear+"_"+vCountry).val()).toFixed(2));
		 //segment_size_7956-1_2020_United_States	
		 var vSegTotal;		  
		 vSegTotal = 0; 
		 var vSegSizeTotal;
		 vSegSizeTotal = 0;
		 var vSegSize;
		 vSegSize = 0;
		 vSginc  = parseInt(vTotSegs) + parseInt(vStartSegID) - 1;
		 for (var  i = vStartSegID; i <= vSginc; i++) 
			{							
				
				vSegSize = (+vSegSize) + (+parseFloat($("#segment_size_H_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				
			}
			//alert(vSegSize);
		    vSegSizeTotal=$("#segment_size_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));
		  
			
			vSegSize = $("#segment_size_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vYearTotVal=vSegSizeTotal;
			vSegPercent = $("#segment_percentage_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegSize = $("#actual_segment_size_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegPercent=$("#actual_segment_percentage_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
						
			updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,'Total',vOldSegSize,vOldSegPercent,vYearTotVal);
		}
		/*function SegmentSizevalueCalculationH_100(vSegmentID,vTotSegs,vStartSegID,vYear,vCountry,vSegType,OvSegType)
		{	     
		 var vSegmentIDNSno 
		 vSegmentIDNSno = vSegmentID.split("-");
		 var vOnlyReportCode=vSegmentIDNSno[0];
		 var vOnlySno=vSegmentIDNSno[1];
		 //alert(vOnlyReportCode);
		 var vSegTotal;		  
		 vSegTotal = 0;
		 var vSegSize;
		 vSegSize=0;		  
		 // vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_"+vSegmentID+"_"+vYear+"_"+vCountry).val()).toFixed(2));
		 //segment_size_7956-1_2020_United_States
		  vSginc  = parseInt(vTotSegs) + parseInt(vStartSegID) - 1;
		  for (var  i = vStartSegID; i <= vSginc; i++) 
			{							
				vSegTotal = (+vSegTotal) + (+parseFloat($("#segment_percentage_H_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
				vSegSize = (+vSegSize) + (+parseFloat($("#segment_size_H_"+vOnlyReportCode+"-"+i+"_"+vYear+"_"+vCountry).val()).toFixed(1));
			   			 
			}
			//alert(vSegSize);
		   
		   if (vSegTotal<100 || vSegTotal>100)
			{	
					//segment_percentage_total_Product_2019_United_States			
				  $("#segment_percentage_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));
				  $("#segment_size_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));										   
			} 
			else
			{					
				  $("#segment_percentage_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegTotal.toFixed(1));	
				  $("#segment_size_Htotal_"+vSegType+"_"+vYear+"_"+vCountry).val(vSegSize.toFixed(1));										   
			}
			
			vSegSize = $("#segment_size_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vSegPercent = $("#segment_percentage_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegSize = $("#actual_segment_size_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			vOldSegPercent=$("#actual_segment_percentage_H_"+vOnlyReportCode+"-"+vOnlySno+"_"+vYear+"_"+vCountry).val();
			//alert(vOldSegPercent);
			updatePercentageValue(vSegmentID,OvSegType,vYear,vCountry,vSegSize,vSegPercent,'Size',vOldSegSize,vOldSegPercent); 
		}  */
		
			
		
		function UpdateRegionSegmentSize(RegCountryName)
		{
		    
			var vGIANO = $("#txtGIA_NO").val(); 
			//alert (RegCountryName);
			//alert (Type1);
						
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				 //alert(vGIANO);				 
				  $.ajax({
							url: "Ajax_SegmetDataRegionUpdate_MS.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&vCountry='+encodeURIComponent(RegCountryName)+'',
							success: function(data){							
							alert('Region Data Updated');
							GetWorldTableData_Tool(RegCountryName);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 	
			
			
		}
		
		function addCountryTweek(vSegTypeName,vSegSno,vGIOType,vSegval,vCountry,vGD2014,vGD2019,vGD2030,vMultiplier,vPercentage)
		{	
		//alert(vMultiplier);		
		// GIA_NO,Segment_type,Seg_id
		// alert(vSegTypeName);
		// alert(vSegSno);
		 //alert(vGIOType);
		// alert(vSegval);	 
		 //alert("SegTotalvalueCalculation_100");
		    var vGIANO = $("#txtGIA_NO").val(); 
				if (vGIANO != null && vGIANO != '' && vGIOType != null && vGIOType != '' && vSegval != null && vSegval != '')		 
				 {			
				//alert(vGD2030);			 
				  $.ajax({
							//url: "AjaxUpdateCoutryTweeks.asp",
							url: "AjaxUpdateMainSegment_Countries_new.asp",							
							type: "POST", 
							 data:'vGD2030='+encodeURIComponent(vGD2030)+'&vGD2019='+encodeURIComponent(vGD2019)+'&vGD2014='+encodeURIComponent(vGD2014)+'&vCountry='+encodeURIComponent(vCountry)+'&vSegval='+encodeURIComponent(vSegval)+'&vGIOType='+encodeURIComponent(vGIOType)+'&vGIANO='+encodeURIComponent(vGIANO)+'&vSegTypeName='+encodeURIComponent(vSegTypeName)+'&vSegSno='+encodeURIComponent(vSegSno)+'&vMultiplier='+encodeURIComponent(vMultiplier)+'&vPercentage='+encodeURIComponent(vPercentage)+'',
							 success: function(data){
							 alert("Data Added Successfully");
							 //GetSourceData()
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});				
				  } 
		}
		
		function AddValue()
		{
			var vGIALink = $("#srcLink").val();
			var vGIAText = $("#srcText").val();
			if (vGIALink != null && vGIALink != '' )		 
			{	
				alert ("Baseline data added successfully!");
			}
			else
			{
				alert ("Source Link / Text cannot be empty");
			}
		}

		function funAddAllSegments() {
				
				var vGIANO = $("#txtGIA_NO").val(); 
				var vSegCount = $("#Txt_SegCount").val();
				if (vGIANO != null && vGIANO != '' )		 
			{	
				alert ("Primary Market Segment Added successfully!");
			}
		}
		
		function GetCountryseverityImpact(vCountry) {
			 var vGIANO = $("#txtGIA_NO").val();	
			 var GIOType= $("input[name='rdGEO']:checked").val();
			//alert(vGIANO);	
			//alert(GIOType);			
			 if (vGIANO != null && vGIANO != '')		 
			 {	
				
				$.ajax({							
							url: "getCountryseverityImpactDatatable_new.asp",
							//url: "getCountryseverityImpactData.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&vCountry='+vCountry+'&GIOType='+GIOType+'',							    
							success: function(data){
								//alert(data);							
							   $('#severityImpact'+vCountry).empty().append(data);
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
					alert ("REPORT CODE cannot be empty");
			 }
		}
		
		function showTablesView() {
			 var vGIANO = $("#txtGIA_NO").val();
			 //var GIOType = "GEO_A";			 
			 var GIOType= $("input[name='rdGEO']:checked").val();
			 //alert (GIOType);
			 if (vGIANO != null && vGIANO != '')		 
			 {	
					///Seg_App_TablesData_Structure
					$.ajax({
							//url: "ViewShowCountryList.asp",
							url: "ViewgetCountryseverityImpact_New.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&GIOType='+GIOType+'',							    
							success: function(data){
							
							 $('#Seg_App_TablesData_Structure').empty().append(data);
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
					alert ("REPORT CODE cannot be empty");
			 }
		}
		
		function showTocView() {
			 var vGIANO = $("#txtGIA_NO").val();
			 //var GIOType = "GEO_A";			 
			 var GIOType= $("input[name='rdGEO']:checked").val();
			 //alert (GIOType);
			 if (vGIANO != null && vGIANO != '')		 
			 {	
					///Seg_App_TablesData_Structure
					$.ajax({
							//url: "ViewShowCountryList.asp",
							url: "ViewgetTOCCompetitiveList.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&GIOType='+GIOType+'',							    
							success: function(data){
							
							 $('#Seg_App_toc_view').empty().append(data);
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
					alert ("REPORT CODE cannot be empty");
			 }
		}
		
		function getupdatevalue()
		{
			alert ("Data updated successfully");
		}
		
		/// ADD Impact values to the database
		function addValueImpact(vCountry,SegmentType,SegmentName,SegmentOrder)
		{
			var v2020Impact = $("#val_"+vCountry+"_2020_"+SegmentOrder).val();
			var v2021Impact = $("#val_"+vCountry+"_2021_"+SegmentOrder).val();
			var v2022Impact = $("#val_"+vCountry+"_2022_"+SegmentOrder).val();
			var v2023Impact = $("#val_"+vCountry+"_2023_"+SegmentOrder).val();
			var v2024Impact = $("#val_"+vCountry+"_2024_"+SegmentOrder).val();
			var v2025Impact = $("#val_"+vCountry+"_2025_"+SegmentOrder).val();
			var v2026Impact = $("#val_"+vCountry+"_2026_"+SegmentOrder).val();
			var v2027Impact = $("#val_"+vCountry+"_2027_"+SegmentOrder).val();
			var v2028Impact = $("#val_"+vCountry+"_2028_"+SegmentOrder).val();
			var v2029Impact = $("#val_"+vCountry+"_2029_"+SegmentOrder).val();
			var v2030Impact = $("#val_"+vCountry+"_2030_"+SegmentOrder).val();
			v2020Impact = parseFloat(v2020Impact).toFixed(2);
			v2021Impact = parseFloat(v2021Impact).toFixed(2);
			v2022Impact = parseFloat(v2022Impact).toFixed(2);
			v2023Impact = parseFloat(v2023Impact).toFixed(2);
			v2024Impact = parseFloat(v2024Impact).toFixed(2);
			v2025Impact = parseFloat(v2025Impact).toFixed(2);
			v2026Impact = parseFloat(v2026Impact).toFixed(2);
			v2027Impact = parseFloat(v2027Impact).toFixed(2);
			v2028Impact = parseFloat(v2028Impact).toFixed(2);
			v2029Impact = parseFloat(v2029Impact).toFixed(2);
			v2030Impact = parseFloat(v2030Impact).toFixed(2);			
			var vGIANO = $("#txtGIA_NO").val(); 
			if (vGIANO != null && vGIANO != '' && v2020Impact != null && v2020Impact != '')		 
			{			
			  $.ajax({
						url: "AjaxUpdateCountryImpacts.asp",
						type: "POST", 
						 data:'vGD2020='+encodeURIComponent(v2020Impact)+'&vGD2021='+encodeURIComponent(v2021Impact)+'&vGD2022='+encodeURIComponent(v2022Impact)+'&vGD2023='+encodeURIComponent(v2023Impact)+'&vGD2024='+encodeURIComponent(v2024Impact)+'&vGD2025='+encodeURIComponent(v2025Impact)+'&vGD2026='+encodeURIComponent(v2026Impact)+'&vGD2027='+encodeURIComponent(v2027Impact)+'&vGD2028='+encodeURIComponent(v2028Impact)+'&vGD2029='+encodeURIComponent(v2029Impact)+'&vGD2030='+encodeURIComponent(v2030Impact)+'&vCountry='+encodeURIComponent(vCountry)+'&vGIANO='+encodeURIComponent(vGIANO)+'&vSegTypeName='+encodeURIComponent(SegmentType)+'&vSegmentName='+encodeURIComponent(SegmentName)+'&SegmentOrder='+encodeURIComponent(SegmentOrder)+'',
						 success: function(data){
						 alert("Country severity impact data updated sucessfully ")+vCountry;
						 //GetSourceData()
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText); 
						}
					});			
			} 
		}
		
		/// ADD GEO_A, GEO_B OR OTHERS
		function handleChange1()
		{
			var GIOType= $("input[name='rdGEO']:checked").val();
			alert (GIOType);
			var vtext;
			if (confirm("This will reformulate the report. Do you wish to continue") == true) {
			  vtext = "Confirmed Change";
			  alert (vtext);
			  // Confirm change of the Geographies
			  
			  
			} else {
			  vtext = "You have canceled!";
			  alert (vtext);
			}

		}
		
		/// CHANGE FROM WORLD TO USA
		function fun_WRLD_US()
		{
			var vGIANO = $("#txtGIA_NO").val();
			var GIO_WRLD_US= $("input[name='s2_WRLD']:checked").val();
			
			if (vGIANO != null && vGIANO != '')		 
			{	
				var vtext;
				if (confirm("This will reformulate the report. Do you wish to continue") == true) {
				  alert (GIO_WRLD_US);
				  
				} else {
				  vtext = "You have canceled the process";
				  alert (vtext);
				}
			}
			else
			{
				alert ("REPORT CODE cannot be empty");
			}
		}
		
		////ADD THE SEGMENT ==> END-USE ==> TECHNOLOGY -- GROWTH RATES UPDATES
		function Seg_Sub_GR_Add(vMainSegID,vSubSegID,seg_id,SegmentID)
		{
			 
			var vGIANO = $("#txtGIA_NO").val();
			var vTextPercentage = $("#rank_input_"+seg_id+SegmentID).val();
			
			///txtCAGR_Percentage14_99993-1_99993-4
			var vText2014Val = $("#txtCAGR_Percentage14_"+vMainSegID+"_"+vSubSegID).val();
			var vText2019Val = $("#txtCAGR_Percentage19_"+vMainSegID+"_"+vSubSegID).val();
			var vText2030Val = $("#txtCAGR_Percentage30_"+vMainSegID+"_"+vSubSegID).val();			
			
			if (vGIANO != null && vGIANO != '' && vText2014Val != null && vText2014Val != '' && vText2019Val != null && vText2019Val != '' && vText2030Val != null && vText2030Val != '')		 
			{			
			  $.ajax({
						url: "AjaxUpdateSegmentandSub.asp",
						type: "POST", 
						 data:'vTextPercentage='+encodeURIComponent(vTextPercentage)+'&vText2014Val='+encodeURIComponent(vText2014Val)+'&vText2019Val='+encodeURIComponent(vText2019Val)+'&vText2030Val='+encodeURIComponent(vText2030Val)+'&vGIANO='+encodeURIComponent(vGIANO)+'&vMainSegID='+encodeURIComponent(vMainSegID)+'&vSubSegID='+encodeURIComponent(vSubSegID)+'',
						 success: function(data){
						 alert("Growth Rates updated sucessfully ");
						 ///alert(data);							 
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
				alert ("REPORT CODE or GROWTH RATES cannot be empty");
			}
		}
		
		////ADD THE SEGMENT ==> END-USE ==> TECHNOLOGY -- GROWTH RATES UPDATES
		function Main_Seg_GR_Add_MS(vMainSegID,seg_id)
		{
			var vGIANO = $("#txtGIA_NO").val();
			var vTextPercentage = $("#rank_input_"+seg_id).val();
			
			///txtCAGR_Percentage14_99993-1_99993-4
			var vText2014Val = $("#txtCAGR_Percentage14_"+vMainSegID).val();
			var vText2019Val = $("#txtCAGR_Percentage19_"+vMainSegID).val();
			var vText2030Val = $("#txtCAGR_Percentage30_"+vMainSegID).val();
			var vMultiplier =$("#MSplayers_"+vMainSegID).val();
          // alert(vMultiplier+'-B-'+"#MSplayers_"+vMainSegID);
			//alert (vTextPercentage);
			//alert (vText2014Val);
			//alert (vText2019Val);
			//alert (vText2030Val);
			//AjaxUpdateMainSegment.asp
			if (vGIANO != null && vGIANO != '' && vText2014Val != null && vText2014Val != '' && vText2019Val != null && vText2019Val != '' && vText2030Val != null && vText2030Val != '' && vTextPercentage != null && vTextPercentage != '')	 
			{			
			  $.ajax({
						url: "AjaxUpdateMainSegment_new.asp",
						type: "POST", 
						 data:'vTextPercentage='+encodeURIComponent(vTextPercentage)+'&vMultiplier='+encodeURIComponent(vMultiplier)+'&vText2014Val='+encodeURIComponent(vText2014Val)+'&vText2019Val='+encodeURIComponent(vText2019Val)+'&vText2030Val='+encodeURIComponent(vText2030Val)+'&vGIANO='+encodeURIComponent(vGIANO)+'&vMainSegID='+encodeURIComponent(vMainSegID)+'',
						 success: function(data){
						 alert("Growth Rates updated sucessfully ");
						 ///alert(data);							 
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
				alert ("REPORT CODE or GROWTH RATES cannot be empty");
			}
		}
		
		function Main_Seg_GR_Add(vMainSegID,seg_id)
		{
			var vGIANO = $("#txtGIA_NO").val();
			var vTextPercentage = $("#rank_input_"+seg_id).val();
			
			///txtCAGR_Percentage14_99993-1_99993-4
			var vText2014Val = $("#txtCAGR_Percentage14_"+vMainSegID).val();
			var vText2019Val = $("#txtCAGR_Percentage19_"+vMainSegID).val();
			var vText2030Val = $("#txtCAGR_Percentage30_"+vMainSegID).val();
			var vMultiplier =$("#CHplayers_"+vMainSegID).val();
           //alert(vMultiplier+'-D-'+"#CHplayers_"+vMainSegID);
			//alert (vTextPercentage);
			//alert (vText2014Val);
			//alert (vText2019Val);
			//alert (vText2030Val);
			//AjaxUpdateMainSegment.asp
			if (vGIANO != null && vGIANO != '' && vText2014Val != null && vText2014Val != '' && vText2019Val != null && vText2019Val != '' && vText2030Val != null && vText2030Val != '' && vTextPercentage != null && vTextPercentage != '')	 
			{			
			  $.ajax({
						url: "AjaxUpdateMainSegment_sub_new.asp",
						type: "POST", 
						 data:'vTextPercentage='+encodeURIComponent(vTextPercentage)+'&vMultiplier='+encodeURIComponent(vMultiplier)+'&vText2014Val='+encodeURIComponent(vText2014Val)+'&vText2019Val='+encodeURIComponent(vText2019Val)+'&vText2030Val='+encodeURIComponent(vText2030Val)+'&vGIANO='+encodeURIComponent(vGIANO)+'&vMainSegID='+encodeURIComponent(vMainSegID)+'',
						 success: function(data){
						 alert("Growth Rates updated sucessfully ");
						 ///alert(data);							 
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
				alert ("REPORT CODE or GROWTH RATES cannot be empty");
			}
		}
		
		function Add_Competitve_Data()
		{
			var vGIANO = $("#txtGIA_NO").val();
			var vGIO_WRLD_Check= $('input:checkbox[name=CHK_RPT_LEVEL]').is(':checked');
			var vGIO_WRLD_Show= $('input:checkbox[name=CHK_RPT_LEVEL_ACTIVE_RANK]').is(':checked');
			var vGIO_WRLD_Country_Show= $('input:checkbox[name=CHK_RPT_LEVEL_ACTIVE_COUNTRY]').is(':checked');
			var vGIO_WRLD_Rank_Show= $('input:checkbox[name=CHK_RPT_LEVEL_ACTIVE_RANK]').is(':checked');
			var vGIO_WRLD_Percent_Show= $('input:checkbox[name=CHK_RPT_LEVEL_PERCENTAGE_SHARE]').is(':checked');
			
			if(vGIO_WRLD_Check==true)
			{
				//// ADD PRIMARY DATA
				UpdateReportCMP_Value(vGIANO,vGIANO,vGIO_WRLD_Show,vGIO_WRLD_Country_Show,vGIO_WRLD_Rank_Show,vGIO_WRLD_Percent_Show,vGIO_WRLD_Check);
			}
			else
			{
				//// IF NOT CHECKED REMOVE RECORDS FROM THE TABLE
				UpdateReportCMP_Value(vGIANO,vGIANO,vGIO_WRLD_Show,vGIO_WRLD_Country_Show,vGIO_WRLD_Rank_Show,vGIO_WRLD_Percent_Show,vGIO_WRLD_Check);
			}
			$('input[name^=_CHK_RPT_LEVEL_]').each(function() {				  
				var dynValName = this.value;				  
				var dynVal=$('input:checkbox[name='+dynValName+']').is(':checked');				  
				
				if(dynVal==true)
				{
					var SPLTres = dynValName.split("_");
					var vSegIDValue = SPLTres[4];
					var vGIO_WRLD_1_Show = $('input:checkbox[name=CHK_WORLDRANK_'+vSegIDValue+']').is(':checked');	
					var vGIO_WRLD_Country_1_show = $('input:checkbox[name=CHK_REGIONRANK_'+vSegIDValue+']').is(':checked');
					var vGIO_WRLD_Rank_1_Show = $('input:checkbox[name=CHK_ACTIVERANK_'+vSegIDValue+']').is(':checked');
					var vGIO_WRLD_Percent_1_Show = $('input:checkbox[name=CHK_PERCENTAGE_'+vSegIDValue+']').is(':checked');
					//// ADD SECONDARY DATA
					UpdateReportCMP_Value(vGIANO,vSegIDValue,vGIO_WRLD_1_Show,vGIO_WRLD_Country_1_show,vGIO_WRLD_Rank_1_Show,vGIO_WRLD_Percent_1_Show,dynVal);					
				}
				else
				{
					var SPLTres = dynValName.split("_");
					var vSegIDValue = SPLTres[4];
					var vGIO_WRLD_1_Show = $('input:checkbox[name=CHK_WORLDRANK_'+vSegIDValue+']').is(':checked');	
					var vGIO_WRLD_Country_1_show = $('input:checkbox[name=CHK_REGIONRANK_'+vSegIDValue+']').is(':checked');
					var vGIO_WRLD_Rank_1_Show = $('input:checkbox[name=CHK_ACTIVERANK_'+vSegIDValue+']').is(':checked');
					var vGIO_WRLD_Percent_1_Show = $('input:checkbox[name=CHK_PERCENTAGE_'+vSegIDValue+']').is(':checked');
					
					//// IF DATA EXISTS REMOVE IT
					UpdateReportCMP_Value(vGIANO,vSegIDValue,vGIO_WRLD_1_Show,vGIO_WRLD_Country_1_show,vGIO_WRLD_Rank_1_Show,vGIO_WRLD_Percent_1_Show,dynVal);					
			
				}
			});			
			 
			
			if (vGIO_WRLD_Check !== undefined)
			{
				alert ("Competitive Market Positioning Data Added Successfully");
			}
		}
		
		function ADD_CMP_From_Report(GTCPCode,GTSegID,GTRegionName,GTReportCode)
		{
			var vGIANO = $("#txtGIA_NO").val();
			var ChkifChecked = $('input:checkbox[name=CHKAddCompany_'+GTCPCode+'_'+GTSegID+'_'+GTRegionName+'_'+GTReportCode+']').is(':checked');
			
			if (GTCPCode != null && GTCPCode != '' )		 
			 {			
			 $.ajax({
						url: "AjaxAddCompany_CMP_to_Report.asp",
						type: "POST",
						//data:'vGIANO='+encodeURIComponent(GTReportCode)+'&vSegmentID='+encodeURIComponent(GTSegID)+'&vRegion='+encodeURIComponent(GTRegionName)+'&vCP_code='+encodeURIComponent(GTCPCode)+'&vCHK_Status='+encodeURIComponent(ChkifChecked)+'',							    
						data:'vGIANO='+encodeURIComponent(vGIANO)+'&vSegmentID='+encodeURIComponent(GTSegID)+'&vRegion='+encodeURIComponent(GTRegionName)+'&vCP_code='+encodeURIComponent(GTCPCode)+'&vCHK_Status='+encodeURIComponent(ChkifChecked)+'',							    
						success: function(data){
						alert (data);
						//$('#Country_competitive_table').empty().append(data);
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText); 
						}
					});
			  } 
				  
			
		}
		
		function AddComp_matrix(GTCPCode,GTSegID,GTRegionName,GTReportCode,GTSelectedType)
		{
			var vGIANO = $("#txtGIA_NO").val();
			if (vGIANO != null && vGIANO != '' )		 
			 {			
			 $.ajax({
						url: "AjaxAddCompany_CMP_to_RankType.asp",
						type: "POST",
						data:'vGIANO='+encodeURIComponent(vGIANO)+'&vSegmentID='+encodeURIComponent(GTSegID)+'&vRegion='+encodeURIComponent(GTRegionName)+'&vCP_code='+encodeURIComponent(GTCPCode)+'&GTSelectedType='+encodeURIComponent(GTSelectedType)+'',							    
						success: function(data){
						alert (data);
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText); 
						}
					});
			  } 
			
		}
		
		///COMPANY PERCENTAGE CHANGE
		function Call_CMP_Percentage_Change(GTCPCode,GTSegID,GTRegionName,GTReportCode)
		{
			var GTCPCode1 = GTCPCode.replace('-', '');
			var GTSegID1 = GTSegID.replace('-', '');
			var GTRegionName1 = GTRegionName.replace('-', '');
			var GTReportCode1 = GTReportCode.replace('-', '');
			
			var getPercentageVal = $("#slide_0"+GTCPCode1+"_"+GTSegID1+"_"+GTRegionName1+"_"+GTReportCode1).val();
			//alert (getPercentageVal);
			//AjaxAddCompany_CMP_to_Percentage.asp
			var vGIANO = $("#txtGIA_NO").val();
			if (vGIANO != null && vGIANO != '' )		 
			 {			
			 $.ajax({
						url: "AjaxAddCompany_CMP_to_Percentage.asp",
						type: "POST",
						data:'vGIANO='+encodeURIComponent(vGIANO)+'&vSegmentID='+encodeURIComponent(GTSegID)+'&vRegion='+encodeURIComponent(GTRegionName)+'&vCP_code='+encodeURIComponent(GTCPCode)+'&GTSelectedType='+encodeURIComponent(getPercentageVal)+'',							    
						success: function(data){
						alert (data);
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText); 
						}
					});
			  }
		}
		
		function getCompetitiveMarketPosition(GIANO) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(GIOType);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "ViewgetCompetitiveList.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',							    
							success: function(data){
							
							$('#Country_competitive_table').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				  } 
		}
		function GetCMPTypeData(vSegmentID,vGIANO,vType) {	
				//alert(vType);		
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							
							url: "getComeptitiveTweeks.asp",
							
							type: "POST",
							data:'vGIANO='+vGIANO+'&vSegmentID='+vSegmentID+'&vType='+vType+'',							    
							success: function(data){
							//alert('#CMP_'+vType+vSegmentID); 
							$('#CMP_'+vType+vSegmentID).empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		}
		
		function GetCMPTypeTweeks(vRegion,vSegmentID) {	
				var vGIANO = $("#txtGIA_NO").val();	
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				//alert(vGIANO);				 
				  $.ajax({
							
							url: "getComeptitiveTweeks.asp",	
							type: "POST",
							data:'vGIANO='+vGIANO+'&vRegion='+vRegion+'&vSegmentID='+vSegmentID+'',							    
							success: function(data){
							//alert('#CMP_'+vType+vSegmentID); 
							$('#CMP_SUB_'+vRegion+'_'+vSegmentID).empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		}
		
		function GetCMPTypeRegionData(vSegmentID,vGIANO,vType,GIOType) {	
				//alert(vType);		
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							
							url: "ViewgetCMPCountryList.asp",
							
							type: "POST",
							data:'vGIANO='+vGIANO+'&vSegmentID='+vSegmentID+'&vType='+vType+'&GIOType='+GIOType+'',							    
							success: function(data){
							//alert('#CMP_'+vType+vSegmentID); 
							//alert (data);
							$('#CMP_'+vType+vSegmentID).empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		}
		
		function GetWorldTableData(vCountry) {	
				//alert(vType);	
			var vGIANO = $("#txtGIA_NO").val();					
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							
							url: "ViewGlobalCAGR.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&vCountry='+vCountry+'',							    
							success: function(data){
							//alert('#CMP_'+vType+vSegmentID); 
							//alert (data);
							$('#' +vCountry +'_tableData').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});
				
				  } 				 
				
		}
		
		function GetWorldTableData_Tool(vCountry) {	
				//alert(vType);	
			var vGIANO = $("#txtGIA_NO").val();					
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							
							url: "ViewGlobalCAGR_Tool_NEW.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&vCountry='+vCountry+'',							    
							success: function(data){
							//alert('#CMP_'+vType+vSegmentID); 
							//alert (data);
							$('#' +vCountry +'_tableData_tool').empty().append(data);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});				
				  } 			 
				
		}
		
		function getLocalSyncToServer_OLD()
		{
			var vGIANO = $("#txtGIA_NO").val();					
			if (vGIANO != null && vGIANO != '' )		 
			{
				var text;
				if (confirm("Do you want to sync local generated data to server? NOTE: This will remove existing server data and replace with local data") == true) 
				{
				  //text = "You pressed OK!";
				  alert ("Server data will be synced with local data");
				  //VReportCode
				//  $.ajax({
				//			
				//			url: "Ajax_LocalDataToServerSync.asp",
				//			type: "POST",
				//			data:'vGIANO='+vGIANO+'',							    
				//			success: function(data){
							alert ("Server data will be synced with local data");
			//				},
				//			error: function (xhr, ajaxOptions, thrownError) {
					//		alert(xhr.status);
						//	alert(thrownError);
							//alert(xhr.responseText); 
					//		}
				///		});				
				  } 
				 else {
				 // text = "You canceled!";
				 alert ("Sync process cancelled");
				}
			}
			else
			{
				alert ("Report Code cannot be empty");
			}
		}
		
		function getServerSyncToLocal()
		{
			var vGIANO = $("#txtGIA_NO").val();		
			//alert (vGIANO);		
			if (vGIANO != null && vGIANO != '' )		 
			{
				var text;
				if (confirm("Do you want to sync server generated data to local? NOTE: This will remove existing local data and replace with server data") == true) 
				{
				   $.ajax({
							
							url: "Ajax_ServerDataToLocalSync.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',							    
							success: function(data){
							alert ("Server data will be synced with local data");
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});				
				  } 
				 else {
				 // text = "You canceled!";
				 alert ("Sync process cancelled");
				}
			}
			else
			{
				alert ("Report Code cannot be empty");
			}
		}
		
		function getLocalSyncToServer()
		{
			var vGIANO = $("#txtGIA_NO").val();		
			//alert (vGIANO);		
			if (vGIANO != null && vGIANO != '' )		 
			{
				var text;
				if (confirm("Do you want to sync local generated data to server? NOTE: This will remove existing server data and replace with local data") == true) 
				{
				   $.ajax({
							
							url: "Ajax_LocalDataToServerSync.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'',							    
							success: function(data){
							alert ("Local data will be synced with Server data");
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText); 
							}
						});				
				  } 
				 else {
				 // text = "You canceled!";
				 alert ("Sync process cancelled");
				}
			}
			else
			{
				alert ("Report Code cannot be empty");
			}
		}
</script>
</head>
</div>
<body>
    <nav>
        <div class="navbar">
            <div id="wapper">
                <span style="float:left;"><img src="https://www.strategyr.com/images/log_icon.png"
                        style="width:45px;height:45px;" class="log_ico">
                </span>
                <span>
                    <a href="http://205.234.30.74/DEGNumbers/GIA1.aspx" target="new"> GIA</a>
                    <a href="http://205.234.30.74/DEGNumbers/Segments.aspx" target="new"><i class="fa fa-table" aria-hidden="true"></i> Segments</a>
					<a href="http://205.234.30.74/degnumbers/GIA_DEG_Numbers_Add_New.asp" target="new"><i class="fa fa-file-text-o" aria-hidden="true"></i> Set Report Architecture</a>
					<a href="http://205.234.30.74/degnumbers/GIA_DEG_Numbers_Multiplyers.asp" target="new"><i class="fa fa-users" aria-hidden="true"></i> Set Report Multiplyers</a>
                   <!-- <a href="http://205.234.30.74/DEGNumbers/BaseYearData.aspx" target="new"><i class="fas fa fa-cloud-upload"></i> Base Year Data</a>-->
                    
                   <!-- <div class="dropdown">
                        <button class="dropbtn">DEG Numbers Link
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <div class="row">
                                <div class="column">
                                    <a href="http://server2/gia_analytix/viewGIACountriesII.asp?sts=O&amp;code="
                                        target="_blank">
                                        <!-i class="fa fa-link" aria-hidden="true"></i-><i class="fa fa-home"
                                            aria-hidden="true"></i> Generate Numbers Link</a>
                                </div>
                                <div class="column">
                                    <a href="http://205.234.30.74/DEGNumbers/" target="_blank"><i
                                            class="fa fa-external-link"></i>Online Link</a>
                                </div>
                            </div>
                        </div>
                    </div>-->
                    <!--a href="ExchangeRates.aspx"><i class="fa fa-th" aria-hidden="true"></i> ExchangeRates</a>
   <a href="Simulator.aspx"><i class="fa fa-table" aria-hidden="true"></i> Simulator</a-->

                </span>
                <span style="float:right; padding-right: 10px;">
                    <a href="http://205.234.30.74/DEGNumbers/Logout.aspx"><i class="fa fa-sign-out"
                            aria-hidden="true"></i> Log Out</a>
                </span>
                <span style="float:right;padding-right: 50px;">
                    <a href="http://205.234.30.74/DEGNumbers/GIA.aspx#GIA_Analytix"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Welcome obili</a>
                </span>
            </div>
        </div>
    </nav>
    <div id="wapper" class="border  bg-white">

        <!---UPDATE BASE LINE DATA -->
        <div class="w-100 mb-2">
            <div class="w-100 section_header">
                <input type="checkbox" data-toggle="collapse" data-target="#udata_datab_base" aria-expanded="false" aria-controls="collapseExample" class="float-left mx-2 mt-2" />
                <h3>A. ADD SOURCE DATA</h3>
            </div>
            <div class="w-100">
                <div class="collapse" id="udata_datab_base">
                    <div class="card card-body">
                        <div class="table-responsive">
                            <table class="table w-100 mb-1 border-0" id="update-table">
                                <tbody>
                                    <tr>
                                        <td class="border-0">

`                                                                                               
                                                        <div class="w-xl-50 w-lg-60 w-md-100 w-sm-100 mx-auto">
                                                        
                                                                                                    
                                                        
                                                        <div class="d-flex flex-wrap justify-content-start mb-2">
                                                    <div class="col-lg-3 col-xl-3 col-md-4">                                                    
                                                        <b>REPORT CODE:&nbsp; 
                                                    </b></div>
    
                                                    <div class="col-lg-8 col-xl-8 col-xl-7">                                                    
                                                        <input type="textbox" name="txtReportCode" id="txtReportCode" value="" class="w-100">
                                                   </div><b>                                                                                             
                                                </b></div><div class="d-flex flex-wrap justify-content-start mb-2">
                                                    <div class="col-lg-3 col-xl-3 col-md-4">                                                    
                                                        <b>SOURCE LINK:&nbsp; 
                                                    </b></div>
    
                                                    <div class="col-lg-8 col-xl-8 col-xl-7">                                                    
                                                        <input type="textbox" name="txtSrcLink" id="txtSrcLink" value="" class="w-100">
                                                   </div><b>                                                                                             
                                                </b></div><div class="d-flex flex-wrap justify-content-start">
                                                    <div class="col-lg-3 col-xl-3 col-md-4">                                                    
                                                        <b>SOURCE TEXT:&nbsp;  
                                                    </b></div>
    
                                                    <div class="col-lg-8 col-xl-8 col-md-7">                                                    
                                                         <textarea name="txtSrcText" id="txtSrcText" class="w-100"></textarea>
                                                        
                                                         
                                                   </div><b>                                                                                             
                                                </b></div><b>
                                                <b>
                                                <div class="w-100 text-center mt-2">
                                                    <input type="submit" name="btnAdd" class="mt-2 btn-primary" value="ADD SOURCE DATA" onClick="AddSourceData();" id="btnAdd"> &nbsp; 
                                                        <input type="button" data-toggle="collapse" onClick="GetSourceData();"  data-target="#udata_list_show" aria-expanded="false" aria-controls="collapseExample" class="mt-2 btn-primary collapsed" value="VIEW ALL SOURCES">
                                                </div>
                                                
                                                
                                                </b></b></div>
    
    
    
                                                <div class="d-flex flex-wrap justify-content-center mt-4 pt-3  border-top">
                                                    <div class="mx-3">
                                                        <input type="radio" name="s2_WRLD" id="s2_WRLD" customatt="radio_option" style="float:left mr-2" value="WORLD" checked="" onclick="fun_WRLD_US()">
                                                        <b>WORLD</b>
                                                    </div>
                                                    <div class="mx-3">
                                                        <input type="radio" name="s2_WRLD"  id="s2_WRLD" customatt="radio_option" style="float:left mr-2" value="USA" onclick="fun_WRLD_US()">
                                                        <b>USA = 100%</b>
                                                    </div>
                                                   
                                                </div>
                                      
                                        <!----
                                             <div class="d-flex flex-wrap justify-content-start">
                                                <div class="col-lg-4 col-xl-4">                                                    
                                                    <b>SOURCE LINK:&nbsp; 
                                                </div>                                                                                             
                                            </div>

                                            <div class="d-flex flex-wrap justify-content-start">                                                
                                                <div class="col-lg-4 col-xl-4">                                                    
                                                    <b>SOURCE TEXT:&nbsp; 
                                                </div>                                                
                                            </div>

                                             <div class="w-100 text-center">
                                                <input type="submit" name="btnAdd" class="mt-2 btn-primary"
                                                    value="ADD BASELINE DATA"
                                                    onclick="javascript:AddValue()" id="btnAdd"> &nbsp; 
													<input type="button" data-toggle="collapse" data-target="#udata_list_show" aria-expanded="false" aria-controls="collapseExample" class="mt-2 btn-primary" value="VIEW ALL"/>
                                            </div><br/>
											<hr/>

                                            	<div class="d-flex flex-wrap justify-content-start">
                                                <div class="col-lg-4 col-xl-4">
                                                    <input type="radio" name="s2" customatt="radio_option"
                                                        style="float:left mr-2" checked>
                                                    <b>World = 100%</b>
                                                </div>
                                                <div class="col-lg-4 col-xl-4">
                                                    <input type="radio" name="s2" customatt="radio_option"   style="float:left mr-2">
                                                    <b>USA = 100%</b>
                                                </div>
                                               
                                            </div>

                                            --->
                                           
										
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                
				
				<div class="collapse" id="udata_list_show">
                    <div class="card card-body">
                        <div class="table-responsive">
                            <table class="table w-100 mb-1 border-0" id="BaseLine_Source_table">
								 <tr>
		                            <th scope="col" style="color:black;background-color:#FFF1EB;">#</th>
		                            <th scope="col" style="color:black;background-color:#FFF1EB;">LINK</th>
		                            <th scope="col" style="color:black;background-color:#FFF1EB;">TEXT</th>		                            
		                            <th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th>
		                        </tr>
								<tr>
		                            <td colspan="4" align="center"><b>-- NO RECORDS FOUND --</b></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
            </div>
        </div>
        <!---BASELINE DATA-->
        <div class="w-100">
            <div class="w-100 section_header">
                <h3>A1. BASELINE TWEAKED PLACEKEEPER DATA</h3>
            </div>
            <div class="table-responsie">
			
			<form name="frmadd" method="post" >
                <table class="table border" id="baseline_data_table">
                    <tbody>
                        <tr>
                            <td style="width: 15%"><b>
                                    <font color="red"><sup>*</sup></font>REPORT CODE
                                </b>:
                                <input name="txtGIA_NO" type="text" id="txtGIA_NO" onChange="GetGiaData(this);" placeholder=" GIA No" style="color: #000 !important; font-size: 15px; font-weight: 600;">
                                <br><span id="reqGIA_NO" class="ErrorMessageClass" style="display:none;">Report Code
                                    can`t be left blank</span>
                            </td>
                            <td style="width: 55%" colspan="2">
                                <b>
                                    <font color="red"><sup>*</sup></font>REPORT TITLE
                                </b>: <input name="txtTOPIC" type="text" id="txtTOPIC"                                    
                                    style="color: #000 !important; font-size: 15px; font-weight: 600;">
                                <br><span id="reqTOPIC" class="ErrorMessageClass" style="display:none;">Topic can`t be
                                    left blank</span>
                            </td>
							<!--td style="width: 15%"><b>
                                    <font color="red"><sup>*</sup></font>KEY SEGMENTS							
							        <input name="txtSEG_Count" type="text" id="txtSEG_Count" 
                                    style="color: #000 !important; font-size: 15px; font-weight: 600;">
							</td-->
                            <!--<td style="width: 15%">
                                <b>SEGMENT COUNT</b>:
                                <select name="txtSEG_NO" id="txtSEG_NO">
                                   
                                    <option value="2" selected>2</option>
									 <option value="1">1</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                </select>
                            </td>-->
                            
                        </tr>
                    </tbody>
                </table>
				</form>
				
            </div>
        </div>

		<!-- SHOW SEGMENT DATA -->
		<div class="w-100">
            <div class="table-responsive">

                <div class="w-100">
                    <div class="w-100 section_header">
					<input type="checkbox" data-toggle="collapse" data-target="#MARKET_SEGMENT_MS" aria-expanded="false" aria-controls="collapseExample" class="float-left mx-2 mt-2">
                        <h3>A2. PRIMARY MARKET SEGMENTATION (MS)  &nbsp;&nbsp;&nbsp;<!--input type="submit"  name="btnAdd" value="ADD"  id="btnAdd" class="float-right"--></h3>
                    </div>
					<div class=" w-100 pl-2" id="SegmentShowData"> 								
							
					</div>
					<div class="collapse" id="MARKET_SEGMENT_MS">
						 <div class="card card-body border-0 p-0" id="MARKET_SEGMENT_MS_table">     
						   <!--  Display market segment-->	
						   <table class="table w-100 mb-1 border-0" id="Marketsize_table">
							<tr>
							   <td scope="col" style="color:black;" >
								  <div class="d-flex  align-items-center">
									 <input type="text"  class="js-input rank_input mx-2" name="Txt_SegCount" id="Txt_SegCount" value="" style="width: 235px !important;height: 35px;" size="3" tabindex="3" placeholder="No. of segments">
									 <input type="submit" name="btnAdd" class=" btn-primary p-2 shadow-sm border-0 mx-1 mb-0"  onclick="funAddSegments()" value="ADD"  id="btnAdd">
								  </div>
							   </td>
							</tr>
							</tr>
						 </table>
						</div>
						<div class="card card-body border-0 p-0" id="MARKET_SEGMENT_table">  
						
						</div>						
					</div>

                </div>
            </div>
         </div>
		<!-- END SEGMENT DATA HERE -->

		<div class="w-100 section_header">
                <h3>A3. TOTAL COMPOUNDED MARKET SIZE - TIER A</h3>
            </div>
			
			<%
				dim totalValue, VBGetReportCode
				totalValue = ""
				VBGetReportCode = ""
				VBGetReportCode = retValue()
				totalValue = getStartEndYearValues(VBGetReportCode)
				''response.write totalValue & " MMMMM"
			%>
			
			<SCRIPT LANGUAGE="JavaScript" RUNAT="Server">
			    function retValue(){
					//var vGIANO = $("#txtGIA_NO").val();
					//vGIANO = document.getElementsByName('txtGIA_NO')[0].value;
					var vGIANO = "MCP99990";
					//var vGIANO = retValue1();
					return vGIANO;
			    }
		    </SCRIPT>
			
			<SCRIPT LANGUAGE="JavaScript">
			    function retValue1(){
					var vGIANO = $("#txtGIA_NO").val();
					return vGIANO;
			    }
		    </SCRIPT>

            <div class="table-responsive">

                <table class="table w-100 border" id="yearly_table">
					<tr>
						<th>YEAR</th>
                        <th><font color="red"><sup>*</sup></font>SIZE</th>
                         <th> <span class="text-center w-100 d-block">% GROWTH RATES</span>
							<div class="d-flex justify-content-between">
								<span class="text-center w-100 d-block"><%=session("SYear")%></span>
								<%if trim(session("Historic")) ="Y" then%>
								<span class="text-center w-100 d-block"><%=session("BYear")%></span>
								<%else%>
								<span class="text-center w-100 d-block">&nbsp;</span>
								<%end if%>
                                
								<span class="text-center w-100 d-block"><%=session("EYear")%> </span>
							</div>
						</th>
						<th>
							<font color="red"><sup>*</sup></font> <%=session("BYear")%>-<%=session("EYear")%> CAGR
						</th>
					</tr>
                    <tbody>

                        <tr>
                            <td style="width:15%">
                               
                                <select id='txtMarket_YEAR' name='txtMarket_YEAR'>
                                    <option value='2010'>2010</option>
                                    <option value='2011'>2011</option>
                                    <option value='2012'>2012</option>
                                    <option value='2013'>2013</option>
                                    <option value='2014'>2014</option>
                                    <option value='2015'>2015</option>
                                    <option value='2016'>2016</option>
                                    <option value='2017'>2017</option>
                                    <option value='2018'>2018</option>
                                    <option value='2019'>2019</option>
									<option value='2020'>2020</option>
									<option value='2021'>2021</option>
                                    <option value='2022'>2022</option>
                                    <option value='2023'>2023</option>
                                    <option value='2024'>2024</option>
                                    <option value='2025'>2025</option>
                                    <option value='2026'>2026</option>
                                    <option value='2027'>2027</option>
                                    <option value='2028'>2028</option>
                                    <option value='2029'>2029</option>
									<option value='2030'>2030</option>
                                </select>
                            </td>

                            <td style='width:50%'> <b>
                                     <input name="txtMarket_VALUE" type="text" value="" id="txtMarket_VALUE" onkeyup="checkDec(this);">
                                <br><span id="reqORIG_VALUE" class="ErrorMessageClass" style="display:none;">Original
                                    value can`t be left blank</span>
                            </td>
							<td style="width:15%">
						   <div class="d-flex justify-content-between">
								<%if trim(session("Historic")) ="Y" then%>
								<input class="mx-1" name="txtMarket_VALUE14" type="text" value="" id="txtMarket_VALUE14" onkeyup="checkDec(this);">
								<%End If%>
						        <input class="mx-1" name="txtMarket_VALUE19" type="text" value="" id="txtMarket_VALUE19" onkeyup="checkDec(this);">
						        <input class="mx-1" name="txtMarket_VALUE30" type="text" value="" id="txtMarket_VALUE30" onkeyup="checkDec(this);">
						   </div>
							</td>
							<td style="width: 20%">
                                <b>
                                    
                                    <input name="txtMarket_CAGR" type="text" id="txtMarket_CAGR" onkeyup="checkDec(this);">
                                    <span id="Regex2" class="ErrorMessageClass" style="display:none; ">Please enter
                                        valid decimal number.</span>
                            </b></td>
                           


                        </tr>
						<tr><td colspan="4">NOTE: 2019 year market size is required</td></tr>
						</tbody>
						</table>
						 <div class="w-100 text-center mt-2">
							<input style="background-color: #2196F3;" type="submit" name="btnAdd" class="mt-2 btn-primary p-2 shadow-sm border-0 mx-1 mb-3" value="ADD MARKET SIZE" onClick="UpdatedMarketsizeData();" id="btnAdd"> &nbsp; 
							<input style="background-color: #2196F3;" type="button" data-toggle="collapse" onClick="ViewMarketsizeData_A3();"  data-target="#MarketSize_list_show" aria-expanded="false" aria-controls="collapseExample" class="mt-2 btn-primary p-2 shadow-sm border-0 mx-1 mb-3 collapsed" value="VIEW ALL MARKET SIZE">
						</div>
						
						</div>
					<div class="collapse" id="MarketSize_list_show">
                    <div class="card card-body">
                        <div class="table-responsive">
                            <table class="table w-100 mb-1 border-0" id="Marketsize_tableA3">
								 <tr>
		                            <th scope="col" style="color:black;background-color:#FFF1EB;">#</th>
		                            <th scope="col" style="color:black;background-color:#FFF1EB;">YEAR</th>
		                            <th scope="col" style="color:black;background-color:#FFF1EB;">SIZE</th>	
									<th scope="col" style="color:black;background-color:#FFF1EB;">CAGR</th>										
		                            <th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th>
		                        </tr>
								<tr>
		                            <tr>
								<td scope="col" style="color:black;" class="border">1</td>
								<td scope="col" style="color:black;" class="border">2019</td>
								<td scope="col" style="color:black;" class="border">2,016</td>		                            
								<td scope="col" style="color:black;" class="border">0.16</td>
								<td scope="col" style="color:black;" class="border">Edit</td>
							</tr>
								</tr>
							</table>
						</div>
					</div>
					</div>
		<div class="w-100">
		<div class="w-100 text-center mt-2"></div>						
        <!---BUSINESS ECOSYSTEM-->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>A4. BUSINESS ECOSYSTEM</h3>
            </div>
            <div class="d-flex w-100 pl-2">
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdBusinessPosting" id="rdB2B" customatt="radio_option" style="float:left" class="mr-2">
                    <b>B2B</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdBusinessPosting"  id="rdB2C"  customatt="radio_option" style="float:left" class="mr-2" checked>
                    <b>B2C</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdBusinessPosting" id="rdB2G"  customatt="radio_option" style="float:left" class="mr-2">
                    <b>B2G</b>
                </div>
            </div>
        </div> 
		<script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>

        <!---PRMARY ATTRIBUTE (Select One) -->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>A5. PRIMARY MARKET SPLIT ATTRIBUTE</h3>
            </div>
            <div class="d-flex w-100 pl-2 toggle">
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="PRMARY" customatt="radio_option" style="float:left" class="mr-2 " data-toggle="collapse" href="#population" role="button" aria-expanded="false" aria-controls="collapseExample">
                    <b>POPULATION</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="PRMARY" customatt="radio_option" style="float:left" class="mr-2" customatt="radio_option">
                    <b>PER CAPITA</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="PRMARY" customatt="radio_option" checked style="float:left" class="mr-2" customatt="radio_option">
                    <b>GDP</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="PRMARY" style="float:left" class="mr-2" customatt="radio_option">
                    <b>UNIQUE</b>
                </div>
            </div>

            <div class="w-100 ">
                <div class="mt-2 mb-3 collapse" id="population">
                    <div class="w-100 px-2">
                        <div class="d-flex w-100 pl-2">
                            <div
                                style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                                <input type="radio" name="EXTRA" customatt="radio_option" style="float:left" class="mr-2">
                                <b>TOTAL</b>
                            </div>
                            <div
                                style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                                <input type="radio" name="EXTRA" customatt="radio_option" style="float:left" class="mr-2">
                                <b>FEMALE</b>
                            </div>
                            <div
                                style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                                <input type="radio" name="EXTRA" customatt="radio_option" style="float:left" class="mr-2">
                                <b>MALE</b>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		<!---PANDEMIC  IMPACT -->
		<div class="w-100 section_header">                
                <h3 class="p-2">A6. INTERIM MARKET IMPACTING PARAMETERS <!--<input type="submit"  name="btnAdd" data-toggle="collapse" data-target="#Impact_show" aria-expanded="false" aria-controls="collapseExample" class=" float-right" value="Add Impact"  id="btnAdd" >--></h3>
            </div>
			<div class="d-flex w-100 pl-2">
			<input type="hidden" id="HidImpacts" name="HidImpacts">
			<input type="hidden" id="HidGIO_Type" name="HidGIO_Type">
	  
			</div>
			<div class="collapse" id="Impact_show">
			   <div class="card card-body">
			      <div class="table-responsive">
			         <table class="table w-100 mb-1 border-0" id="Marketsize_table">
			            <tr>
			               <td scope="col" style="color:black;" >
			                  <div class="d-flex  align-items-center">
			                     <input type="text"  class="js-input rank_input mx-2" name="Txt_Impact1" id="Txt_Impact1" value="" style="width: 235px !important;height: 35px;" size="3" tabindex="3" placeholder="Add Impact">
			                     <input type="submit" name="btnAdd" class=" btn-primary p-2 shadow-sm border-0 mx-1 mb-0"  onclick="funAddImpacts()" value="ADD IMPACT"  id="btnAdd">
			                  </div>
			               </td>
			            </tr>
			            </tr>
			         </table>
			      </div>
			   </div>
			</div>
        <div class="w-100 mb-3" >
            <div class="w-100 section_subheader" >
			<input type="checkbox" data-toggle="collapse" onClick="ViewSecondary_Market_Factors('PANDEMIC');" data-target="#PANDEMIC" aria-expanded="false"
                                aria-controls="collapseExample" class="float-left mx-2 mt-2">
                <h3>PANDEMIC & SUPPLY CHAIN IMPACT</h3>
            </div>
            <div class="collapse" id="PANDEMIC">
                <div class="card card-body border-0 p-0" id="PANDEMIC_Impact_table">
					<!--PANDEMIC IMPACT-->
				</div>
			</div>	

        <!---SUPPLY CHAIN  IMPACT -->
        <!--div class="w-100 mb-3" >
			<div class="w-100 section_subheader">
			<input type="checkbox" data-toggle="collapse" data-target="#SUPPLY_CHAIN" aria-expanded="false" aria-controls="collapseExample" class="float-left mx-2 mt-2">
				<h3>SUPPLY CHAIN IMPACT</h3>
			</div>

			<div class="collapse" id="SUPPLY_CHAIN">
			<div class="card card-body border-0 p-0" id="SUPPLY_CHAIN_table">    
			</div>
			</div>
		</div-->
	
		<!---CHIP SHORTAGE  IMPACT -->
        <div class="w-100 mb-3" >
            <div class="w-100 section_subheader">
			<input type="checkbox" data-toggle="collapse" onClick="ViewSecondary_Market_Factors('CHIP_SHORTAGE');" data-target="#CHIP_SHORTAGE" aria-expanded="false"
                                aria-controls="collapseExample" class="float-left mx-2 mt-2">
                <h3>CHIP SHORTAGE IMPACT</h3> 
            </div>
          <div class="collapse" id="CHIP_SHORTAGE">
			<div class="card card-body border-0 p-0" id="CHIP_SHORTAGE_table">  
				<!--CHIP SHORTAGE IMPACT-->
			</div>
		  </div>
		</div>
		<!---OTHER  IMPACT -->
        <div class="w-100 mb-3" >
            <div class="w-100 section_subheader">
				<input type="checkbox" data-toggle="collapse" data-target="#OTHERS_SHORTAGE" aria-expanded="false"
                                aria-controls="collapseExample" class="float-left mx-2 mt-2">
                <h3>OTHER</h3> 
            </div>
			<div class="collapse" id="OTHERS_SHORTAGE">
						 <div class="card card-body border-0 p-0" id="SHOW_ADD_APPLICATION_table">     
						   <!--  Display market segment-->	
						   <table class="table w-100 mb-1 border-0" id="SHOW_ADD_APPLICATION_table">
							<tr>
							   <td scope="col" style="color:black;" >
								  <div class="d-flex  align-items-center">
									 <input type="text"  class="js-input rank_input mx-2" name="Txt_Impact" id="Txt_Impact" value="" style="width: 235px !important;height: 35px;" size="3" tabindex="3" placeholder="Impact Name">
									 <input type="submit" name="btnAdd" class=" btn-primary p-2 shadow-sm border-0 mx-1 mb-0"  onclick="funAddImpacts()" value="ADD"  id="btnAdd">
								  </div>
							   </td>
							</tr>
							</tr>
						 </table>
						</div>
					</div>
		</div>
		
				
					
		
		<!---GEOGRAPHIC SEGMENTATION SELECTOR -->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>A7. GEOGRAPHIC SEGMENTATION SELECTOR</h3>
            </div>
            <div class="d-flex w-100 pl-2">
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdGEO" value="GEO_A" id="rdGEOA" customatt="radio_option" style="float:left" class="mr-2" onchange="handleChange1()">
                    <b>GEO A</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdGEO" value="GEO_B" id="rdGEOB"  customatt="radio_option" style="float:left" class="mr-2" onchange="handleChange1()">
                    <b>GEO B</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdGEO" id="rdGEOC"  value="GEO_C"  customatt="radio_option" style="float:left" class="mr-2" onchange="handleChange1()">
                    <b>MANUAL</b>
                </div>
            </div>
        </div>
		
		<div class="w-100 text-center mt-2"> <a class="mt-2 btn-primary p-2 shadow-sm border-0 mx-1 mb-3" onclick="showTablesView()" target="new" style="background-color: #2196F3;width: 205px;color:white;">% SEVERITY IMPACT</a></div>
		
		<div class="w-100 mb-3">
			<div id="Seg_App_TablesData_Structure">
			
			</div>
		</div>
		
		 <div class="w-100">


            <div class="w-100 section_header">
                <h3 class="p-2">B. PRIMARY APPLICATION BASE YEAR PERCENTAGE ALLOCATION - TIER B &nbsp;&nbsp;&nbsp;<a href="http://205.234.30.74/DEGNumbers/GIA.aspx" target="new"><input type="submit"  name="btnAdd" value="Add New Segment"  id="btnAdd" class="float-right"></a></h3>
            </div>
        
		
        <div class="table-responisve" >
            <div  id="segment_allocation_primary">
             <table class="table w-100" >
                    <tbody>
                        <!--tr>
							<th colspan="8" scope="col" align="center" style="color:black;background-color:#FFF;">KEY MARKET SEGMENT (MS)</th>
						</tr-->
                        <tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">APPLICATION ID</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">APPLICATION NAME</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">2020 MARKET SIZE</th>
                            <!--<th scope="col" style="color:black;background-color:#FFF1EB;text-align: center !important;">%</th>-->
                            <th scope="col" style="color:black;background-color:#FFF1EB;" class="text-center">
								<div class="d-flex justify-content-between"> 
							        <span class="ml-4">%</span>
							          <span class="mx-auto">ALLOCATION</span>
								</div>
							</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" colspan="2" class="text-center">GROWTH TREND</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                        </tr>
                        </tr> 
						<tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
							<th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" class="text-center"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">2014</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">2019</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">2030</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                        </tr>
                    </tbody>
              </table>
            </div>
        </div>
		
	<!--<div class="w-100 text-center mt-2"> <input type="button" data-toggle="collapse" onclick="ViewMarketsizeData();" data-target="#MarketSize_list_show" aria-expanded="false" aria-controls="collapseExample" class="mt-2 btn-primary p-2 shadow-sm border-0 mx-1 mb-3 collapsed" value="TRAJECTORY" style="background: green;width: 125px;"></div>-->
         <!---MARKET BREAKDOWN--->
	<!--div class="w-100">
            <div class="table-responsive">

                <div class="w-100">
                    <div class="w-100 section_header">
                        <h3>C. MARKET BREAKDOWN BY APPLICATIONS - TIER C</h3>
                    </div>
                    <div class="d-flex w-100 pl-2" id="SegPrimaryAppData1">
                     <div style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
			                    <input type="checkbox" name="rdSegType" customatt="radio_option" style="float:left" class="mr-2" >
			                    <b>End-Use</b>&nbsp;&nbsp;&nbsp;<input type="checkbox" name="rdSegType" customatt="radio_option" style="float:left" class="mr-2" >
			                    <b>Technology</b>
			                </div>
					</div>

					
					<div class="collapse" id="SHOW_ADD_APPLICATION">
						 <div class="card card-body border-0 p-0" id="SHOW_ADD_APPLICATION_table">     
						   <table class="table w-100 mb-1 border-0" id="SHOW_ADD_APPLICATION_table">
							<tr>
							   <td scope="col" style="color:black;" >
								  <div class="d-flex  align-items-center">
									 <input type="text"  class="js-input rank_input mx-2" name="Txt_Channel" id="Txt_Channel" value="" style="width: 235px !important;height: 35px;" size="3" tabindex="3" placeholder="Application Name">
									 <input type="submit" name="btnAdd" class=" btn-primary p-2 shadow-sm border-0 mx-1 mb-0"  onclick="funAddChannel()" value="ADD"  id="btnAdd">
								  </div>
							   </td>
							</tr>
							</tr>
						 </table>
						</div>
					</div>
                </div>
            </div>
		</div-->
		 
		  <!---MARKET BREAKDOWN--->
		 
		   <div class="w-100">
            <div class="table-responsive">

                <div class="w-100">
                    <div class="w-100 section_header">
                        <h3>C. SELECT KEY APPLICATION FOR GRASSROOTS DATA GENERATION </h3>
                    </div>
							<div class="d-flex w-100 pl-2" id="SegPrimaryData">   
								
							</div>
											
                </div>
            </div>
         </div>
		
		
		<!----SEGMENT ALLOCATION--->     
        <div class="w-100">
            <div class="w-100 section_header">
                <h3 class="p-2">D. SECONDARY APPLICATIONS MARKET BY CHANNEL - TIER D <!--<input type="submit" name="btnAdd" value="Add New Channel"  id="btnAdd" >--></h3>
            </div>
            <div class="table-responisve" >
              <!--div  id="segment_allication"-->
			  <div  id="segment_allication">
				<table class="table w-100" >
                    <tbody>
                        <tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">CHANNEL ID</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">CHANNEL NAME</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">CHANNEL TYPE</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" class="text-center">ALLOCATION %</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">CAGR %</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th>
                        </tr> 
                    </tbody>
                </table>
            </div>
        </div>
       
                   
	 
        <!---MARKET STAGING BY COUNTRY---->
        <div class="w-100">
            <div class="w-100 section_header">
                <h3>E. COMPOUNDED MACRODYNAMICS ADJUSTMENTS - BY COUNTRY - TIER E <!--- CY - COUNTRY --></h3>
				<h6 style="font-size:14px; font-weight:600;"> COUNTRY MARKET TRJACTORY FOR CHANNEL APPLICATION KEY MARKET SEGMENT</h6>
				<h6 style="font-size:14px; font-weight:600;"> GEOGRAPHIC TREND ADJUSTMENTS</h6>
            </div>
			<div id="Country_Tweek_table">
	            <div class="w-100 section_subheader" >
					<input type="checkbox" data-toggle="collapse" data-target="#UNITED_STATES" aria-expanded="false"  aria-controls="collapseExample" class="float-left mx-2 mt-2">
	                <h3>UNITED STATES</h3>
	            </div>
	            <div class="collapse" id="UNITED_STATES">
	                <div class="card card-body border-0 p-0" id="UNITED_STATES_Tweek_table">
						UNITED STATES
					</div>
				</div>
			</div>
		</div>
		
		<!---MARKET STAGING BY COUNTRY---->
        <div class="w-100">
            <div class="w-100 section_header">
                <h3>F. COMPETITIVE MARKET POSITIONING - TIER F</h3>				
            </div>
			<div id="Country_competitive_table">
	            
				<!--include file="Competitive_Data.asp"-->
			</div>
		</div>
		<div class="w-100 text-center mt-2 "> <a class="mt-2  btn my-3 mt-2 btn-primary p-2 shadow-sm border-0 mx-1 mb-3" onclick="showTrustFactorView()" target="new" style="background-color: #d4af37;width: 205px;color:red;">TRUST FACTOR</a></div>
		<div class="w-100 text-center mt-2"> <a class="mt-2 btn-primary p-2 shadow-sm border-0 mx-1 mb-4" onclick="showTocView()" target="new" style="background-color: #2196F3;width: 205px;color:white;">VIEW MARKET SHARE (TOC)</a></div>
		
		
		<div class="w-100 mb-3 mt-3">
			<div id="Seg_App_toc_view">
			
			</div>
		</div>
		
		<!--<div class="w-100">
            <div class="w-100 section_header">
                <h3>ResX Synced Data</h3>				
            </div>			
		</div>
		<div id ="Display_SegmentsData_released">
			<div class="w-100 section_subheader">
				<input type="checkbox" data-toggle="collapse" onclick="GetWorldTableData()" data-target="#WorldtableData" aria-expanded="false" aria-controls="collapseExample" class="float-left mx-2 mt-2 collapsed">
				<h3>World Table Data (CAGR)</h3>
			</div>
			<div class="collapse" id="WorldtableData" style="">
			World Table
			</div>
		</div>-->
		<div id="Country_competitive_table_tool">
	            
				<input type="button" name="btnlocalgenerate" id="btnlocalgenerate" value="Sync Server Data to Local" onclick="getServerSyncToLocal()">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<!--input type="button" name="btnlocalgenerate" id="btnlocalgenerate" value="Sync Local Data to Server (Caution)" onclick="getLocalSyncToServer()"-->
		</div>
		<div class="w-100">
            <div class="w-100 section_header">
                <h3>Local Generated Data</h3>				
            
			<!--<div id="Country_competitive_table_tool">
	            
				<input type="button" name="btnlocalgenerate" id="btnlocalgenerate" value="Generate Copy" onclick="getLocalCopy()">
			</div>-->	</div>		
		</div>
		<div id ="Display_SegmentsData_generated">
			<div class="w-100 section_subheader">
				<input type="checkbox" data-toggle="collapse" onclick="GetWorldTableData_Tool()" data-target="#WorldtableData_Tool" aria-expanded="false" aria-controls="collapseExample" class="float-left mx-2 mt-2 collapsed">
				<h3>World Table Data (CAGR)</h3>
			</div>
			<div class="collapse" id="WorldtableData_Tool" style="">
			World Table
			</div>
			
		</div>
		<!--div id="Country_competitive_table_tool">
	            
				<input type="button" name="btnlocalgenerate" id="btnlocalgenerate" value="Sync Local Data to Server" onclick="getLocalSyncToServer()">
		</div-->
</body>
</html>