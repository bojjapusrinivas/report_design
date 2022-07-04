<%@ LANGUAGE="VBScript" %>
<!--#include file="adovbs.asp"-->
<!--#include file="ASPIncludes/DBopen1.asp"-->
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
Function GetMCPCode(GIANo)					
		Set rsDisp = Server.CreateObject("ADODB.Recordset")
		rsDisp.ActiveConnection = con
		rsDisp.CursorType = 3
		''''usqlReport="select * from REPORTS_GIA$ where GIA_NO='"&trim(CodeSET)&"'"
		usqlReport="select * from stat_globind.dbo.vw_Gsbr_MCPnewtopic where (Newcode='"&trim(GIANo)&"' OR code='"&trim(GIANo)&"')"
		'response.write usqlReport
		'response.end
		rsDisp.Open usqlReport
		IF not rsDisp.EOF THEN	
			
			GetMCPCode = Trim(rsDisp("code"))
			''response.write YearSET
		
			''response.end
		Else
			GetMCPCode = 1
		End If
		Set rsDisp = Nothing
End Function


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

DIM RPT_MCP_CODE
	RPT_MCP_CODE = ""
	Set Conn = Server.CreateObject("ADODB.Connection")
	Set RS = Server.CreateObject("ADODB.Recordset")
	Conn.Open DataSource

	
	If session("isMCP") = "N" then
		SQL = "SELECT * FROM MCPNewTopic WHERE (NewCODE='" & session("ReportCode") & "' OR CODE='" & session("ReportCode") & "')"
	Else
		SQL = "SELECT * FROM MCPNewTopic WHERE (NewCODE='" & session("ReportCode") & "' OR CODE='" & session("ReportCode") & "')"
	End If
	''response.write sql
	RS.Open SQL, conn,1,2
	If Not RS.EOF Then
			giacode=Trim(RS("newcode"))
			strReportTitle = Trim(RS("title"))
			Companies_List = Trim(RS("companyNames"))
			CpCodes=Trim(RS("CPCodes"))
			region=Trim(RS("region"))
			title= Trim(RS("title"))
			''If session("isMCP") = "Y" Then
			  Segment_List = Trim(RS("Segments_Covered"))
			''End if
			session("ReportTitle") = (Trim(RS("title")))
			RPT_MCP_CODE = Trim(RS("code"))
	End If
	set RS = nothing
	set conn = Nothing
	session("giacode")=giacode
	
	intRptID = Trim(request("code"))
	code = Trim(request("code"))
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


If session("ReportCode") ="" then
   ''session("ReportCode") = Trim(request("code"))
	session("ReportCode") = GetMCPCode(Trim(request("code")))
End If
session("code")=GetMCPCode(Trim(request("code")))
reportcode=session("code")
'response.write session("code")
'response.end
  Set rsInfluencer = Server.CreateObject("ADODB.Recordset")
						''rsInfluencer.ActiveConnection = DataSource4
						''usqlinf="select Sno, FILENAME,Email,Last_Name,First_Name,CompanyName from vwInfluencersPeople where Email is not null and Email='"&trim(request("txtemailid"))&"'"
						usqlinf="select Sno, FILENAME,Email,Last_Name,First_Name,CompanyName from vwInfluencersPeople where Email is not null and remoteid='"&trim(request("remoteid"))&"'"
						'EmailStatus
						rsInfluencer.Open usqlinf ,DataSource4
						if not rsInfluencer.EOF THEN
						
							session("UID")=trim(rsInfluencer("sno"))
							session("UserID")=trim(rsInfluencer("sno"))
							session("EID")=trim(rsInfluencer("Email"))
							''response.write "hi"
							''response.end
							session("PrevAccess")="Y" 'trim(rsInfluencer("Status"))
							session("usrname")="Welcome "&  " "&trim(rsInfluencer("Last_Name"))
							session("sendmail")="yes"
							session("LogDetails1")=""
							session("usrname1")= trim(rsInfluencer("First_Name")) & " "&trim(rsInfluencer("Last_Name"))
							session("First_Name")= trim(rsInfluencer("First_Name"))
							session("Last_Name")= trim(rsInfluencer("Last_Name"))
							session("company")= trim(rsInfluencer("CompanyName"))
							company = trim(rsInfluencer("CompanyName"))
							session("usrSalutation1")= "" ''trim(rsInfluencer("Salutation"))
							uname = trim(rsInfluencer("First_Name")) & " " & trim(rsInfluencer("Last_Name"))
							session("uname")=uname
							
							'response.write uname
							'response.end
						Else
							''response.write request("fname") & " " & request("lname")
							''response.write "insert into InfluencersPeople (sno, Filename, CompanyName, EmployeeID, First_Name, Last_Name, Title, Email, Influencer_Status,  Influencer_Tier, remoteid) values (dbo.GetMaxInfluencersPeople(),'','" & Trim(request("company")) & "','','" & Trim(request("fname")) & "','" & Trim(request("lname")) & "','" & Trim(request("title")) & "','" & Trim(request("email")) & "','Yes','ETB','" & Trim(request("remoteid")) & "')"
							session("EID")=trim(request("Email"))
							session("PrevAccess")="Y" 'trim(rsInfluencer("Status"))
							session("usrname")="Welcome "&  " "&trim(request("lname"))
							session("sendmail")="yes"
							session("LogDetails1")=""
							session("usrname1")= trim(request("fname")) & " "&trim(request("lname"))
							session("First_Name")= trim(request("fname"))
							session("Last_Name")= trim(request("lname"))
							session("company")= trim(request("company"))
							uname = trim(request("fname")) & " " & trim(request("lname"))
							session("uname")=uname

							'response.end
						End if
						Set rsInfluencer = nothing
If Trim(session("UserID")) ="" then
   ''response.redirect "https://www.strategyr.com/GIA_Research_Program.asp?code="&Trim(request("code"))&"&SessOUT=True"
End If

Dim isNTCnt
If Trim(reportcode)<>"" Then
  ''isMCPCnt = InStr("MCP-1001","-")
 isMCPCnt = InStr(reportcode,"-")
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

If Trim(reportcode)<>"" Then
	Dim ColleagueCount
	ColleagueCount = 1
	If session("UserID")<>"" then
		Set Conn = Server.CreateObject("ADODB.Connection")
		Set RSCnt = Server.CreateObject("ADODB.Recordset")
		Conn.Open DataSource6
		RSCnt.CursorType = 3
		getGenDataCntSQL="SELECT max(SeqNo) as cnt FROM DEPQ_EnterpriseEmails WHERE userid='" & session("UserID")& "' and reportcode='"&trim(reportcode)&"' GROUP BY ReportCode, ReportID"
		RSCnt.open getGenDataCntSQL, conn
		
		if not RSCnt.eof then	
			 ColleagueCount = RSCnt(0)
		 Else
			 ColleagueCount = 1
		End If

		set RSCnt = nothing
		set conn = nothing
		''response.write getGenDataCntSQL & " yyy" & session("EID")
	End If
	'''''response.write "Colleague count="&ColleagueCount
