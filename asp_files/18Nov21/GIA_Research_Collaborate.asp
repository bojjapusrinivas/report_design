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

%>

<%''''''''REGISTRATION PROCESS FOR THE INFLUECENRS LIST'''''''''''''''
%>

<!--#include file="GIA_Influencer_Login.asp"-->

<%'''''''''''''''''''END OF THE PROCESS ''''''''''''''''''''''''''''''
%>

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
</head>
<body>
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
			SQLrptGIA="select code,newcode,title,dop,completed,market_data_tables,companies from stat_globind.dbo.MCPNewTopic where (newcode='" & newcode & "' OR code='" & newcode & "')"
			''''response.write SQLrptGIA
			Set RSRex = Server.CreateObject("ADODB.Recordset")
			RSRex.Open SQLrptGIA, Con
			If Not RSRex.EOF Then
				code=RSRex("code")
				completed=RSRex("completed")
				giaNo = Trim(RSRex("newcode"))
				title = UCase(Trim(RSRex("title")))
				'''pages = Trim(RSRex("pages"))
				RPT_MCP_CODE=Trim(RSRex("code"))
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
			
            if trim(request("btnsubmit"))="INVITE" then
			
					'''' GENERATE A RANDOM PASSCODE
					dim getRDMPassword, RecCount_Users
					RecCount_Users = 0
					getRDMPassword = GetNewGenPassword()
					'''CHEKC TO SEE IF THERE ARE 9 users only
					Set MyConCNT = Server.CreateObject("ADODB.Connection")		
					MyConCNT.Open DataSource1
					
					RecChkSQLCNT = "SELECT count(*) as count_persons FROM App_User_Collaborate WHERE Report_ID='"&trim(request("code"))&"' and Source_Email_ID='" & session("EID") & "'"    
					Set RecChkRSCNT = Server.CreateObject("ADODB.Recordset")
					RecChkRSCNT.Open RecChkSQLCNT, MyConCNT
					If not RecChkRSCNT.eof then
						RecCount_Users = RecChkRSCNT("count_persons")
					End If
					Set RecChkRSCNT = Nothing
					Set MyConCNT = Nothing
					
					If cdbl(RecCount_Users)<=9 Then
						'''' CHECK to see if the same user exists for the same report ID
						Set MyCon = Server.CreateObject("ADODB.Connection")		
						MyCon.Open DataSource1
						
						RecChkSQL = "SELECT * FROM App_User_Collaborate WHERE Email_ID ='"&trim(request("EmailID"))&"' and Report_ID='"&trim(request("code"))&"' and Source_Email_ID='" & session("EID") & "'"    
						Set RecChkRS = Server.CreateObject("ADODB.Recordset")
						RecChkRS.Open RecChkSQL, MyCon	
						If RecChkRS.EOF Then 
							
							inseQsql="INSERT INTO Globind1.dbo.App_User_Collaborate(First_Name,Last_Name,Email_ID,Report_ID,Collaborate_Type,Segment_Name,Region_Name,Report_Table_Code,Date_Added,Collaborate_Status,Source_Email_ID,Collaborate_Password,encID,User_Type,company) VALUES ('" & trim(request("FirstName")) & "','" & trim(request("LastName")) &"','" & trim(request("EmailID")) & "','" & trim(request("code")) & "','REPORT','"&trim(request("sname"))&"','"&trim(request("REGION"))&"','Table_code_here',getdate(),'Y','" & session("EID") & "','"&trim(getRDMPassword)&"','"&trim(request("encID"))&"','User','"&trim(request("company_Name"))&"')"
							conn.execute inseQsql
							''''response.write inseQsql
							response.write ("<p align='center'><b><font color='green'>Person added successfully!</font></b></p>")
							UserMSG = "<font color='green'><b>Person invited successfully!</b></font>"
							
							''GIA_Send_Collaborate.asp?code=MCP-4107&encID=D8D387EA9&email_id=obili@strategyr.com
							dim reqCode, reqEncID, reqEmailID
							reqCode = trim(request("code"))
							reqEncID = trim(request("encID"))
							reqEmailID = trim(request("EmailID"))
							response.redirect ("GIA_Send_Collaborate.asp?code="&reqCode&"&encID="&reqEncID&"&CHKemail="&trim(reqEmailID)&"")
						Else
							dim Collaborate_SegName
							Collaborate_SegName = ""
							Collaborate_SegName = trim(RecChkRS("Segment_Name"))
							If trim(Collaborate_SegName)="" Then
								''GIA_Send_Collaborate.asp?code=MCP-4107&encID=D8D387EA9&email_id=obili@strategyr.com
								dim reqCode1, reqEncID1, reqEmailID1
								reqCode1 = trim(request("code"))
								reqEncID1 = trim(request("encID"))
								reqEmailID1 = trim(request("EmailID"))
								response.redirect ("GIA_Send_Collaborate.asp?code="&reqCode1&"&encID="&reqEncID1&"&CHKemail="&trim(reqEmailID1)&"")
							End If
							'''response.redirect ("GIA_Send_Collaborate.asp?code="&reqCode1&"&encID="&reqEncID1&"&CHKemail="&trim(reqEmailID1)&"")
							response.write ("<p align='center'><b><font color='red'>This Person has been invited before.</font></b></p>")
							UserMSG = "<font color='red'>This Person has been invited before.</font></b>"
						End If
						Set RecChkRS = Nothing
						Set MyCon = Nothing
					Else
							response.write ("<p align='center'><b><font color='red'>Cannot add more than 9 people to collaborate.</font></b></p>")
							UserMSG = "<font color='red'>Cannot add more than 9 people to collaborate.</font></b>"
					End If
			end If
			set conn = nothing
			%>
  
				
				
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
				
  <!-- Header / End --> 
  
