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

If Trim(request("encID"))<>"" then
	If session("security_code") ="" then
	   session("security_code") = Trim(request("encID"))
	End If
Else
	session("security_code") = ""
End If

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
<title>User Dashboard - Global Industry Analysts, Inc.</title>

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
			parent.location.reload();
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




<style>
	#responsive_collaborate_table {
		border: 1px solid #ccc;
		border-collapse: collapse;
		margin: 0;
		padding: 0;
		width: 100%;
		table-layout: fixed;
	}

	#responsive_collaborate_table tbody tr td {
		position: relative;
	}


	#responsive_collaborate_table thead tr th:nth-child(1),
	#responsive_collaborate_table tbody tr td:nth-child(1) {
		width: 8%;
		text-align: center;
	}

	#responsive_collaborate_table thead tr th:nth-child(2),
	#responsive_collaborate_table tbody tr td:nth-child(2) {
		width: 10%;
	}

	#responsive_collaborate_table tbody tr td:nth-child(3) {
		text-align: left;
	}

	#responsive_collaborate_table thead tr th:nth-child(3) {
		text-align: center;
	}


	#responsive_collaborate_table thead tr th:nth-child(3),
	#responsive_collaborate_table tbody tr td:nth-child(3) {
		width: 42%;
		text-align: left;

	}

	#responsive_collaborate_table thead tr th:nth-child(4),
	#responsive_collaborate_table tbody tr td:nth-child(4) {
		width: 30%;
	}

	#responsive_collaborate_table thead tr th:nth-child(5),
	#responsive_collaborate_table tbody tr td:nth-child(5) {
		width: 20%;
	}



	#responsive_collaborate_table caption {
		font-size: 1.5em;
		margin: .5em 0 .75em;
	}

	#responsive_collaborate_table tr {

		border: 1px solid #ddd;
		padding: .35em;
	}

	#responsive_collaborate_table tbody tr:nth-child(even) {
		background-color: #f8f8f8;
	}

	#responsive_collaborate_table th,
	#responsive_collaborate_table td {
		padding: .625em;
		text-align: center;
	}

	#responsive_collaborate_table th {
		font-size: 14px;
		letter-spacing: normal;
		text-transform: uppercase;
		font-weight: bold;
		background: #FFF1EB;
	}

	a.btn-gia-primary {
		width: 185px;
		font-size: 13px;
	}

	.to-input {
		display: none !important
	}

	.enter-mail-id {
		width: 100% !important;
	}


	@media screen and (max-width: 759px) {
		#responsive_collaborate_table {
			border: 0;
		}



		#responsive_collaborate_table thead tr th:nth-child(1),
		#responsive_collaborate_table tbody tr td:nth-child(1) {
			width: 100%;
			text-align: left;
		}

		#responsive_collaborate_table thead tr th:nth-child(2),
		#responsive_collaborate_table tbody tr td:nth-child(2) {
			width: 100%;
		}

		#responsive_collaborate_table thead tr th:nth-child(3),
		#responsive_collaborate_table tbody tr td:nth-child(3) {
			width: 100%;
			text-align: left;

		}



		#responsive_collaborate_table thead tr th:nth-child(4),
		#responsive_collaborate_table tbody tr td:nth-child(4) {
			width: 100%;
		}

		#responsive_collaborate_table thead tr th:nth-child(5),
		#responsive_collaborate_table tbody tr td:nth-child(5) {
			width: 100%;
		}


		#responsive_collaborate_table caption {
			font-size: 1.3em;
		}

		#responsive_collaborate_table thead {
			border: none;
			clip: rect(0 0 0 0);
			height: 1px;
			margin: -1px;
			overflow: hidden;
			padding: 0;
			position: absolute;
			width: 1px;
		}

		#responsive_collaborate_table tr {
			border-bottom: 3px solid #ddd;
			display: block;
			margin-bottom: .625em;
		}

		#responsive_collaborate_table tbody tr td {
			border-bottom: 1px solid #ddd;
			display: block;
			font-size: 13px;
			text-align: left;
			padding-left: 125px;
		}

		#responsive_collaborate_table td::before {
			/*
	* aria-label has no advantage, it won't be read inside a table
	content: attr(aria-label);
	*/
			content: attr(data-label);
			float: left;
			font-weight: bold;
			text-transform: uppercase;
			background: #FFF1EB;
			padding: 10px;
			position: absolute;
			left: 0px;
			top: 0px;
			width: 110px;
			text-align: left;
		}

		#responsive_collaborate_table td:last-child {
			border-bottom: 0;
		}

		a.btn-gia-primary {
			width: 132px;
			font-size: 10px;
			font-weight: 500;
		}

		a.btn-gia-primary:hover,
		a.btn-gia-primary:focus {
			color: #fff;
		}

	}


	/*---------------------------------------------*/



	#responsive_message_table {
		border: 1px solid #ccc;
		border-collapse: collapse;
		margin: 0;
		padding: 0;
		width: 100%;
		table-layout: fixed;
	}

	#responsive_message_table tbody tr td {
		position: relative;
	}


	#responsive_message_table tbody tr td:nth-child(2),
	#responsive_message_table tbody tr td:nth-child(3),
	#responsive_message_table tbody tr td:nth-child(4) {
		text-align: left;
	}






	#responsive_message_table thead tr th:nth-child(1),
	#responsive_message_table tbody tr td:nth-child(1) {
		width: 8%;
		text-align: center;
	}

	#responsive_message_table thead tr th:nth-child(2),
	#responsive_message_table tbody tr td:nth-child(2) {
		width: 20%;
	}

	#responsive_message_table tbody tr td:nth-child(3) {
		text-align: left;
	}




	#responsive_message_table thead tr th:nth-child(3),
	#responsive_message_table tbody tr td:nth-child(3) {
		width: 22%;
		text-align: left;

	}

	#responsive_message_table thead tr th:nth-child(4),
	#responsive_message_table tbody tr td:nth-child(4) {
		width: 50%;
	}





	#responsive_message_table caption {
		font-size: 1.5em;
		margin: .5em 0 .75em;
	}

	#responsive_message_table tr {

		border: 1px solid #ddd;
		padding: .35em;
	}

	#responsive_message_table tbody tr:nth-child(even) {
		background-color: #f8f8f8;
	}

	#responsive_message_table th,
	#responsive_message_table td {
		padding: .625em;
		text-align: center;
	}

	#responsive_message_table th {
		font-size: 14px;
		letter-spacing: normal;
		text-transform: uppercase;
		font-weight: bold;
		background: #FFF1EB;
	}


	@media screen and (max-width: 759px) {
		#responsive_message_table {
			border: 0;
		}

		#responsive_message_table thead tr th:nth-child(1),
		#responsive_message_table tbody tr td:nth-child(1) {
			width: 100%;
			text-align: left;
		}

		#responsive_message_table thead tr th:nth-child(2),
		#responsive_message_table tbody tr td:nth-child(2) {
			width: 100%;
		}

		#responsive_message_table thead tr th:nth-child(3),
		#responsive_message_table tbody tr td:nth-child(3) {
			width: 100%;
			text-align: left;

		}



		#responsive_message_table thead tr th:nth-child(4),
		#responsive_message_table tbody tr td:nth-child(4) {
			width: 100%;
		}

		#responsive_message_table thead tr th:nth-child(5),
		#responsive_message_table tbody tr td:nth-child(5) {
			width: 100%;
		}


		#responsive_message_table caption {
			font-size: 1.3em;
		}

		#responsive_message_table thead {
			border: none;
			clip: rect(0 0 0 0);
			height: 1px;
			margin: -1px;
			overflow: hidden;
			padding: 0;
			position: absolute;
			width: 1px;
		}

		#responsive_message_table tr {
			border-bottom: 3px solid #ddd;
			display: block;
			margin-bottom: .625em;
		}

		#responsive_message_table tbody tr td {
			border-bottom: 1px solid #ddd;
			display: block;
			font-size: 13px;
			text-align: left;
			padding-left: 125px;
		}

		#responsive_message_table td::before {
			/*
	* aria-label has no advantage, it won't be read inside a table
	content: attr(aria-label);
	*/
			content: attr(data-label);
			float: left;
			font-weight: bold;
			text-transform: uppercase;
			background: #FFF1EB;
			padding: 10px;
			position: absolute;
			left: 0px;
			top: 0px;
			width: 110px;
			text-align: left;
		}

		#responsive_message_table td:last-child {
			border-bottom: 0;
		}

	}


	.morecontent span {
		display: none;
	}
	.morelink {
		display: block;
	}

