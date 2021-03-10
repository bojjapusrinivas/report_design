<%@ LANGUAGE="VBScript" %>
<!--#include file="adovbs.asp"-->
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ASPIncludes/SendEmail.asp"-->
<!--#include file="ASPIncludes/SiteFunctions.asp"-->
<!--#include file="aspincludes/md5.asp"-->

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<%
''if trim(Request.ServerVariables("http_referer"))="" then
''	Response.Redirect "https://www.strategyr.com"
''end if
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
newcode = Trim(request("code"))
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

''''''https://www.strategyr.com/GIA_Research_Feedback.asp?code=MCP-7925&encID=FE471CA7EA&sname=BFSI&cname=Russia

'''' SEGMENT NAME
If trim(sname)<>"" then
	 session("sname") = Trim(request("sname"))
End If

'''' COUNTRY NAME
If trim(cname)<>"" then
	 session("cname") = Trim(request("cname"))
End If

If session("UserID") = "" then

	session("UserID") = "5967"
End If

If Trim(session("UserID")) ="" then
   response.redirect "https://www.strategyr.com/GIA_Research_Collaborate.asp?code="&Trim(request("code"))&"&SessOUT=True"
End If

Dim isNTCnt
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

''response.write(session("isMCP"))
Function Selected(val1,val2)
	IF trim(val1) = trim(val2) then
		Selected = "Selected"
	else
		Selected = ""
	End IF
END Function
Function SelectRadio(val1,val2)
  'response.write (val1 & "  " & val2)
  'response.write ("Test")
  'response.end
	IF trim(val1) = trim(val2) then
		SelectRadio = " checked"
	else
		SelectRadio = ""
	End IF
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

	
%>