End If%>

<%''''''''REGISTRATION PROCESS FOR THE INFLUECENRS LIST'''''''''''''''%>

<!--#include file="GIA_Influencer_Login.asp"-->

<%'''''''''''''''''''END OF THE PROCESS ''''''''''''''''''''''''''''''%>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>Research Modules - Global Industry Analysts, Inc.</title>

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
   

   var rowval=$("#txtCountColleague").val(); 
   ///alert(rowval);
   rowval = parseInt(rowval) + 1;
    $("#txtCountColleague").val(rowval);
	
       var data = '<tr class="table-row"><td colspan="7" style="font-size:14px;color:#0080C2;">Add Colleague #'+rowval+'</td></tr><tr class="table-row" id="table-row-'+rowval+'"><td width="30%" align="right">&nbsp;</td>'+
       '<td width="30%" align="right">First&nbsp;Name&nbsp;&nbsp;</td><td width="70%" align="left">'+
	   '<input type="text" id="txt'+rowval+'FName" name="txt'+rowval+'FName" value="<%=Trim(Trim(vtxt1FName))%>"></td>'+
	   '<td width="30%" align="right">Last&nbsp;Name&nbsp;&nbsp;</td><td width="70%" align="left">'+
	   '<input type="text" id="txt'+rowval+'LName" name="txt'+rowval+'LName" value="<%=Trim(request("txtName"))%>"></td>'+
	   '<td width="30%" align="right">Email&nbsp;</td><td width="70%" align="left">'+
	   '<input type="text" id="txt'+rowval+'Email" name="txt'+rowval+'Email" value="<%=Trim(request("txtEmail"))%>"></td>'+
	   '<td align="right" valign="middle"><button type="button" class="button1" name="Add_Colleague" onClick="addToDatabase('+rowval+');" value="ADD COLLEAGUE" style="width:140px;">ADD COLLEAGUE</button></td></tr>';
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
<style>
body{line-height:19px !Important;}
.head_title_block h3 {
	font-size: 18px;
}
.head_title_block h4 {
	font-size: 16px;
}
.head_title_block h2, .head_title_block h3, .head_title_block h4 {
	margin: 1px 0px !important;
}
.important_note h3, .important_note p {
	margin: 1px 0px !important;
	line-height: 18px !important;
}
#top_ang {
	margin-top: -32px;
	margin-left: 6px;
	fill: none;
	stroke: none;
}
.pannel {
	display: none;
}
</style>

<style>
a.selected {
  background-color:#1F75CC;
  color:white;
  z-index:100;
}

.messagepop {
  background-color:#FFFFFF;
  border:1px solid #999999;
  cursor:default;
  display:none;
  margin-top: -57px;
  position:absolute;
  text-align:left;
  width:394px;
  z-index:50;
  padding: 25px 25px 20px;
}



label {
  display: block;
  margin-bottom: 3px;
  padding-left: 15px;
  text-indent: -15px;
}

.messagepop p, .messagepop.div {
  border-bottom: 1px solid #EFEFEF;
  margin: 8px 0;
  padding-bottom: 8px;
}


#Table2 tr td{
	padding:2px 1px !important;

}



.responsive_table { 
  width: 100%; 
  border-collapse: collapse; 
}

.responsive_table table{
	widtH:80%;
}
.addmore_block{
	width:90%;
}
/* Zebra striping */

td, th { 
  padding: 6px; 
  text-align: left; 
}
.add_more_btn{
	float:right;
	width:140px;

}

.save_next_btn{
width:140px; 
display:block; 
margin:0 auto; 
float:none; 
font-weight:bold; 
font-size:15px;"

}


@media only screen and (min-width:110px)and (max-device-width: 960px)  {


.add_more_btn{
	float:left;
	width:140px;

}

.save_next_btn{
width:140px; 
display:block; 
margin:0 auto; 
float:none;
font-weight:bold; 
font-size:15px;"

}


	.responsive_table table{
	widtH:100%;
}
.addmore_block{
	width:100%;
}

	
	table, thead, tbody, th, td, tr { 
		display: block; 
	}
	
	
	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	
	
	td { 
		
		border: none;
		
		position: relative;
	
	}
	
	td:before { 
	
		position: absolute;
		
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
	}
	
	
	
	/*
	td:nth-of-type(1):before { content: "First Name"; }
	td:nth-of-type(2):before { content: "Last Name"; }
	td:nth-of-type(3):before { content: "Job Title"; }
	td:nth-of-type(4):before { content: "Favorite Color"; }
	td:nth-of-type(5):before { content: "Wars of Trek?"; }
	td:nth-of-type(6):before { content: "Secret Alias"; }
	td:nth-of-type(7):before { content: "Date of Birth"; }
	td:nth-of-type(8):before { content: "Dream Vacation City"; }
	td:nth-of-type(9):before { content: "GPA"; }
	td:nth-of-type(10):before { content: "Arbitrary Data"; }*/
}

/*===============================

	EQUESTINER PAGE 

============================*/

.desktop_display{

	display:block;


}


.mobile_display{

	display:none !important;
}

@media only screen and (max-width: 759px) {

.desktop_display{

	display:none !important;

}



.mobile_display{
	display:block !important;
	width: 120px !important;
    height: auto;
    float: right !important;
	top:0px;

}
.earnclass{
	font-weight:bold; 
	color:#900;
	line-height: 25px;
	text-align:center !important;
	font-size:18px;
}



}
.earnclass{
	font-weight:bold; 
	color:#900;
	line-height: 25px;
	text-align:right;
	font-size:18px;
}
</style>
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
		
		
		
			var x;
			x=0;
			
			for(i=0;i<document.forms[0].elements.length;i++)
  			{
				if (document.forms[0].elements[i].name=="Curated")
				{
					if (document.forms[0].elements[i].checked==true)
					{
						x=1;
					}
				}
				
			}			
			
			if (x==0)
			{
				alert("Please select an option of Curated.");
				//document.frmGRP1.RDAgree.focus();
				return false;
			}
			       
			/////Curated checking
           if (x==1)
			{   
			        var z;
					z=0;
					var radioValue = $("input[name='Curated']:checked").val();
					
					var encIDValue = $("input[name='encID']").val();
					var codeValue = $("input[name='code']").val();
					//alert (encIDValue);
					if(radioValue == 'Enterprise-Curated')
					{
							document.frmGRP1.method='post';
							document.frmGRP1.action = "GIA_Research_collaborate.asp?code="+codeValue+"&encID="+encIDValue;
                         
					}	

					if(radioValue == 'Self-Curated')
					{
						//encID
						document.frmGRP1.method='post';
						document.frmGRP1.action = "https://www.strategyr.com/Ancillaries_1.asp?code="+codeValue+"&encID="+encIDValue;
					}
					if(radioValue == 'universal')
					{
						//encID
						document.frmGRP1.method='post';
						document.frmGRP1.action = "https://www.strategyr.com/Ancillaries_1.asp?code="+codeValue+"&encID="+encIDValue;
					}
			}				
				
         ////Curated end   	
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

<link rel='stylesheet' href="css/gia_switches2.css" async>
 <link rel="stylesheet" href="css/labels.css">
   <link rel="stylesheet" href="css/landing_page_new.css" />
   <link rel="stylesheet" href="css/title.css" />
</head>
<body ><!--onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0"-->
<!-- Wrapper / Start -->
<div id="wrapper" class="bor-radius">
 <div id="top-line" style="box-shadow:none; height:5px;"> </div>
<div class="container flo">
<div class="card card-body rounded-0 p-2 border-0">
				<!--<h4 class="font-weight-bold my-0 border-bottom text-center font-size-20"> REPORT</h4>-->
			</div >
<header id="header">
            <!-- Logo -->
            <div class="logo_block w-xl-90 w-lg-90 w-md-90 w-100 mx-auto">
                <div>
                    <!--div class="log_img">
                         <a href="https://www.strategyr.com/default.asp"><img src="GIA_Images/images/log_icon.png" class="log_ico"/></a>
                         </div-->
                    <div class="logo_text px-4">

                        <img src="images/strategyr_logo.svg" class="strategyrR_logo" />
                        <!--img src="GIA_Images/images/gia_banner.png" /-->
                        <!--h4>A Worldwide Business Strategy & Market Intelligence Source</h4-->
                        <!--h4>AI-Powered Market Intelligence Curated by Domain Experts</h4-->
                        <!--<h4>Influencer Driven AI Powered Real-Time Market Intelligence</h4>-->
                    </div>
                </div>
            </div>
            <div class="row site_tag_line mx-4 mb-2 d-md-none d-sm-none">
                StrategyR is a trade mark of Global Industry Analysts, Inc. USA
            </div>
            <div class="row site_tag_line mx-4 mb-2 d-lg-none d-xl-none">
                A trade mark of Global Industry Analysts, Inc.
            </div>
        </header>

			
<!-- Content
================================================== -->
   
  <!-- Header -->
       
    <!-- Logo start -->   
      <!-- Logo end -->
			<% dim rcode
					''' If the form is submitted
					''' btnsubmit" value="Let`s get started!"		
			''' CHECK TO SEE IF WE HAVE NEW REPORT OR OLD REPORT (mcp-1001) OR (MCP10001)
			Dim RPTCodeGIA
			RPTCodeGIA = Trim(reportcode)
			'''If it is old report with mcp-1001
			If InStr(RPTCodeGIA,"-")>0 then
				Set Conn1 = Server.CreateObject("ADODB.Connection")
				Set RS1 = Server.CreateObject("ADODB.Recordset")
				Conn1.Open DataSource
				RS1.CursorType = 3			
				''SQL1="SELECT *,dbo.ReturnMCPIDSubtitle(code) as subtitle  from gsbr WHERE code='" & Trim(RPTCodeGIA)& "'"	
				SQL1="SELECT *,dbo.ReturnMCPIDSubtitle(code) as subtitle  from vw_Gsbr_MCPnewtopic WHERE (code='" & Trim(RPTCodeGIA)& "' OR newcode='" & Trim(RPTCodeGIA)& "')"
				rs1.open sql1, conn1				
				if not rs1.eof then
					title = trim(rs1("title"))
					ReleaseDate = rs1("DOP") 
					subtitle = rs1("subtitle")
					code = trim(rs1("code"))
				end If
				''response.write subtitle
				set rs1=nothing
				set conn1=nothing
			Else
			''' If it is a new report with MCP10001
				Set Conn = Server.CreateObject("ADODB.Connection")
				Set RS = Server.CreateObject("ADODB.Recordset")
				Conn.Open DataSource

				SQL = "SELECT *,dbo.ReturnSegnames(newcode) as segments,gia_analytix.dbo.GetTotTablesbygiano(newcode) as TablesCount, (SELECT COUNT(*) AS DominExperts FROM GIA_MC_PROGRAM.dbo.vwInfluencersPeople WHERE (MCPCODES LIKE '%" & RPTCodeGIA & "%')) AS dominexperts FROM MCPNewTopic WHERE (code='" & Trim(RPTCodeGIA)& "' OR newcode='" & Trim(RPTCodeGIA)& "')"
				''response.write SQL
				RS.Open SQL, conn,1,2
				If Not RS.EOF Then
						title = UCase(Trim(RS("title")))
						code = Trim(RS("code"))
						giaNo = Trim(RS("newcode"))
						abstract = Trim(RS("mcp_abstracts"))
						companies = Trim(RS("companies"))
						datatables =RS("market_data_tables")
						segments = Replace(Trim(RS("segments"))," ;",", ")
						pages = Trim(RS("pages"))
						ReleaseDate = Trim(RS("DOP"))
						'response.write companiescount
				End If
				set RS = nothing
				set conn = nothing
			End If			
               
            if trim(request("btnsubmit"))="SAVE & NEXT" then						
                    '' If request("Curated")="Self-Curated" Then
                    ''        response.Redirect("GIAM_Marketdata_Standardization.asp?code="&request("code"))
					'' Elseif request("Curated")="Enterprise-Curated" Then
					  '' response.Redirect("GIAM_Marketdata_Standardization.asp?code="&request("code"))						
			        ''  End If	
					  If request("Curated")="Self-Curated" Then
                            response.Redirect("GIA_Marketdata_Standardization.asp?code="&session("code"))
					 Elseif request("Curated")="Enterprise-Curated" Then
						''response.write request("Curated")
						If Trim(request("txt1Email")) <> "" then 
							response.Redirect("GIA_Marketdata_Standardization.asp?code="&session("code"))
						End If
					End if
			end If
			%>
				
		<!-- <div class="sixteen columns">
      <p class="user_name"> Welcome <%=uname%></p>
    </div>-->
  
  <!-- Header / End --> 
  