</div>

<div class="container flo"> 
  <!-- Page Content -->
  <div class="page-content"> 
    <!-- 960 Container -->
    <div class="container"> 
      <!-- Texts -->
      <div class="w-100 px-0" >
        
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
						<!--#include file="Lables_new.asp"-->
						<!--#include file="module_menus.asp"-->
					<form name="frmGRP1" method="post" >
					  <div class="w-100" style="margin-bottom:40px;"> 
					 
						
						<!--Panelist--> 
						<!--<%'=uname%><br> <%'=company%>&nbsp;<br><%'=Replace(FormatDateTime(Now,1),daydisplay,"")%><br>-->
						<div class="w-100  text-center  modules_page_title text-center"> <h3>COLLABORATE WITH COLLEAGUES</h3></div>
						
						<p class="earnclass1 mb-4 mt-3 font-weight-bold" style="text-align:center;font-size:16px;">Add up to 9 people to collaborate</p>
						
						<p class="earnclass1" style="text-align:center;font-size:14px;">
						<%
						If trim(UserMSG)<>"" then
						''UserMSG
						response.write trim(UserMSG)
						End If
						%>				
						</p>
						<p class="five columns d-flex flex-sm-column flex-md-column  flex-lg-row align-items-baseline my-1">					
						<span class="ten columns p-0 ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 d-sm-none">First Name:</span><input type="text" name="FirstName" value="" id="FirstName" placeholder="First Name" class="four columns   mx-0 ">
						<p class="five columns d-flex flex-sm-column flex-md-column  flex-lg-row align-items-baseline my-1">
						<span class="ten columns p-0 ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 d-sm-none">Last Name:</span><input type="text" name="LastName" value="" id="LastName" placeholder="Last Name" class="four columns   mx-0 ">
						<p class="five columns d-flex flex-sm-column flex-md-column  flex-lg-row align-items-baseline my-1">
						<span class="ten columns p-0 ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 d-sm-none">Work Email:</span><input type="text" name="EmailID" value="" id="EmailID" placeholder="Work Email" class="four columns   mx-0 ">
						<p style="font-size: 14px;">
						
						
						
						<input type="hidden" name="code" value="<%=trim(request("code"))%>">
						<input type="hidden" name="encID" value="<%=trim(request("encID"))%>">
						<input type="hidden" name="sname" value="<%=trim(request("sname"))%>">
						<input type="hidden" name="cname" value="<%=trim(request("cname"))%>">
						<input type="hidden" name="company_Name" value="<%=trim(company)%>">
						</p>
						<br>
						
						<p class="text-primary1 mt-2 font-size-13 font-weight-bold mt-4 mx-2"><br/>NOTE: After adding a person, please specify segments & regions you want to collaborate in the next screen.</p>
					

						<div style="margin-top:30px" class="text-center">
						<!--<input type="submit" class="btntext" name="btnsubmit" onclick="return validateform();" value="SAVE & NEXT" style="width:130px; display:block; margin:0 auto !important; float:none; font-weight:bold; font-size:15px;">-->
						<button type="submit" class="btn btn-gia-primary shadow rounded-0 mx-auto mt-3" name="btnsubmit" onclick="return validateform();" value="INVITE"><small>ADD USER</small></button>
						</div>
							<!--font color='red' style="font-size: 13px;font-style: italic;padding-left: 28px">We use your participation for use in our research projects and to contact you.</font-->
						</p>
						<p>
						
						
						</div>
						</form>
					 
				  
					  <%    
					  '''response.write Report_Purchase_status
					  Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3
					
						SQL9="SELECT *  FROM [App_User_Collaborate] WHERE [Source_Email_ID]='" & trim(session("EID"))& "' and report_id='"&trim(request("code"))&"'"
						''response.write sql9
						response.write "<div class='w-100 mt-4 mx-auto ' >" 
					  
						rs9.open sql9, conn9
						if not rs9.eof then
						RecCount1=rs9.RecordCount
						RecCountLeft = 9 - cint(RecCount1)
						''response.write RecCount1
						if trim(request("SRCAdd"))="license" then
							''response.write (request("email_id") & request("code") & request("encid"))
							Set rscheck = Server.CreateObject("ADODB.Recordset")
							sqlcheck="select * from collaborateUser_Licence where email_id='" & trim(request("email_id")) & "' and code='" & trim(request("code"))& "' and Source_Email_ID='" & trim(session("EID")) & "'"
							rscheck.open sqlcheck, conn9
							if  rscheck.eof then
								insSql="insert into collaborateUser_Licence (email_id,code,encid,created_date,Status,Source_Email_ID) values('" & trim(request("email_id")) & "','" & trim(request("code"))& "','" & request("encid") & "',getdate(),'L','" & trim(session("EID")) & "')"
								conn9.execute insSql
							
								response.redirect("GIA_Research_collaborate.asp?email_id=" & trim(request("email_id")) &"&code=" & trim(request("code")) & "&encID=" & request("encid"))
							end if
							set rscheck = nothing
							'response.write inssql
						end if 
						''response.write "<p style='text-align:center;background:#f9f9f9;padding-right:5px;font-size:18px;padding-top:15px;padding-bottom:15px;'>"&RecCount1&"</p>"
						response.write "<div colspan=6 align='left'  class='border-0 mb-2' role='columnheader'><strong>INVITED (<span style='color:#169fe6; font-weight:bold;'>"&RecCount1&"</span>)&nbsp;&nbsp;LICENSE LEFT (<span style='color:#169fe6; font-weight:bold;'>"&RecCountLeft&"</span>)</strong></div>"
						response.write "<div class='table-responsive '><table id='simulator_block1' style='width:790px !important; margin:0 auto;' class='table p-0 m-0 collaborate_table'> <thead class='thead-dark' style='background:#343A40, color:#fff; font-weight:bold' role='rowgroup'><tr role='row'><td role='columnheader' style='width:65px;'>USER</td><td role='columnheader'>FIRST</td><td role='columnheader' style='width:165px;'>LAST</td><td role='columnheader' style='width:200px;'>EMAIL</td><td role='columnheader' style='width:175px;' style="text-align: center;" >DATE</td><td role='columnheader' style="text-align: center;" >STATUS</td><td role='columnheader' style="text-align: center;" >OPTIONS</td></tr></thead><tbody role='rowgroup'>"
						
						
						dim gtVal
						gtVal = 1
						
							While not rs9.eof
							dim User_Status, Disp_Status
							User_Status = ""
							Disp_Status = ""
							User_Status = trim(rs9("Collaborate_Status"))
							If trim(User_Status)<>"" Then
								If trim(ucase(User_Status))="Y" then
									User_Status = "ACTIVE"
									Disp_Status = "BLOCK"
								ElseIf trim(ucase(User_Status))="N" then
									User_Status = "BLOCKED"
									Disp_Status = "ACTIVATE"
								End If						
							End If
							
							Set rscheck1 = Server.CreateObject("ADODB.Recordset")
							sqlcheck1="select * from collaborateUser_Licence where email_id='" & trim(rs9("Email_ID")) & "' and code='" & trim(request("code"))& "' and Source_Email_ID='" & trim(session("EID")) & "'"
							''response.write sqlcheck1
							rscheck1.open sqlcheck1, conn9
								if  not rscheck1.eof then
								'''https://strategyr.com/Show_Report_TOC.asp?code=NT15846
								''response.write "<tr bgcolor='#f9f9f9'><td>"&gtVal&"</td><td>"&trim(rs9("First_Name"))&"</td><td>"&trim(rs9("Last_Name"))&"</td><td>"&trim(rs9("Email_ID"))&"</td><td>"&trim(rs9("date_Added"))&"</td><td><a href='GIA_Collaborate.asp?code=" & trim(request("code")) & "&encID="& session("security_code") &"' target='New'>Collaborate</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href='Get_user_Feedback.asp?code=" & trim(request("code")) &"&encID="& session("security_code") &"' target='_blank'>Add Report License</a></td></tr>"
									response.write "<tr role='row'> <td role='cell' style='text-align:center;'>"&gtVal&"</td><td  role='cell'>"&trim(rs9("First_Name"))&"</td><td  role='cell'>"&trim(rs9("Last_Name"))&"</td><td  role='cell'>"&trim(rs9("Email_ID"))&"</td><td  role='cell'>"&trim(rs9("date_Added"))&"</td><td  role='cell'>"&trim(User_Status)&"</td><td><a href='Get_user_Logs.asp?code=" & trim(request("code")) &"&encID="& session("security_code") &"' target='_blank'>View </a></td><!--<td  role='cell'><a href='GIA_Send_Collaborate.asp?code=" & trim(request("code")) & "&encID="& session("security_code") &"&CHKemail="&trim(rs9("Email_ID"))&"' target='New'>Collaborate</a>&nbsp;|&nbsp;Requested License&nbsp;|&nbsp;<a href='Get_user_Feedback.asp?code=" & trim(request("code")) &"&encID="& session("security_code") &"' target='_blank'>View Report</a></td>--></tr>"
								ELSE
									response.write "<tr role='row'> <td role='cell' style='text-align:center;'>"&gtVal&"</td><td  role='cell'>"&trim(rs9("First_Name"))&"</td><td  role='cell'>"&trim(rs9("Last_Name"))&"</td><td  role='cell'>"&trim(rs9("Email_ID"))&"</td><td  role='cell'>"&trim(rs9("date_Added"))&"</td><td  role='cell' style="text-align: center;" >"&trim(User_Status)&"</td><td align='center'><a href='Get_user_Logs.asp?code=" & trim(RS9("Collborate_id")) &"&encID="& session("security_code") &"' target='_blank'><strong>View</strong> </a></td>"
									''response.write "<td  role='cell'><a href='GIA_Send_Collaborate.asp?code=" & trim(request("code")) & "&encID="& session("security_code") &"&CHKemail="&trim(rs9("Email_ID"))&"' target='New'>Collaborate</a>"
									If trim(Report_Purchase_status)="YES" then
									'''response.write "&nbsp;|&nbsp;<a href='GIA_Research_collaborate.asp?SRCAdd=license&email_id="&trim(rs9("Email_ID"))&"&code="&trim(request("code"))&"&encID="&trim(request("encID"))&"'>Add Report License</a>&nbsp;|"	
									'''response.write "&nbsp;<a href='Get_user_Feedback.asp?code=" & trim(request("code")) &"&encID="& session("security_code") &"' target='_blank'>View Report</a>"
									End If
									response.write "</td></tr>"
									'''response.write "HI"
								end if
								set rscheck1=nothing
								gtVal = gtVal + 1
							rs9.movenext
							wend
						Else
							response.write "<div class='table-responsive '><table id='simulator_block' style='' class='table p-0 m-0 collaborate_table'> <thead class='thead-dark' style='background:#343A40, color:#fff; font-weight:bold' role='rowgroup'><tr role='row'><td role='columnheader' style='width:65px;'>USER</td><td role='columnheader'>FIRST</td><td role='columnheader' style='width:165px;'>LAST</td><td role='columnheader' style='width:230px;'>EMAIL</td><td role='columnheader' style='width:165px;'>DATE</td><!--<td role='columnheader'>OPTIONS</td>--></tr></thead><tbody role='rowgroup'>"
						
							response.write "<tr><td colspan='5' align='center'><b>-- No Records Found --</b></td></tr>"
						end if
						response.write "</tbody></table></div></p></div>"
						
						set rs9 = nothing
						set conn9 = Nothing
					  
					  %>
         <%ELSE%>
							<form name="frmcreate" method="post">

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
							<p style="text-align:center;font-size:16px;background:#f9f9f9;"><br>
							<%'''SessOUT=True
							If Trim(LCase(request("SessOUT")))="true" then%>
									<strong style="color:red;">Your session has expired. Please login again.<br/><br></strong>
							<%End If%>
							<br>
							<%If Trim(UCase(session("influencerCHK")))="YES" Then%>
								Please create a password for your account to proceed
									<div class="border_shadow privileg_box">
										<h4 class="block_title_bar">Create Account</h4>
										
										<div class="form_div_01">
											<table cellpadding="0" cellspacing="5" bgcolor='#f2f2f2'>
											<tbody>							
											   
											  <tr align="center">
												<td  align="right" valign="middle" class="td1" ><span class="field1"><span class="red_color">*</span>&nbsp;Email ID:</span></td>
												<td  class="td2"></td>
												<td height="40" align="left" class="td3"><div align="left">
												 <input type="text" class="txtbox140" name="userEmail" placeholder="Email-ID" size="25" value="<%=session("EID")%>">
												</div></td>
												</tr>
											  <tr align="center">
												<td align="right" valign="middle" class="td1"><span class="red_color">*</span> Password:</td>
												<td class="td2"></td>
												<td height="40" align="left" class="td3"><input type="password"  class="txtbox140" name="Password" maxlength="25" placeholder="Password" size="25"></td>
												</tr>
											  <tr align="center">
												<td align="right" valign="middle" class="td1"></td>
												<td class="td2"></td>
												<td height="40" align="left" class="td3"><input type="submit" src="images/login.gif" name="btnsubmit" value="Create Account" width="38" height="17"> </td>
												</tr>
											  </tbody>
												<input type="hidden" name="firstname" value="<%=session("fname1")%>">
												<input type="hidden" name="lastname" value="<%=session("lname1")%>">
												<input type="hidden" name="company" value="<%=session("usrcompany")%>">
												<input type="hidden" name="position" value="<%=session("usrTitle")%>">
												<input type="hidden" name="uwebsite" value="<%=session("usrWebsite")%>">
												<input type="hidden" name="Country" value="<%=session("usrCountry")%>">
											</table>									   
										</div>
									 </div>
								<!--Please <a href="LoginRepeat.asp?loginPAGE='GIA_Research_Collaborate.asp?code=<%=code%>'" ><strong style="color:#1C75BC;">Login Now / Register</strong></a> to proceed<br><br-->
							<%Else%>
								Please <a href="LoginRepeat.asp" ><strong style="color:#1C75BC;">Login Now / Register</strong></a> to proceed<br><br>
							<%End If%>
					</p>
					</form>
					<hr>
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
<!--#include file="ASPIncludes/BottomStrip_module.asp"-->
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
