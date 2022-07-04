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
                <h3>A. UPDATE BASELINE DATA</h3>
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
                                                        <b>REPORT LINK:&nbsp; 
                                                    </b></div>
    
                                                    <div class="col-lg-8 col-xl-8 col-xl-7">                                                    
                                                        <input type="textbox" name="srcLink" id="srcLink" value="" class="w-100">
                                                   </div><b>                                                                                             
                                                </b></div><div class="d-flex flex-wrap justify-content-start mb-2">
                                                    <div class="col-lg-3 col-xl-3 col-md-4">                                                    
                                                        <b>SOURCE LINK:&nbsp; 
                                                    </b></div>
    
                                                    <div class="col-lg-8 col-xl-8 col-xl-7">                                                    
                                                        <input type="textbox" name="srcLink" id="srcLink" value="" class="w-100">
                                                   </div><b>                                                                                             
                                                </b></div><div class="d-flex flex-wrap justify-content-start">
                                                    <div class="col-lg-3 col-xl-3 col-md-4">                                                    
                                                        <b>SOURCE TEXT:&nbsp; 
                                                    </b></div>
    
                                                    <div class="col-lg-8 col-xl-8 col-md-7">                                                    
                                                         <textarea name="srcText" id="srcText" class="w-100"></textarea>
                                                        
                                                         
                                                   </div><b>                                                                                             
                                                </b></div><b>
                                                <b>
                                                <div class="w-100 text-center mt-2">
                                                    <input type="submit" name="btnAdd" class="mt-2 btn-primary" value="ADD BASELINE DATA" onclick="javascript:AddValue()" id="btnAdd"> &nbsp; 
                                                        <input type="button" data-toggle="collapse" data-target="#udata_list_show" aria-expanded="false" aria-controls="collapseExample" class="mt-2 btn-primary collapsed" value="VIEW ALL">
                                                </div>
                                                
                                                
                                                </b></b></div>
    
    
    
                                                <div class="d-flex flex-wrap justify-content-center mt-4 pt-3  border-top">
                                                    <div class="mx-3">
                                                        <input type="radio" name="s2" customatt="radio_option" style="float:left mr-2" checked="">
                                                        <b>World = 100%</b>
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
                </div>
				
				<div class="collapse" id="udata_list_show">
                    <div class="card card-body">
                        <div class="table-responsive">
                            <table class="table w-100 mb-1 border-0" id="update-table">
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
        <!---BASELINE DATA-->
        <div class="w-100">
            <div class="w-100 section_header">
                <h3>B. BASELINE DATA - TWEAKED</h3>
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
							<td style="width: 15%"><b>
                                    <font color="red"><sup>*</sup></font>SEGMENT COUNT							
							        <input name="txtSEG_Count" type="text" id="txtSEG_Count" 
                                    style="color: #000 !important; font-size: 15px; font-weight: 600;">
							</td>
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
		<div class="w-100">

		<div class="w-100 section_header">
                <h3>PLACKEEPER MARKET DATA</h3>
            </div>

            <div class="table-responsive">

                <table class="table w-100 border" id="yearly_table">
                    <tbody>

                        <tr>
                            <td style="width:15%">
                                <b>YEAR (2012)</b>
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
						<tr>
						 <td style="width:15%">
                                <b>YEAR (2020)</b>
                                <select name="txtSTART_YEAR" id="txtSTART_YEAR">
                                    <option value='2012'>2012</option>
                                    <option value='2013'>2013</option>
                                    <option value='2014'>2014</option>
                                    <option value='2015'>2015</option>
                                    <option value='2016'>2016</option>
                                    <option value='2017'>2017</option>
                                    <option value='2018'>2018</option>
                                    <option value='2019'>2019</option>
                                    <option value='2020'>2020</option>

                                </select>
                            </td>

                            <td style='width:35%'> <b>
                                    <font color='red'><sup>*</sup></font>SIZE
                                </b> <input name="txtSTART_VALUE" type="text" id="txtSTART_VALUE" onkeyup="checkDec(this);">
                                <span id="reqSTART_VALUE" class="ErrorMessageClass" style="display:none;">Start
                                    Value can`t be left blank</span>
                            </td>
							<td style="width: 20%">
                                <b>
                                    <font color="red"><sup>*</sup></font>CAGR
                                    <input name="txtCAGR" type="text" id="txtCAGR" onkeyup="checkDec(this);">
                                    <span id="Regex2" class="ErrorMessageClass" style="display:none; ">Please enter
                                        valid decimal number.</span>
                            </b></td>
						</tr>
						<tr>
                            <td style="width: 10%">
                                <b>YEAR (2028)</b>
                                <select name="txtEND_YEAR" id="txtEND_YEAR">
                                    <option value='2020'>2020</option>
                                    <option value='2021'>2021</option>
                                    <option value='2022'>2022</option>
                                    <option value='2023'>2023</option>
                                    <option value='2024'>2024</option>
                                    <option value='2025'>2025</option>
                                    <option value='2026'>2026</option>
                                    <option value='2027'>2027</option>
                                    <option value='2028'>2028</option>

                                </select>

                            </td>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>SIZE
                                </b> <input name="txtEND_VALUE" type="text" id="txtEND_VALUE" onkeyup="checkDec(this);">
                                <span id="reqEND_VALUE" class="ErrorMessageClass" style="display:none;">End Value
                                    can`t be left blank</span>
                            </td>
                            <td style="width: 10%" colspan="2">
                                <b>
                                    <font color="red"><sup>*</sup></font>CAGR
                                </b> <input name="txtEND_CAGR" type="text" id="txtEND_CAGR" onkeyup="checkDec(this);">
                                <span id="reqTWEAKED_END_VALUE" class="ErrorMessageClass" style="display:none;">Tweaked
                                    End Value can`t be left blank</span>
                            </td>
                        </tr>
						</tbody>
						</table>
						</div>
						<div class="w-100 section_header">
                <h3>TWEAKED MARKET DATA</h3>
            </div>
						<div class="table-responsive">

                <table class="table w-100 border" id="yearly_table">
                    <tbody>
						
                        <tr>
						 <td style="width: 10%" >
                                <b>
                                    <font color="red"><sup>*</sup></font>2012 SIZE
                                </b> <input name="txtTWEAKED_END_VALUE" type="text" id="txtTWEAKED_END_VALUE" onkeyup="checkDec(this);">
                                <span id="reqTWEAKED_END_VALUE" class="ErrorMessageClass" style="display:none;">Tweaked
                                    End Value can`t be left blank</span>
                            </td>
                            
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>2019 SIZE
                                </b> <input name="txtSTART_TWEAKED_VALUE" type="text" id="txtSTART_TWEAKED_VALUE" onkeyup="checkDec(this);">
                                <span id="reqSTART_TWEAKED_VALUE" class="ErrorMessageClass" style="display:none;">Start
                                    Tweaked Value can`t be left blank</span>
                            </td>
							<td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>2028 Size
                                </b> <input name="txtSTART_VALUE1" type="text" id="txtSTART_VALUE1" onkeyup="checkDec(this);">
                                <span id="reqSTART_VALUE1" class="ErrorMessageClass" style="display:none;">Start
                                    Value1 can`t be left blank</span>
                            </td>
                        </tr>
						<tr>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>2012 CAGR
                                </b> <input name="txtTWEAKED_CAGR" type="text" id="txtTWEAKED_CAGR" onkeyup="checkDec(this);">
                                <span id="reqTWEAKED_CAGR" class="ErrorMessageClass" style="display:none;">Tweaked
                                    CAGR % can`t be left blank</span>
                            </td>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>2019 CAGR
                                </b> <input name="txtCAGR_TWEAK_PERCENTAGE" type="text" id="txtCAGR_TWEAK_PERCENTAGE" onkeyup="checkDec(this);">
                                <span id="reqCAGR_TWEAK_PERCENTAGE" class="ErrorMessageClass" style="display:none;">CAGR
                                    Tweak % can`t be left blank</span>
                            </td>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>2028 CAGR
                                </b> <input name="txtCAGR_TWEAK_2028" type="text" id="txtCAGR_TWEAK_2028" onkeyup="checkDec(this);">
                                <span id="reqCAGR_TWEAK_PERCENTAGE" class="ErrorMessageClass" style="display:none;">CAGR
                                    Tweak % can`t be left blank</span>
                            </td>
                        </tr>
                        


                        
                        <tr style="display:none;">
                            <td style="width: 10%">
                                <input name="txtReport_ID" type="text" id="txtReport_ID" style="width:60px;display:none;">
                            </td>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>Rank
                                </b>:<input name="txtRank" type="text" id="txtRank" value="A">
                            </td>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>SOURCE_URL
                                </b>:<br><input name="txtSOURCE_URL" type="text" id="txtSOURCE_URL">
                            </td>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>SOURCE_TEXT
                                </b>:<br><input name="txtSOURCE_TEXT" type="text" id="txtSOURCE_TEXT">
                            </td>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>COMPANY_NAMES
                                </b>:<br><input name="txtCOMPANY_NAMES" type="text" id="txtCOMPANY_NAMES">
                            </td>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>COMPANIES_IDs
                                </b>:<br><input name="txtCOMPANIES_IDs" type="text" id="txtCOMPANIES_IDs">

                            </td>
                            <td style="width: 10%">
                                <b>
                                    <font color="red"><sup>*</sup></font>REGION
                                </b>:<br><input name="txtREGION" type="text" id="txtREGION">
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>



        </div>
         <!---BUSINESS POSITIONING-->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>C. BUSINESS POSITIONING</h3>
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


        <!---PANDEMIC  IMPACT -->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>D. PANDEMIC IMPACT</h3>
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
                <h3>E. SUPPLY CHAIN IMPACT</h3>
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

 <script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>



        <!---PRMARY ATTRIBUTE (Select One) -->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>F. PRIMARY DATA COVERSTION ATTRIBUTE</h3>
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
        <div class="w-100 mb-3">

            <div class="w-100 section_header">
                <input type="checkbox" data-toggle="collapse" data-target="#secondary_attribute" aria-expanded="false"
                    aria-controls="collapseExample" class="float-left mx-2 mt-2" />
                <h3>G. SECONDARY MARKET IMPACTING ATTRIBUTES</h3>
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


                                    <!--tr>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center pl-0">
                                                <input type="checkbox" name="q7" customatt="radio_option" class="mr-2 mt-0 ">
                                                <b>POPULATION</b>
                                            </div>
                                        </td>
                                        <td scope="col">
                                            <div class="d-flex align-items-center justify-content-center">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">+</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">-</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                            </div>
                                        </td>
                                        <td scope="col" colspan="3" style="text-align: center;">

                                            <div class="secondary_ranking_slider">

                                                <div class="range-slider ranking_slider">
                                                    <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                                    <input type="text" maxlength="4" class="js-input rank_input"
                                                        name="rank_input_01" id="rank_input_01" value="0" maxlength='4'
                                                        size='20' tabindex='3' placeholder="##.#">
                                                    <input type="text" value="0" class="js-range-slider" id="slide_01" />
                                                </div>
                                                <script>
                                                    var $slide_1 = $("#slide_01");
                                                    var $slide_input_1 = $("#rank_input_01");
                                                    var instance01;
                                                    var min = 0;
                                                    var vfromval = 0;
                                                    var max = 100;

                                                    $slide_1.ionRangeSlider({
                                                        skin: "big",
                                                        type: "single",
                                                        min: min,
                                                        max: max,
                                                        from: vfromval,
                                                        grid: true,
                                                        step: 0.5,
                                                        grid_num: 10,

                                                        onStart: function (data) {
                                                            $slide_input_1.prop("value", data
                                                                .from);
                                                        },
                                                        onChange: function (data) {
                                                            $slide_input_1.prop("value", data
                                                                .from);
                                                        }
                                                    });

                                                    instance01 = $slide_1.data("ionRangeSlider");

                                                    $slide_input_1.on("input", function () {
                                                        var val = $(this).prop("value");

                                                        // validate
                                                        if (val < min) {
                                                            val = min;
                                                        } else if (val > max) {
                                                            val = max;
                                                        }

                                                        instance01.update({
                                                            from: val
                                                        });

                                                        $(this).prop("value", val);
                                                    });
                                                </script>


                                            </div>
                                        </td>

                                    </tr>


                                    <tr>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center pl-0">
                                                <input type="checkbox" name="q7" customatt="radio_option" class="mr-2 mt-0 ">
                                                <b>PER CAPITA</b>
                                            </div>
                                        </td>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center justify-content-center">

                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">+</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">-</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                            </div>
                                        </td>
                                        <td scope="col" colspan="3" style="text-align: center;">
                                            <div class="secondary_ranking_slider">

                                                <div class="range-slider ranking_slider">
                                                    <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                                    <input type="text" maxlength="4" class="js-input rank_input"
                                                        name="rank_input_01" id="rank_input_02" value="0" maxlength='4'
                                                        size='20' tabindex='3' placeholder="##.#">
                                                    <input type="text" value="0" class="js-range-slider" id="slide_02" />
                                                </div>
                                                <script>
                                                    var $slide_2 = $("#slide_02");
                                                    var $slide_input_2 = $("#rank_input_02");
                                                    var instance02;
                                                    var min = 0;
                                                    var vfromval = 0;
                                                    var max = 100;

                                                    $slide_2.ionRangeSlider({
                                                        skin: "big",
                                                        type: "single",
                                                        min: min,
                                                        max: max,
                                                        from: vfromval,
                                                        grid: true,
                                                        step: 0.5,
                                                        grid_num: 10,

                                                        onStart: function (data) {
                                                            $slide_input_2.prop("value", data
                                                                .from);
                                                        },
                                                        onChange: function (data) {
                                                            $slide_input_2.prop("value", data
                                                                .from);
                                                        }
                                                    });

                                                    instance02 = $slide_2.data("ionRangeSlider");

                                                    $slide_input_2.on("input", function () {
                                                        var val = $(this).prop("value");

                                                        // validate
                                                        if (val < min) {
                                                            val = min;
                                                        } else if (val > max) {
                                                            val = max;
                                                        }

                                                        instance02.update({
                                                            from: val
                                                        });

                                                        $(this).prop("value", val);
                                                    });
                                                </script>


                                            </div>

                                        </td>

                                    </tr>

                                    <tr>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center pl-0">
                                                <input type="checkbox" name="q7" customatt="radio_option" class="mr-2 mt-0 ">
                                                <b>GDP</b>
                                            </div>
                                        </td>
                                        <td scope="col">
                                            <div class="  d-flex align-items-center justify-content-center">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">+</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">-</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                            </div>
                                        </td>
                                        <td scope="col" colspan="3" style="text-align: center;">
                                            <div class="secondary_ranking_slider">

                                                <div class="range-slider ranking_slider">
                                                    <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                                    <input type="text" maxlength="4" class="js-input rank_input"
                                                        name="rank_input_03" id="rank_input_03" value="0" maxlength='4'
                                                        size='20' tabindex='3' placeholder="##.#">
                                                    <input type="text" value="0" class="js-range-slider" id="slide_03" />
                                                </div>
                                                <script>
                                                    var $slide_3 = $("#slide_03");
                                                    var $slide_input_3 = $("#rank_input_03");
                                                    var instance03;
                                                    var min = 0;
                                                    var vfromval = 0;
                                                    var max = 100;

                                                    $slide_3.ionRangeSlider({
                                                        skin: "big",
                                                        type: "single",
                                                        min: min,
                                                        max: max,
                                                        from: vfromval,
                                                        grid: true,
                                                        step: 0.5,
                                                        grid_num: 10,

                                                        onStart: function (data) {
                                                            $slide_input_3.prop("value", data
                                                                .from);
                                                        },
                                                        onChange: function (data) {
                                                            $slide_input_3.prop("value", data
                                                                .from);
                                                        }
                                                    });

                                                    instance03 = $slide_3.data("ionRangeSlider");

                                                    $slide_input_3.on("input", function () {
                                                        var val = $(this).prop("value");

                                                        // validate
                                                        if (val < min) {
                                                            val = min;
                                                        } else if (val > max) {
                                                            val = max;
                                                        }

                                                        instance03.update({
                                                            from: val
                                                        });

                                                        $(this).prop("value", val);
                                                    });
                                                </script>
                                            </div>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center pl-0">
                                                <input type="checkbox" name="q7" customatt="radio_option" class="mr-2 mt-0 ">
                                                <b>GENDER</b>
                                            </div>
                                        </td>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center justify-content-center">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">+</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">-</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                            </div>
                                        </td>

                                        <td scope="col" colspan="3" style="text-align: center;">

                                            <div class="secondary_ranking_slider">

                                                <div class="range-slider ranking_slider">
                                                    <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                                    <input type="text" maxlength="4" class="js-input rank_input"
                                                        name="rank_input_04" id="rank_input_04" value="0" maxlength='4'
                                                        size='20' tabindex='3' placeholder="##.#">
                                                    <input type="text" value="0" class="js-range-slider" id="slide_04" />
                                                </div>
                                                <script>
                                                    var $slide_4 = $("#slide_04");
                                                    var $slide_input_4 = $("#rank_input_04");
                                                    var instance04;
                                                    var min = 0;
                                                    var vfromval = 0;
                                                    var max = 100;

                                                    $slide_4.ionRangeSlider({
                                                        skin: "big",
                                                        type: "single",
                                                        min: min,
                                                        max: max,
                                                        from: vfromval,
                                                        grid: true,
                                                        step: 0.5,
                                                        grid_num: 10,

                                                        onStart: function (data) {
                                                            $slide_input_4.prop("value", data
                                                                .from);
                                                        },
                                                        onChange: function (data) {
                                                            $slide_input_4.prop("value", data
                                                                .from);
                                                        }
                                                    });

                                                    instance04 = $slide_4.data("ionRangeSlider");

                                                    $slide_input_4.on("input", function () {
                                                        var val = $(this).prop("value");

                                                        // validate
                                                        if (val < min) {
                                                            val = min;
                                                        } else if (val > max) {
                                                            val = max;
                                                        }

                                                        instance04.update({
                                                            from: val
                                                        });

                                                        $(this).prop("value", val);
                                                    });
                                                </script>


                                            </div>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center pl-0">
                                                <input type="checkbox" name="q7" customatt="radio_option" class="mr-2 mt-0 ">
                                                <b>SEASONAL</b>
                                            </div>
                                        </td>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center justify-content-center">

                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">+</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">-</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                            </div>
                                        </td>
                                        <td scope="col" colspan="3" style="text-align: center;">
                                            <div class="secondary_ranking_slider">

                                                <div class="range-slider ranking_slider">
                                                    <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                                    <input type="text" maxlength="4" class="js-input rank_input"
                                                        name="rank_input_05" id="rank_input_05" value="0" maxlength='4'
                                                        size='20' tabindex='3' placeholder="##.#">
                                                    <input type="text" value="0" class="js-range-slider" id="slide_05" />
                                                </div>
                                                <script>
                                                    var $slide_5 = $("#slide_05");
                                                    var $slide_input_5 = $("#rank_input_05");
                                                    var instance05;
                                                    var min = 0;
                                                    var vfromval = 0;
                                                    var max = 100;

                                                    $slide_5.ionRangeSlider({
                                                        skin: "big",
                                                        type: "single",
                                                        min: min,
                                                        max: max,
                                                        from: vfromval,
                                                        grid: true,
                                                        step: 0.5,
                                                        grid_num: 10,

                                                        onStart: function (data) {
                                                            $slide_input_5.prop("value", data
                                                                .from);
                                                        },
                                                        onChange: function (data) {
                                                            $slide_input_5.prop("value", data
                                                                .from);
                                                        }
                                                    });

                                                    instance05 = $slide_5.data("ionRangeSlider");

                                                    $slide_input_5.on("input", function () {
                                                        var val = $(this).prop("value");

                                                        // validate
                                                        if (val < min) {
                                                            val = min;
                                                        } else if (val > max) {
                                                            val = max;
                                                        }

                                                        instance05.update({
                                                            from: val
                                                        });

                                                        $(this).prop("value", val);
                                                    });
                                                </script>


                                            </div>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center pl-0">
                                                <input type="checkbox" name="q7" customatt="radio_option" class="mr-2 mt-0 ">
                                                <b>GEOGRAPHIC WEATHER</b>
                                            </div>
                                        </td>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center justify-content-center">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">+</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">-</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                            </div>
                                        </td>
                                        <td scope="col" colspan="3" style="text-align: center;">
                                            <div class="secondary_ranking_slider">

                                                <div class="range-slider ranking_slider">
                                                    <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                                    <input type="text" maxlength="4" class="js-input rank_input"
                                                        name="rank_input_04" id="rank_input_06" value="0" maxlength='4'
                                                        size='20' tabindex='3' placeholder="##.#">
                                                    <input type="text" value="0" class="js-range-slider" id="slide_06" />
                                                </div>
                                                <script>
                                                    var $slide_6 = $("#slide_06");
                                                    var $slide_input_6 = $("#rank_input_06");
                                                    var instance05;
                                                    var min = 0;
                                                    var vfromval = 0;
                                                    var max = 100;

                                                    $slide_6.ionRangeSlider({
                                                        skin: "big",
                                                        type: "single",
                                                        min: min,
                                                        max: max,
                                                        from: vfromval,
                                                        grid: true,
                                                        step: 0.5,
                                                        grid_num: 10,

                                                        onStart: function (data) {
                                                            $slide_input_6.prop("value", data
                                                                .from);
                                                        },
                                                        onChange: function (data) {
                                                            $slide_input_6.prop("value", data
                                                                .from);
                                                        }
                                                    });

                                                    instance05 = $slide_6.data("ionRangeSlider");

                                                    $slide_input_6.on("input", function () {
                                                        var val = $(this).prop("value");

                                                        // validate
                                                        if (val < min) {
                                                            val = min;
                                                        } else if (val > max) {
                                                            val = max;
                                                        }

                                                        instance05.update({
                                                            from: val
                                                        });

                                                        $(this).prop("value", val);
                                                    });
                                                </script>


                                            </div>

                                    </tr>

                                    <tr>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center pl-0">
                                                <input type="checkbox" name="q7" customatt="radio_option" class="mr-2 mt-0 ">
                                                <b>SOCIAL TREND</b>
                                            </div>
                                        </td>
                                        <td scope="col">
                                            <div class="  d-flex align-items-center justify-content-center">

                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">+</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">-</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                            </div>
                                        </td>
                                        <td scope="col" colspan="3" style="text-align: center;">

                                            <div class="secondary_ranking_slider">

                                                <div class="range-slider ranking_slider">
                                                    <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                                    <input type="text" maxlength="4" class="js-input rank_input"
                                                        name="rank_input_04" id="rank_input_07" value="0" maxlength='4'
                                                        size='20' tabindex='3' placeholder="##.#">
                                                    <input type="text" value="0" class="js-range-slider" id="slide_07" />
                                                </div>
                                                <script>
                                                    var $slide_7 = $("#slide_07");
                                                    var $slide_input_7 = $("#rank_input_07");
                                                    var instance07;
                                                    var min = 0;
                                                    var vfromval = 0;
                                                    var max = 100;

                                                    $slide_7.ionRangeSlider({
                                                        skin: "big",
                                                        type: "single",
                                                        min: min,
                                                        max: max,
                                                        from: vfromval,
                                                        grid: true,
                                                        step: 0.5,
                                                        grid_num: 10,

                                                        onStart: function (data) {
                                                            $slide_input_7.prop("value", data
                                                                .from);
                                                        },
                                                        onChange: function (data) {
                                                            $slide_input_7.prop("value", data
                                                                .from);
                                                        }
                                                    });

                                                    instance07 = $slide_7.data("ionRangeSlider");

                                                    $slide_input_7.on("input", function () {
                                                        var val = $(this).prop("value");

                                                        // validate
                                                        if (val < min) {
                                                            val = min;
                                                        } else if (val > max) {
                                                            val = max;
                                                        }

                                                        instance07.update({
                                                            from: val
                                                        });

                                                        $(this).prop("value", val);
                                                    });
                                                </script>


                                            </div>

                                        </td>

                                    </tr>


                                    <tr>
                                        <td scope="col">
                                            <div class=" d-flex align-items-center pl-0">
                                                <input type="checkbox" name="q7" customatt="radio_option" class="mr-2 mt-0 ">
                                                <b>NATURALLY OCCURING</b>
                                            </div>
                                        </td>
                                        <td scope="col">
                                            <div class="  d-flex align-items-center justify-content-center">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">+</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                                <span style="font-size: 22px; font-weight: bold;" class="mr-1">-</span> <input
                                                    type="radio" name="q7" class="mr-3 mt-2">
                                            </div>
                                        </td>
                                        <td scope="col" colspan="3" style="text-align: center;">

                                            <div class="secondary_ranking_slider">

                                                <div class="range-slider ranking_slider">
                                                    <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                                    <input type="text" maxlength="4" class="js-input rank_input"
                                                        name="rank_input_04" id="rank_input_08" value="0" maxlength='4'
                                                        size='20' tabindex='3' placeholder="##.#">
                                                    <input type="text" value="0" class="js-range-slider" id="slide_08" />
                                                </div>
                                                <script>
                                                    var $slide_8 = $("#slide_08");
                                                    var $slide_input_8 = $("#rank_input_08");
                                                    var instance08;
                                                    var min = 0;
                                                    var vfromval = 0;
                                                    var max = 100;

                                                    $slide_8.ionRangeSlider({
                                                        skin: "big",
                                                        type: "single",
                                                        min: min,
                                                        max: max,
                                                        from: vfromval,
                                                        grid: true,
                                                        step: 0.5,
                                                        grid_num: 10,

                                                        onStart: function (data) {
                                                            $slide_input_8.prop("value", data
                                                                .from);
                                                        },
                                                        onChange: function (data) {
                                                            $slide_input_8.prop("value", data
                                                                .from);
                                                        }
                                                    });

                                                    instance08 = $slide_8.data("ionRangeSlider");

                                                    $slide_input_8.on("input", function () {
                                                        var val = $(this).prop("value");

                                                        // validate
                                                        if (val < min) {
                                                            val = min;
                                                        } else if (val > max) {
                                                            val = max;
                                                        }

                                                        instance08.update({
                                                            from: val
                                                        });

                                                        $(this).prop("value", val);
                                                    });
                                                </script>


                                            </div>
                                        </td>

                                    </tr-->



                                </tbody>

                            </table>
                        </div>
                     </div>
                </div>

            </div>


        </div>


        <!---GEOGRAPHIC SEGMENTATION SELECTOR -->
        <div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>GEOGRAPHIC SEGMENTATION SELECTOR</h3>
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

        <div class="w-100">

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

        </div>

         <!---MODALITY TABLE--->
		  <div class="w-100">
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
                                    <th scope="col" style="color:black;background-color:#FFF1EB;">SNO</th>
                                    <th scope="col" style="color:black;background-color:#FFF1EB;">MODALITY NAME</th>
                                    <th scope="col" style="color:black;background-color:#FFF1EB;">COUNT</th>                           
                                    <th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th>
                                </tr>
                              </tbody>
                        </table>
                    </div>
                </div>

            </div>

         </div>
     
        <div class="w-100">


            <div class="w-100 section_header">
                <h3>H. BASE YEAR SEGMENT ALLOCATIONS <input type="submit" name="btnAdd" value="Add New Segment" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btnAdd&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="btnAdd" style="
                    float: right;margin-right: 10px; "></h3>
            </div>

            <div class="table-responisve" >
              <div  id="segment_allication">
             <table class="table w-100" >
                    <tbody>
                        <tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">SEG ID</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">SEGMENT NAME</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">TYPE</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" class="text-center">ALLOCATION %</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">CAGR %</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th>
                        </tr> 
                    </tbody>
                </table>
            </div>
        </div>
       

        

         <!---SELECTIVE PRIAMRY-->
         <!--div class="w-100 mb-3">
            <div class="w-100 section_header">
                <h3>SELECT PRIMARY APP</h3>
            </div>
            <div class="d-flex w-100 pl-2" id="SegPrimaryAppData">
                          
            </div>
        </div-->

        <!--TECHNOLOGY ALLOCATION-->

        <div class="w-100" id="SegTypeALLOCATIONS">
            <div class="w-100 section_header">
                <h3>MODALITIES ALLOCATIONS </h3>
            </div>
           
                <!--table class="table w-100" id="TECHNOLOGY_ALLOCATION">
                    <tbody>
                        <tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">SNO</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">TECHNOLOGY NAME</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" class="text-center">ALLOCATION %</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">CAGR %</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th>
                        </tr>
                        <tr>
                            <td class="GIA_NO">
                                <span>1</span>
                            </td>
                            <td class="SEGMENT">
                                <span>Technology 1</span>
                            </td>
                            <td class="Allocation_Percentage">

                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_020" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_020" />
                                    </div>
                                    <script>
                                        var $slide_020 = $("#slide_020");
                                        var $slide_input_020 = $("#rank_input_020");
                                        var instance020;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_020.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_020.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_020.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance020 = $slide_020.data("ionRangeSlider");

                                        $slide_input_020.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance020.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
                              
                            </td>
                            <td class="CAGR_Percentage">
                                <input name="txtSTART_VALUE" type="text" id="txtSTART_VALUE" value="4.2" style="width: 40px;text-align: center; ">
                            </td>
                            <td>
                                <a class="Edit" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;gvSegments$ctl02$ctl15&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))" style="display: inline;">Edit</a> | <a class="Delete" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;gvSegments$ctl02$ctl15&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))" style="display: inline;">Delete</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="SNO">
                                <span>2</span>
                            </td>
                            <td class="SEGMENT">
                                <span>Technology 2</span>
                            </td>
                            <td class="Allocation_Percentage">
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_021" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_021" />
                                    </div>
                                    <script>
                                        var $slide_021 = $("#slide_021");
                                        var $slide_input_021 = $("#rank_input_021");
                                        var instance021;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_021.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_021.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_021.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance021 = $slide_021.data("ionRangeSlider");

                                        $slide_input_021.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance021.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
                               
                            </td>
                            <td class="CAGR_Percentage">
                                <input name="txtSTART_VALUE" type="text" id="txtSTART_VALUE" value="4.7 " style="width: 40px;text-align: center; ">
                            </td>
                            <td>
                                <a class="Edit" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;gvSegments$ctl02$ctl15&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))" style="display: inline;">Edit</a> | <a class="Delete" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;gvSegments$ctl02$ctl15&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))" style="display: inline;">Delete</a>

                            </td>
                        </tr>
						
						<tr>
                            <td class="GIA_NO">
                                <span>3</span>
                            </td>
                            <td class="SEGMENT">
                                <span>Technology 3</span>
                            </td>
                            <td class="Allocation_Percentage">
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_022" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_022" />
                                    </div>
                                    <script>
                                        var $slide_022 = $("#slide_022");
                                        var $slide_input_022 = $("#rank_input_022");
                                        var instance022;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_022.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_022.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_022.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance022 = $slide_022.data("ionRangeSlider");

                                        $slide_input_022.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance022.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
                              
                            </td>
                            <td class="CAGR_Percentage">
                                <input name="txtSTART_VALUE" type="text" id="txtSTART_VALUE" value="4.7 " style="width: 40px;text-align: center; ">
                            </td>
                            <td>
                                <a class="Edit" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;gvSegments$ctl02$ctl15&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))" style="display: inline;">Edit</a> | <a class="Delete" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;gvSegments$ctl02$ctl15&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))" style="display: inline;">Delete</a>

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
       

        <div class="w-100">

            <div class="w-100 section_header">
                <h3>TECHNOLOGY 1 END-USE %</h3>
            </div>

            <div class="table-responsive">
                <table class="table w-100 border" id="technology_new_table">
                    <tbody>
                        <tr>
                            <th>
                                Sno
								</th>
							<th>
                                Technology 1
								</th>
							<th>
                                2020
								</th>
							<th>
                                2030
								</th>
						</tr>
						<tr>
							<td>
                                1
								</td>
                            <td>
                                End-Use 1
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_023" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_023" />
                                    </div>
                                    <script>
                                        var $slide_023 = $("#slide_023");
                                        var $slide_input_023 = $("#rank_input_023");
                                        var instance023;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_023.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_023.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_023.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance023 = $slide_023.data("ionRangeSlider");

                                        $slide_input_023.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance023.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_024" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_024" />
                                    </div>
                                    <script>
                                        var $slide_024 = $("#slide_024");
                                        var $slide_input_024 = $("#rank_input_024");
                                        var instance024;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_024.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_024.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_024.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance024 = $slide_024.data("ionRangeSlider");

                                        $slide_input_024.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance024.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
						</tr>
						<tr>
							<td>
                                2
								</td>
                            <td>
                                End-Use 2
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_025" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_025" />
                                    </div>
                                    <script>
                                        var $slide_025 = $("#slide_025");
                                        var $slide_input_025 = $("#rank_input_025");
                                        var instance025;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_025.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_025.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_025.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance025 = $slide_025.data("ionRangeSlider");

                                        $slide_input_025.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance025.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_026" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_026" />
                                    </div>
                                    <script>
                                        var $slide_026 = $("#slide_026");
                                        var $slide_input_025 = $("#rank_input_026");
                                        var instance025;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_026.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_025.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_025.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance025 = $slide_026.data("ionRangeSlider");

                                        $slide_input_025.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance025.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
						</tr>
						<tr>
							<td>
                                3
								</td>
                            <td>
                                End-Use 3
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_027" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_027" />
                                    </div>
                                    <script>
                                        var $slide_027 = $("#slide_027");
                                        var $slide_input_027 = $("#rank_input_027");
                                        var instance027;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_027.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_027.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_027.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance027 = $slide_027.data("ionRangeSlider");

                                        $slide_input_027.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance027.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_028" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_028" />
                                    </div>
                                    <script>
                                        var $slide_028 = $("#slide_028");
                                        var $slide_input_028 = $("#rank_input_028");
                                        var instance028;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_028.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_028.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_028.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance028 = $slide_028.data("ionRangeSlider");

                                        $slide_input_028.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance028.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
						</tr>
					
						</tbody>
						</table>

            </div>

        </div>


  

        <div class="w-100">

            <div class="w-100 section_header">
                <h3>TECHNOLOGY 2 END-USE %</h3>
            </div>

            <div class="table-responsive">
                <table class="table w-100 border" id="technology_new_table">
                    <tbody>
                        <tr>
                            <th>
                                Sno
								</th>
							<th>
                                Technology 2
								</th>
							<th>
                                2020
								</th>
							<th>
                                2030
								</th>
						</tr>
						<tr>
							<td>
                                1
								</td>
                            <td>
                                End-Use 1
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_029" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_029" />
                                    </div>
                                    <script>
                                        var $slide_029 = $("#slide_029");
                                        var $slide_input_029 = $("#rank_input_029");
                                        var instance029;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_029.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_029.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_029.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance029 = $slide_029.data("ionRangeSlider");

                                        $slide_input_029.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance029.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_030" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_030" />
                                    </div>
                                    <script>
                                        var $slide_030 = $("#slide_030");
                                        var $slide_input_030 = $("#rank_input_030");
                                        var instance030;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_030.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_030.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_030.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance030 = $slide_030.data("ionRangeSlider");

                                        $slide_input_030.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance030.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
						</tr>
						<tr>
							<td>
                                2
								</td>
                            <td>
                                End-Use 2
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_031" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_031" />
                                    </div>
                                    <script>
                                        var $slide_031 = $("#slide_031");
                                        var $slide_input_031 = $("#rank_input_031");
                                        var instance031;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_031.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_031.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_031.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance031 = $slide_031.data("ionRangeSlider");

                                        $slide_input_031.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance031.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_032" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_032" />
                                    </div>
                                    <script>
                                        var $slide_032 = $("#slide_032");
                                        var $slide_input_032 = $("#rank_input_032");
                                        var instance032;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_032.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_032.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_032.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance032 = $slide_032.data("ionRangeSlider");

                                        $slide_input_032.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance032.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
						</tr>
						<tr>
							<td>
                                3
								</td>
                            <td>
                                End-Use 3
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_033" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_033" />
                                    </div>
                                    <script>
                                        var $slide_033 = $("#slide_033");
                                        var $slide_input_033 = $("#rank_input_033");
                                        var instance033;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_033.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_033.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_033.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance033 = $slide_033.data("ionRangeSlider");

                                        $slide_input_033.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance033.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_034" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_034" />
                                    </div>
                                    <script>
                                        var $slide_034 = $("#slide_034");
                                        var $slide_input_034 = $("#rank_input_034");
                                        var instance034;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_034.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_034.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_034.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance034 = $slide_034.data("ionRangeSlider");

                                        $slide_input_034.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance034.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
						</tr>
					
						</tbody>
						</table>

            </div>

        </div>

    

         <div class="w-100">

            <div class="w-100 section_header">
                <h3>TECHNOLOGY 3 END-USE %</h3>
            </div>

            <div class="table-responsive">
                <table class="table w-100 border" id="technology_new_table">
                    <tbody>
                        <tr>
                            <th>
                                Sno
								</th>
							<th>
                                Technology 3
								</th>
							<th>
                                2020
								</th>
							<th>
                                2030
								</th>
						</tr>
						<tr>
							<td>
                                1
								</td>
                            <td>
                                End-Use 1
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_035" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_035" />
                                    </div>
                                    <script>
                                        var $slide_035 = $("#slide_035");
                                        var $slide_input_035 = $("#rank_input_035");
                                        var instance035;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_035.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_035.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_035.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance035 = $slide_035.data("ionRangeSlider");

                                        $slide_input_035.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance035.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_036" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_036" />
                                    </div>
                                    <script>
                                        var $slide_036 = $("#slide_036");
                                        var $slide_input_036 = $("#rank_input_036");
                                        var instance036;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_036.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_036.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_036.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance036 = $slide_036.data("ionRangeSlider");

                                        $slide_input_036.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance036.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
						</tr>
						<tr>
							<td>
                                2
								</td>
                            <td>
                                End-Use 2
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_037" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_037" />
                                    </div>
                                    <script>
                                        var $slide_037 = $("#slide_037");
                                        var $slide_input_037 = $("#rank_input_037");
                                        var instance037;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_037.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_037.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_037.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance037 = $slide_037.data("ionRangeSlider");

                                        $slide_input_037.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance037.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
							<td>
                                <div class="w-100">


                                    <div class="w-100">


                                        <div class="range-slider ranking_slider">
                                            <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                            <input type="text" maxlength="4" class="js-input rank_input"
                                                name="rank_input_05" id="rank_input_038" value="0" maxlength='4' size='20'
                                                tabindex='3' placeholder="##.#">
                                            <input type="text" value="0" class="js-range-slider" id="slide_038" />
                                        </div>
                                        <script>
                                            var $slide_038 = $("#slide_038");
                                            var $slide_input_038 = $("#rank_input_038");
                                            var instance038;
                                            var min = 0;
                                            var vfromval = 0;
                                            var max = 100;
    
                                            $slide_038.ionRangeSlider({
                                                skin: "big",
                                                type: "single",
                                                min: min,
                                                max: max,
                                                from: vfromval,
                                                grid: true,
                                                step: 0.5,
                                                grid_num: 10,
    
                                                onStart: function (data) {
                                                    $slide_input_038.prop("value", data
                                                        .from);
                                                },
                                                onChange: function (data) {
                                                    $slide_input_038.prop("value", data
                                                        .from);
                                                }
                                            });
    
                                            instance038 = $slide_038.data("ionRangeSlider");
    
                                            $slide_input_038.on("input", function () {
                                                var val = $(this).prop("value");
    
                                                // validate
                                                if (val < min) {
                                                    val = min;
                                                } else if (val > max) {
                                                    val = max;
                                                }
    
                                                instance038.update({
                                                    from: val
                                                });
    
                                                $(this).prop("value", val);
                                            });
                                        </script>
    
    
                                    </div>


                                </div>
								</td>
						</tr>
						<tr>
							<td>
                                3
								</td>
                            <td>
                                End-Use 3
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_039" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_039" />
                                    </div>
                                    <script>
                                        var $slide_039 = $("#slide_039");
                                        var $slide_input_039 = $("#rank_input_039");
                                        var instance039;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_039.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_039.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_039.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance039 = $slide_039.data("ionRangeSlider");

                                        $slide_input_039.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance039.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>
                                </div>
								</td>
							<td>
                                <div class="w-100">


                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_05" id="rank_input_040" value="0" maxlength='4' size='20'
                                            tabindex='3' placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_040" />
                                    </div>
                                    <script>
                                        var $slide_040 = $("#slide_040");
                                        var $slide_input_040 = $("#rank_input_040");
                                        var instance040;
                                        var min = 0;
                                        var vfromval = 0;
                                        var max = 100;

                                        $slide_040.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_040.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_040.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance040 = $slide_040.data("ionRangeSlider");

                                        $slide_input_040.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance040.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>


                                </div>
								</td>
						</tr>
					
						</tbody>
						</table>

            </div-->

        </div>
               

        <!---MARKET STAGING BY COUNTRY---->

        <div class="w-100">
            <div class="w-100 section_header">
                <h3>I. MARKET STAGING BY COUNTRY AND SEGMENT - COMPOUNDED MICRODYNAMICS ADJUSTMENTS</h3>
            </div>

            <div class="table-responsive">
                <table class="table border" id="market-staging">
                    <tbody>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col"> COUNTRY </th>
                            <th scope="col" colspan="2"> ADJUSTMENT </th>
                            <th scope="col" colspan="3" style="text-align: center;">GROWTH TRAJECTORY</th>

                        </tr>
                        <tr>
                            <td scope="col" ></td>
                            <td scope="col"></td>
                            <td scope="col"></td>
                            <td scope="col"></td>
                            <td align="center" scope="col" class="font-weight-bold">2010</t>
                            <td align="center" scope="col" class="font-weight-bold">2020</th>
                            <td align="center" scope="col" class="font-weight-bold">2030</th>
                            
                        </tr>   
                        
                        


                    </tbody>

                </table>

            </div>
        </div>


<A id=dynLink href="http://www.strategyr.com/gia_analytix/viewGIACountriesBespoke.asp?sts=D&code=MCP-1001" target=New>..</A>


</body>



</html>