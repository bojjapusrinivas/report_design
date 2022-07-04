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
	#responsive_message_table tbody tr td:nth-child(4),
	#responsive_message_table tbody tr td:nth-child(5) span.more {
		text-align: left !important
	}






	#responsive_message_table thead tr th:nth-child(1),
	#responsive_message_table tbody tr td:nth-child(1) {
		width: 8%;
		text-align: center;
	}

	#responsive_message_table thead tr th:nth-child(2),
	#responsive_message_table tbody tr td:nth-child(2) {
		width: 10%;
		text-align: center;
	}

	#responsive_message_table tbody tr td:nth-child(3) {
		text-align: left;
	}




	#responsive_message_table thead tr th:nth-child(3),
	#responsive_message_table tbody tr td:nth-child(3) {
		width: 20%;
		text-align: left;

	}

	#responsive_message_table thead tr th:nth-child(4),
	#responsive_message_table tbody tr td:nth-child(4) {
		width: 15%;
	}

	
	#responsive_message_table thead tr th:nth-child(5),
	#responsive_message_table tbody tr td:nth-child(5) {
		width: 35%;
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


	@media screen and (max-width: 960px) {
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
			height: 100%;
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
			
			
			''response.write giaNo
			Dim UserMSG
			UserMSG = ""
			If trim(request("SRCAdd"))="license" Then
					UserMSG = "<font color='green'><b>Report License request added successfully!</b></font>"
			End If
			
           
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
				<%'title=strReportTitle%>
				
				<!--INCLUDE FILE="newReportTitle_New1.asp" -->
  <!-- Header / End --> 
  
</div>

<div class="container flo"> 
  <!-- Page Content -->
  <div class="page-content"> 
    <!-- 960 Container -->
    <div class="container"> 
      <!-- Texts -->
      <div class="w-100" >
        
        <div class="row">

		
						<!--include file="Lables_new.asp"-->
					<form name="frmGRP1" method="post" >
					  <div class="w-100" style="margin-bottom:40px;"> 
					
						<!--Panelist--> 
						<!--<%'=uname%><br> <%'=company%>&nbsp;<br><%'=Replace(FormatDateTime(Now,1),daydisplay,"")%><br>-->
						<div class="w-100  text-center  modules_page_title text-center"> <h3>VIEW MESSAGES TO COLLEAGUES</h3></div>
						
						<!--<p class="earnclass1 mb-4 mt-3 font-weight-bold" style="text-align:center;font-size:16px;">Add up to 9 people to collaborate</p>-->
						
						<p class="earnclass1" style="text-align:center;font-size:14px;">
						<%
						If trim(UserMSG)<>"" then
						''UserMSG
						response.write trim(UserMSG)
						End If
						%>				
						</p>
						<div class="w-100">
							<table class="table p-0 m-0" id="responsive_message_table">
								<thead style="backaground-color:#FFF1EB">
									<tr role="row">
										<th role="columnheader" scope="col">SNO</th>
										<th role="columnheader" scope="col">DATE</th>
										<th scope="col" role="columnheader">SUBJECT</th>
										<th role="columnheader" scope="col">MAIL-ID</th>
										<th role="columnheader" scope="col">MESSAGE</th>
										<!--<td role='
							columnheader'>OPTIONS</td>-->
									</tr>
								</thead>
								<tbody role="rowgroup">
								<%
								Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RSMessage = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						'RSMessage.CursorType = 3					
						SQLmsg="select * from App_User_Collaborate_Messages  where to_id in (select email_id from App_User_Collaborate WHERE   collborate_id='" & trim(REQUEST("code"))& "' and encid='" & trim(request("encID")) & "')"
						''response.write SQLmsg
						'response.end
						RSMessage.open SQLmsg, conn9
						if not RSMessage.eof then						
												
						
							While not RSMessage.eof
							''emailmessage_id,from_id,message_subject,message_text, 
								%>
									<tr role="row">
										<td role="cell" data-label="SNO">1</td>
										<td role="cell" data-label="Date"><%=RSMessage("Date_sent")%></td>
										<td role="cell" data-label="SUbject"><%=RSMessage("message_subject")%></td>
										<td role="cell" data-label="MAIL-ID"><%=RSMessage("from_id")%></td>
										<td role="cell" data-label="MESSAGE">
											<span class="more"><%=RSMessage("message_text")%></span>
										</td>
									</tr>
							<%RSMessage.movenext
							Wend
							end if
							%>
								</tbody>
							</table>
						</div>
						
						<br>
						
											

						<div  class="text-center">
						<!--<input type="submit" class="btntext" name="btnsubmit" onclick="return validateform();" value="SAVE & NEXT" style="width:130px; display:block; margin:0 auto !important; float:none; font-weight:bold; font-size:15px;">
						<button type="submit" class="btn btn-gia-primary shadow rounded-0 mx-auto" name="btnsubmit" onclick="return validateform();" value="INVITE"><small>SEND MESSAGE</small></button>-->
						</div>
							<!--font color='red' style="font-size: 13px;font-style: italic;padding-left: 28px">We use your participation for use in our research projects and to contact you.</font-->
						</p>
						<p>
						
						
						</div>
						</form>
					 
				  
					  
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
<script
  src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="  crossorigin="anonymous"></script>
<script>


	$(document).ready(function() {
		// Configure/customize these variables.
		var showChar = 100;  // How many characters are shown by default
		var ellipsestext = "...";
		var moretext = "More";
		var lesstext = "Less";
		
	
		$('.more').each(function() {
			var content = $(this).html();
	 
			if(content.length > showChar) {
	 
				var c = content.substr(0, showChar);
				var h = content.substr(showChar, content.length - showChar);
	 
				var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
	 
				$(this).html(html);
			}
	 
		});
	 
		$(".morelink").click(function(){
			if($(this).hasClass("less")) {
				$(this).removeClass("less");
				$(this).html(moretext);
			} else {
				$(this).addClass("less");
				$(this).html(lesstext);
			}
			$(this).parent().prev().toggle();
			$(this).prev().toggle();
			return false;
		});
	});
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
