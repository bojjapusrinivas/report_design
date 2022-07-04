<%@ Language=VBScript %>
<!--#include file="../adovbs.asp"-->
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<title>Welcome</title>

<link href="https://www.strategyr.com/css/gia_switches.css" rel="stylesheet" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">



<%	Response.Buffer = True
	Response.ExpiresAbsolute = 0
	dim mystr
	mystr=""
	if trim(Request.ServerVariables("http_referer"))="" then
		Response.Redirect "default.asp?login=sesout"
	end if
	'' if session expired
	if trim(session("AdmFirstName"))="" then
		Response.Redirect "default.asp?login=sesout"
	end if	
%>

<style>
	body{
		background: #f7f7f7;;
	}
	#sub_menu a font {
		color: #403e3e;
		font-size: 13px;
		font-weight: 400;
	}

	.sidenav_title{
		background:#FF8000
	}

	
	#sub_menu tbody tr td:hover{
		background: #f1f1f1;
	}

	.sidenav_title:hover{
		background:#FF8000 !important
	}


	.bg-white{
		background:#fff;
	}

	a{
		color: #379fe6 !important;
	}
	.table{
		margin-bottom: 0px !important;
	}
	.table tr td{
		padding:9px !important;
	}
</style>


</HEAD><body  topmargin=0 leftmargin=0 bottommargin=0 rightmargin=0>
<table class="w-100 h-100 border">		
<tr><td colspan="2" valign="top"><!--#include file="header.htm"--></td></tr>
<tr><td width="15%" height="100%"><!--#include file="sideStrip.htm"--></td>
	<td valign="top">
		<div class="w-95 mx-auto">

						
			<table class="table mt-3>			
				<tr>
					<td align="center" COLSPAN="2" bgcolor="#FF8000"><font class="mt-4 mb-3 d-block" size="2" color="#E37038" style="font-size:18px;"><b>Welcome to GIA Admin Tool <%=session("AdmFirstName")%>&nbsp;<%=session("AdmLastName")%> (Session ID: <%=Session("LogID")%>)</b></font></td>
				</tr>				
			</table>
			<%				

			Set rsDisp =Server.CreateObject("ADODB.Recordset")
			rsDisp.ActiveConnection = DataSource1
			usql1="select top 1 a.log_id,a.login_datetime,a.logout_datetime,b.emailid,a.log_ip,a.userid from admin_user_log a inner join admin_master b on a.userid = b.userid and a.Log_ID<>"&Session("LogID")&" order by a.login_datetime desc"
			rsDisp.Open usql1
			IF not rsDisp.EOF THEN
				Logindate = rsdisp("login_datetime")
				Logoutdate = rsdisp("logout_datetime")
				LoginIP = rsDisp("Log_IP")
				LogEmailID = rsDisp("EmailID")
				LoginID = rsDisp("Log_ID")
				%>
				
				<div class="shadow bg-white p-3 mb-3">
					<table 	class="table ">		
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2">Last Logged in Date : <%=trim(Logindate)%></td>
				</tr>
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2">Last Logged Out Date : <%=trim(Logoutdate)%></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2">Last Logged in IP : <a target="_new" href="http://www.ip2location.com/<%=LoginIP%>"><%=LoginIP%></a></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2">Last Logged Email ID : <%=trim(LogEmailID)%></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2">Last Session ID : <%=trim(LoginID)%></td>
				</tr>	
				</table></div>
			
			<%End IF%>

			<div class="shadow bg-white p-3 mb-3">
						<table 	class="table ">		
				<tr style="background: #fff1eb !important">
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2"><b>Sales Analysis</b></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2">Top Selling: <a href="ViewTopSellingMCPs.asp">Reports</a> | <a href="ViewTopSellingCompanies.asp">Companies</a> | <a href="ViewTopSellingCountrie.asp?ttype=M">Country</a></td>
				</tr>	
				<!--<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2"><a href="ViewAccessRequest.asp?ttype=P">View RPP Requests</a></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2"><a href="ViewTOCRequest.asp?ttype=P">View TOC Requests</a></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2">View : <a href="ViewAllUsers.asp?ttype=A">Active Users</a> | <a href="ViewAllUsers.asp?ttype=B">Blocked Users</a></td>
				</tr>
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2"><a href="ViewUserDiscount.asp">Add User Discount</a></td>
				</tr>-->
				</table></div>

			<div class="shadow bg-white p-3 mb-3">
						<table 	class="table ">		
				<tr style="background: #fff1eb !important">
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2"><b>Quick Links</b></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2">View Transaction : <a href="ViewTransactionsGroup.asp?ttype=P">Pending</a> | <a href="ViewTransactionsGroup.asp?ttype=M">Successful</a> | <a href="ViewTransactionsGroup.asp?ttype=M">Declined</a></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2"><a href="ViewAccessRequest.asp?ttype=P">View RPP Requests</a></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2"><a href="ViewTOCRequest.asp?ttype=P">View TOC Requests</a></td>
				</tr>	
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2">View : <a href="ViewAllUsers.asp?ttype=A">Active Users</a> | <a href="ViewAllUsers.asp?ttype=B">Blocked Users</a></td>
				</tr>
				<tr>
					<td align="left" COLSPAN="2">&nbsp;<font face="verdana" size="2"><a href="ViewUserDiscount.asp">Add User Discount</a></td>
				</tr>
				</table>
				</div>
			</div>
		</td>
		</tr>
	<tr><td colspan=2 valign="bottom"><!--#include file="bottom.htm"--></td></tr>
</table>
</BODY>
</HTML>