</div>

<div class="container flo"> 
  <!-- Page Content -->
  <div class="page-content"> 
    <!-- 960 Container -->
    <div class="w-100"> 
      <!-- Texts -->
      <div class="w-100" >
        <hr/>
		<!--#INCLUDE FILE="newReportTitle_New1.asp" -->	
		<!--include file="Lables_new.asp"-->
        <div class="row">

		<%
		''response.write "Company = "&Session("company")
		''response.write trim(session("UserID"))
		'response.end
		
				
				If Trim(request("encID"))<>"" then
					If session("security_code") ="" then
					   session("security_code") = Trim(request("encID"))
					End If
				Else
					session("security_code") = ""
				End If
			'''User_Type = "Collaborator" [Sent email to collaborate on the report]
			'''User_Type = "Customer" [how bought a report or have registered on the StrategyR portal]
			'''User_Type = "Influencer" [850K Influencers profiled on the website]
			'''User_Type = "User" [general user from APP or any other source will be this]

			 Dim User_Type, CMP_logo, Projects_Count, Expert_Count, Report_Purchase_status
			 User_Type = "User" 
			 CMP_logo = "https://www.strategyr.com/images/gia_smalllogo.png"
			 Expert_Count = "NA"
			 Projects_Count = "NA"
			 Session("First_Name")=""
			 Session("Last_Name")=""
			 Session("company")=""
			 Report_Purchase_status = "NO"
			 
			 If trim(session("security_code"))<>"" Then
				If trim(Request("Email_ID"))="" Then
						'' send mail to sales@strategyr.com and rsd@strategyr.com , Subject: Interested in Research Partnership Program.
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3					
						''SQL9="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; SELECT Company_CP_Code,UserId,user_SurName,LastName,firstname,user_company,address1 +' '+ Address2 +' '+ city +' '+ state +' '+ zip as Address,country,user_website,telephone,fax,jobfunction,user_position,CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID FROM [user_master] WHERE security_code='" & session("security_code")& "'"
						SQL9="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; SELECT Company_CP_Code,UserId,user_SurName,LastName,firstname,user_company,address1 +' '+ Address2 +' '+ city +' '+ state +' '+ zip as Address,country,user_website,telephone,fax,jobfunction,user_position,CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID FROM [user_master] WHERE (Security_Code = '" & session("security_code") & "' or user_license_code='" & session("security_code") & "')"
						'''response.write SQL9
						rs9.open sql9, conn9
						if not rs9.eof then
						''''response.write "USER"
							UserId = trim(rs9("UserId"))
							company = trim(rs9("User_company"))
							address = trim(rs9("address"))
							country = trim(rs9("country"))
							url = trim(rs9("user_website"))
							phone = trim(rs9("telephone"))
							fax = trim(rs9("fax"))
							JobFunction = trim(rs9("JobFunction"))
							userposition= trim(rs9("user_position"))
							Company_CP_Code = trim(rs9("Company_CP_Code"))
							First_Name = trim(rs9("firstname"))
							Last_Name = trim(rs9("LastName"))
							Session("First_Name")=First_Name
							Session("Last_Name")=Last_Name
							Session("company")=company
							User_Type = "Customer"
							session("EID")=trim(rs9("emailid"))
							session("UserID") = trim(rs9("UserId"))
							'''response.write "Company_CP_Code"& Company_CP_Code
							If instr(trim(ucase(Company_CP_Code)),"CP-")>0 then
								Set Conn6 = Server.CreateObject("ADODB.Connection")
								Set RS6 = Server.CreateObject("ADODB.Recordset")
								Conn6.Open DataSource4
								RS6.CursorType = 3
								
								SQL6="select [Filename],[Company],Logo_local,[Country],[Website],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[Cmp_hidden_code],[Filename_MD5],[code_MD5] from Stat_Globind.dbo.Company_Interface_Variables a, InfluencersCompanies  b where a.company_cp_code=b.filename and b.filename='"&Company_CP_Code&"'"
								''SQL6="SELECT [sno],[Filename],stat_globind.dbo.DistinctList((select (select distinct string_agg( ecosystems,', ') from stat_globind.dbo.mcpnewtopic where code in (select distinct token from dbo.string_split(mcpcodes,';'))) from gia_mc_program.dbo.InfluencersCompanies where filename=[GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople].filename),', ') as ecosystems ,[Company],Logo_local,[Country],[Website],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[Cmp_hidden_code],[Filename_MD5],[code_MD5]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE app_login_code='" & session("security_code")& "'"
								rs6.open sql6, conn6
								''response.write SQL6
								if not rs6.eof then
									company = trim(rs6("Company"))
									country = trim(rs6("country"))
									url = trim(rs6("Website"))
									Company_CP_Code = trim(rs6("Filename"))
									CMP_logo = trim(rs6("Logo_local"))
									Expert_Count = trim(rs6("cmp_Expert_Pool_Count"))
									Projects_Count = trim(rs6("cmp_Projects_Count"))
									Competitors_Count = trim(rs6("cmp_Competitors_Count"))
									ecosystems = "" ''trim(rs6("ecosystems"))
								End If								
								Set RS6 = Nothing
								Set Conn6 = Nothing
							End If
							
							''''''' ALSO CHECK IF USER HAS PURCHASED THIS Report - check the trasanction table
							Set Conn7 = Server.CreateObject("ADODB.Connection")
							Set RS7 = Server.CreateObject("ADODB.Recordset")
								Conn7.Open DataSource
								RS7.CursorType = 3
															  
								SQL7="select * from [Stat_Globind].[dbo].[TBL_User_Transaction] where [Trans_Status]='M' and Report_ID='"&trim(RPT_MCP_CODE)&"' and Report_Type='Report' and user_id="&UserId&""
								rs7.open sql7, conn7
								if not rs7.eof then
									Report_Purchase_status = "YES"
								End If								
							Set RS7 = Nothing
							Set Conn7 = Nothing
							'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
							''response.write "RPT_MCP_CODE = "&Report_Purchase_status
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
							''''' CHEKC TO SEE IF THE USER IS FROM INFLUENCERPEOPLE TABLE
							Set Conn6 = Server.CreateObject("ADODB.Connection")
							Set RS6 = Server.CreateObject("ADODB.Recordset")
							Conn6.Open DataSource4
							RS6.CursorType = 3
							SQL6="SELECT [sno],[Filename],stat_globind.dbo.DistinctList((select (select distinct string_agg( ecosystems,', ') from stat_globind.dbo.mcpnewtopic where code in (select distinct token from dbo.string_split(mcpcodes,';'))) from gia_mc_program.dbo.InfluencersCompanies where filename=[GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople].filename),', ') as ecosystems ,[Address],[CompanyName],[PhoneNumber],[FaxNumber],Logo_local,[Country],[Website],[First_Name],[Last_Name],[Title],[JobFunction],[Email],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[CMPCountry],[Influencer_Tier],[Logo_local],[Market_Acumen],[Cmp_hidden_code],[Filename_MD5],[Sending_Status],[code_MD5],[company_website],[app_login_code]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE app_login_code='" & session("security_code")& "'"  
							''' (Security_Code = '" & session("security_code") & "' or user_license_code='" & session("security_code") & "')
							rs6.open sql6, conn6
							''response.write "sql = "&SQL6
							if not rs6.eof then
								company = trim(rs6("CompanyName"))
								address = trim(rs6("address"))
								country = trim(rs6("country"))
								url = trim(rs6("Website"))
								phone = trim(rs6("PhoneNumber"))
								fax = trim(rs6("FaxNumber"))
								JobFunction = trim(rs6("JobFunction"))
								userposition= trim(rs6("Title"))
								Company_CP_Code = trim(rs6("Filename"))
								First_Name = trim(rs6("First_Name"))
								Last_Name = trim(rs6("Last_Name"))
								Session("First_Name")=First_Name
								Session("Last_Name")=Last_Name
								Session("company")=company
								User_Type = "Influencer"
								session("EID")=trim(rs6("Email"))
								session("UserID") = trim(rs6("sno"))
								CMP_logo = trim(rs6("Logo_local"))
								Expert_Count = trim(rs6("cmp_Expert_Pool_Count"))
								Projects_Count = trim(rs6("cmp_Projects_Count"))
								Competitors_Count = trim(rs6("cmp_Competitors_Count"))
								ecosystems=trim(rs6("ecosystems"))
							End If
							
							Set RS6 = Nothing
							Set Conn6 = Nothing
						end if
						
						if trim(First_Name)<>"" then
							uname = Trim(First_Name) & " " & Trim(Last_Name)
						else
							uname = "New User"
						end if
						set rs9 = nothing
						set conn9 = Nothing
	else
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3					
						SQL9="SELECT *  FROM [App_User_Collaborate] WHERE [Email_ID]='" & trim(request("Email_ID"))& "' and Report_ID='"&trim(session("ReportCode"))&"'"		
						'''response.write SQL9
						rs9.open sql9, conn9
						if not rs9.eof then						
							''''' Create session variables here
							''''' First_Name,Last_Name,Email_ID,Report_ID,Collaborate_Type,Segment_Name,Region_Name,Report_Table_Code,Date_Added,Collaborate_Status,Source_Email_ID,Collaborate_Password
							First_Name = trim(rs9("First_Name"))
							Last_Name = trim(rs9("Last_Name"))
							Report_ID = trim(rs9("Report_ID"))
							Region_Name = trim(rs9("Region_Name"))
							Segment_Name= trim(rs9("Segment_Name"))
							EncID= trim(rs9("EncID"))
							company = trim(rs9("company"))
							User_Type = "Collaborator"
							Module_display=trim(rs9("Module_display"))
							Session("First_Name") = trim(First_Name)
							Session("Last_Name") = trim(Last_Name)
							Session("Report_ID") = trim(Report_ID)
							session("EID")=trim(request("Email_ID"))
							session("UserID") = trim(rs9("collborate_id"))
							Session("company")=company
						End IF
						
						if trim(First_Name)<>"" then
							uname = Trim(First_Name) & " " & Trim(Last_Name)
						else
							uname = "New User"
						end if
						''response.write "EMAIL ID = "&trim(uname)
						Set RS9 = Nothing
						Set Conn9 = Nothing
						
						'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
						''''''CHECK IF THE USER HOW SENT THE INVITE CODE HAS PURCHASED A REPORT''''''''''''
						'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
						'' send mail to sales@strategyr.com and rsd@strategyr.com , Subject: Interested in Research Partnership Program.
						Set Conn9 = Server.CreateObject("ADODB.Connection")
						Set RS9 = Server.CreateObject("ADODB.Recordset")
						Conn9.Open DataSource1
						RS9.CursorType = 3					
						''SQL9="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; SELECT Company_CP_Code,UserId,user_SurName,LastName,firstname,user_company,address1 +' '+ Address2 +' '+ city +' '+ state +' '+ zip as Address,country,user_website,telephone,fax,jobfunction,user_position,CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID FROM [user_master] WHERE security_code='" & session("security_code")& "'"
						SQL9="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; SELECT Company_CP_Code,UserId,user_SurName,LastName,firstname,user_company,address1 +' '+ Address2 +' '+ city +' '+ state +' '+ zip as Address,country,user_website,telephone,fax,jobfunction,user_position,CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID FROM [user_master] WHERE (Security_Code = '" & session("security_code") & "' or user_license_code='" & session("security_code") & "' or app_login_code='" & session("security_code") & "')"
						'''response.write SQL9
						rs9.open sql9, conn9
						if not rs9.eof then
						''''response.write "USER"
							UserId = trim(rs9("UserId"))							
							Company_CP_Code = trim(rs9("Company_CP_Code"))
							
							''response.write "Company_CP_Code"& Company_CP_Code
							If instr(trim(ucase(Company_CP_Code)),"CP-")>0 then
								Set Conn6 = Server.CreateObject("ADODB.Connection")
								Set RS6 = Server.CreateObject("ADODB.Recordset")
								Conn6.Open DataSource4
								RS6.CursorType = 3
								
								SQL6="select [Filename],[Company],Logo_local,[Country],[Website],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[Cmp_hidden_code],[Filename_MD5],[code_MD5] from Stat_Globind.dbo.Company_Interface_Variables a, InfluencersCompanies  b where a.company_cp_code=b.filename and b.filename='"&Company_CP_Code&"'"
								''SQL6="SELECT [sno],[Filename],stat_globind.dbo.DistinctList((select (select distinct string_agg( ecosystems,', ') from stat_globind.dbo.mcpnewtopic where code in (select distinct token from dbo.string_split(mcpcodes,';'))) from gia_mc_program.dbo.InfluencersCompanies where filename=[GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople].filename),', ') as ecosystems ,[Company],Logo_local,[Country],[Website],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[Cmp_hidden_code],[Filename_MD5],[code_MD5]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE app_login_code='" & session("security_code")& "'"
								''response.write SQL6
								''response.end
								rs6.open sql6, conn6
								if not rs6.eof then
									company = trim(rs6("Company"))
									country = trim(rs6("country"))
									url = trim(rs6("Website"))
									Company_CP_Code = trim(rs6("Filename"))
									CMP_logo = trim(rs6("Logo_local"))
									Expert_Count = trim(rs6("cmp_Expert_Pool_Count"))
									Projects_Count = trim(rs6("cmp_Projects_Count"))
									Competitors_Count = trim(rs6("cmp_Competitors_Count")) 
									''ecosystems = trim(rs6("ecosystems"))
								End If								
								Set RS6 = Nothing
								Set Conn6 = Nothing
							End If
							
							
							''''''' ALSO CHECK IF USER HAS PURCHASED THIS Report - check the trasanction table
							Set Conn7 = Server.CreateObject("ADODB.Connection")
							Set RS7 = Server.CreateObject("ADODB.Recordset")
								Conn7.Open DataSource
								RS7.CursorType = 3
															  
								SQL7="select * from [Stat_Globind].[dbo].[TBL_User_Transaction] where [Trans_Status]='M' and Report_ID='"&trim(RPT_MCP_CODE)&"' and Report_Type='Report' and user_id="&UserId&""
								rs7.open sql7, conn7
								if not rs7.eof then
									Report_Purchase_status = "YES"
								End If								
							Set RS7 = Nothing
							Set Conn7 = Nothing
						End If
						Set RS9 = Nothing
						Set Conn9 = Nothing                              
	End If
					if ecosystems <> "" then
					Set Conn7 = Server.CreateObject("ADODB.Connection")
					Set RSEcosystem = Server.CreateObject("ADODB.Recordset")
						Conn7.Open DataSource
						RSEcosystem.CursorType = 3
						SQLeco="select string_Agg( Industry,', ') as ecoSystemsDetails  from industrycode where code in (select token from string_split('" & ecosystems & "',','))"
								RSEcosystem.open SQLeco, conn7
								if not RSEcosystem.eof then
									allecosystems = trim(RSEcosystem("ecoSystemsDetails")) 
								End If								
							Set RSEcosystem = Nothing
							Set Conn7 = Nothing
				end if
				'''response.write "Project count ="&trim(Projects_Count)
				If trim(Projects_Count)="NA" Then
				
							''''' CHEKC TO SEE IF THE USER IS FROM INFLUENCERPEOPLE TABLE
							Set Conn6 = Server.CreateObject("ADODB.Connection")
							Set RS6 = Server.CreateObject("ADODB.Recordset")
							Conn6.Open DataSource4
							RS6.CursorType = 3
							SQL6="SELECT [sno],[Filename],stat_globind.dbo.DistinctList((select (select distinct string_agg( ecosystems,', ') from stat_globind.dbo.mcpnewtopic where code in (select distinct token from dbo.string_split(mcpcodes,';'))) from gia_mc_program.dbo.InfluencersCompanies where filename=[GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople].filename),', ') as ecosystems ,[Address],[CompanyName],[PhoneNumber],[FaxNumber],Logo_local,[Country],[Website],[First_Name],[Last_Name],[Title],[JobFunction],[Email],[cmp_Projects_Count],[cmp_Segments_Count],[cmp_Competitors_Count],[cmp_Expert_Pool_Count],[CMPCountry],[Influencer_Tier],[Logo_local],[Market_Acumen],[Cmp_hidden_code],[Filename_MD5],[Sending_Status],[code_MD5],[company_website],[app_login_code]  FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE app_login_code='" & session("security_code")& "'"
							rs6.open sql6, conn6
							''response.write "sql = "&SQL6
							if not rs6.eof then
								
								Expert_Count = trim(rs6("cmp_Expert_Pool_Count"))
								Projects_Count = trim(rs6("cmp_Projects_Count"))
								Competitors_Count = trim(rs6("cmp_Competitors_Count"))
								ecosystems=trim(rs6("ecosystems"))
							End If
							
							Set RS6 = Nothing
							Set Conn6 = Nothing
				
				End If
				''response.write allecosystems
						
						daydisplay=WeekDayName(Weekday(Now())) & ","
						''EMP_logo=CMP_logo		
						daydisplay=WeekDayName(Weekday(Now())) & ","
						''CMP_logo=""
					''	EMP_logo=""
					Set Conn7 = Server.CreateObject("ADODB.Connection")
					Set RSMCPReport = Server.CreateObject("ADODB.Recordset")
						Conn7.Open DataSource
						RSMCPReport.CursorType = 3
						SQLMCP="select  Sno, code, newcode, Pool_Outreach, Interactions, Participants, Validations from Enterprise_Executive_Engagements where code='" & trim(RPT_MCP_CODE) & "'"
						'response.write SQLMCP
								RSMCPReport.open SQLMCP, con
								if not RSMCPReport.eof then
									Pool_Outreach = trim(RSMCPReport("Pool_Outreach")) 
									Interactions=trim(RSMCPReport("Interactions"))
									Participants=trim(RSMCPReport("Participants"))
									Validations=trim(RSMCPReport("Validations"))
								End If								
							Set RSMCPReport = Nothing
							''Set Conn7 = Nothing
				
  
		
						%>
						<div class="py-3 border-bottom">		
				<!--div class="row my-lg-4 my-md-0 my-xl-4 "-->
                    <div class="d-flex  flex-sm-column flex-md-column flex-lg-row flex-xl-row justify-content-around justify-content-md-center">
						<!-- label start-->
						<%if trim(session("Company_CP_Code"))<>"" and trim(session("FirstName"))<>"" then%>
												
                          
							<%
							sqlCompany="select company as name,website,country,HQ_Add1 as address1,HQ_Add2 as address2,HQ_add3 as address3,logo_local as image_url,facebook_url,twitter_url,linkedin_url,HQ_state as state,HQ_City as city,HQ_zip as zip,employee_count as total_employees,revenues as total_funding_amount,parent_filename  as parent_company_id,industry_listing as industry,industry_listing as ecosystems,case when  (isparent='Y') then 'NULL' when (isjoint_venture='Y') then 'joint-venture' when (issubsidary='Y') then 'subsidiary' when (isbusiness_unit='Y') then 'business-unit' when (isindependent='Y') then 'independent' else '' end as company_type,filename as company_id,filename_MD5 as code,Cmp_hidden_code as cmpid,isParent as is_parent,isBusiness_unit as is_business_unit,BU_filename as bu_company_id,isjoint_venture,JV_filename as jv_company_id,(select count(*) from stat_globind.dbo.mcpnewtopic where code in (select token from dbo.string_split(mcpcodes,';')))  as no_of_reports,gia_company_filter.dbo.ReturnInfluencerCompanyBrandCount(filename) as brand_count,'https://www.strategyr.com/companyinsider.asp?code='+filename_MD5 + '&cmpID='+Cmp_hidden_code as company_link,cmp_competitors_count as competition_count,cmp_expert_pool_count as expert_pool_count from GIA_MC_PROGRAM.dbo.VW_InfluencerCompanies_Report_Count where filename ='" & session("Company_CP_Code") & "'"
							Set rsCompany = Server.CreateObject("ADODB.Recordset")
							rsCompany.ActiveConnection = DataSource1
							rsCompany.Open sqlCompany
							if not rsCompany.EOF then
								companyimage=rsCompany("image_url") ''https://marketglass.com/uploads/images/7/h/j/3/z/ibm.png
								Projects=rsCompany("no_of_reports")
								expert_pool_count=rsCompany("expert_pool_count")
								competition_count=rsCompany("competition_count")
							end if
							
							%>
						<div class=" mx-0 px-0 w-xl-40 w-lg-40  w-sm-100 w-md-100 d-flex justify-content-start justify-content-md-center report_lable" >
                            <div id="label_container" class="bg-white    w-100 mb-0 pb-0  ">
                                <div class="top_block mt-0 text-center ">
                                    <h3 class="font-weight-bold  pb-2  text-center"> <%=ucase(session("FirstName"))%>&nbsp;<%=ucase(session("LastName"))%></h3>
									<h6 class="text-dark mb-1 p-0 mx-0 px-0 textlimit35"><%=session("company")%></h6>
                                </div>
                            </div>
                        </div>
					<%end if %>
					</div>
				</div>				
					<form name="frmGRP1" method="post" >
					  <div class="w-100" > 
					  <p id="table-body1"></p>
						
						<p class="earnclass1" style="text-align:center;font-size:16px;color:#169FE6;font-weight:bold;">Earn Research Credit&nbsp;&nbsp;</p>
						
						<h4 style="font-weight:bold;">Expertise To The Power Of YOU!</h4>
						<ul style="list-style-type:disc;padding-left:26px;">
						<li style="padding-bottom: 10px;font-size:14px;line-height:19px">Share your domain expertise and earn purchase credits for this research project.</li>
						<li style="font-size:14px; line-height:19px">Invite colleagues to collaborate on your questionnaire who bring geographically focused deep domain knowledge in marketing or sales or business development at operations worldwide. Simply use the "COLLABORATE" option and enter invitee's name and email for validation. Invitee contributions are credited to your account. Each invitee's participation is appreciated with complimentary copies of your purchased report! </li>
						</ul>
												

						<!--h4 style="font-weight:bold;font-size: 14px;"><font color='red'>We respect your privacy!</font></h4-->
						<div style="font-size: 14px;" class="d-flex flex-column toggle">
							<div class="mb-2 mr-3"><input type="radio" class="ml-0" name="Curated" value="Self-Curated" id="Curated2" customatt="radio_option" data-toggle="#universal_options" checked><b>INDIVIDUAL</b></div>
							<div class="mb-2 mr-3">
								<div class="w-100">
									<input type="radio" name="Curated" value="universal" id="Curated3" customatt="radio_option" data-toggle="#universal_options" >
									<b>UNIVERSAL</b>
								</div>
								<div class=" w-100 target" id="universal_options">
									<div style="font-size: 14px; font-weight:300;" class="d-flex flex-lg-row flex-xl-row flex-md-row flex-sm-column ml-3 pl-1 mt-2">
										<div class="mb-2 mr-3"><input type="radio" class="ml-0" name="universal" value="anaylist" id="universal" ><b>ANAYLIST</b></div>
										<div class="mb-2 mr-3"><input type="radio" name="universal" value="compitator" id="universal" ><b>COMPITATOR</b></div>
										<div class="mb-2 mr-3"><input type="radio" name="universal" id="universal" value="expert panel" ><b>EXPERT PANEL</b></div>
									</div>
								</div>

							</div>
							<div class="mb-2 mr-3"><input type="radio" name="Curated" id="Curated1" value="Enterprise-Curated" ><b>COLLABORATE</b></div>
						</div>

						
						<h4 style="color:#0080C2;font-size:14px;font-weight:bold;">Collaborate with Colleagues!</h4>
						
						We strongly encourage you to collaborate across your enterprise for expeditious and efficient participation. Please invite product management, marketing and sales executives in multiple key geographies where your company has significant presence. All participants will receive complimentary copies when you subscribe. You may additionally apply earned dollar credits to purchase any reports from our portal. <br/>
						
										
						
					
						<div style="margin-top:30px" class="text-center">
						<input type="hidden" name="code"  value="<%=Trim(request("code"))%>">
						<input type="hidden" name="encID"  value="<%=Trim(request("encID"))%>">
						<button type="submit" class="button1 mx-auto rounded-0 shadow " style="width:60px;font-weight:bold; " name="btnsubmit" onclick="return validateform();" value="NEXT">NEXT</button>

						</div>
							<!--font color='red' style="font-size: 13px;font-style: italic;padding-left: 28px">We use your participation for use in our research projects and to contact you.</font-->
						
						<p>
						<!--h4 style="font-weight:bold;font-size: 14px;">MARKET DATA STANDARDIZATION</h4>
						<font color='red' style="font-size: 14px;">This is mandatory prior to getting started on the questionnaire.</font> <br/><br/>

						<strong style="font-size: 14px;">Check all that apply:</strong> Share your additional thoughts in the "NOTES" link.<br/>
						<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table2" style="border-collapse:none;">
							<tbody>
							 
							</tbody>
						</table>

						
						</p><br/>
						<input type="submit" class="btntext" name="btnsubmit" onclick="return validateform();" value="GET STARTED!" style="width:130px; display:block; margin:0 auto !important; float:none; font-weight:bold; font-size:15px;"-->
						
						</div>
						</form>
					  <br/>
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
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->
</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../scripts/radion_button_check/jquery.js"></script>
<script src="../scripts/radion_button_check/jsradiotoggle.js"></script>

<script>
    $(document).ready(function () {
        $('.toggle').jsRadioToggle();
    })
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
</body>
</html>
