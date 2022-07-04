<%@ Language=VBScript %>
<!--#include file="Adovbs.asp"-->
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ASPIncludes/SendEmail.asp"-->
<!--#include file="ASPIncludes/SiteFunctions.asp"-->
<%
dim mymsg
mymsg=""
if trim(request("Code"))<>"" then
	'' check to see if code is correct
	
	Set rsRPP = Server.CreateObject("ADODB.Recordset")
	rsRPP.ActiveConnection = DataSource
	usql="select RPP_Code,RPP_Percentage from Research_Participation_Code where Rpp_Code='"&trim(request("Code"))&"'"
	rsRPP.Open usql
		IF not rsRPP.EOF THEN
			dim VarUsercode, VarDBCode
			VarUsercode = trim(request("Code"))
			VarDBCode = trim(rsRPP("RPP_CODE"))
			session("RPPDiscValue") = trim(rsRPP("RPP_Percentage"))	
			session("sessCompany_ID") = trim(VarUsercode)
		end if
	set rsRPP = nothing
	if trim(session("RPPDiscValue"))<>"" then
%>
	<script language="javascript">
		window.close();
		window.opener.location.reload();
		window.opener.focus();
	</script>
<%
	else
		mymsg = "<font color=red size=2>Enter Correct Code or Close this window to proceed.</font>"
	end if
end if
%>

<html>
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 3.0">
<link href="css/gia_styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/gia.css">
<style>
a.yell{color:maroon;text-decoration:none;font-family:Arial;font-style:bold;font-size:10pt;}
h1{
	font-family:"Trebuchet MS";
	font-size:18px;
	color:#FFFFFF;
	background:#01589D;
	width:98%;
	margin:0px;
	padding:2px 10px;
	font-weight:normal;
}
</style>

<script language="javascript">
	//var mywidth, myheight
	//mywidth = window.screen.availWidth;
	//myheight = window.screen.availHeight;
	window.resizeTo(580,350);
	//window.ResizeTo(mywidth-100,myheight-100);
	//alert(myheight);
</script>

<SCRIPT  src="ASPIncludes/validations_new.js"></SCRIPT>
<script language="JavaScript" src="AspIncludes/ScriptFunctions.js"></script>
<script language="javascript">
function returnval()
{
	var EmailIDval,pwdval;
	EmailIDval = mytrimval(document.frmdefault.txtemailid.value);	
	pwdval = mytrimval(document.frmdefault.txtpwd.value);
	if ((EmailIDval=="") || (EmailIDval==" "))
	{
		alert ("Email ID cannot be left blank");
		document.frmdefault.txtemailid.focus();
		return false;
	}
	if (EmailIDval.length<=5)
	{
		alert ("Invalid Email ID");
		document.frmdefault.txtemailid.focus();
		return false;
	}
	if ((pwdval=="") || (pwdval==" "))
	{
		alert ("Password cannot be left blank");
		document.frmdefault.txtpwd.focus();
		return false;
	}
	if (EmailIDval.length<=1)
	{
		alert ("Invalid Password");
		document.frmdefault.txtpwd.focus();
		return false;
	}
	if (valpass(txtpwd))
	{
		return true;
	}
	else
	{
		alert ("Password cannot be left blank");
		document.frmdefault.txtpwd.focus();
		return false;
	}
	
}
//frmcheck
// ZP4ZG5D
function returnvalcheckaccess()
{
	var checkval,emid;	
	checkval = mytrimval(document.frmcheck.Code.value);
	if ((checkval=="") || (checkval==" "))
	{
		alert ("Code cannot be left blank");
		document.frmcheck.Code.focus();
		return false;
	}
	if (checkval.length<=5)
	{
		alert ("Check the Code");
		document.frmcheck.Code.focus();
		return false;
	}
	//alert (valpass(txtpwd));
}
</script>


<title>Research Participation Code / Promo Code - Global Industry Analysts, Inc.</title>
</head>
<!--body onBeforePrint="document.body.style.display='none'" onAfterPrint="document.body.style.display=''" 
onContextmenu="return false" onSelectstart="return false" onDragstart="return false"-->
<body topmargin=0>
<div align="center"><center>

<table border="0" width="100%"  cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><div align="center"><center><table border="0" width="100%" bgcolor="#FFFFFF" cellspacing="0" cellpadding="3">
      
      <tr>
        <td width="90%" colspan="6" style="text-align: center;"><h1><strong>Research Participation Code / Promo Code</strong></h1></td>
      </tr>
      
      <tr>
        <td width="100%" colspan="6"><div align="center"><center><table border="0" width="95%" cellspacing="0" cellpadding="3" height="108">
          <tr>
   
    <td valign="top" ALIGN=CENTER>
		<table  border="0" cellpadding="3"  style="border: rgba(0,0,0,0.2) solid 1px;width: 380px;margin: 0 auto;" cellspacing="0"  >
      <tr >
        <td height='35' class="text-center border-bottom" style="text-align:center; border-bottom: rgba(0,0,0,0.2) solid 1px;"><font style="color: #000;font-weight: bold;font-size: 17px;text-align: center;width: 100%;">&nbsp;Enter Code</font></td>
      </tr>
      <form method="post" id=frmcheck name=frmcheck onsubmit="return returnvalcheckaccess();">
	  <tr>
	  <td style="padding: 15px 0px  0px 14px;">
		<b>Email ID: </b><%=session("EmailID")%>
	  
	  </td>
	  </tr>
      <tr>
        <td valign="middle">
        <table width="100%"  border="0" cellspacing="4" cellpadding="4">
	<tr><td align=center colspan="3"><%=mymsg%></td></tr>  
	<!--<tr>
              <td><b>Email ID:</b></td>
              
              <td><%'=session("EmailID")%></td>
              <td></td>
			 </tr>-->
			 
            <tr>
              <td width="10%"><b>Code:</b> </td>
              <td width="80%">
                <input type="text" style="width:100%;height:35px;" name="Code" size="20" onblur='return validatepassword(this);'>
                </td>
              <td width="10%"><button type="submit"style="width:40px;padding: 6px  2px;" height="17" class='button1' value="GO" name="btnsubmit">GO</button>
			  <!--<input type="image" src="images/go.gif" width="21" height="17" class='button1' value="GO" name="btnsubmit">-->
			  </td>
			 </tr>
			 <tr><td colspan="3" height=10 style="text-align: center;"><a href="#" onclick="javascript:window.close();" style="color: #fff;text-decoration: none;background: #255e91;padding: 3px;font-size: 12px !important;font-weight: 100;"><b>Close</b></a></td></tr>
          </table>
          </td>
      </tr>
      </form>
    </table></td>
 
  </tr>
  <tr>
    <td height="24" colspan="5" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
    </form></table></td>
  </tr>
</table>

</body>
</html>