</style>




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
			
            if trim(request("btnsubmit"))="INVITE1" then
			
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
							cid=trim(rs9("Collborate_ID"))
							First_Name = trim(rs9("First_Name"))
							Last_Name = trim(rs9("Last_Name"))
							USRCollaborate_Password = trim(rs9("Collaborate_Password"))
							Report_ID = trim(rs9("Report_ID"))
							Region_Name = trim(rs9("Region_Name"))
							Segment_Name= trim(rs9("Segment_Name"))
							EncID= trim(rs9("EncID"))
							company = trim(rs9("company"))
							User_Type = "Collaborator"
							Module_display = trim(rs9("Module_display"))
							User_Status = trim(rs9("Collaborate_Status"))
							User_Email = trim(rs9("Email_ID"))
							Source_Email = trim(rs9("Source_email_id"))
							
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
					  <div  style="margin-bottom:20px;"> 
						<!---TITLE--> 
						<div class="w-100  text-center  modules_page_title text-center">
							 <h3><%=ucase(uname)%>'S DASHBOARD</h3>
						</div>							
						<%						
						response.write "<div class='w-xl-85 w-lg-85 w-md-100 mt-2 mx-auto '>" 
						response.write "<div class='mb-3 text-center font-weight-bold' style=' font-size:17px'>ASSIGNED DETAILS</div>"
						response.write "<div class='mb-2'><b>SEGMENTS:</b> "&trim(Segment_Name)&"</div>"
						response.write "<div class='mb-2''><b>REGIONS:</b> "&trim(Region_Name)&"</div>"
						response.write "<div class='mb-2'><b>STATUS:</b> "&trim(User_Status)&"</div>"
						response.write "</div>"						
						%>
						</div>				  
					  <%    
					 '' response.write Source_Email & " Surce"
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3					
						SQL9="SELECT *  FROM [App_User_Collaborate_Login_Log] WHERE [USERID]='" & trim(REQUEST("code"))& "'"
							
							response.write "<div class='w-xl-85 w-lg-85 w-md-100 mt-2 mx-auto'> <div class='w-100 font-weight-bold text-center mb-2' style='font-size:17px;'> LOGIN DETAILS</div>" 
							getRDMPassword = USRCollaborate_Password
							MessageBody = MessageBody & "Hello "&trim(First_Name) & "  "&trim(Last_Name) & "," & vbcrlf & vbcrlf
							MessageBody = MessageBody & "Please check the collaborate option for the research from StrategyR." & vbcrlf
							''MessageBody = MessageBody & "<font face='verdana' size='2'>Please note your details -<br></font><br>"
							MessageBody = MessageBody & "Email ID: " & trim(User_Email) & "" & vbcrlf
							MessageBody = MessageBody & "Code: " & trim(getRDMPassword) & "" & vbcrlf
							MessageBody = MessageBody & "Link: https://strategyr.com/Collaborate_SignIn.asp"& vbcrlf & vbcrlf
							''MessageBody = MessageBody & "We look forward to serving you! " & vbcrlf
							MessageBody = MessageBody & "If you have further questions about our program, please don't hesitate to contact the Research Support Desk by email at info411@StrategyR.com." & vbcrlf & vbcrlf
							''MessageBody = MessageBody & "Sincerely," & vbcrlf
							''MessageBody = MessageBody & "User Admin" & vbcrlf
							''MessageBody = MessageBody & "Global Industry Analysts, Inc." & vbcrlf
							''MessageBody = MessageBody & "https://www.strategyr.com" & vbcrlf
							''MessageBody = MessageBody & "E: privacy@strategyr.com (24/5)" & vbcrlf
							''MessageBody = MessageBody & "P: 408-528-9966 (8 AM to 5 PM PST Weekdays)" & vbcrlf							
						rs9.open sql9, conn9
						if not rs9.eof then						
						response.write "<div class='w-100'><table  class='table p-0 m-0' id='responsive_collaborate_table'> <thead style='backaground-color:#FFF1EB'><tr role='row'><th role='columnheader'  scope='col'>SNO</th><th  scope='col' role='columnheader'>GIA_ID</th><th role='columnheader' scope='col'>EMAIL</th><th role='columnheader' scope='col'>LOGIN DATE</th><th role='columnheader'  scope='col'>REPORT CODE</th><!--<td role='columnheader'>OPTIONS</td>--></tr></thead><tbody role='rowgroup'>"
						toemail=trim(rs9("emailid"))						
						dim gtVal
						gtVal = 1
							While not rs9.eof	
							Set rscheck1 = Server.CreateObject("ADODB.Recordset")									
									response.write "<tr role='row'> <td role='cell' data-label='SNO'>"&gtVal&"</td><td  role='cell' data-label='GIA ID' >"&trim(rs9("userid"))&"</td><td  role='cell' data-label='EMAIL'>"&trim(rs9("emailid"))&"</td><td  role='cell' data-label='LOGIN DATE'>"&trim(rs9("login_date"))&"</td><td  role='cell' data-label='REPORT CODE'>"&trim(rs9("log_type"))&"</td>"
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
					  
						response.write "<div class='w-100'>" 
						response.write "<div class='w-100 text-center font-weight-bold mt-4 mb-0 p-2' style='font-size:17px'>OTHER OPTIONS</div>"
						response.write "<div class='d-flex justify-content-center flex-wrap   w-100'>"%>
						<a class='btn-gia-primary text-center  rounded-0 shadow p-1 mt-1  font-weight-bold mb-1 '  name='btnsubmit' data-toggle='collapse' href='#resend_block' role='button' aria-expanded='false' aria-controls='collapseExample'>RE-SEND LOGIN</a> 
						<a class='btn-gia-primary text-center  rounded-0 shadow p-1 mt-1  font-weight-bold mb-1'  name='btnsubmit' onclick="return Block_user('<%=Disp_Status%>','<%=trim(request("code"))%>');" ><%=Disp_Status%> USER LOGIN</a> 
						<a class='btn-gia-primary text-center  rounded-0 shadow p-1 mt-1  font-weight-bold mb-1' name='btnsubmit'  href='GIA_Send_Collaborate.asp?code=<%=trim(Report_ID)%>&encID=<%=trim(request("encID"))%>&CHKemail=<%=User_Email%>'>UPDATE ASSIGNMENTS</a>
						<a class='btn-gia-primary text-center  rounded-0 shadow p-1 mt-1  font-weight-bold mb-1'  name='btnsubmit' data-toggle='collapse' href='#send_message' role='button' aria-expanded='false' aria-controls='collapseExample'>SEND MESSAGE</a> 
						<a  class="btn-gia-primary text-center  rounded-0 shadow p-1 mt-1  font-weight-bold mb-1" onclick="javascript:openwinMessages('<%=Trim(request("code"))%>','<%=Trim(request("encID"))%><%=get_col_email_string%>');" >VIEW MESSAGES</a>
						<a class="btn-gia-primary text-center  rounded-0 shadow p-1 mt-1  font-weight-bold mb-1" onclick="">VIEW MESSAGES</a>
						<!--https://www.strategyr.com/GIA_Send_Collaborate.asp?code=MCP15973&encID=CPA8F0BDCB&CHKemail=obilisrinivas@strategyr.com-->
						<%response.write "</div>"
						response.write "</div>"
					  %>				
							
		<%END IF%> 
        </div>
      </div>
		<%esubject="Research program collaborate on StrategyR Research Portal"		
							client = User_Email
							fromClient = Source_Email '& "Source<br>"
							'response.write client & '"Client<br>"
							'response.write fromclient
		%>
	  <div class="w-xl-85 w-lg-85 w-md-100 mt-2 mx-auto"  id="main2">
		<div class="collapse" id="resend_block" data-parent="#main2">
			<div class="card card-body">
				<div >
						<div class="mb-3"><p class="font-weight-bold mb-1 ">To Email(s) :</p> 
							<input type="text" class="w-100 mt-2" id="essai" placeholder="Email" style="width:100% !important">
							<!--input type="text" class="w-100 mt-2" placeholder="Subject" id="muser" name="muser" value="<%=client%>"--->
						</div>
						<div class="mb-3"><p class="font-weight-bold mb-1 ">Subject :</p> <input type="text" class="w-100 mt-2" placeholder="Subject" id="msubject" name="msubject" value="<%=esubject%>",></div>
						<div><p class="font-weight-bold mb-1">Message :</p> <textarea class="w-100" placeholder="Message here..." id="mMessage" name="mMessage" rows="10"><%="" & MessageBody & ""%></textarea></div>
						<div  class="text-center">
						<!--<input type="submit" class="btntext" name="btnsubmit" onclick="return validateform();" value="SAVE & NEXT" style="width:130px; display:block; margin:0 auto !important; float:none; font-weight:bold; font-size:15px;">-->
						<button type="submit" class="btn btn-gia-primary shadow rounded-0 mx-auto mt-2" name="btnRsendsubmit" onclick="return resend_message();" value="RESEND"><small>RE-SEND EMAIL</small></button>
						
						</div>
						</div>
			</div>
		</div>
		
		<div class="collapse" id="send_message" data-parent="#main2">
			<div class="card card-body">
				<div >
						<div class="mb-3"><p class="font-weight-bold mb-1 ">To Email:</p> 
							<input type="text"  class="w-100 mt-2" id="example" placeholder="Email" style="width:100% !important">
							<!--input type="text" class="w-100 mt-2" placeholder="Email" id="musermail" name="musermail" required value="<%=client%>"--->
						
						</div>
						<div class="mb-3"><p class="font-weight-bold mb-1 ">Subject:</p> <input type="text" class="w-100 mt-2" placeholder="Subject" id="mUsersubject" name="mUsersubject"  value="",></div>
						<div><p class="font-weight-bold mb-1">Message:</p> <textarea class="w-100" placeholder="Message here..." id="mUserMessage" name="mUserMessage"  rows="10"></textarea></div>
						<div  class="text-center">
						<!--<input type="submit" class="btntext" name="btnsubmit" onclick="return validateform();" value="SAVE & NEXT" style="width:130px; display:block; margin:0 auto !important; float:none; font-weight:bold; font-size:15px;">-->
						<button type="submit" class="btn btn-gia-primary shadow rounded-0 mx-auto mt-2" name="btnsendMSG" onclick="return resend_message();" value="SENDMESSAGE"><small>SEND MESSAGE</small></button>
						</div>
						</div>
			</div>
		</div>
		<%if trim(request("btnRsendsubmit"))="RESEND" Then
			'response.write fromClient
			client= trim(request("muser"))&"<br>"
			subject_line= trim(request("msubject"))  ''&"<br>"
			MessageBody= "<pre>" & trim(request("mMessage"))&"</pre>"
			''response.end
			call sendemail1(fromClient,client,subject_line,MessageBody)
			call sendemail1(client,"srinivas@strategyr.com",subject_line,MessageBody)
			response.redirect("Get_user_Logs.asp?code=" & cid&"&encID=" & EncID)
		END IF
		%>
		<%if trim(request("btnsendMSG"))="SENDMESSAGE" Then
			'response.write fromClient
			client= trim(request("musermail"))&"<br>"
			subject_line= trim(request("mUsersubject"))  ''&"<br>"
			MessageBody= "<pre>" & trim(request("mUserMessage"))&"</pre>"
			''response.end
			if trim(subject_line) <> ""  and trim(MessageBody) <> "" then
			call sendemail1(fromClient,client,subject_line,MessageBody)
			call sendemail1(client,"srinivas@strategyr.com",subject_line,MessageBody)
			response.redirect("Get_user_Logs.asp?code=" & cid&"&encID=" & EncID)
			end if
		END IF
		%>
	</form>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="scripts/bootstrap.bundle.js"></script>
<script src="css/mail_inputbox/jquery.email.multiple.js"></script>


<script>
    $(document).ready(function ($) {
        let data = [
            // "admin@jqueryscript.net",
            // "admin@cssscript.com"
        ]
        $("#essai").email_multiple({
            data: data
            // reset: true
        });
    });
</script>

<script>
    $(document).ready(function ($) {
        let data = [
            // "admin@jqueryscript.net",
            // "admin@cssscript.com"
        ]
        $("#example").email_multiple({
            data: data
            // reset: true
        });
    });
</script>


<script>
			function openwinMessages(code,encid)
							{
								var src = "Collaborate_messages.asp?code="+code +"&encID=" +encid;
								var wint = window.open(src,"GLOBINDRPP","scrollbars=yes,resizable=yes,width=1024,height=600, top=0,left=0");
							}
		
		
		</script>
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