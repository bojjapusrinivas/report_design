
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]>
<!-->
<!--#include file="aspincludes/CheckSQLInc.asp"-->
<html lang="en">
<!--<![endif]-->
<%
get_col_email_string = ""
If trim(session("Collborate_Email_ID"))<>"" Then
	get_col_email_string = "&Email_ID="&trim(session("Collborate_Email_ID"))&""
End If

''' IF the user logins from Collaborate_SignIn.asp then add his email to session("EID") to be added when he adds data to the segments and countries values
If trim(request("Email_ID"))<>"" Then
	session("EID") = trim(request("Email_ID"))
End If

''''response.write session("EID")
%>
<head> 
    <!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8">
    <title>Research Collaboration Platform - StrategyR.com - Global Industry Analysts, Inc.</title>
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
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



	<script>
function Add_Ancillaries2(vSegment,vRegion,vYeartype,VgetData,VpageLoopVal)
		{
		
		// var vtxtRegionVal = $("#AddNewCountry"+RegionName).val();
	     var vGiaCode = $('input[id="txtGiaCode"]').val();
	     var vencID = $('input[id="txtencID"]').val();
		 var vUnites = $('input[id="MARKET_MEASURE_USD"]:checked').val();
		 var vCurrency = $('input[id="MARKET_MEASURE_UNITS"]:checked').val();	
      // alert(vGiaCode);		
       //alert(vencID);	    
       //alert(vUnites);	
       //alert(vCurrency);		 	 
	   //window.location.href = "https://www.strategyr.com/Ancillaries_3.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"&pageLoopVal="+encodeURIComponent(VpageLoopVal)+"&gregion="+encodeURIComponent(vRegion)+"&stype="+encodeURIComponent(vSegment)+"&YearType="+encodeURIComponent(vYeartype)+"&getDATA="+encodeURIComponent(VgetData)+"&type=submit";
	   window.location.href = "https://www.strategyr.com/Ancillaries_3.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"&pageLoopVal="+encodeURIComponent(VpageLoopVal)+"&gregion="+encodeURIComponent(vRegion)+"&stype="+encodeURIComponent(vSegment)+ "<%=get_col_email_string%>&type=submit";
		
		}	
	
	function toggle() {
		  //if (document.getElementById("REGION").value != "")
		 // {
		   // document.getElementById("DDlSegmentsList").value = "";
		 // }						  
		  document.forms["frmadd"].submit();
}


 function AddMultipleRecordstoDB(textIdentity,region,segid,units,stYear,enYear,VpageLoopVal)
  {	
  
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
	 for (year = stYear; year <= enYear; year++) 
	 {
	 //alert(year);
      var vtxtVal = $("#txt"+textIdentity+year).val();
	  var vtxtcagrVal = $("#txtcagr"+textIdentity+year).val();
	  var vtxtUNITSVal = $("#txtUNITS"+textIdentity+year).val();
	  var vtxtcagrUNITSVal = $("#txtcagrUNITS"+textIdentity+year).val();
	  // alert(vtxtVal);
	   //  alert(vtxtcagrVal);
		//  alert(vtxtUNITSVal);
		 //  alert(vtxtcagrUNITSVal);
		//alert(vtxtcagrVal);
			 if (((vtxtVal!="") && (vtxtVal!==undefined))  || ((vtxtcagrVal!="") && (vtxtcagrVal!==undefined) ) || ((vtxtUNITSVal!="")&&(vtxtUNITSVal!==undefined)) || ((vtxtcagrUNITSVal!="")&&(vtxtcagrUNITSVal!==undefined)))
			 {
			  //alert(vtxtcagrVal);
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
				//	window.location.href = "https://www.strategyr.com/Ancillaries_3.asp?code="+vGiaCode+"&encID="+encodeURIComponent(vencID)+"&pageLoopVal="+encodeURIComponent(VpageLoopVal)+"&gregion="+encodeURIComponent(vRegion)+"&stype="+encodeURIComponent(segid)+"&YearType="+encodeURIComponent(vYeartype)+"&getDATA="+encodeURIComponent(VgetData)+"&type=submit";
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
   // alert("Data Updated Sucessfully");
  }
  
  function addNewSegment() {	 
	 var vSegment = document.getElementById("txtSegment").value;
	 var vGiaCode = document.getElementById("txtGiaCode").value;
	 var vencID = document.getElementById("txtencID").value;
	 var vSegmentType = $('input[id="DDlSegmentsType"]:checked').val();
	 //alert (vGiaCode);
	//alert (vSegmentType);
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
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

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
		SQL = "SELECT * FROM MCPNewTopic WHERE (NewCODE='" & session("ReportCode") & "' or code ='" & session("ReportCode") & "')"
	Else
		SQL = "SELECT * FROM MCPNewTopic WHERE (NewCODE='" & session("ReportCode") & "' or code ='" & session("ReportCode") & "')"
	End If
	''response.write sql
	RS.Open SQL, conn,1,2
	If Not RS.EOF Then
			giacode=Trim(RS("newcode"))
			giacode_1=Trim(RS("code"))
			giacode1=Trim(RS("code"))
			strReportTitle = Trim(RS("title"))
			Companies_List = Trim(RS("companyNames"))
			CpCodes=Trim(RS("CPCodes"))
			region=Trim(RS("region"))
			companiesCount=Trim(RS("companies"))
			''If session("isMCP") = "Y" Then
			  Segment_List = Trim(RS("Segments_Covered"))
			''End if
			session("ReportTitle") = (Trim(RS("title")))
			RPT_MCP_CODE = Trim(RS("code"))
			session("giacode")=giacode
			giaid1 = Trim(RS("code"))
	End If
	set RS = nothing
	set conn = Nothing
	
	'If trim(session("ReportCode"))="" Then
		session("ReportCode") = giacode1	
	'End If
	
	If Trim(request("encID"))<>"" then
		If session("security_code") ="" then
		   session("security_code") = Trim(request("encID"))
		End If
	Else
		session("security_code") = ""
	End If
	intRptID = giacode1
	code = giacode1
	strReportTitle = trim((strReportTitle)) 
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
	SQLrptGIA="select topic,units,region_type,(select report_type  from gia_analytix.dbo.REPORTS_Params$ where gia_analytix.dbo.REPORTS_Params$.gia_no=gia_analytix.dbo.REPORTS_GIA$.gia_no) as reporttype,(select replace(reporting_level,'Data is reported at ','')  from gia_analytix.dbo.REPORTS_Params$ where gia_analytix.dbo.REPORTS_Params$.gia_no=gia_analytix.dbo.REPORTS_GIA$.gia_no) as reportLevel   from gia_analytix.dbo.REPORTS_GIA$ where (gia_no='" &session("giacode") & "' or gia_no='" & giacode1 & "')"
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
	
	
	''response.write "Currency_Units = "&Currency_Units
	
	
	%>
	
	<%
		'''USER DATA RETRIEVAL
		''response.write "MARKET_MEASURE = "&MARKET_MEASURE
		SQLrptGIA="select *  from gia_analytix.dbo.GIA_Research_Feedback_Currency where (ReportCode='" & giacode & "' or ReportCode='" & giacode1 & "') and eNcID='"&Trim(request("encID"))&"'"
	'response.write SQLrptGIA
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
		
		'''''''**********************************************''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		'''''GET THE DATA FROM THE TABLE
		''''' SEGMENTS AND REGIONS DATA FROM THE Ancillaries_1 TABLE
		'''''''**********************************************''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		Set Conn = Server.CreateObject("ADODB.Connection")
		Conn.Open Datasource7

		RecChkSQL = "SELECT * FROM GIA_Analytix.dbo.Ancillaries_1 WHERE (Code = '"& code &"' or newcode= '"&session("giacode")&"') and eNcID ='"&trim(request("encID"))&"'"
		''response.write RecChkSQL
 		Set RecChkRS = Server.CreateObject("ADODB.Recordset")
		RecChkRS.Open RecChkSQL, DataSource7
		
		If Not RecChkRS.EOF Then
			segmentname = trim(RecChkRS("Segments"))
			cname = trim(RecChkRS("Regions"))
			
			segmentname_Show = trim(RecChkRS("Segments"))
			cname_Show = trim(RecChkRS("Regions"))
		End If	 
		set Conn = Nothing
		
		''response.write "segmentname = "&RecChkSQL & "<br>"
		''response.write "cname = "&cname
		
		'''''''If trim(Request("Email_ID")) is not null (This is a user who has been invited to finish the data
		If trim(Request("Email_ID"))<>"" Then
		
			Set Conn99 = Server.CreateObject("ADODB.Connection")
			Conn99.Open Datasource1
			
			RecChkSQL = "SELECT * FROM App_User_Collaborate WHERE (Report_ID = '"&trim(giacode)&"'  or Report_ID = '"&trim(giacode_1)&"') and eNcID ='"&trim(request("encID"))&"' and Email_ID='"&trim(Request("Email_ID"))&"'"
			 
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
		pageLoopVal = 7
		
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
		If instr(segmentname_Show,",")>0 then
			CURRENTSegment = split(segmentname_Show,",")
			segmentname = CURRENTSegment(SegmentLoopNo)
		Else
			segmentname = trim(segmentname)
		End If
		
		If instr(cname_Show,",")>0 then
			CURRENTRegion = split(cname_Show,",")
			cname = CURRENTRegion(CountyLoopNo)
		Else
			cname = trim(cname)
		End If
		''segnamesplit= split(segmentname_Show,",")
		''regionsplit=split(cname_Show,",")
		''m=1
		''For i = 0 To UBound(segnamesplit)
		
			''response.write (segnamesplit(i))
		''	for j =0 to ubound(regionsplit)
		''			pageLoopVal=m
		''		response.write "<a href=""javascript:Add_Ancillaries2('" & trim(request("stype"))& "','" & trim(request("gregion")) & "','" & trim(request("YearType")) & "','" & trim(request("getDATA")) & "','" & trim(pageLoopVal) & "');"" >" & segnamesplit(i) & " -- " & regionsplit(j) & "  --page" & pageLoopVal & "</a><br>" 
				 
	''			 m=m+1
		''	next
		''next
		
		
		%>
<body id="simulator_page" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" id="landing_page"><body id="simulator_page" ><!--onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" id="landing_page"-->
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
	<form name="frmadd" method="post" action="Ancillaries_2.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>">			

	<!--include file="Lables_new.asp"-->
	<!--#include file="module_menus.asp"-->
                <!---- BEGIN :CONTENT SSECTION ---->
                <!---Begin: Main Content--->
	<!--<div class="text-center py-2 font-weight-bold bg_light_gray mb-2 imodule"><a href="InfluencerModule.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>" target='New'>INFLUENCER</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="WorldBrandModule.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>" target='New'>CURATE WORLD BRANDS </a></div>-->
	
		<!--#include file="Ancillaries_submenu.asp"-->
                <main class="w-100">
				<!-- <div class="w-100  text-center  modules_page_title text-center"> <h3 >MARKET TRAJECTORY</h3></div>-->
                    <!----Begin:CURRENCY Section---->
                   
							<input type="hidden" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="<%=trim(ucase(Currency_Units))%>">
                             <input type="hidden" name="USD_MEASURE" id="USD_MEASURE" value="<%=trim(ucase(currency_code))%>" checked="">
                           
										
							 <%if trim(Currency_Name) <> "" then 
									''response.write trim(ucase(currency_code)) & "&nbsp;&nbsp;" & trim(ucase(Currency_Units))
								else 
									''response.write ("USD")
								
								end if%> <%If trim(request("Email_id"))="" then%><%End If%>
                                       
                                        
										
										<input type="hidden" id="TXTCurrencyName" name="TXTCurrencyName" value="<%=Currency_Name%>">
										<input type="hidden" id="TXTCurrencyExchangeRate" name="TXTCurrencyExchangeRate" value="<%=Currency_Exchange_Rate%>">
										<input type="hidden" id="TXTCurrencyUnits" name="TXTCurrencyUnits" value="<%=Currency_Units%>">
                                
                    
                  
                    
					<input type='textbox' id='txtGiaCode' name='txtGiaCode' size="12" value="<%=session("giacode")%>" style="display:none">
					<input type='textbox' id='txtencID' name='txtencID' size="12" value="<%=request("encID")%>" style="display:none">
                    <!----End:SEGMENT : Section---->
                    <!----Begin: REGION/COUNTRY:--->
                   
                    <!----Begin: REGION/COUNTRY:--->
					
					 <!----Begin: estimated time:--->
               <!--     <section id="region_section" class="mt-3">
                        <div class="row mx-0  my-2 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                            <div class="left_column">
                                <h4 class="mt-1"> STATUS:</h4>
                            </div>
                            <div class="right_column"><div class="w-100 d-flex px-2 flex-wrap">
							
							
							COMPLETED: <%'=pageLoopVal%> of <%'=GTtotalLoops%>
							<br/>TIME TO COMPLETE: <%'=TotalFinishTime%> Minutes

							<br/>PARTICIPANTS: 1
							<br/></div>
									 </div>
								 </div>
								
					</section>-->
					<!--For best results and expeditious completion, please collaborate with your peers. <br/>Simply use the “Collaborate” feature and invite your peers to bring their geographic and domain expertise to your bespoke update. <br/><br/>-->
                    <!----Begin: REGION/COUNTRY:--->
					
					 
					<%
					
					
					
					if Trim(request("DDlSegmentsList")) <> "" then
						segmentname= Trim(request("DDlSegmentsList"))
					else
						segmentname= Trim(segmentname)
					end if
					'response.write Trim(request("REGION"))
					if Trim(request("REGION"))<> "" then
						cname= Trim(request("REGION"))
					else
						cname= Trim(cname)
					
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
						 multipleRegionList = "'"&Replace(Trim(cname),",","', '")&"'"
							
							
							'response.write multipleRegionList
							
							If region="GEO_A" Then  
								RegionsQry="select * from REPORTS_GSA_REGIONS$ where region_country_name in ("& Trim(multipleRegionList)&")"
							Else
								RegionsQry="select * from REPORTS_GSB_REGIONS$ where  region_country_name in ("&Trim(multipleRegionList)&")"
							End If 
							RegionsQry="select distinct country_name AS region_country_name from GIA_Analytix.dbo.vw_Report_Countries_AnalytixConsolidate$_cust where (gia_no='"& session("giacode") &"' or gia_no='"& giaid1 &"') AND  COUNTRY_NAME in ("&Trim(multipleRegionList)&") "
							RegionsQry="SELECT sno as list_id,country_name AS region_country_name FROM GIA_REGIONS_COUNTRIES$ where country_name in ("&Trim(multipleRegionList)&") "
							''response.write RegionsQry				
							
						  							
							if trim(segmentname) <> "" then
								DDlSegmentsList= "'" & Replace(trim(segmentname),",", "','") & "'"
							end if
								If trim(sname)="" then
									Set GetSegmentType = Server.CreateObject("ADODB.Recordset")
									sqlsegmenttype = "SELECT distinct [Type] FROM [GIA_Analytix].[dbo].[REPORT_SEGMENTS$] where gia_no='"&trim(giacode)&"'"
									GetSegmentType.Open sqlsegmenttype, Conn7
									If not GetSegmentType.EOF then
										sname = trim(GetSegmentType("Type"))
									End IF
								End If
							
							''response.write DDlSegmentsList
								
							set YearRs=Server.CreateObject("ADODB.Recordset")
							YearSql="SELECT  GIA_No, H_StartYear, H_EndYear, CF_StartYear, CF_EndYear FROM CreateHeaders WHERE   (GIA_No = '" & giacode & "' or GIA_No = '" & session("giacode") & "')"
							'response.write YearSql
							'response.end
							YearRs.Open YearSql, Conn7
							If Not YearRs.EOF Then
								HStartYear=trim(YearRs("H_StartYear"))
								HEndYear=trim(YearRs("H_EndYear"))
								CF_StartYear=trim(YearRs("CF_StartYear"))
								CF_EndYear=trim(YearRs("CF_EndYear"))
								
							end if
							
							''response.write HStartYear & "  " & HEndYear & " " & CF_StartYear & " " & CF_EndYear
							'response.end
							'''2012 2019 (HR) 2020 2027 (RPCF) YearTpe = RPCF & HR
							''response.write RegionsQry
							'response.end
							RSRegions.Open RegionsQry, Conn7,1,2
							
							'''response.write "YearType = "& trim(request("YearType"))
							''Dim GTDivID, SWDivID
							
							GTDivID = 1
							If Not RSRegions.EOF Then
							cluster="2(+/-1)"
								ShowValueButtons = 1
									if (RSRegions("region_country_name")="United States") or (RSRegions("region_country_name")="India") or (RSRegions("region_country_name")="United Kingdom") then 
										if companiesCount > 200 then
											cluster="10(+/-1)"
										else
											cluster="5(+/-1)"
										end if
									elseif (RSRegions("region_country_name")="Germany") or (RSRegions("region_country_name")="France") or (RSRegions("region_country_name")="Japan") then 
										if companiesCount > 200 then
											cluster="6(+/-1)"
										else
											cluster="3(+/-1)"
										end if
									end if
									
							%>
							
							 <!---MESSAGE---->
                   <!-- <div class="row m-0 px-3">
                        <p>Cluster Median Value (to view, user must be a Licensed User or participant in our Intelligence Exchange Program)</p>
                    </div>-->
							<%
							
							''''' NO REGION LOOP END IT
							'''while not RSRegions.EOF	
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''							
								SWDivID = "div"&GTDivID
								%>
																
								<%'''' IF the trim(request("YearType")) is RPCF Then show this									
									YearType="RPCF"
									If trim(ucase(YearType))="RPCF" Then
								%>
									<%'Dim MKTSize_Type
											MKTSize_Type = "USD"%>
											<form id="frm<%=RSRegions("Region_Country_Name")%><%=MKTSize_Type%>" >
											
											<%
											multipleSegList = "'"&Replace(Trim(request("sname")),", ","', '")&"'"											
											MKTSize_Type = "USD"
											''LINE 1: SEGMENT + YEARS + COUNTRY OR REGION
											''LINE 2: FIRST + LAST NAME
											%>
											<!--tr style="background-color:#FFD4AA;color:#000000;font-size:15px;"><td colspan="6" ALIGN="CENTER"><b>TRAJECTORY: <font color='blue'><%=CF_StartYear%>-<%=CF_EndYear%></font></b></td></tr>
											<tr style="background-color:#FFD4AA;color:#000000;font-size:15px;"><td colspan="6" ALIGN="CENTER"><b>REGION/COUNTRY: <font color='blue'><%=UCase(RSRegions("Region_Country_Name"))%></b></font></td></tr-->
											<%For displayYear=CF_StartYear to CF_EndYear 
												QueryYearsF=QueryYearsF & ",[" &  displayYear  & "]"
											Next %>
											<% ''response.write QueryYearsF
											Set RSSegmentsList = nothing
											Set RSSegments = Server.CreateObject("ADODB.Recordset")
											
											'if Trim(RSRegions("Region_Country_Name"))="EUROPE" then
											'	SegmentsQry="select * from vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='" & request("code") & "' and country_name='"&Trim(RSRegions("Region_Country_Name"))&"' and segment_type='" & trim(sname)&"' ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', ''))"
											'else
												''SegmentsQry="select * from vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='" & request("code") & "' and country_name='"&Trim(RSRegions("Region_Country_Name"))&"' and segment_type='" & trim(sname)&"' ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', ''))"
											if DDlSegmentsList <> "" then
												''commentd counry selection
												''SegmentsQry="select segment_name,Segment_ID " & QueryYearsF & ",dbo.ReturnCAGR([" & CF_EndYear & "],[" & CF_StartYear &"]) as cagr from vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='" & request("code") & "' and country_name='"&Trim(RSRegions("Region_Country_Name"))&"' and segment_NAME IN (" & trim(DDlSegmentsList)&") ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', ''))"
												SegmentsQry="select segment_name,Segment_ID " & QueryYearsF & " from vw_Report_Countries_AnalytixConsolidate$_cust where (gia_no='" & session("giacode") & "' or gia_no='" & giaid1 & "') and segment_NAME IN (" & trim(DDlSegmentsList)&") ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', ''))"
											else
												''SegmentsQry="select segment_name,Segment_ID " & QueryYearsF & ",dbo.ReturnCAGR([" & CF_EndYear & "],[" & CF_StartYear &"]) as cagr from vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='" & request("code") & "' and country_name='"&Trim(RSRegions("Region_Country_Name"))&"' and segment_type='" & trim(sname)&"' ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', ''))"
												'' commented removing country selection
												''SegmentsQry="select segment_name,Segment_ID " & QueryYearsF & ",dbo.ReturnCAGR([" & CF_EndYear & "],[" & CF_StartYear &"]) as cagr from vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='" & request("code") & "' and country_name='"&Trim(RSRegions("Region_Country_Name"))&"' and segment_NAME='" & trim(sname)&"' ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', ''))"
												SegmentsQry="select segment_name,Segment_ID " & QueryYearsF & " from vw_Report_Countries_AnalytixConsolidate$_cust where (gia_no='" & session("giacode") & "' or gia_no='" & giaid1 & "') and segment_NAME='" & trim(sname)&"' ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', ''))"
											end if   
											''response.write REGION
											'',dbo.ReturnCAGR([" & CF_EndYear & "],[" & CF_StartYear &"]) as cagr 
											'response.write SegmentsQry
											'response.end
											RSSegments.CursorLocation=3 
		'									response.write SegmentsQry & " Testing5"
		'response.end
											RSSegments.Open SegmentsQry, Conn7,1,2	
											''response.write "segmentname = "&SegmentsQry
											''response.write "giacode1 = "&giacode1
											If Not RSSegments.EOF Then
											
											
												segmentCount=RSSegments.RecordCount%>
												
							<!----BEGIN:SIMULATOR TABLE---->
							<section>	
							<div class=" mb-2  p-2">					
												<%
												''''' SHOW ONLY ONE SEGMENT NO WHILE LOOP
													''while not RSSegments.EOF													
													
												%>
													
                   
                        
					<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>
						

                            <div class="table-responsive">
                                <table class="w-100" id="simulator_block" >
                                    <!---TABLE TITLE--->
                                    <tr>
                                        <td class="py-1 border-top-0"  >
                                            <h3 class="m-0 p-0  font-weight-bold text_brown"><%=trim(ucase(RSSegments("segment_name")))%> - <%=UCase(RSRegions("Region_Country_Name"))%></h3>
                                        </td>
                                    </tr>
                                    <!---Begin: simulator table header to placed in the tr--->
                                    <tr>
                                        <td class="p-0 m-0">
                                            <table class="table m-0 p-0 w-100" id="simulator_table">
                                                <thead class='font-weight-bold'>
                                                    <tr class="m-0 p-0">
                                                        <th scope="col">YEAR</th>

                                                        <th scope="col">
														<%if trim(ucase(Currency_Name)) <> "" then 
															response.write (trim(ucase(currency_code))) 
														else 
															response.write ("US Dollar(USD)")
														end if%>&nbsp;
														<%if trim(ucase(Currency_Units)) <> "" then 
															response.write left((trim(ucase(Currency_Units))) ,3)
														else 
															response.write left("MILLION",3)
														end if%>
														</th>

                                                        <th scope="col">%</th>

                                                        <th scope="col">
														<%if trim(ucase(Get_Units_Name)) <> "" then 
															response.write (trim(ucase(Get_Units_Name))) 
														else 
															response.write ("UNITS")
														end if%>
														</th>

                                                        <th scope="col">%</th>

                                                        <th scope="col">ACTIVITY</th>

                                                    </tr>
                                                </thead>
                                            </table>
                                        </td>
                                    </tr>
                                    <!---Begin: simulator table tbody to placed in this tr and its should be looped--->
                                    <!---2020--->
									
									<%
													dim RecValue1
													''' HERE NUMBER 16 IS THE COLUMN NUMBER ON THE TABLE FOR 2020 FIELD. CHANGE THIS NUMBER TO 17 TO SHOW 2021
													RecValue1 = 2
													For displayYearData=CF_StartYear to CF_EndYear 
														dispYear= """" & displayYearData  & """"
													%>
													
													<%   
																	Dim vDollorValue,vDollorCAGR,vUnitsValue,vUnitsCAGR
																	vDollorValue = ""
																	vDollorCAGR=""
																	vUnitsValue=""
																	vUnitsCAGR=""
																	
																	Set RSGIAResearch_FeedBackUSER = Server.CreateObject("ADODB.Recordset")
																	GIAResearch_FeedBack_DataUSERQry="SELECT  ReportCode, eNcID, USD, Units, Segment, Region, Year, ODollorValue, DollorValue, ODollorCAGR, DollorCAGR, OUnitsValue, UnitsValue, OUnitsCAGR, UnitsCAGR, UpdatedDate, status,Email_ID FROM  GIA_Research_Feedback_Data WHERE  (Region = '"&Trim(RSRegions("Region_Country_Name"))&"') AND (ReportCode = '" & session("giacode") & "' or ReportCode = '" & giaid1 & "') and segment='"&Trim(RSSegments("Segment_Name"))&"' and year="&displayYearData&" and eNcID='"&request("encID")&"' and Email_ID='"&trim(session("EID"))&"'"
																	''response.write(GIAResearch_FeedBack_DataUSERQry)
																	RSGIAResearch_FeedBackUSER.CursorLocation=3 
																	RSGIAResearch_FeedBackUSER.Open GIAResearch_FeedBack_DataUSERQry, Conn7,1,2		
																	''response.write 	GIAResearch_FeedBack_DataUSERQry
																	''response.end
																	If Not RSGIAResearch_FeedBackUSER.EOF Then																	
																		''while not RSGIAResearch_FeedBack.EOF																		    
																			  vDollorValue =  RSGIAResearch_FeedBackUSER("DollorValue")
																			  vDollorCAGR= RSGIAResearch_FeedBackUSER("DollorCAGR")
																			  vUnitsValue = RSGIAResearch_FeedBackUSER("UnitsValue")
																			  vUnitsCAGR = RSGIAResearch_FeedBackUSER("UnitsCAGR")
																			''RSGIAResearch_FeedBackUSER.MoveNext
																		''Wend
																		
																	End if
																
																	Set RSGIAResearch_FeedBackUSER = nothing
																	
																	%>
																	
                                    <tr>

                                        <td class="p-0 m-0">

                                            <table class="table m-0 p-0 w-100" id="simulator_table">
                                                <tbody>
                                                    <tr class="m-0 p-0">
                                                        <td>
                                                            <div class="d-flex flex-column justify-content-center">
                                                                <i class="mb-2"><%=displayYearData%></i>
                                                                <i class="mt-0">CLUSTER</i>
                                                            </div>

                                                        </td>

														<!--input type="number" id="rate" placeholder="Number.0" required onkeypress="return isNumberKey(event,this)"-->
                                                        <td>
                                                            <div class="d-flex flex-xl-row flex-lg-row flex-md-row flex-sm-column    justify-content-center">
                                                                <input type='textbox' type="number" maxlength="6"  class="allow_decimal" value='<%=vDollorValue%>' onkeypress="return isNumberKey(event,this)" id='txt<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>' name='txt<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>' size="3" value=<%=vDollorValue%> placeholder="#####">
															
                                                                <span>
                                                                    <font>
																	<%If trim(ucase(Report_Purchase_status)) = "YES" Then%>
																		<% if trim(Currency_Exchange_Rate) <> "" then%>
																		[<%=round((RSSegments.fields(RecValue1).value * cdbl(Currency_Exchange_Rate)),2)%>]
																		<%else%>
																		[<%=RSSegments.fields(RecValue1).value%>]
																		<%end if%>
																	
																	<%End If%>
																	</font>
                                                                </span>
                                                            </div>
                                                            <div class="mt-1 cluster_number">
                                                                <%=cluster%>
                                                            </div>

                                                        </td>


                                                        <td>
                                                            <div class="w-100 d-flex flex-column">
																<div class="d-flex justify-content-start slider_block">
																	<div class="extra-controls percent_block">
																		<input class="js-input rank_input allow_decimal" 
																			 id="txtcagr1825-16USD2022_input" type='textbox' type="number" placeholder="##.#"  maxlength="4"  onkeypress="return isNumberKey(event,this)" id='txtcagr<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>' name='txtcagr<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>' size="3" value=<%=vDollorCAGR%> />
																	</div>
																	<div class="range-slider simulator_rank_slider">
																		<input type="text" class="js-range-slider"
																			id="txtcagr1825-16USD2022" />
	
																	</div>
																	
																	<script>
																		var $range1825 = $("#txtcagr1825-16USD2022");
																		var $input1825 = $("#txtcagr1825-16USD2022_input");
																		var instance1825;
																		var min = 0;
																		var max = 100;
	
																		$range1825.ionRangeSlider({
																			skin: "big",
																			type: "single",
																			min: min,
																			max: max,
																			from: 50,
																			grid: true,
																			step: 0.5,
																			grid_num: 10,
	
																			onStart: function (data) {
																				$input1825.prop("value", data
																				.from);
																			},
																			onChange: function (data) {
																				$input1825.prop("value", data
																				.from);
																			}
																		});
	
																		instance1825= $range1825.data("ionRangeSlider");
	
																		$input1825.on("input", function () {
																			var val = $(this).prop("value");
	
																			// validate
																			if (val < min) {
																				val = min;
																			} else if (val > max) {
																				val = max;
																			}
	
																			instance1825.update({
																				from: val
																			});
	
																			$(this).prop("value", val);
																		});
																	</script>
																
                                                                <span>
																	<%If trim(ucase(Report_Purchase_status)) = "YES" Then%>
                                                                    <font>[<%=round(RSSegments("cagr"),2)%>]</font>
																	<%End If%>
                                                                </span>
                                                           
                                                            <div class="mt-1 cluster_number">
                                                               <!-- ###-->
                                                            </div>
														</div>
                                                        </td>





                                                        <td>
                                                            <div class="d-flex flex-xl-row flex-lg-row flex-md-row flex-sm-column    justify-content-center">
                                                                <input type='textbox' type="number" placeholder="#####"   class="allow_decimal"  onkeypress="return isNumberKey(event,this)" id='txtUNITS<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>' name='txtUNITS<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>' size="3" value=<%=vUnitsValue%>>
                                                                <!--span><font>[10.67]</font></span-->
                                                            </div>
                                                            <div class="mt-1 cluster_number">
                                                               <!-- ###-->
                                                            </div>

                                                        </td>

                                                        <td>
															<div class="w-100 d-flex flex-column">


																<div class="d-flex justify-content-start slider_block">
																	<div class="extra-controls percent_block">
																		<input class="js-input rank_input allow_decimal" 
																			 id="txtcagr1826-16USD2022_input" type='textbox' maxlength="4"  onkeypress="return isNumberKey(event,this)"  id='txtcagrUNITS<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>' name='txtcagrUNITS<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>' size="3" value=<%=vUnitsCAGR%>/>
																	</div>
																	<div class="range-slider simulator_rank_slider">
																		<input type="text" class="js-range-slider"
																			id="txtcagr1826-16USD2022" />
	
																	</div>
																	
																	<script>
																		var $range1826 = $("#txtcagr1826-16USD2022");
																		var $input1826 = $("#txtcagr1826-16USD2022_input");
																		var instance1826;
																		var min = 0;
																		var max = 100;
	
																		$range1826.ionRangeSlider({
																			skin: "big",
																			type: "single",
																			min: min,
																			max: max,
																			from: 50,
																			grid: true,
																			step: 0.5,
																			grid_num: 10,
	
																			onStart: function (data) {
																				$input1826.prop("value", data
																				.from);
																			},
																			onChange: function (data) {
																				$input1826.prop("value", data
																				.from);
																			}
																		});
	
																		instance1826= $range1826.data("ionRangeSlider");
	
																		$input1826.on("input", function () {
																			var val = $(this).prop("value");
	
																			// validate
																			if (val < min) {
																				val = min;
																			} else if (val > max) {
																				val = max;
																			}
	
																			instance1826.update({
																				from: val
																			});
	
																			$(this).prop("value", val);
																		});
																	</script>
																</div>




                                                              
                                                           
                                                            <div class="mt-1 cluster_number">
                                                               <!-- ###-->
                                                            </div>
														</div>
                                                        </td>






                                                        <td>
                                                            <div class="mt-3">
                                                                <!--a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">

                                                                    ACTIVITY</a-->
																	<a class=""  data-toggle="collapse" href="#collapse<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>" role="button" aria-expanded="false" aria-controls="collapseExample">VIEW</a>
                                                            </div>

                                                        </td>

                                                    </tr>

                                                </tbody>
                                            </table>
                                            <div class="activity_block  collapse" id="collapse<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearData%>">
											<%
																	
											Set RSGIAResearch_FeedBack = Server.CreateObject("ADODB.Recordset")
											GIAResearch_FeedBack_DataQry="SELECT  ReportCode, eNcID, USD, Units, Segment, Region, Year, ODollorValue, DollorValue, ODollorCAGR, DollorCAGR, OUnitsValue, UnitsValue, OUnitsCAGR, UnitsCAGR, UpdatedDate, status, firstname,lastname, CurrencyName, CurrencyUnits,a.email_ID FROM  GIA_Research_Feedback_Data a, [Globind1].[dbo].[User_Master] b WHERE a.eNcID=b.user_license_code and a.eNcID='"&trim(request("encID"))&"' and (a.Region = '"&Trim(RSRegions("Region_Country_Name"))&"') AND (a.ReportCode = '" & session("giacode") & "' or a.ReportCode = '" & giaid1 & "') and a.segment='"&Trim(RSSegments("Segment_Name"))&"' and a.year="&displayYearData&""
											'''response.write(GIAResearch_FeedBack_DataQry)
											RSGIAResearch_FeedBack.CursorLocation=3 
											''response.write GIAResearch_FeedBack_DataQry
											''response.end
											RSGIAResearch_FeedBack.Open GIAResearch_FeedBack_DataQry, Conn7,1,2		%>
                                                <table class="table p-0 m-0">
                                                    <thead>
                                                        <tr>
                                                            <th>USER</th>
                                                            <th><%if trim(ucase(Currency_Name)) <> "" then 
																			response.write (trim(ucase(currency_code))) 
																		else 
																			response.write ("USD")
																		end if%>&nbsp;
																		<%if trim(ucase(Currency_Units)) <> "" then 
																			response.write (trim(ucase(Currency_Units))) 
																		else 
																			response.write ("MILLION")
																		end if%></th>
                                                            <th>[%]</th>
                                                            <th><%if trim(ucase(Get_Units_Name)) <> "" then 
															response.write (trim(ucase(Get_Units_Name))) 
														else 
															response.write ("UNITS")
														end if%></th>
                                                            <th>[%]</th>
                                                        </tr>
                                                        <thead><tbody>
														<%If Not RSGIAResearch_FeedBack.EOF Then																	
															while not RSGIAResearch_FeedBack.EOF%>
                                                            
                                                                <tr>
                                                                    <!--td><%'=left(ucase(RSGIAResearch_FeedBack("FirstName")),1)%>&nbsp; <%'=ucase(RSGIAResearch_FeedBack("LastName"))%></td-->
                                                                    <td align='left'><%=RSGIAResearch_FeedBack("email_ID")%></td>
                                                                    <td><%=RSGIAResearch_FeedBack("DollorValue")%> [<%=RSGIAResearch_FeedBack("CurrencyName")%> &nbsp; <%=RSGIAResearch_FeedBack("CurrencyUnits")%>]</td>
                                                                    <td><%=RSGIAResearch_FeedBack("DollorCAGR") %></td>
                                                                    <td><%=RSGIAResearch_FeedBack("UnitsValue")%></td>
                                                                    <td><%=RSGIAResearch_FeedBack("UnitsCAGR")%></td>
                                                                </tr>
                                                              <% RSGIAResearch_FeedBack.MoveNext
																Wend
																		 
														Else
															response.write "<tbody><tr><td colspan='5'>-- No peer activity present --</td></tr>"
														End if
																	
														Set RSGIAResearch_FeedBack = nothing%>
                                                        </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
									<%
													RecValue1 = RecValue1 + 1
													next%>	
									<!--- Save button commeted-->				
									<!--<tr><td class="p-0 m-0 text-center">
									<button type="button" class="my-3 mx-auto btn_plan"   id="btnSaveUpdate" name="btnSaveUpdate" value="SUBMIT"  onClick="AddMultipleRecordstoDB('<%=RSSegments("segment_ID")%><%=RSRegions("List_ID")%><%=MKTSize_Type%>','<%=Trim(RSRegions("Region_Country_Name"))%>','<%=RSSegments("segment_name")%>','<%=MKTSize_Type%>','<%=CF_StartYear%>','<%=CF_EndYear%>')">SAVE & UPDATE</button>											</td>											
												
									</td></tr>-->
									<%	if instr(trim(report_type),"No Historics") =1 then%>
									 <tr><td class="p-0 m-0 text-center"><div class="d-flex justify-content-around flex-wrap w-xl-40 w-lg-40 w-md-60 mt-3  mx-auto bottom_links ">
									<a href="javascript:AddMultipleRecordstoDB('<%=RSSegments("Segment_ID")%><%=RSRegions("List_ID")%><%=MKTSize_Type%>','<%=Trim(RSRegions("Region_Country_Name"))%>','<%=RSSegments("segment_name")%>','<%=MKTSize_Type%>','<%=HStartYear%>','<%=CF_EndYear%>','<%=trim(VpageLoopVal)%>');Add_Ancillaries2('<%=trim(request("stype"))%>','<%=trim(request("gregion"))%>','<%=trim(request("YearType"))%>','<%=trim(request("getDATA"))%>','<%=trim(VpageLoopVal)%>');" class=" btn btn-gia-primary rounded-0 shadow p-2 my-3 text-white bt-5">SAVE & NEXT</a>
									</div>	</td></tr>
									<%end if
									
											    vSeg_ID = Trim(RSSegments("Segment_ID"))	
											    GTDivID = GTDivID+1
												''RSSegments.MoveNext
												''Wend
											End If %>
									
                                </table>
									
                            </div>
							</div>
							</section>
							<%
										End If
										
										
										%>
										
										
	<%'''' IF the trim(request("YearType")) is RPCF Then show this
	'response.write instr(trim(report_type),"No Historics")
							if instr(trim(report_type),"No Historics") =0 then
							YearType="HR"
							end if
							If trim(ucase(YearType))="HR" Then
										%>
	<!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
											
											<%For displayHYear = HStartYear to HEndYear
												QueryYearsH=QueryYearsH & ",[" &  displayHYear & "]"
											Next %>
										<%	Set RSSegmentsList = nothing
											Set RSSegments = Server.CreateObject("ADODB.Recordset")
											if DDlSegmentsList <> "" then
												'' commented country selection
												''SegmentsQry="select segment_name,Segment_ID " & QueryYearsH & ",dbo.ReturnCAGR([" & HEndYear & "],[" & HStartYear &"]) as cagr from vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='" & request("code") & "' and country_name='"&Trim(RSRegions("Region_Country_Name"))&"' and segment_NAME IN (" & trim(DDlSegmentsList)&") ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', ''))"
												SegmentsQry="select segment_name,Segment_ID " & QueryYearsH & ",dbo.ReturnCAGR([" & HEndYear & "],[" & HStartYear &"]) as cagr from vw_Report_Countries_AnalytixConsolidate$_cust where (gia_no='" & session("giacode") & "' or  gia_no='" & giaid1 & "')  and segment_NAME IN (" & trim(DDlSegmentsList)&") ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', ''))"
											else
												''SegmentsQry="select segment_name,Segment_ID " & QueryYearsH & ",dbo.ReturnCAGR([" & HEndYear & "],[" & HStartYear &"]) as cagr from vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='" & request("code") & "' and country_name='"&Trim(RSRegions("Region_Country_Name"))&"' and segment_type='" & trim(sname)&"' ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', '')) "
												''comment country selection
												''SegmentsQry="select segment_name,Segment_ID " & QueryYearsH & ",dbo.ReturnCAGR([" & HEndYear & "],[" & HStartYear &"]) as cagr from vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='" & request("code") & "' and country_name='"&Trim(RSRegions("Region_Country_Name"))&"' and segment_NAME='" & trim(sname)&"' ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', '')) "
												SegmentsQry="select segment_name,Segment_ID " & QueryYearsH & ",dbo.ReturnCAGR([" & HEndYear & "],[" & HStartYear &"]) as cagr from vw_Report_Countries_AnalytixConsolidate$_cust where (gia_no='" & session("giacode") & "' or gia_no='" & giaid1 & "') and segment_NAME='" & trim(sname)&"' ORDER BY CONVERT(int, REPLACE(REPLACE(Segment_ID, REPLACE(REPLACE(GIA_NO, 'NT', ''), 'MCP-', ''), ''), '-', '')) "
											end if 	
											''on error resume next
                                          ' response.write SegmentsQry
											'response.end
											RSSegments.CursorLocation=3 
											RSSegments.Open SegmentsQry, Conn7,1,2
											'response.write SegmentsQry
											'response.end
											If Not RSSegments.EOF Then
											ShowValueButtons = 1
												segmentCount=RSSegments.RecordCount%>
												
					<!----BEGIN:SIMULATOR TABLE---->				
                    <section>	
					<div class=" mb-2  p-2">					
												<%
													''while not RSSegments.EOF													
													
													%>
													
                   
                        
                            <div class="table-responsive">
                                <table class="table w-100 " id="simulator_block">
                                    <!---TABLE TITLE--->
                                    <tr>
                                        <td class="py-2 px-3 border-top-0 " >
                                            <h3 class="m-0 p-0 text_brown font-weight-bold"><%=trim(ucase(RSSegments("segment_name")))%> - <%=UCase(RSRegions("Region_Country_Name"))%></h3>
                                        </td>
                                    </tr>
                                    <!---Begin: simulator table header to placed in the tr--->
                                    <tr>
                                        <td class="p-0 m-0">
                                            <table class="table m-0 p-0 w-100" id="simulator_table">
                                                <thead >
                                                    <tr class="m-0 p-0">
                                                        <th scope="col">YEAR</th>
                                                        <th scope="col">
														<%if trim(ucase(Currency_Name)) <> "" then 
															response.write (trim(ucase(currency_code))) 
														else 
															response.write ("USD")
														end if%>&nbsp;
														<%if trim(ucase(Currency_Units)) <> "" then 
															response.write left((trim(ucase(Currency_Units))) ,3)
														else 
															response.write left("MILLION",3)
														end if%>
														</th>
                                                        <th scope="col">%</th>
                                                        <th scope="col"><%if trim(ucase(Get_Units_Name)) <> "" then 
															response.write (trim(ucase(Get_Units_Name))) 
														else 
															response.write ("UNITS")
														end if%></th>
                                                        <th scope="col">%</th>
                                                        <th scope="col">ACTIVITY</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </td>
                                    </tr>
                                    <!---Begin: simulator table tbody to placed in this tr and its should be looped--->
                                    <!---2020--->
									
								
													
													
													<%dim RecHValue1
													''' HERE NUMBER 16 IS THE COLUMN NUMBER ON THE TABLE FOR 2020 FIELD. CHANGE THIS NUMBER TO 17 TO SHOW 2021
													RecHValue1 = 2
													For displayYearDataH=HStartYear to HEndYear 
														dispYearH= """" & displayYearDataH  & """"
													%>
														
														<%   
																	''Dim vDollorValue,vDollorCAGR,vUnitsValue,vUnitsCAGR
																	vDollorValue = ""
																	vDollorCAGR=""
																	vUnitsValue=""
																	vUnitsCAGR=""
																	
																	Set RSGIAResearch_FeedBackUSER = Server.CreateObject("ADODB.Recordset")
																	GIAResearch_FeedBack_DataUSERQry="SELECT  ReportCode, eNcID, USD, Units, Segment, Region, Year, ODollorValue, DollorValue, ODollorCAGR, DollorCAGR, OUnitsValue, UnitsValue, OUnitsCAGR, UnitsCAGR, UpdatedDate, status FROM  GIA_Research_Feedback_Data WHERE  (Region = '"&Trim(RSRegions("Region_Country_Name"))&"') AND (ReportCode = '" & session("giacode") & "' or ReportCode = '" & giaid1 & "') and segment='"&Trim(RSSegments("Segment_Name"))&"' and year="&displayYearDataH&" and eNcID='"&request("encID")&"' and Email_ID='"&trim(session("EID"))&"'"
																	''response.write(GIAResearch_FeedBack_DataUSERQry)
																	RSGIAResearch_FeedBackUSER.CursorLocation=3 
																	RSGIAResearch_FeedBackUSER.Open GIAResearch_FeedBack_DataUSERQry, Conn7,1,2		
																															   
																	If Not RSGIAResearch_FeedBackUSER.EOF Then																	
																		''while not RSGIAResearch_FeedBack.EOF																		    
																			  vDollorValue =  RSGIAResearch_FeedBackUSER("DollorValue")
																			  vDollorCAGR= RSGIAResearch_FeedBackUSER("DollorCAGR")
																			  vUnitsValue = RSGIAResearch_FeedBackUSER("UnitsValue")
																			  vUnitsCAGR = RSGIAResearch_FeedBackUSER("UnitsCAGR")
																			RSGIAResearch_FeedBackUSER.MoveNext
																		''Wend
																		
																	End if
																
																	Set RSGIAResearch_FeedBackUSER = nothing
																	
																	%>
																	
                                    <tr>
                                        <td class="p-0 m-0">
                                            <table class="table m-0 p-0 w-100" id="simulator_table">
                                                <tbody>
                                                    <tr class="m-0 p-0">
                                                        <td>
                                                            <div class="d-flex flex-column justify-content-center">
                                                                <i class="mb-2"><%=displayYearDataH%></i>
                                                                <i class="mt-0">CLUSTER</i>
                                                            </div>

                                                        </td>

                                                        <td>
                                                            <div class="d-flex flex-xl-row flex-lg-row flex-md-row flex-sm-column    justify-content-center">
                                                                <input type='textbox' type="number" maxlength="6"  class="allow_decimal" value='<%=vDollorValue%>'  onkeypress="return isNumberKey(event,this)" id='txt<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>' name='txt<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>' size="3" value="<%=vDollorValue%>" placeholder="#####">
															
                                                                <span>
                                                                    <font>
																	<%If trim(ucase(Report_Purchase_status)) = "YES" Then%>
																		<% if trim(Currency_Exchange_Rate) <> "" then%>
																		[<%=round((RSSegments.fields(RecHValue1).value * cdbl(Currency_Exchange_Rate)),2)%>]
																		<%else%>
																		[<%=RSSegments.fields(RecHValue1).value%>]
																		<%end if%>
																	
																	<%End If%>
																	
																	
																	</font>
                                                                </span>
                                                            </div>
                                                            <div class="mt-1 cluster_number">
                                                               <%=cluster%>
                                                            </div>

                                                        </td>

                                                        <td>
                                                            <div class="w-100 d-flex flex-column">


																<div class="d-flex justify-content-start slider_block">
																	<div class="extra-controls percent_block">
																		<input type="text" class="js-input rank_input allow_decimal"  id="txtcagr1827-16USD2022_input" maxlength="4" onkeypress="return isNumberKey(event,this)" id='txtcagr<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>' name='txtcagr<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>' size="3" value="<%=vDollorCAGR%>" placeholder="##.#" />
																	</div>

																	<div class="range-slider simulator_rank_slider">
																		<input type="text" class="js-range-slider"
																			id="txtcagr1827-16USD2022" />
	
																	</div>
																</div>

																	<script>
																		var $range1827 = $("#txtcagr1827-16USD2022");
																		var $input1827 = $("#txtcagr1827-16USD2022_input");
																		var instance1827;
																		var min = 0;
																		var max = 100;
	
																		$range1827.ionRangeSlider({
																			skin: "big",
																			type: "single",
																			min: min,
																			max: max,
																			from: 50,
																			grid: true,
																			step: 0.5,
																			grid_num: 10,
	
																			onStart: function (data) {
																				$input1827.prop("value", data
																				.from);
																			},
																			onChange: function (data) {
																				$input1827.prop("value", data
																				.from);
																			}
																		});
	
																		instance1827= $range1827.data("ionRangeSlider");
	
																		$input1827.on("input", function () {
																			var val = $(this).prop("value");
	
																			// validate
																			if (val < min) {
																				val = min;
																			} else if (val > max) {
																				val = max;
																			}
	
																			instance1827.update({
																				from: val
																			});
	
																			$(this).prop("value", val);
																		});
																	</script>



                                                              
                                                                <span>
																	<%If trim(ucase(Report_Purchase_status)) = "YES" Then%>
                                                                    <font>[<%=round(RSSegments("cagr"),2)%>]</font>
																	<%End If%>
                                                                </span>
                                                           

                                                            <div class="mt-1 cluster_number">
                                                                <!-- ###-->
                                                            </div>

														</div>
                                                        </td>



                                                        <td>
                                                            <div class="d-flex flex-xl-row flex-lg-row flex-md-row flex-sm-column    justify-content-center">
                                                                <input type='textbox' type="number"  class="allow_decimal"   onkeypress="return isNumberKey(event,this)" id='txtUNITS<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>' name='txtUNITS<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>' size="3" value="<%=vUnitsValue%>" placeholder="#####">
                                                                <!--span><font>[10.67]</font></span-->
                                                            </div>
                                                            <div class="mt-1 cluster_number">
                                                                <!-- ###-->
                                                            </div>

                                                        </td>


                                                        <td>
                                                            <div class="w-100 d-flex flex-column">


																<div class="d-flex justify-content-start slider_block">
																	<div class="extra-controls percent_block">
																		<input type="text" class="js-input rank_input allow_decimal"  id="txtcagr1828-16USD2022_input" onkeypress="return isNumberKey(event,this)" maxlength="4" id='txtcagrUNITS<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>' name='txtcagrUNITS<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>' size="3" value="<%=vUnitsCAGR%>" placeholder="##.#" />
																	</div>

																	<div class="range-slider simulator_rank_slider">
																		<input type="text" class="js-range-slider"
																			id="txtcagr1828-16USD2022" />
	
																	</div>
															

																	<script>
																		var $range1828 = $("#txtcagr1828-16USD2022");
																		var $input1828 = $("#txtcagr1828-16USD2022_input");
																		var instance1828;
																		var min = 0;
																		var max = 100;
	
																		$range1828.ionRangeSlider({
																			skin: "big",
																			type: "single",
																			min: min,
																			max: max,
																			from: 50,
																			grid: true,
																			step: 0.5,
																			grid_num: 10,
	
																			onStart: function (data) {
																				$input1828.prop("value", data
																				.from);
																			},
																			onChange: function (data) {
																				$input1828.prop("value", data
																				.from);
																			}
																		});
	
																		instance1828= $range1828.data("ionRangeSlider");
	
																		$input1828.on("input", function () {
																			var val = $(this).prop("value");
	
																			// validate
																			if (val < min) {
																				val = min;
																			} else if (val > max) {
																				val = max;
																			}
	
																			instance1828.update({
																				from: val
																			});
	
																			$(this).prop("value", val);
																		});
																	</script>

<span>
	<%If trim(ucase(Report_Purchase_status)) = "YES" Then%>
	<font>[<%=round(RSSegments("cagr"),2)%>]</font>
	<%End If%>
</span>



                                                             

                                                                <!--span><font>[10.67]</font></span-->
                                                            </div>
                                                            <div class="mt-1 cluster_number">
                                                               <!-- ###-->
                                                            </div>

														</div>
                                                        </td>


                                                        <td>
                                                            <div class="mt-3">
                                                                <!--a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">

                                                                    ACTIVITY</a-->
																	<a class=""  data-toggle="collapse" href="#collapse<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>" role="button" aria-expanded="false" aria-controls="collapseExample">VIEW</a>
                                                            </div>

                                                        </td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                            <div class="activity_block  collapse" id="collapse<%response.write(RSSegments("Segment_ID")&""& RSRegions("List_ID")&""&MKTSize_Type)%><%=displayYearDataH%>">
											<%
																	
											Set RSGIAResearch_FeedBack = Server.CreateObject("ADODB.Recordset")
											GIAResearch_FeedBack_DataQry="SELECT  ReportCode, eNcID, USD, Units, Segment, Region, Year, ODollorValue, DollorValue, ODollorCAGR, DollorCAGR, OUnitsValue, UnitsValue, OUnitsCAGR, UnitsCAGR, UpdatedDate, status, firstname,lastname, CurrencyName, CurrencyUnits,a.email_ID FROM  GIA_Research_Feedback_Data a, [Globind1].[dbo].[User_Master] b WHERE a.eNcID=b.user_license_code and a.eNcID='"&trim(request("encID"))&"' and  (a.Region = '"&Trim(RSRegions("Region_Country_Name"))&"') AND (a.ReportCode = '" & session("giacode") & "' or a.ReportCode = '" & giaid1 & "') and a.segment='"&Trim(RSSegments("Segment_Name"))&"' and a.year="&displayYearDataH&""
											'response.write(GIAResearch_FeedBack_DataQry)
											RSGIAResearch_FeedBack.CursorLocation=3
											RSGIAResearch_FeedBack.Open GIAResearch_FeedBack_DataQry, Conn7,1,2		%>
                                                <table class="table p-0 m-0">
                                                    <thead>
                                                        <tr>
                                                            <th>USER</th>
                                                            <th><%if trim(ucase(Currency_Name)) <> "" then 
																			response.write (trim(ucase(currency_code))) 
																		else 
																			response.write ("USD")
																		end if%>&nbsp;
																		<%if trim(ucase(Currency_Units)) <> "" then 
																			response.write (trim(ucase(Currency_Units))) 
																		else 
																			response.write ("MILLION")
																		end if%></th>
                                                            <th>[%]</th>
                                                            <th><%if trim(ucase(Get_Units_Name)) <> "" then 
															response.write (trim(ucase(Get_Units_Name))) 
														else 
															response.write ("UNITS")
														end if%></th>
                                                            <th>[%]</th>
                                                        </tr>
                                                        <thead><tbody>
														<%If Not RSGIAResearch_FeedBack.EOF Then																	
															while not RSGIAResearch_FeedBack.EOF%>                                                            
                                                                <tr>
                                                                    <td><%=ucase(RSGIAResearch_FeedBack("Email_ID"))%></td>
                                                                    <td><%=RSGIAResearch_FeedBack("DollorValue")%> [<%=RSGIAResearch_FeedBack("CurrencyName")%> &nbsp; <%=RSGIAResearch_FeedBack("CurrencyUnits")%>]</td>
                                                                    <td><%=RSGIAResearch_FeedBack("DollorCAGR") %></td>
                                                                    <td><%=RSGIAResearch_FeedBack("UnitsValue")%></td>
                                                                    <td><%=RSGIAResearch_FeedBack("UnitsCAGR")%></td>
                                                                </tr>
                                                              <% RSGIAResearch_FeedBack.MoveNext
																Wend
																		 
														Else
															response.write "<tbody><tr><td colspan='5'>-- No peer activity present --</td></tr>"
														End if
																	
														Set RSGIAResearch_FeedBack = nothing%>
                                                        </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
									<%
													RecHValue1 = RecHValue1 + 1
													next%>	
								<!--- save & Update commented -->					
								<!--	<tr><td class="p-0 m-0 text-center py-3">
										<button type="button" class=" my-3 mx-auto btn_plan"  id="btnEqsubmit" name="btnEqsubmit" value="SUBMIT"  onClick="AddMultipleRecordstoDB('<%=RSSegments("Segment_ID")%><%=RSRegions("List_ID")%><%=MKTSize_Type%>','<%=Trim(RSRegions("Region_Country_Name"))%>','<%=RSSegments("segment_name")%>','<%=MKTSize_Type%>','<%=HStartYear%>','<%=HEndYear%>')">SAVE & UPDATE</button>											</td>											
																		
									</td></tr>-->
									
									
									<%	
											    vSeg_ID = Trim(RSSegments("Segment_ID"))	
											    GTDivID = GTDivID+1
												''RSSegments.MoveNext
												''Wend
											End If %>
                                </table>
                            </div>
							<% VpageLoopVal=trim(request("pageLoopVal"))
							if VpageLoopVal ="" then
								VpageLoopVal=1
							end if%>
							<div class="d-flex justify-content-around flex-wrap w-xl-40 w-lg-40 w-md-60 mt-3  mx-auto bottom_links ">
									<a href="javascript:AddMultipleRecordstoDB('<%=RSSegments("Segment_ID")%><%=RSRegions("List_ID")%><%=MKTSize_Type%>','<%=Trim(RSRegions("Region_Country_Name"))%>','<%=RSSegments("segment_name")%>','<%=MKTSize_Type%>','<%=HStartYear%>','<%=CF_EndYear%>','<%=trim(VpageLoopVal)%>');Add_Ancillaries2('<%=trim(request("stype"))%>','<%=trim(request("gregion"))%>','<%=trim(request("YearType"))%>','<%=trim(request("getDATA"))%>','<%=trim(VpageLoopVal)%>');" class=" btn btn-gia-primary rounded-0 shadow p-2 my-3 text-white bt-5">SAVE & NEXT</a>
									</div>
							<%
										End If
										
										%>
										</table>
                            </div>
							
	<!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
									<%
									''''END THE RSSegments MOVENEXT (DISPLAY ONLY ONE REGION)
									''RSRegions.MoveNext 
									''Wend
									''''''''''''''''''''''''''''''''''''''''''''''''''''''''''%>
								  
							</div>
							</section>
						<%End If%>
						<section>		
                            <div id="main">
<form name="frmadd" method="post" action="GIA_Research_Feedback.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>&gregion=<%=trim(request("gregion"))%>&stype=<%=trim(request("stype"))%>&YearType=<%=trim(request("YearType"))%>&getDATA=<%=trim(request("getDATA"))%>&type=submit">
							 <div class="d-flex justify-content-around flex-wrap w-xl-40 w-lg-40 w-md-60 mt-3  mx-auto bottom_links ">
									<!--<a href="javascript:Add_Ancillaries2('<%=trim(request("stype"))%>','<%=trim(request("gregion"))%>','<%=trim(request("YearType"))%>','<%=trim(request("getDATA"))%>','<%=trim(request("pageLoopVal"))%>');" class=" btn btn-gia-primary rounded-0 shadow p-2 my-3 text-white bt-5">SAVE & NEXT</a>-->
									<!--<a href="https://www.strategyr.com/GIA_Research_collaborate.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>" class="bt-2" target="_new">COLLABORATE</a>-->
                                    <!--<a her="" class="  bt-1">SAVE & UPDATE</a>
									<a type="submit" class=" bt-2"  id="btnEqsubmit" name="btnEqsubmit" value="SUBMIT"onsubmit="return CheckAddData();">SUBMIT FINAL</a>
									<a class="  bt-3 " href="#alert" rel="modal:open">ALERTS</a>
                                
                                    <a href="#feedback_pop" rel="modal:open" class="  bt-1">FEEDBACK </a>
                                    <a href="https://www.strategyr.com/GIA_Research_collaborate.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>" class="bt-2" target="_new">COLLABORATE</a>
									
                                    <a class="    bt-3" data-toggle="collapse" href="#stats" role="button" aria-expanded="false" aria-controls="collapseExample">STATS</a>-->
                                </div>
</form>
                                <div class="row collapse border stats_block" id="stats" data-parent="#main" data-parent="#main">
                                    <div class="p-3">
                                        <h2 align="center" class="font-weight-bold font-size-20 py-2 border-bottom text-center primary_color ">STATS</h2>
                                        <div class="d-flex flex-xl-row flex-lg-row flex-md-column flex-sm-column ">
                                            <div class="w-xl-50 w-lg-50 w-md-100 w-sm-100 my2">
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
                                                                    <td><%=trim(RSStatsList("Peer-to-Peer_Project_2020"))%></td>
                                                                    <td><%=trim(RSStatsList("Peer-to-Peer_Platform_2020"))%></td>
                                                                </tr>
                                                                <tr>

                                                                    <td>2021</td>
                                                                    <td><%=trim(RSStatsList("Peer-to-Peer_Project_2021"))%></td>
                                                                    <td><%=trim(RSStatsList("Peer-to-Peer_Platform_2021"))%></td>
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
                                                                    <td><%=trim(RSStatsList("Companies_Engaged_Project_2020"))%></td>
                                                                    <td><%=trim(RSStatsList("Companies_Engaged_Platform_2020"))%></td>
                                                                </tr>
                                                                <tr>

                                                                    <td>2021</td>
                                                                    <td><%=trim(RSStatsList("Companies_Engaged_Project_2021"))%></td>
                                                                    <td><%=trim(RSStatsList("Companies_Engaged_Platform_2021"))%></td>
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
                        <p class="text-center"> Please give your valuable feedback</p>

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
                <h3 align="center" class="font-weight-bold font-size-20 py-2 border-bottom text-center primary_color ">ALERT</h3>

                <div class="my-2">
                    <!--p align="left">Request a Global Expert Panel Registry. </p-->
                    <p style="font-size:15px !important" class="text-darker">Receive activity alerts for project updates by email and in mobile app </p>
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
                        <input data-brackets-id="206492" type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="MILLION" style="margin-top:2px" checked="">&nbsp;Month&nbsp;&nbsp;

                        <input data-brackets-id="206492" type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="MILLION" style="margin-top:2px" checked="">&nbsp;Quarter
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
								<input class="form-check-input" type="checkbox" name="AddNewCountry<%=RSAPCountry("region_country_name")%>" id="AddNewCountry<%=RSAPCountry("region_country_name")%>" value="<%=RSAPCountry("region_country_name")%>">
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
            <hr>
        </div>
        <div class="row text-center mb-0">
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow" onClick="addNewRegion();">ADD COUNTRY</button>
            <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
        </div>
    </div>



    <!----EUROPE--->
    <div id="EUROPE" class="modal">
        <div class="row m-0 ">
            <h3 align="center" class="font-weight-bold font-size-20 py-2  text-center primary_color "> SELECT COUNTRY </h3>

            <hr>
            <div class="d-flex flex-wrap justify-content-center justify-content-md-between">
				<%''select * from REPORTS_GSA_REGIONS$  SELECT * FROM GIA_REGIONS_COUNTRIES$
					CountryQryE = "select country_name as region_country_name,region,sno as list_id from GIA_Analytix.dbo.GIA_REGIONS_COUNTRIES$ where region='Europe' and country_name not in (select distinct country_name from REPORT_COUNTRIES_ANALYTIX$ where gia_no='"& session("giacode") &"')"
					Set RSECountry = Server.CreateObject("ADODB.Recordset")
				    RSECountry.Open CountryQryE, Datasource7					
					If Not RSECountry.EOF Then %> 					
					
					
						<% while not RSECountry.EOF%>
							
							  <div class="form-check form-check-inline px-2 w-sm-100 w-md-50 w-lg-50 w-xl-50 d-flex ">
								<input class="form-check-input" type="checkbox" name="AddNewCountry<%=RSECountry("region_country_name")%>" id="AddNewCountry<%=RSECountry("region_country_name")%>" value="<%=RSECountry("region_country_name")%>">
								<label class="form-check-label" for="<%=RSECountry("region_country_name")%>"><%=RSECountry("region_country_name")%>
									
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
            <hr>
        </div>
        <div class="row text-center mb-0">
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow">ADD COUNTRY</button>
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
								<input class="form-check-input" type="checkbox" name="AddNewCountry<%=RSLACountry("region_country_name")%>" id="AddNewCountry<%=RSLACountry("region_country_name")%>" value="<%=RSLACountry("region_country_name")%>">
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
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow">ADD COUNTRY</button>
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
								<input class="form-check-input" type="checkbox" name="AddNewCountry<%=RSMECountry("region_country_name")%>" id="AddNewCountry<%=RSMECountry("region_country_name")%>" value="<%=RSMECountry("region_country_name")%>">
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
            <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow">ADD COUNTRY</button>
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
				
				
                <div class="btn-group w-100">

                    <div class="form-group d-flex justify-content-center w-100">

                        <span class="d-sm-none">SEGMENT NAME:</span>&nbsp;<input type="textbox" class="form-control p-1" aria-describedby="emailHelp" placeholder="ADD SEGMENT" id='txtSegment' name='txtSegment' >
                        <div>

                            <button type="button" class="btn  p-1 rounded-0 dropdown-toggle dropdown-toggle-split text-white " id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent" style="background:#e37038;height:29px;width:29px;border-radious:0px!important;">
                                <span class="sr-only">Select type</span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
								<%If Not RSSegmentsType.EOF Then
									while not RSSegmentsType.EOF%>
                                <!--<a class="dropdown-item" href="#"><%'=RSSegmentsType("Type")%></a>-->
									<div class="p-1 ">
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
                    </div>



                </div>

            </div>
            <hr>
        </div>
        <div class="row text-center mb-0 text-sm-center text-md-center text-lg-center text-xl-center">
            <button class="btn btn-gia-primary btn-sm mx-2 my-1 rounded-0 shadow" onClick='addNewSegment()'>ADD</button>
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
</html>
