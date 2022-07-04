<%@ Language=VBScript %>
<HTML>
<HEAD>
<title>New page</title>
<%	Response.Buffer = True
	Response.ExpiresAbsolute = 0%>
<!--#include file="../ASPIncludes/DBopen.asp"-->
<!--#include file="../ADOVBS.asp"-->
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<SCRIPT  src="../ASPIncludes/validations_new.js"></SCRIPT>
<script language="javascript">
	var frmname="frmadd";
	var valstr=new Array(["password","checkalpha","50"],["txtemailid","checkemail",50]);
	var onform=new Array(["txtemailid","Email ID"],["password","Password"]);
	var optfields=new Array("address2");
	//["fax","Fax"],

</script>
</HEAD>
<body  topmargin=0 leftmargin=0 bottommargin=0 rightmargin=0>
<!--#include file="../ASPIncludes/Login_IP_Check.asp"-->
<%
''' call function to check the IP address IF yes then only display the login screen
dim CHK_USER_IPADD
CHK_USER_IPADD = IPAddressCheck()
dim ipaddressnew

			''ipaddressnew = trim(Request.ServerVariables("URL"))
			ipaddressnew = trim(Request.ServerVariables("HTTP_X_FORWARDED_FOR"))
			if ipaddressnew = "" then
			    ipaddressnew = Request.ServerVariables("REMOTE_ADDR")
			end If
			
response.write ipaddressnew

'''' bypass for Mr. Reddy to access the adminportal added on 11/3/2021

CHK_USER_IPADD="YES"
if ucase(trim(CHK_USER_IPADD))="YES" then
%>

<form name="frmadd" method="post" action="login.asp">
<table width="100%" height="60%" align="center" border="0" style="border-collapse:collapse;">

	<tr>
		<td valign="top"><!--#include file="header.htm"--></td>
	</tr>
<tr>
		<td valign="top">
			<table border="0" align="center">
				<tr>
					<td height="1"><font style="COLOR: red; FONT-FAMILY: Verdana, Arial, Helvetica; FONT-SIZE: 8pt; FONT-WEIGHT: bold; text-decoration:none">
				<%IF TRIM(request("login"))="fail" then%>
					
					Your identity has been captured. <br>
					You will be prosecuted to the fullest extent of the law. 
				<%elseIF TRIM(request("login"))="sesout" then%>
					Your Session has expired, please login again.
				<%elseIF TRIM(request("login"))="cart" then%>
					Please login to complete the transaction.
				<%elseIF TRIM(request("login"))="wish" then%>
					Please login to add to your wish list.
				<%end if%>
				</font>
				</td>
			</tr>
			</table>

			<table width="400px" align="center" border="1" bordercolor="black" cellpadding="2" cellspacing="2" bgcolor="#f0e5dd" class="border" style="border-collapse:collapse;">			
				<tr>
				  <td bgColor="#169FE6" height="14" width="100%"><p align="left" class="m-2">
					  <span style="COLOR: white; FONT-FAMILY: Verdana, Arial, Helvetica; FONT-SIZE: 11pt; FONT-WEIGHT: bold">Admin Login &raquo;</span></td>
				</tr>
				<tr>
				  <td bgColor="#ffffff" height="14" vAlign="top" width="100%">
						<table width="100%">
							<tr>
							<td><font style="FONT-FAMILY: Verdana, Arial, Helvetica; FONT-SIZE: 10pt; FONT-WEIGHT: bold">Email ID</font></td><td colspan="2"><input type="text" name="txtemailid" style=" height: 24px;" maxlength="50" size="25" value="<%=session("EID")%>"></td>
							</tr>
							<tr>
							<td><font style="FONT-FAMILY: Verdana, Arial, Helvetica; FONT-SIZE: 10pt; FONT-WEIGHT: bold">Password</font></td><td><input type="password" name="txtpwd" style=" height: 24px;" maxlength="50" size="25"></td>
							<td align="right"><input type="submit" name="btnsubmit" value="OK" onclick="return validatefrm();" style="margin-right:10px;"></td></tr>
						</table>
				  <font class="car" face="arial"></font>
				  </td>
				</tr>						
			</table>				
			</td>
		</tr>
	<tr>
		<td colspan=2 valign="bottom"><!--#include file="bottom.htm"-->
		</td>
	</tr>
</table>
</form>

<%end if%>
</BODY>
</HTML>
