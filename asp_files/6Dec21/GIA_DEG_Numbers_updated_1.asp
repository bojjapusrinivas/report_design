<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        GIA - DEG Numbers 
    </title>
    <!-- CSS STYLES-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
    <link rel="stylesheet" href="https://bojjapusrinivas.github.io/report_design/DEG_NEW/gia_switches.css" />
    <link rel="stylesheet" href="deg_custom_styles.css" />
    <!--SCRIPTS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>
	<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
  	function GetGiaData(GIANO) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(vGIANO); 
				if (vGIANO != null && vGIANO != '' )		 
				 {	 
				  $.ajax({				        	
							url: "getGIAData.asp",
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
							 var vSTART_VALUE=res[10];
							  $("#txtSTART_VALUE").val(vSTART_VALUE);
							 var vSTART_VALUE1=res[11];
							 $("#txtSTART_VALUE1").val(vSTART_VALUE1);
							 var vSTART_TWEAKED_VALUE=res[12]; 
							 $("#txtSTART_TWEAKED_VALUE").val(vSTART_TWEAKED_VALUE);
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
							 var vRegion_Type=res[18];
							 //alert(vRegion_Type);
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
								GetSegData(GIANO);
								GetSegData_Primary(GIANO);
								GetSegTypeData(GIANO);
								GetSegTypePrimaryAppdata(GIANO);
								
								getCountryTweeks(GIANO,vRegion_Type);
								getCountryATTRIBUTES(GIANO,vRegion_Type);
								getSegTypeallocation(GIANO);
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
		
		
			function GetSegData(GIANO) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(vGIANO);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getSegData.asp",
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
							url: "getSegData_Primary.asp",
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
		
		function GetSegTypePrimaryAppdata(GIANO) {
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
							 $('#SegPrimaryAppData').empty().append(data);
							 var addChanel="<div style='float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px'><input type='checkbox' name='rdSegType' customatt='radio_option' style='float:left' class='mr-2' ><b>Add Channel</b> &nbsp;<input type='textbox' size='5' name='txtAddChannel'></div>";
							 $('#SegPrimaryAppData1').empty().append(data+addChanel);
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
		
		function getCountryTweeks(GIANO,GIOType) {
				var vGIANO = $("#txtGIA_NO").val(); 
				//alert(GIOType);
				if (vGIANO != null && vGIANO != '' )		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "getCountryTweeks.asp",
							type: "POST",
							data:'vGIANO='+vGIANO+'&GIOType='+GIOType+'',							    
							success: function(data){
							
							 $('#market-staging').empty().append(data);
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
				
			
				if (vGIANO != null && vGIANO != '' && vSrcLink != null && vSrcLink != '')		 
				 {			
				// alert(vGIANO);				 
				  $.ajax({
							url: "AjaxAddSourceData.asp",
							type: "POST",
							 data:'vGIANO='+encodeURIComponent(vGIANO)+'&vSrcText='+encodeURIComponent(vSrcText)+'&vSrcLink='+encodeURIComponent(vSrcLink)+'',
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
                    <a href="http://183.82.102.108/DEGNumbers_Local/GIA.aspx"><i class="fa fa-table"></i> GIA</a>
                    <a href="http://183.82.102.108/DEGNumbers_Local/Segments.aspx"><i class="fa fa-list-alt" aria-hidden="true"></i> Segments</a>
                    <a href="http://183.82.102.108/DEGNumbers_Local/BaseYearData.aspx"><i class="fas fa fa-cloud-upload"></i> Base Year Data</a>
                    <a href="http://183.82.102.108/DEGNumbers_Local/BulkTocReset.aspx"><i class="fa fa-list-alt" aria-hidden="true"></i> Reset TOC</a>
                    <div class="dropdown">
                        <button class="dropbtn">DEG Numbers Link
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <div class="row">
                                <div class="column">
                                    <a href="http://server2/gia_analytix/viewGIACountriesII.asp?sts=O&amp;code="
                                        target="_blank">
                                        <!--i class="fa fa-link" aria-hidden="true"></i--><i class="fa fa-home"
                                            aria-hidden="true"></i> Generate Numbers Link</a>
                                </div>
                                <div class="column">
                                    <a href="http://128.242.110.22/DEGNumbers/" target="_blank"><i
                                            class="fa fa-external-link"></i>Online Link</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--a href="ExchangeRates.aspx"><i class="fa fa-th" aria-hidden="true"></i> ExchangeRates</a>
   <a href="Simulator.aspx"><i class="fa fa-table" aria-hidden="true"></i> Simulator</a-->

                </span>
                <span style="float:right; padding-right: 10px;">
                    <a href="http://183.82.102.108/DEGNumbers_Local/Logout.aspx"><i class="fa fa-sign-out"
                            aria-hidden="true"></i> Log Out</a>
                </span>
                <span style="float:right;padding-right: 50px;">
                    <a href="http://183.82.102.108/DEGNumbers_Local/GIA.aspx#GIA_Analytix"><i class="fa fa-home"
                            aria-hidden="true"></i> Welcome obili</a>
                </span>
            </div>
        </div>
    </nav>
    <div id="wapper" class="border shadow-sm bg-white">

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
                                                    <input type="submit" name="btnAdd" class="mt-2 btn-primary shadow-sm border p-2 ml-5 mr-2" value="ADD SOURCE DATA" onClick="AddSourceData();" id="btnAdd"> &nbsp; 
                                                        <input type="button" data-toggle="collapse" onClick="GetSourceData();"  data-target="#udata_list_show" aria-expanded="false" aria-controls="collapseExample" class=" p-2 mt-2 btn-primary collapsed shadow-sm border" value="VIEW ALL SOURCES">
                                                </div>
                                                
                                                
                                                </b></b></div>
    
    
    
                                                <div class="d-flex flex-wrap justify-content-center mt-4 pt-3  border-top">
                                                    <div class="mx-3">
                                                        <input type="radio" name="s2" customatt="radio_option" style="float:left mr-2" checked="">
                                                        <b>WORLD</b>
                                                    </div>
                                                    <div class="mx-3">
                                                        <input type="radio" name="s2" customatt="radio_option" style="float:left mr-2">
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
                <h3>B. BASELINE TWEAKED PLACEKEEPER DATA</h3>
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
		
		<div class="w-100 section_header">
                <h3>B1. TOTAL COMPOUNDED MARKET SIZE</h3>
            </div>

            <div class="table-responsive">

                <table class="table w-100 border" id="yearly_table">
                    <tbody>

                        <tr>
                            <td style="width:15%">
                                <b>YEAR</b>
                                <select id='txtORIG_YEAR' name='txtORIG_YEAR'>
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

                            <td style='width:35%'> <b>
                                    <font color="red"><sup>*</sup></font>SIZE
                                </b> <input name="txtORIG_VALUE" type="text" id="txtORIG_VALUE" onkeyup="checkDec(this);">
                                <br><span id="reqORIG_VALUE" class="ErrorMessageClass" style="display:none;">Original
                                    value can`t be left blank</span>
                            </td>
							<td style="width: 20%">
                                <b>
                                    <font color="red"><sup>*</sup></font>CAGR
                                    <input name="txtORIG_CAGR" type="text" id="txtORIG_CAGR" onkeyup="checkDec(this);">
                                    <span id="Regex2" class="ErrorMessageClass" style="display:none; ">Please enter
                                        valid decimal number.</span>
                            </b></td>
                         
                        </tr>
						
						</tbody>
						</table>
						 <div class="w-100 text-center mt-2">
							<input type="submit" name="btnAdd" class="mt-2 btn-primary p-2 shadow-sm border-0 mx-1 mb-3" value="ADD MARKET SIZE" onClick="AddMarketSizeData();" id="btnAdd"> &nbsp; 
							<input type="button" data-toggle="collapse" onClick="GetMarketsizeData();"  data-target="#MarketSize_list_show" aria-expanded="false" aria-controls="collapseExample" class="mt-2 btn-primary p-2 shadow-sm border-0 mx-1 mb-3" value="VIEW ALL MARKET SIZE">
						</div>
						
						</div>
						<div class="collapse" id="MarketSize_list_show">
                    <div class="card card-body">
                        <div class="table-responsive">
                            <table class="table w-100 mb-1 border-0" id="BaseLine_Source_table">
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


            <div class="w-100 section_header">
                <h3 class="pb-3">B2. KEY MARKET SEGMENTS BASE YEAR PERCENTAGE ALLOCATION - TIER A - KEY MARKET SEGMENTS<input type="submit" name="btnAdd" value="Add New Segment" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btnAdd&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="btnAdd" style="
                    float: right;margin-right: 10px; "></h3>
            </div>

        <div class="table-responisve" >
            <div class="w-100">
             <table class="table w-100" id="segment_allocation_primary" >
                    <tbody>
                        <tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">SEGMENT ID</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">SEGMENT NAME</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">SEGMENT TYPE</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" class="text-center">ALLOCATION %</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" colspan="3" class="text-center">GROWTH TREND</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th>
                        </tr> 
						<tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" class="text-center"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">2010</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">2020</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">2030</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                        </tr> 
                    </tbody>
              </table>
            </div>
        </div>
		
		<div class="w-100">

		
						<div class="w-100 text-center mt-2">
                                                    
                                                        
                                                </div>
						
         <!---BUSINESS POSITIONING-->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>C. BUSINESS ECOSYSTEM</h3>
            </div>
            <div class="d-flex w-100 pl-2">
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdBusinessPosting" id="rdB2B" customatt="radio_option" style="float:left" class="mr-2">
                    <b>B2B</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdBusinessPosting"  id="rdB2C"  customatt="radio_option" style="float:left" class="mr-2">
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
                <h3>D. PRIMARY MARKET SPLIT VARIABLE</h3>
            </div>

            <div class="d-flex w-100 pl-2 toggle">
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="PRMARY" customatt="radio_option" style="float:left" class="mr-2 " customatt="radio_option" data-toggle="#population">
                    <b>POPULATION</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="PRMARY" customatt="radio_option" style="float:left" class="mr-2" customatt="radio_option">
                    <b>PER CAPITA</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="PRMARY" customatt="radio_option" style="float:left" class="mr-2" customatt="radio_option">
                    <b>GDP</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="PRMARY" customatt="radio_option" style="float:left" class="mr-2" customatt="radio_option">
                    <b>UNIQUE</b>
                </div>

            </div>

            <div class="w-100 ">

                <div class="mt-2 mb-3 target" id="population">
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
		
        <!---SECONDARY ATTRIBUTES (SELECT ALL THAT APPLY) -->
        <!--div class="w-100 mb-3">

            <div class="w-100 section_header">
                <input type="checkbox" data-toggle="collapse" data-target="#secondary_attribute" aria-expanded="false"
                    aria-controls="collapseExample" class="float-left mx-2 mt-2" />
                <h3>E. SECONDARY MARKET ADJUSTMENT FACTORS</h3>
            </div>

            <div class="w-100">
                <div class="collapse" id="secondary_attribute">
                    <div class="card card-body p-0">
                        <div class="table-responsive">
                            <table class="table border" id="secondary_attribute">
                                <tbody>
                                    <tr>
                                        <th scope="col">ATTRIBUTES</th>
                                        <th scope="col">IMPACT</th>
                                        <th scope="col" colspan="3" style="text-align: center;">
                                            <span><b>%</b></span>
                                            <span>PERCENTAGE SLIDER</span>
                                        </th>

                                    </tr>  
                                </tbody>
                            </table>
                        </div>
                     </div>
                </div>
            </div>
        </div-->
<!---PANDEMIC  IMPACT -->
		<div class="w-100 section_header">
                
                <h3>E. SECONDARY MARKET ADJUSTMENT FACTORS - PANDEMIC & SUPPLY CHAIN</h3>
            </div>
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>PANDEMIC IMPACT</h3>
            </div>
            <div class="d-flex w-100 pl-2 justify-content-start">
                <div class=" d-flex align-items-center mr-3">

                    <b>SEVERE</b>
                    <div class="ml-3">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">+</span> <input type="radio"
                            name="q8" class="mr-2 mt-1">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">-</span> <input type="radio"
                            name="q8" class="mr-2 mt-1">
                    </div>

                </div>
                <div class=" d-flex align-items-center mr-3">

                    <b>STRONG</b>
                    <div class="ml-3">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">+</span> <input type="radio"
                            name="q8" class="mr-2 mt-1">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">-</span> <input type="radio"
                            name="q8" class="mr-2 mt-1">
                    </div>
                </div>
                <div class=" d-flex align-items-center mr-3">

                    <b>MODERATE</b>
                    <div class="ml-3">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">+</span> <input type="radio"
                            name="q8" class="mr-2 mt-1">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">-</span> <input type="radio"
                            name="q8" class="mr-2 mt-1">
                    </div>
                </div>
                <div class=" d-flex align-items-center mr-2">

                    <b>TRIVIAL</b>
                    <div class="ml-3">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">+</span> <input type="radio"
                            name="q8" class="mr-2 mt-1">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">-</span> <input type="radio"
                            name="q8" class="mr-2 mt-1">
                    </div>
                </div>

            </div>


        </div>




        <!---SUPPLY CHAIN  IMPACT -->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>SUPPLY CHAIN IMPACT</h3>
            </div>
            <div class="d-flex w-100 pl-2 justify-content-start">
                <div class=" d-flex align-items-center mr-3">

                    <b>SEVERE</b>
                    <div class="ml-3">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">+</span> <input type="radio"
                            name="q7" class="mr-2 mt-1">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">-</span> <input type="radio"
                            name="q7" class="mr-2 mt-1">
                    </div>

                </div>
                <div class=" d-flex align-items-center mr-3">

                    <b>STRONG</b>
                    <div class="ml-3">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">+</span> <input type="radio"
                            name="q7" class="mr-2 mt-1">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">-</span> <input type="radio"
                            name="q7" class="mr-2 mt-1">
                    </div>
                </div>
                <div class=" d-flex align-items-center mr-3">

                    <b>MODERATE</b>
                    <div class="ml-3">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">+</span> <input type="radio"
                            name="q7" class="mr-2 mt-1">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">-</span> <input type="radio"
                            name="q7" class="mr-2 mt-1">
                    </div>
                </div>
                <div class=" d-flex align-items-center mr-2">

                    <b>TRIVIAL</b>
                    <div class="ml-3">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">+</span> <input type="radio"
                            name="q7" class="mr-2 mt-1">
                        <span style="font-size: 17px; font-weight: bold;" class="mr-0">-</span> <input type="radio"
                            name="q7" class="mr-2 mt-1">
                    </div>
                </div>

            </div>


        </div>

        <!---GEOGRAPHIC SEGMENTATION SELECTOR -->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>F. GEOGRAPHIC SEGMENTATION SELECTOR</h3>
            </div>
            <div class="d-flex w-100 pl-2">
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdGEO" id="rdGEOA" customatt="radio_option" style="float:left" class="mr-2">
                    <b>GEO A</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdGEO" id="rdGEOB"  customatt="radio_option" style="float:left" class="mr-2">
                    <b>GEO B</b>
                </div>
                <div
                    style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
                    <input type="radio" name="rdGEO" id="rdGEOC"  customatt="radio_option" style="float:left" class="mr-2">
                    <b>MANUAL</b>
                </div>

            </div>


        </div>

        <!----SIGMENT ALLICATION--->
		 <!---MODALITY COUNT--->

      <!--  <div class="w-100">

            <div class="table-responsive">
                <table class="table w-100 border" id="yearly_table">
                    <tbody>
                        <tr>
						<td style="width: 15%" colspan="2">
                                <b>MODALITIES COUNT</b>:
                                <select name='rdtype_count' id='rdtype_count'>                                   
                                    <option value='1'>1</option>
									<option value='2'>2</option>
                                    <option value='3'>3</option>
                                    <option value='4'>4</option>
                                    <option value='5'>5</option>
                                    <option value='6'>6</option>
                                    <option value='7'>7</option>
                                    <option value='8'>8</option>
                                    <option value='9'>9</option>
                                    <option value='10'>10</option>
                                    <option value='11'>11</option>
                                    <option value='12'>12</option>
                                    <option value='13'>13</option>
                                    <option value='14'>14</option>
                                    <option value='15'>15</option>
                                    <option value='16'>16</option>
                                    <option value='17'>17</option>
                                    <option value='18'>18</option>
                                    <option value='19'>19</option>
                                    <option value='20'>20</option>
                                    <option value='21'>21</option>
                                    <option value='22'>22</option>
                                    <option value='23'>23</option>
                                    <option value='24'>24</option>
                                    <option value='25'>25</option>
                                </select>
                            </td>
							</tr></tbody></table>

            </div>

        </div>-->

         <!---MARKET BREAKDOWN--->
		  <div class="w-100">
            <div class="table-responsive">

                <div class="w-100">
                    <div class="w-100 section_header">
                        <h3>G. MARKET BREAKDOWN BY APPLICATIONS - TIER B - APPLICATIONS</h3>
                    </div>
                    <div class="d-flex w-100 pl-2" id="SegPrimaryAppData1">                          
					</div>					
                </div>
            </div>
         </div>
		 
		  <!---MARKET BREAKDOWN--->
		  <div class="w-100">
            <div class="table-responsive">

                <div class="w-100">
                    <div class="w-100 section_header">
                        <h3>G1. SELECT ONE PRIMARY APPLICATION  </h3>
                    </div>
							<div class="d-flex w-100 pl-2" id="SegPrimaryAppData1">   
								<div style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
			                    <input type="radio" name="rdSegType" customatt="radio_option" style="float:left" class="mr-2" >
			                    <b>End-Use</b>
			                </div>
							<div class="d-flex w-100 pl-2" id="SegPrimaryAppData1">   
								<div style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
			                    <input type="radio" name="rdSegType" customatt="radio_option" style="float:left" class="mr-2" >
			                    <b>Technology</b>
			                </div>
							
							<div style="float:left; display: flex; justify-content: start; align-items: center; margin:4px 20px 5px 0px">
			                    <input type="radio" name="rdSegType" customatt="radio_option" style="float:left" class="mr-2" >
			                    <b>Other</b>
			                </div>
					</div>					
                </div>
            </div>
         </div>
		 
		 <!---MODALITY TABLE--->
		  <!--div class="w-100">
            <div class="table-responsive">

                <div class="w-100">
                    <div class="w-100 section_header">
                        <h3>MODALITIES <input type="submit" name="btnAdd" value="Add New Modality" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btnAdd&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="btnAdd" style="
                            float: right;margin-right: 10px; "></h3>
                    </div>
                    <div class="table-responisve">
                        <table class="table w-100" id="modality_table">
                            <tbody>
                                <tr>
                                    <th scope="col" style="color:black;background-color:#FFF1EB;">#</th>
                                    <th scope="col" style="color:black;background-color:#FFF1EB;">MODALITY NAME</th>
                                    <th scope="col" style="color:black;background-color:#FFF1EB;">COUNT</th>                           
                                    <th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th>
                                </tr>
                              </tbody>
                        </table>
                    </div>
                </div>

            </div>

         </div-->
		
		
							
							 <!----SEGMENT ALLOCATION--->
     
        <div class="w-100">


            <div class="w-100 section_header">
                <h3>H. PRIMARY APPLICATION MARKET BY CHANNEL - TIER C - CHANNELS<input type="submit" name="btnAdd" value="Add New Channel" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btnAdd&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="btnAdd" style="
                    float: right;margin-right: 10px; "></h3>
            </div>

            <div class="table-responisve" >
              <div class="w-100" id="PRIMARY_APPLICATION_MARKET">
             <table class="table w-100">
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
       
        <!--TECHNOLOGY ALLOCATION-->

        <!--div class="w-100" id="SegTypeALLOCATIONS">
            <div class="w-100 section_header">
                <h3>MODALITIES ALLOCATIONS </h3>
            </div> 

        </div-->
               

        <!---MARKET STAGING BY COUNTRY---->

        <div class="w-100">
            <div class="w-100 section_header">
                <h3>I. COMPOUNDED MACRODYNAMICS ADJUSTMENTS - BY COUNTRY - TIER D - CY - COUNTRY</h3>
            </div>

            <div class="table-responsive">
                <table class="table border" id="market-staging">
                    <tbody>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col"> COUNTRY </th>
                            <th scope="col" colspan="2"> ADJUSTMENT </th>
                            <th scope="col" colspan="5" style="text-align: center;">GROWTH TREND</th>

                        </tr>
                        <tr>
                            <td scope="col" ></td>
                            <td scope="col"></td>
                            <td scope="col"></td>
                            <td scope="col"></td>
                            <td align="center" scope="col" class="font-weight-bold">2-6</td>
                            <td align="center" scope="col" class="font-weight-bold">7-15</td>
                            <td align="center" scope="col" class="font-weight-bold">16-25</td>
                            <td align="center" scope="col" class="font-weight-bold">26-45</td>
							<td align="center" scope="col" class="font-weight-bold">45+</td>
                        </tr>   
                        
                        


                    </tbody>

                </table>

            </div>
        </div>


<A id=dynLink href="http://www.strategyr.com/gia_analytix/viewGIACountriesBespoke.asp?sts=D&code=MCP-1001" target=New>..</A>


</body>



</html>