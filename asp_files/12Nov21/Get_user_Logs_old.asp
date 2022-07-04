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
	
function Block_user(typeGT, UserID)
{
			
	if ((typeGT!= '') && (UserID!= ''))							  
		{    
		 // alert(i);
		   $.ajax({
			url: "Ajax_collaborate_user_status.asp",
			type: "POST",
			data:'vtxttypeGT='+encodeURIComponent(typeGT)+'&vtxtUserID='+encodeURIComponent(UserID)+'',
			success: function(data){
			//alert(data);			  
			//$("#table-body").append(data);
			alert("User login status has been updated");
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
							response.write ("<p align='center'><b><font color='red'>This Person has been invited before.</font></b></p>")
							UserMSG = "<font color='red'>Cannot add more than 9 people.</font></b>"
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
				
				<!--INCLUDE FILE="newReportTitle_New1.asp" -->
  <!-- Header / End --> 
  
</div>

<div class="container flo"> 
  <!-- Page Content -->
  <div class="page-content"> 
    <!-- 960 Container -->
    <div class="container"> 
      <!-- Texts -->
      <div >
        
        <div class="row">

		<%
		''response.write "HI"
		''response.write trim(session("UserID"))
		'response.end
		
  
		IF Trim(request("encID"))<>"" THEN
		
						dim User_Status, Disp_Status
						User_Status = ""
						Disp_Status = ""
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3					
						SQL9="SELECT *  FROM [App_User_Collaborate] WHERE [Collborate_ID]='" & trim(request("code"))& "' and EncID = '"&trim(request("encID"))&"'"
						''and Report_ID='"&trim(request("code"))&"'"		
						'response.write SQL9
						rs9.open sql9, conn9
						if not rs9.eof then						
							''''' Create session variables here
							''''' First_Name,Last_Name,Email_ID,Report_ID,Collaborate_Type,Segment_Name,Region_Name,Report_Table_Code,Date_Added,Collaborate_Status,Source_Email_ID,Collaborate_Password
							'''[Collborate_ID]      ,[First_Name]      ,[Last_Name]      ,[Email_ID]      ,[Report_ID]      ,[Collaborate_Type]      ,[Segment_Name]      ,[Region_Name]      ,[Report_Table_Code]      
							''',[Date_Added]      ,[Collaborate_Status]      ,[Source_Email_ID]      ,[Collaborate_Password]      ,[Company]      ,[encID]      ,[User_Type]      ,[Module_display]
							First_Name = trim(rs9("First_Name"))
							Last_Name = trim(rs9("Last_Name"))
							Report_ID = trim(rs9("Report_ID"))
							Region_Name = trim(rs9("Region_Name"))
							Segment_Name= trim(rs9("Segment_Name"))
							EncID= trim(rs9("EncID"))
							company = trim(rs9("company"))
							User_Type = "Collaborator"
							Module_display = trim(rs9("Module_display"))
							User_Status = trim(rs9("Collaborate_Status"))
							User_Email = trim(rs9("Email_ID"))
						End IF
						
						if trim(First_Name)<>"" then
							uname = Trim(First_Name) & " " & Trim(Last_Name)
						else
							uname = "New User"
						end if
						
						If trim(User_Status)<>"" Then
							If trim(ucase(User_Status))="Y" then
								User_Status = "ACTIVE"
								Disp_Status = "BLOCK"
							ElseIf trim(ucase(User_Status))="N" then
								User_Status = "BLOCKED"
								Disp_Status = "ACTIVATE"
							End If						
						End If
						''response.write "EMAIL ID = "&trim(uname)
						Set RS9 = Nothing
						Set Conn9 = Nothing
						
						
						%>
						<!--include file="Lables_new.asp"-->
					<form name="frmGRP1" method="post" >
					  <div  style="margin-bottom:40px;"> 
					 
						
						<!---TITLE--> 
						<div class="w-100  text-center  modules_page_title text-center">
							 <h3><%=ucase(uname)%>'S DASHBOARD</h3>
						</div>
						
						<!--p class="earnclass1 mb-4 mt-3 font-weight-bold" style="text-align:center;font-size:16px;">Add up to 9 people to collaborate</p-->
						
						<p class="earnclass1" style="text-align:center;font-size:15px;">
						
						<%
						
						response.write "<div class='w-xl-85 w-lg-85 w-md-100 mt-2 mx-auto '>" 
						response.write "<div class="mb-3" style=" font-size:16px">ASSIGNED DETAILS</div>"
						response.write "<div class="mb-2"><b>SEGMENTS:</b> "&trim(Segment_Name)&"</div>"
						response.write "<div class="mb-2"><b>REGIONS:</b> "&trim(Region_Name)&"</div>"
						response.write "<div class="mb-2"><b>STATUS:</b> "&trim(User_Status)&"</div>"
						response.write "</div>"						
						%>				
						</p>
						
						<!--<p style="font-size: 14px;">
						
						
						
						<input type="hidden" name="code" value="<%=trim(request("code"))%>">
						<input type="hidden" name="encID" value="<%=trim(request("encID"))%>">
						<input type="hidden" name="sname" value="<%=trim(request("sname"))%>">
						<input type="hidden" name="cname" value="<%=trim(request("cname"))%>">
						<input type="hidden" name="company_Name" value="<%=trim(company)%>">
						</p>-->
						
							<!--font color='red' style="font-size: 13px;font-style: italic;padding-left: 28px">We use your participation for use in our research projects and to contact you.</font-->
						
						
						
						
						</div>
						</form>
					 
				  
					  <%    
					  '''response.write Report_Purchase_status
					  Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3
					
						SQL9="SELECT *  FROM [App_User_Collaborate_Login_Log] WHERE [USERID]='" & trim(REQUEST("code"))& "'"
						''response.write sql9
						response.write "<div  >" 
					  
						rs9.open sql9, conn9
						if not rs9.eof then
						
						response.write "<div class='table-responsive '><table  class='table p-0 m-0 collaborate_table'> <thead class='thead-dark' style='background:#343A40, color:#fff; font-weight:bold' role='rowgroup'><tr><td colspan='5' ALIGN='center'>LOGIN DETAILS</td></tr><tr role='row'><td role='columnheader' style='width:65px;'>SNO</td><td role='columnheader'>GIA_ID</td><td role='columnheader' style='width:165px;'>EMAIL</td><td role='columnheader' style='width:230px;'>LOGIN DATE</td><td role='columnheader' style='width:165px;'>REPORT CODE</td><!--<td role='columnheader'>OPTIONS</td>--></tr></thead><tbody role='rowgroup'>"
						
						
						dim gtVal
						gtVal = 1
							While not rs9.eof	
							Set rscheck1 = Server.CreateObject("ADODB.Recordset")
							
								
									
									response.write "<tr role='row'> <td role='cell' style='text-align:center;'>"&gtVal&"</td><td  role='cell'>"&trim(rs9("userid"))&"</td><td  role='cell'>"&trim(rs9("emailid"))&"</td><td  role='cell'>"&trim(rs9("login_date"))&"</td><td  role='cell'>"&trim(rs9("log_type"))&"</td>"
									''response.write "<td  role='cell'><a href='GIA_Send_Collaborate.asp?code=" & trim(request("code")) & "&encID="& session("security_code") &"&CHKemail="&trim(rs9("Email_ID"))&"' target='New'>Collaborate</a>"
									
									response.write "</td></tr>"
								
								set rscheck1=nothing
								gtVal = gtVal + 1
							rs9.movenext
							wend
						Else
							''response.write "<div class='table-responsive '><table id='simulator_block' style='width:790px !important; margin:0 auto;' class='table p-0 m-0 collaborate_table'> <thead class='thead-dark' style='background:#343A40, color:#fff; font-weight:bold' role='rowgroup'><tr role='row'><td role='columnheader' style='width:65px;'>USER</td><td role='columnheader'>FIRST</td><td role='columnheader' style='width:165px;'>LAST</td><td role='columnheader' style='width:230px;'>EMAIL</td><td role='columnheader' style='width:165px;'>DATE</td><!--<td role='columnheader'>OPTIONS</td>--></tr></thead><tbody role='rowgroup'>"
							response.write "<div class='table-responsive '><table  style='width:790px !important; margin:0 auto;' class='table p-0 m-0 collaborate_table'> <thead class='thead-dark' style='background:#343A40, color:#fff; font-weight:bold' role='rowgroup'><tr><td colspan='5' ALIGN='center'>LOGIN DETAILS</td></tr><tr role='row'><td role='columnheader' style='width:65px;'>SNO</td><td role='columnheader'>GIA_ID</td><td role='columnheader' style='width:165px;'>EMAIL</td><td role='columnheader' style='width:230px;'>LOGIN DATE</td><td role='columnheader' style='width:165px;'>REPORT CODE</td><!--<td role='columnheader'>OPTIONS</td>--></tr></thead><tbody role='rowgroup'>"
						
							response.write "<tr><td colspan='5' align='center'><font color='red'>-- NOT LOGGED IN YET --</font></td></tr>"
						end if
						response.write "</tbody></table></div></p></div>"
						
						set rs9 = nothing
						set conn9 = Nothing
					  
						response.write "<div class='w-100' >" 
						response.write "<div class="w-100">OTHER OPTIONS</div>"
						response.write "<div class="d-flex justify-content-center flex-wrap"%>
						<a class='button1 mx-auto rounded-0 shadow mx-2' style='width:150px;font-weight:bold;' name='btnsubmit' data-toggle="collapse" href="#resend_block" role="button" aria-expanded="false" aria-controls="collapseExample"'>RE-SEND LOGIN</a> 
						 <a class='button1 mx-auto rounded-0 shadow mx-2' style='width:180px;font-weight:bold;' name='btnsubmit' onclick="return Block_user('<%=Disp_Status%>','<%=trim(request("code"))%>');" ><%=Disp_Status%> USER LOGIN</a> 
						  <a class='button1 mx-auto rounded-0 shadow mx-2' style='width:180px;font-weight:bold;' href='GIA_Send_Collaborate.asp?code=<%=trim(Report_ID)%>&encID=<%=trim(request("encID"))%>&CHKemail=<%=User_Email%>'>UPDATE ASSIGNMENTS</a>
						<!--https://www.strategyr.com/GIA_Send_Collaborate.asp?code=MCP15973&encID=CPA8F0BDCB&CHKemail=obilisrinivas@strategyr.com-->
						<%response.write "</div>"
						response.write "</div>"
					  %>
				
							
		<%END IF%> 
        </div>
      </div>

	  <div class="w-100">
		<div class="collapse" id="resend_block">
			<div class="card card-body">
				resend block
			</div>
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