<%''''''''REGISTRATION PROCESS FOR THE INFLUECENRS LIST'''''''''''''''%>

<!--#include file="GIA_Influencer_Login.asp"-->

<%'''''''''''''''''''END OF THE PROCESS ''''''''''''''''''''''''''''''%>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>LICENSED REPORT FEEDBACK - Global Industry Analysts, Inc.</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/gia.css">
<link rel="stylesheet" href="css/colors/blue.css" id="colors">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel='stylesheet' href="css/all-ie-only.css">
<link rel='stylesheet' href="css/tri_page.css">
<link rel='stylesheet' href="css/self_man_style.css">
<SCRIPT  src="ASPIncludes/validations_new.js"></SCRIPT>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.6.4.min.js"></script>
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="all-ie-only.css" />
<![endif]-->

<link rel='stylesheet' href="css/gia_switches.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/wedges_effect.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <link rel="stylesheet" href="css/simulator_styles2.css" />
    <link rel="stylesheet" href="css/input_style.css" />	
    <link rel="stylesheet" href="css/example-styles.css" />
	<link rel="stylesheet" href="css/labels.css" />


<!-- Java Script
================================================== -->
<script src="scripts/jquery.min.js"></script>
<script src="scripts/jquery.flexslider.js"></script>
<script src="scripts/jquery.selectnav.js"></script>
<script src="scripts/jquery.twitter.js"></script>
<script src="scripts/jquery.modernizr.js"></script>
<script src="scripts/jquery.easing.1.3.js"></script>
<script src="scripts/jquery.contact.js"></script>
<script src="scripts/jquery.isotope.min.js"></script>
<script src="scripts/jquery.jcarousel.js"></script>
<script src="scripts/jquery.fancybox.min.js"></script>
<script src="scripts/jquery.layerslider.min.js"></script>
<script src="scripts/jquery.shop.js"></script>
<script src="scripts/custom.js"></script>
<script src="resize_img/jquery.lazy.js"></script>
<script src="resize_img/jquery.lazy.plugins.js"></script>
<script>
$(function() {
        $('.lazy').Lazy();
    });
            

</script>
<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>

function ValidateEmail(mail) 
{ 
		//$("#txtCountColleague").val(); 
		//alert(mail);		   
     var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if (reg.test(mail) == false) 
        {
            alert('Invalid Email Address');
            return false;
        }
      return true;	  
}

$(document).ready(function(){

    var rowval=$("#txtCountColleague").val();     
    $("#txtCountColleague").val(rowval);

 /*$(".allow_numeric").on("input", function(evt) {
   var self = $(this);
   self.val(self.val().replace(/[^\d].+/, ""));
   if ((evt.which < 48 || evt.which > 57)) 
   {
     evt.preventDefault();
   }
 });*/

 $(".allow_decimal").on("input", function(evt) {
   var self = $(this);
   self.val(self.val().replace(/[^0-9\.]/g, ''));
   if ((evt.which != 46 || self.val().indexOf('.') != -1) && (evt.which < 48 || evt.which > 57)) 
   {
     evt.preventDefault();
   }
 });

});


function createNew() {
	//$("#add-more").hide();
   //alert(rowval);

   var rowval=$("#txtCountColleague").val();  
   rowval = parseInt(rowval) + 1;
    $("#txtCountColleague").val(rowval);
	
       var data = '<tr class="table-row"><td colspan="7" style="font-size:14px;color:#0080C2;">Add Colleague #'+rowval+'</td></tr><tr class="table-row" id="table-row-'+rowval+'"><td width="30%" align="right">&nbsp;</td>'+
       '<td width="30%" align="right">First&nbsp;Name&nbsp;&nbsp;</td><td width="70%" align="left">'+
	   '<input type="text" id="txt'+rowval+'FName" name="txt'+rowval+'FName" value="<%=Trim(Trim(vtxt1FName))%>"></td>'+
	   '<td width="30%" align="right">Last&nbsp;Name&nbsp;&nbsp;</td><td width="70%" align="left">'+
	   '<input type="text" id="txt'+rowval+'LName" name="txt'+rowval+'LName" value="<%=Trim(request("txtName"))%>"></td>'+
	   '<td width="30%" align="right">Email&nbsp;</td><td width="70%" align="left">'+
	   '<input type="text" id="txt'+rowval+'Email" name="txt'+rowval+'Email" value="<%=Trim(request("txtEmail"))%>"></td>'+
	   '<td align="right" valign="middle"><button type="button" name="Add_Colleague" class="button1" onClick="addToDatabase('+rowval+');" value="Add a Colleague" style="width:140px;">ADD COLLEAGUE</button></td></tr>';
       $("#table-body").append(data);	
}

function cancelAdd() {
	$("#add-more").show();
	//$("#new_row_ajax").remove();
}
function editRow(editableObj) {
  $(editableObj).css("background","#FFF");
}
</script>
<script>

function addToDatabase(i)
{	

	var vtxtFName=$("#txt"+i+"FName").val();
	var vtxtLName=$("#txt"+i+"LName").val();
	var vtxtEmail=$("#txt"+i+"Email").val();	
				
	if (vtxtFName!='') 
	{  	
		
		if (vtxtEmail == '')
				{ 
					$("#txt"+i+"Email").focus();
					alert("Email Address cannot be left blank!");
					return false;
				}
				else
				{
				   z=1;								 
				}
		}

		if (vtxtLName != '')
		{ 
			  if (vtxtEmail == '')
				{  
					$("#txt"+i+"Email").focus();
					alert("Email Address cannot be left blank!");
					return false;
				}
				else
				{
				   z=1;									 
				}
		}

		if (vtxtEmail != '')
		{ 
		   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			if (reg.test(vtxtEmail) == false) 
			{
				$("#txt"+i+"Email").focus();
				alert('Invalid Email Address');
				return false;
			}
		}
	  
				
		if ((vtxtFName!= '') && (vtxtEmail!= ''))							  
		{    
		 // alert(i);
		   $.ajax({
			url: "ResearchProgramGIA/Ajax_EnterpriseEmails.asp",
			type: "POST",
			data:'vtxtFName='+encodeURIComponent(vtxtFName)+'&vtxtLName='+encodeURIComponent(vtxtLName)+'&vtxtEmail='+encodeURIComponent(vtxtEmail)+'&i='+i+'',
			success: function(data){
			//alert(data);			  
			 $("#table-body").append(data);
			alert("Saved");
			// window.location='GIA_Marketdata_Standardization.asp?code=<%=request("code")%>'
			},
			error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr.status);
			alert(thrownError);
			alert(xhr.responseText);
			}
		  });
		  return true;
		
		}
		else
		{
		  alert("Please Invite a Colleague/Values cannot be left blank!");
		}

	   //// ajax end
}
</script>

<script>
function deselect(e) {
  $('.pop').slideFadeToggle(function() {
    e.removeClass('selected');
  });    
}
function deselect1(e) {
  $('.pop1').slideFadeToggle(function() {
    e.removeClass('selected');
  });    
}

$(function() {
  $('#contact').on('click', function() {
    if($(this).hasClass('selected')) {
      deselect($(this));               
    } else {
      $(this).addClass('selected');
      $('.pop').slideFadeToggle();
    }
    return false;
  });

  $('.close').on('click', function() {
    deselect($('#contact'));
    return false;
  });
});
$(function() {
  $('#contacts').on('click', function() {
    if($(this).hasClass('selected')) {
      deselect($(this));               
    } else {
      $(this).addClass('selected');
      $('.pop1').slideFadeToggle();
    }
    return false;
  });

  $('.close').on('click', function() {
    deselect1($('#contacts'));
    return false;
  });
});
$.fn.slideFadeToggle = function(easing, callback) {
  return this.animate({ opacity: 'toggle', height: 'toggle' }, 'fast', easing, callback);
};
</script>

<script language=javascript>

function validateform()
	{
		var o;
		o = document.frmGRP1;
		
		//document.frmGRP1.FirstName.value
		
			
			
			if (document.frmGRP1.FirstName.value=="")
			{
				alert("First Name cannot be empty");
				document.frmGRP1.FirstName.focus();
				return false;
			}
			       
				
				  	
		else 
		{
			return true;
		}
		//////////////
	}
</script>

<script>

         $(document).ready(function () {
                $('#Curated1').click(function () {
                       $('#ECDiv').show('fast');                      
                });
                $('#Curated2').click(function () {
                      
                      $('#ECDiv').hide('fast');
                 });
               });
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('#select_all').on('click',function(){
        if(this.checked){
            $('.checkbox').each(function(){
                this.checked = true;
            });
        }else{
             $('.checkbox').each(function(){
                this.checked = false;
            });
        }
    });
    
    $('.checkbox').on('click',function(){
        if($('.checkbox:checked').length == $('.checkbox').length){
            $('#select_all').prop('checked',true);
        }else{
            $('#select_all').prop('checked',false);
        }
    });
});
</script>

<style>
body, span{
	font-size:14px !important;
}

</style>

</head>
<body >
<!-- Wrapper / Start -->
<div id="wrapper" class="bor-radius">
<div id="top-line" style="box-shadow:none; height:5px; padding:5px 0px; z-index:1"></div>
<!-- Content
================================================== -->
<div class="container flo">   
  <!-- Header -->
    
    <!-- Logo start -->   
      <!-- Logo end -->
			<% 
			Function RndPasswordGEN()  
 
			  For x=1 To 10
				Randomize
				vChar = Int(89*Rnd) + 33
				If vChar = 34 Then 'this is quote character, replace it with a single quote
				  vChar = 40
				End if

				RndPasswordGEN = RndPasswordGEN & Chr(vChar)
			  Next

			End Function
			
			Function GetNewGenPassword()
					Dim intMax, iLoop, k, intValue, strChar, strName, intNum

					' Specify the alphabet of characters to use.
					Const Chars = "abcdefghijklmnopqrstuvwxyz#$%@"

					' Specify length of names.
					intMax = 6

					' Specify number of names to generate.
					intNum = 1

					Randomize()
					For iLoop = 1 To intNum
						strName = ""
						For k = 1 To intMax
							' Retrieve random digit between 0 and 29 (26 possible characters).
							intValue = Fix(30 * Rnd())
							' Convert to character in allowed alphabet.
							strChar = Mid(Chars, intValue + 1, 1)
							' Build the name.
							strName = strName & strChar
						Next

					' Number of Integers can be specified here

						GetNewGenPassword = strName & Int( ( 7789 - 7 + 889 ) * Rnd + 999 )
					Next 
			
			End Function
			
		'''response.write GetNewGenPassword()
			dim rcode
					''' If the form is submitted
					''' btnsubmit" value="Let`s get started!"		
			''' CHECK TO SEE IF WE HAVE NEW REPORT OR OLD REPORT (mcp-1001) OR (MCP10001)
			Set Conn = Server.CreateObject("ADODB.Connection")
			Set RS = Server.CreateObject("ADODB.Recordset")
			Conn.Open DataSource
			SQLrptGIA="select code,newcode,title,dop,completed,market_data_tables,companies from stat_globind.dbo.MCPNewTopic where newcode='" & newcode & "'"
			''''response.write SQLrptGIA
			Set RSRex = Server.CreateObject("ADODB.Recordset")
			RSRex.Open SQLrptGIA, Con
			If Not RSRex.EOF Then
				code=RSRex("code")
				completed=RSRex("completed")
				giaNo = Trim(RSRex("newcode"))
				title = UCase(Trim(RSRex("title")))
				strReportTitle = Trim(RSRex("title"))
	
				'''pages = Trim(RSRex("pages"))
				
				companies = Trim(RSRex("companies"))
				datatables =RSRex("market_data_tables")
				ReleaseDate = Trim(RSRex("DOP"))
				'response.write companiescount
				session("ReportTitle") = UCase(Trim(RSRex("title")))
			end if
			Dim RPTCodeGIA
			If trim(code)<>"" then
				RPTCodeGIA = Trim(code)
			Else
				RPTCodeGIA = Trim(request("code"))
			End If
			
			''response.write giaNo
			Dim UserMSG
			UserMSG = ""
			If trim(request("SRCAdd"))="license" Then
					UserMSG = "<font color='green'><b>Report License request added successfully!</b></font>"
			End If
			
            if trim(request("btnsubmit"))="COLLABORATE" then
			
					'''' GENERATE A RANDOM PASSCODE
					dim getRDMPassword
					getRDMPassword = GetNewGenPassword()
					'''' CHECK to see if the same user exists for the same report ID
					
					Set MyCon = Server.CreateObject("ADODB.Connection")		
					MyCon.Open DataSource1
					sname=request("DDlSegmentsList")
					RecChkSQL = "SELECT * FROM App_User_Collaborate WHERE Email_ID ='"&trim(request("CHKemail"))&"' and Report_ID='"&trim(request("code"))&"' and Source_Email_ID='" & session("EID") & "'"    
					Set RecChkRS = Server.CreateObject("ADODB.Recordset")
					RecChkRS.Open RecChkSQL, MyCon	
					If not RecChkRS.EOF Then
						Dim USRsegment_name, USRRegion_Name, USRCollaborate_Password
						USRsegment_name = trim(RecChkRS("segment_name"))
						USRRegion_Name = trim(RecChkRS("Region_Name"))
						USRCollaborate_Password = trim(RecChkRS("Collaborate_Password"))
						If trim(USRCollaborate_Password)="" Then
							updateCsql="Update Globind1.dbo.App_User_Collaborate set segment_name='" & sname & "',Region_Name='" & request("REGION") & "',Collaborate_Password='"&getRDMPassword&"'  WHERE Email_ID ='"&trim(request("CHKemail"))&"' and Report_ID='"&trim(request("code"))&"' and Source_Email_ID='" & session("EID") & "'"    
							conn.execute updateCsql
							''''response.write inseQsql
						Else
							updateCsql="Update Globind1.dbo.App_User_Collaborate set segment_name='" & sname & "',Region_Name='" & request("REGION") & "'  WHERE Email_ID ='"&trim(request("CHKemail"))&"' and Report_ID='"&trim(request("code"))&"' and Source_Email_ID='" & session("EID") & "'"    
							conn.execute updateCsql
							getRDMPassword = USRCollaborate_Password
						End If
							response.write ("<p align='center'><br/><br/><b><font color='green'>Email has been sent to "&trim(request("CHKemail"))&" successfully!</font></b><br/>")%>
							<a href="Ancillaries_1.asp?code=<%=request("code")%>&encID=<%=request("encID")%>" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-25 mb-5 mt-3 w-md-15 w-lg-15 my-1  mx-2 rounded-0 shadow">BACK</a><br/></p>
							
							<%UserMSG = "<font color='green'><b>Person invited successfully!</b></font>"
							''' CREATE AN EMAIL TO THE User
							dim UserLink
							''''UserLink1 = "https://www.strategyr.com/Get_Report_Feedback.asp?code='"&trim(request("code"))&"'&gregion='"&trim(request("REGION"))&"'&chapter_no=3"
							UserLink = "https://strategyr.com/Collaborate_SignIn.asp?code="&trim(request("code"))&"&emailID="&trim(request("CHKemail"))&""
							
							client = trim(request("CHKemail"))
							fromClient = trim(session("EID"))
													
							MessageBody = MessageBody & "<font face='verdana' size='2'>Hello "&trim(RecChkRS("First_Name")) & "  "&trim(RecChkRS("Last_Name")) & ",</b><br></font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2'>Please check the collaborate option for the research from StrategyR. </font><br>"
							''MessageBody = MessageBody & "<font face='verdana' size='2'>Please note your details -<br></font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2' color='#852c3c'>Email ID: " & trim(request("CHKemail")) & "</font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2' color='#852c3c'>Code: " & trim(getRDMPassword) & "</font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2' color='#852c3c'>Link: https://strategyr.com/Collaborate_SignIn.asp</font><br><br>"
							
							
							MessageBody = MessageBody & "<font face='verdana' size='2'>We look forward to serving you! </font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2'>If you have further questions about our program, please don't hesitate to contact the Research Support Desk by email at info411@StrategyR.com.<br></font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2'>Sincerely,</font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2'>User Admin</font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2'>Global Industry Analysts, Inc.</font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2'>https://www.strategyr.com</font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2'>E: privacy@strategyr.com (24/5)</font><br>"
							MessageBody = MessageBody & "<font face='verdana' size='2'>P: 408-528-9966 (8 AM to 5 PM PST Weekdays)</font><br>"
							call sendemail1(fromClient,client,"Research program collaborate on StrategyR Research Portal",MessageBody)
							call sendemail1(client,"srinivas@strategyr.com","Research program colaborate on StrategyR Research Portal",MessageBody)
							
							''response.write MessageBody
							MessageBody = ""
							response.end
					Else
						
						response.write ("<p align='center'><b><font color='red'>This Person has been invited before.</font></b></p>")
						UserMSG = "<font color='red'>This Person has been invited before.</font></b>"
					End If
					Set RecChkRS = Nothing
					Set MyCon = Nothing
			end If
			set conn = nothing
			%><br>
				
		<!-- <div class="sixteen columns">
      <p class="user_name"> Welcome <%=uname%></p>
    </div>-->
   
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
	<!--#include file="Lables_new.asp"-->
  <!-- Header / End --> 
  
				
</div>

<div class="container flo"> 
  <!-- Page Content -->
  <div class="page-content"> 
    <!-- 960 Container -->
    <div class="container"> 
      <!-- Texts -->
      <div class="w-xl-85 w-lg-85 w-md-95 w-sm-100 mx-auto" >
        
        <div class="row">

		<%
		'response.write "HI"
		''response.write trim(session("UserID"))
		'response.end
		IF Trim(session("security_code"))<>"" THEN
						''response.write "LOGOUT"
						'' send mail to sales@strategyr.com and rsd@strategyr.com , Subject: Interested in Research Partnership Program.
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3
					
						SQL9="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; SELECT UserId,user_SurName,LastName,firstname,user_company,address1 +' '+ Address2 +' '+ city +' '+ state +' '+ zip as Address,country,user_website,telephone,fax,jobfunction,user_position,CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID FROM [user_master] WHERE security_code='" & session("security_code")& "'"

						''response.write SQL9
						rs9.open sql9, conn9
						if not rs9.eof then
							company = trim(rs9("User_company"))
							address = trim(rs9("address"))
							country = trim(rs9("country"))
							url = trim(rs9("user_website"))
							phone = trim(rs9("telephone"))
							fax = trim(rs9("fax"))
							JobFunction = trim(rs9("JobFunction"))
							userposition= trim(rs9("user_position"))
							First_Name = trim(rs9("firstname"))
							Last_Name = trim(rs9("LastName"))
							Session("First_Name")=First_Name
							Session("Last_Name")=Last_Name
							Session("company")=company
							
							session("EID")=trim(rs9("emailid"))
							session("UserID") = trim(rs9("UserId"))
							'''response.write ("HI")
						else
							company = "-"
							address = "-"
							country = "-"
							url = "-"
							phone = "-"
							fax = "-"
							JobFunction = "-"
							userposition= "-"
							First_Name = "-"
							Last_Name = "-"
						end if
						
						if trim(First_Name)<>"" then
							uname = Trim(First_Name) & " " & Trim(Last_Name)
						else
							uname = "New User"
						end if
						set rs9 = nothing
						set conn9 = Nothing
						
						
						daydisplay=WeekDayName(Weekday(Now())) & ","
						%>
						
						
					 <div class="w-100  text-center  modules_page_title text-center"> <h3 >LICENSED REPORT COLLABORATION </h3></div>
					 <div class="row py-1 bg-white"  style="text-align:center">
       
	<h3 style="font-weight:bold; line-height: 23px;"><span style="font-weight:bold;color:#900 !important;" class="m-1">Please check any segment/region to collaborate with your colleague <%=trim(request("CHKemail"))%></span></h3>

    </div>
	<form name="frmcreate" method="post">
					  <table class="w-100">
					  <!--tr><td><div class="four columns mb-1 mx-0" style="text-align:left"> <input type="checkbox"  id="select_all"><b>Check Full Report</b></div></td></tr-->
					<tr class="border-bottom pb-2" style="margin-bottom: 15px !important;display: block;" >
	<td  nowrap colspan="2"  style=" " class="LClass">
	<div class="w-100 mb-2">
		<h4 class="m-0 font-weight-bold" style="font-size: 16px !important;color: #900; !important"> <font color='#9B0004'>*</font> SEGMENT:</h4>
    </div>	
   <div class="d-flex justify-content-start flex-wrap w-100 flex-sm-column">	                                      
		<%Set RSSegmentsList = Server.CreateObject("ADODB.Recordset")
			''	If session("isMCP") = "N" then
					''SegmentsListQry="select * from vwReports_GIA_Segments$ where GIA_No='" & session("giacode") & "'"
					SegmentsListQry="select SegmentID as Segment_ID, Name from vwReports_GIA_Segments$ where GIA_No='" & request("code") & "' and Name not like 'Other %' "

			'	Else
			'	   '' SegmentsQry="select * from vwReports_GIA_Segments$ where CODE='MCP-1001'"	
			'	   SegmentsListQry="select sno as Segment_ID,CompanyName as [Name] from GIA_Analytix.dbo.GetGIACompaniesList('"&Segment_List&"')"
			''	End if	
				Set Conn7 = Server.CreateObject("ADODB.Connection")
				Set RSRegions = Server.CreateObject("ADODB.Recordset")
				Conn7.Open Datasource7
				''RSSegmentsList.CursorLocation=3 
				''response.write SegmentsListQry
				RSSegmentsList.Open SegmentsListQry, Conn7 '',1,2
				''response.write SegmentsListQry
				if Trim(request("DDlSegmentsList")) <> "" then
					segmentname= Trim(request("DDlSegmentsList"))
				else
					segmentname= Trim(request("sname"))
				end if
				%>
				<!--<select name="DDlSegmentsList" id="DDlSegmentsList"  onchange="toggle1()">
				<option value="">--select--</option>-->
				
				<%If Not RSSegmentsList.EOF Then
				 while not RSSegmentsList.EOF%> <div class=" ml-0 mr-5 mb-1" style="text-align:left"> 
				 <input type="checkbox" name="DDlSegmentsList" id="DDlSegmentsList" <%=checked_STR(Trim(segmentname),Trim(RSSegmentsList("Name")))%>   value="<%=Trim(RSSegmentsList("Name"))%>"><span> <%=RSSegmentsList("Name")%></span></div>
			   <!--	<option <%'=Selected(Trim(request("DDlSegmentsList")),Trim(RSSegmentsList("Name")))%> value="<%'=Trim(RSSegmentsList("Name"))%>"> <%'=RSSegmentsList("Name")%> </option> -->
			<%
					RSSegmentsList.MoveNext
					Wend
					End If 
			
					 %>
				<!--</select>-->
				<%
				Set RSRegions = Nothing
				Set RSSegmentsList = Nothing
				
				
				''''ADD THE ADDED SEGMENTS FOR THE USER from TABLE: GIA_Research_Feedback_Segments (ReportCode,eNcID,Segment,UpdateDate,Status)
				SegmentsListQry1="select  Segment as Name from GIA_Research_Feedback_Segments where ReportCode='" & trim(session("giacode")) & "' and eNcID='"&trim(request("encID"))&"' and Segment not like 'Other %' "
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
				 while not RSSegmentsList.EOF%> <div class=" ml-0 mr-5 mb-1" style="text-align:left"> 
				 <input type="checkbox" name="DDlSegmentsList" id="DDlSegmentsList" <%=checked_STR(Trim(segmentname),Trim(RSSegmentsList("Name")))%>   value="<%=Trim(RSSegmentsList("Name"))%>"><span> <%=RSSegmentsList("Name")%></span></div>
			   <!--	<option <%'=Selected(Trim(request("DDlSegmentsList")),Trim(RSSegmentsList("Name")))%> value="<%'=Trim(RSSegmentsList("Name"))%>"> <%'=RSSegmentsList("Name")%> </option> -->
			<%
					RSSegmentsList.MoveNext
					Wend
					End If 
			
					 %>
				<!--</select>-->
				<%
				Set RSSegmentsList = Nothing
				  ''''''''''''''' %>
	</td></tr>
	
	
</div>
	<!--================Region display------------------------------------------>
	<!--tr><td><hr/></td></tr-->

<tr>
	<td  nowrap colspan="2"   class="LClass">
	<div class="w-100 mb-1">
	  <h4 class="m-0 font-weight-bold" style="font-size: 16px !important;color: #900; !important"><font color='#9B0004'>*</font> REGION/COUNTRY:</h4>
	</div>
	<div class="w-100">
		<% CountryQry="select distinct country_name,[dbo].[GetRegionbyCountryname](country_name) as region_name from GIA_Analytix.dbo.vw_Report_Countries_AnalytixConsolidate$_cust where gia_no='"& session("giacode") &"' order by region_name"
			''response.write CountryQry
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

                                <!--Asia Specific--->
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
									</div>
									<div class="row mb-0 ">
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
									<div class="d-flex justify-content-start flex-wrap w-100 flex-sm-column send_collaborate_list_block">
									<%End If%>
										
                                        <div class="ml-0 mr-5 mb-1 mt-2 send_collaborate_list" style="font-size: 14px; text-align:left;float:left;">
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
					
                    <!----Begin: REGION/COUNTRY:--->
					
					<%''''ReportCode,eNcID,Region,UpdateDate,Status
							CountryQryUSER="select Region, country_name from GIA_Research_Feedback_Region where ReportCode='"& session("giacode") &"' and eNcID='"&trim(request("encID"))&"'"
							''response.write CountryQry
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
							If Not RSCountryUSER.EOF Then %> 
							<!--<section>
								<div class="row mx-0  mb-2  mt-2 px-lg-3 px-sm-0 px-md-2 px-xl-3">-->
							<!----REGION USER ADDED--->
							
									<!--<div class="left_column">
										<h4 class="mt-1"> REGION:USER ADDED</h4>
									</div>-->
									<div class="right_column  py-2">
									<% while not RSCountryUSER.EOF%>									
									<!--	<div class="five column mb-1" style="text-align:left">
											<input type="checkbox" name="REGION" id="REGION" <%=checked_STR_Other(Trim(cname),Trim(RSCountryUSER("country_name")))%>  value="<%=Trim(RSCountryUSER("country_name"))%>"><span class="success_color"> <%=RSCountryUSER("country_name")%> [<%=RSCountryUSER("region")%>]</span>
										</div>-->
									<%RSCountryUSER.MoveNext
										Wend%>
							<!--	</div>		
								</div>
							</section>-->
							<%	end if%>
	
	
	</table><br>
				  
					  <%    
					  Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3
					
						SQL9="SELECT *  FROM [App_User_Collaborate] WHERE [Source_Email_ID]='" & trim(session("EID"))& "' and report_id='"&trim(request("code"))&"'"
						'response.write sql9
						response.write "<div class='sixteen columns'>" 
					  
						rs9.open sql9, conn9
						if not rs9.eof then
						RecCount1=rs9.RecordCount
						RecCountLeft = 10 - cint(RecCount1)
						''response.write RecCount1
						if trim(request("SRCAdd"))="license" then
							''response.write (request("CHKemail") & request("code") & request("encid"))
							Set rscheck = Server.CreateObject("ADODB.Recordset")
							sqlcheck="select * from collaborateUser_Licence where email_id='" & trim(request("CHKemail")) & "' and code='" & trim(request("code"))& "' and Source_Email_ID='" & trim(session("EID")) & "'"
							rscheck.open sqlcheck, conn9
							if  rscheck.eof then
								insSql="insert into collaborateUser_Licence (email_id,code,encid,created_date,Status,Source_Email_ID) values('" & trim(request("CHKemail")) & "','" & trim(request("code"))& "','" & request("encid") & "',getdate(),'L','" & trim(session("EID")) & "')"
								conn9.execute insSql
							
									response.redirect("GIA_Research_collaborate.asp?email_id=" & trim(request("CHKemail")) &"&code=" & trim(request("code")) & "&encID=" & request("encid"))
							end if
							set rscheck = nothing
							'response.write inssql
						end if 
						''response.write "<p style='text-align:center;background:#f9f9f9;padding-right:5px;font-size:18px;padding-top:15px;padding-bottom:15px;'>"&RecCount1&"</p>"
						   end if%>
							

							<%If loadedval=1 Then%>
								<table border="0" cellpadding="5" cellspacing="0" width="100%">
								   <tr>
									<td width="100%" align="center"><font face="Verdana" size="2" color="#FF0000"><strong>Thank you for registering!</strong></font><br>
									
								</td>
								  </tr>
								</table>
							<%elseif loadedval=8 then%>
								<table border="0" align="center" cellpadding="5" cellspacing="0" width="100%">
								  <tr>
									<td width="100%" align="center"><strong><font face="Verdana" size="2" color="#FF0000">Registration Error</font></strong><br>
									<font face="Verdana" size="2" color="#000000"><br>
									We already have an account with this email ID <font face="Verdana" size="2"
									color="#FF0000"><b><%=Request.Form("userEmail")%></b>.</font> <br>
									If this is your email address and forgot the password, please click <a href="ForgotPassword.asp"><b>here</b></a> to retrieve password.
									</font></td>
								  </tr>
								  <tr>
									<td align=center><input type="button" name="regb" class="submitbutlarge" value="Login Now" onclick="JavaScript:history.go(-1)"></td>
								  </tr>
								</table>
							<%End If%>
														
							
							     <div class="row mb-0"  style="text-align:center">       
	                              
									<%
									response.write "<button  type='submit' name='btnsubmit' value='COLLABORATE'  class='btn btn-gia-primary text-white rounded-0 shadow m-3 font-weight-bold p-2' data-toggle='collapse' role='button' aria-expanded='false' aria-controls='collapseExample'>COLLABORATE</button>"
									%>
									
								</div>
					
					</form>
					<!--hr-->
		<%END IF%> 
        </div>
      </div>
      <!-- 960 Container / End --> 
    </div>
	
					
						
    <!-- Page Content / End --> 
  </div>
  <!-- Content / End --> 
</div>
<!-- Wrapper / End --> 

<!-- Footer
================================================== --> 
<br/></div></div>
</div><!-- Wrapper / End -->
<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->
</body>
</html>
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
</body>
</html>
