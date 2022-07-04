<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<title>View Registered User Details</title>
<!--#include file="../ASPIncludes/DBopen.asp"-->
<!--#include file="../ADOVBS.asp"-->
<!--#include file="../ASPIncludes/SendEmail.asp"-->
<!--#include file="ASPIncludes/AdminFunctions.asp"-->
<%	Response.Buffer = True
	Response.ExpiresAbsolute = 0
	if trim(Request.ServerVariables("http_referer"))="" then
		Response.Redirect "default.asp?login=sesout"
	end if
	'' if session expired
	if trim(session("AdmFirstName"))="" then
		Response.Redirect "default.asp?login=sesout"
	end if

	dim myvalue
	myvalue=""
	'' for paging
	dim k,rec_per_page
	rec_per_page=100
	Dim Cp,rowcount,i
		cp=Request.QueryString("Cp")
		EforEdit=Request.QueryString("E")
	if cp="" then
		cp=1
		EforEdit=cint(rec_per_page)
	end if 
	cpForEdit=cp

  	'''''''''''''''''

	Function Selected(val1,val2)
		IF trim(val1) = trim(val2) then
			Selected = " Selected"
		else
			Selected = ""
		End IF
	END Function	

	''ValEdit=S&RecID
	if trim(lcase(request("ValEdit")))<>"" then
		set conuser=Server.CreateObject ("ADODB.Connection")
		conuser.open DataSource1 
		sqlupdate = "update User_Master set Security_Status='"&trim(request("ValEdit"))&"' where userid="&trim(request("RecID"))&""
		conuser.execute sqlupdate
		myvalue= "<p align='center'><font color='red' size='2' face='verdana'>Request Updated</font></p>"
		set conuser=nothing
	end if
	
	'' send an email to user with the download link of the eBook being shopped by the user
	if trim(lcase(request("ValEdit")))="3" then
		dim mysubject		
		useremail = trim(request("emailid"))
		mysubject=""
		mysubject = mysubject & "<font face='verdana' size='2'>Dear Customer,<br></font><br>"
		mysubject = mysubject & "<font face='verdana' size='2'>We are pleased to inform you that your login has been given more privileges to log into Privilege Access zone and see all the reports.<br><br></font>"
		mysubject = mysubject & "<font face='verdana' size='2'><br>Sincerely,<br><br>Maha Sundaram<br>Research Support Administration<br>Global Industry Analysts, Inc.<br>5645 Silver Creek Valley Road, Suite 200<br>San Jose, CA 95138, USA<br>408-528-9966 (Phone)<br>408-528-9977 (Fax)<br>www.StrategyR.com<br></font><br>"
		call sendemail1("info@StrategyR.com",useremail,"Privilege Access",mysubject)
		'Response.Write ("<p align='center'><font face='verdana' color='red' size='2'>Mail Sent for "&trim(request("ReportID"))&"</font></p>")
	end if
	
	''' change status
	if trim(lcase(request("ValStat")))<>"" then
		set conuser=Server.CreateObject ("ADODB.Connection")
		conuser.open DataSource1 
		sqlupdate = "update User_Master set User_status='"&trim(request("ValStat"))&"' where userid="&trim(request("RecID"))&""
		conuser.execute sqlupdate
		myvalue ="<p align='center'><font color='red' size='2' face='verdana'>Status Updated</font></p>"
		set conuser=nothing
	end if

	''' Update the record
	if trim(request("btnsubmit"))="Update" then
	''' get the name for the code	
		set conuser=Server.CreateObject ("ADODB.Connection")
		conuser.open DataSource1 
		
		'''OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; 
		'''EncryptByKey(Key_GUID('SKEY_GI1_DB_1'), trim(request("TxtEmailID")))
		dim str_DBID1, txtemailID
		txtemailID = trim(request("TxtEmailID"))
		str_DBID1 = "SKEY_GI1_DB_1"
		sqlupdate = "OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; update user_master set user_type='"&trim(request("txtrating"))&"',emailID=EncryptByKey(Key_GUID('SKEY_GI1_DB_1'), '"&txtemailID&"'),FirstName='"&trim(request("txtFirstName"))&"',LastName='"&trim(request("txtLastName"))&"',Address1='"&trim(request("txtaddress1"))&"',Address2='"&trim(request("txtAddress2"))&"',City='"&trim(request("txtCity"))&"',State='"&trim(request("txtState"))&"',Zip='"&trim(request("txtZip"))&"',User_Company='"&trim(request("txtCompanyName"))&"',company_cp_code='"&trim(request("txtCPCode"))&"' where userid="&trim(request("TxtRecID"))&""
		'response.write (sqlupdate)
		'response.end
		conuser.execute sqlupdate
		myvalue = "<b>User Updated successfully ("&trim(request("TxtRecID"))&")</b>"
		set conuser = nothing
	end if

	If trim(request("USRActType"))<>"" then
		IF trim(request("USRVal"))<>"" then
			set conuser=Server.CreateObject ("ADODB.Connection")
			conuser.open DataSource1 
			sqlupdate = "update user_master set Sort_User_by_Type='"&trim(request("USRActType"))&"' where userid="&trim(request("USRVal"))&""
			'response.write (sqlupdate)
			'response.end
			conuser.execute sqlupdate
			myvalue = "<b>User Rating Updated successfully for user ID ("&trim(request("USRVal"))&")</b>"
			set conuser = nothing
		END IF
	end if
%>

<script language="JavaScript">
function OpenWin(num)
{ 
	myWin = open("ViewUser.asp?UID="+num ,"userwin","width=700,height=506,status=no,toolbar=no,menubar=no,scrollbars=yes");
}
function OpenWin1(num)
{ 
	myWin = open("ViewFullTransaction.asp?TID="+num ,"userwin","width=680,height=400,status=no,toolbar=no,menubar=no,scrollbars=yes");
}
</script>

<script language="javascript">
	function validateform()
	{
		if ((document.frmadd.TxtorderNo.value=="")||(document.frmadd.TxtorderNo.value==" "))
		{
			alert ("Give the Title Order Number");
			document.frmadd.TxtorderNo.focus();
			return false;
			
		}
		document.frmadd.method = "Post";
		document.frmadd.action = "ViewAllUsers.asp";
		document.frmadd.submit();
		return true
	}

	function CheckUSRType(num,userval,Start1,E1,Cp1)
	{
		var sendval;
		sendval = confirm ("Do you want to set rating as "+num+" for user ID "+ userval);
		if (sendval==true) 
		{
			document.frmadd.method = "Post";
			if (Start1==0)
			{
				document.frmadd.action = "ViewAllUsers.asp?USRActType="+num+"&USRVal="+userval;
			}
			else
			{
				document.frmadd.action = "ViewAllUsers.asp?USRActType="+num+"&USRVal="+userval+"&Start="+Start1+"&E="+E1+"&Cp="+Cp1;
			}	
			document.frmadd.submit();
			return true
		}
	}
</script>

<title>User Details</title>
</HEAD>
<body  topmargin=0 leftmargin=0 bottommargin=0 rightmargin=0>
<form name="frmadd" method="post" action="ViewAllUsers.asp">
<%dim loadedval, transStatus
loadedval = trim(request("ttype"))
if loadedval<>"" then
	transStatus = trim(request("ttype"))
else
	transStatus = "A"
end if
%>
<table width="100%" height="100%" align="center" border="0" style="border-collapse:collapse;">			
<tr><td colspan="2" valign="top"><!--#include file="header.htm"--></td></tr>
<tr><td width="15%" height="100%"><!--#include file="sideStrip.htm"--></td>
	<td valign="top">
			<table width="95%" align="center">			
			<tr>
				<td align="center" height="5"><font color='red'><%
				if trim(myvalue)<>"" then
					Response.Write (myvalue)
				end if
				%></font></td>
			</tr>				
			<tr><td>
			<%	dim TStat
				if trim(ucase(request("ttype")))="A" then
					TStat = "[Active]"
				elseif trim(ucase(request("ttype")))="B" then
					TStat = "[Blocked]"
				end if
				
				
			%>
			<table width="100%" align="center" border="1" bordercolor="black" cellpadding="2" cellspacing="2" bgcolor="#f0e5dd" style="border-collapse:collapse;">			
				<tr>
					<td align="left" COLSPAN="2" bgcolor="#FF8000"><font face="verdana" size="2" color="white"><b>View Registered Users <%=TStat%></b></td>
				</tr>	
				<tr>
					<td align="center" width="95%" bgcolor="#f0e5dd"><font face="verdana" size="2"><a href="ViewAllUsers.asp?ttype=A"><font face="verdana" size="2">[Active]</font></a> | <a href="ViewAllUsers.asp?ttype=B"><font face="verdana" size="2">[Blocked]</font></a></td>
					<td align="right" bgcolor="#f0e5dd"><font face="verdana" size="2" color="white"><b><a href="ViewAllUsers.asp?ttype=<%=trim(request("ttype"))%>&search=yes"><font face="verdana" size="2">Search</font></a></b></td>
				</tr>
				<!--tr>
					<td align="left" COLSPAN="2" bgcolor="#f0e5dd"><font face="verdana" size="2"><b>Note for Rating :</b> Click on <b>1</b> for .<br>Click on <b>2</b> for .<br>Click on <b>3</b> for .<br>Click on <b>4</b> for .<br>Click on <b>5</b> for .</font></td>
				</tr-->
				<tr><td align="left" COLSPAN="2" bgcolor="#f0e5dd">
					<table cellpadding=0 cellspacing=0 border=0 width='100%'><tr><td align="left" bgcolor="yellow" width='2%'>&nbsp;</td><td width='95%'><font face="verdana" size="1">&nbsp;User bought a report.</font></td></tr></table>
				</td></tr>			
			</table>
			<%if trim(lcase(request("search")))="yes" then%>
			<form name="frmreport" method="post" action="ViewAllUsers.asp?ttype=<%=trim(request("ttype"))%>">
					<table width="100%" align="center" border=1 bordercolor="#f0e5dd" cellpadding="2" cellspacing="1">
						<tr>
							<td align="left" COLSPAN="2" bgcolor="#f0e5dd"><font face="verdana" size="2"><b>Search User</b></font></td>
						</tr>							
						<tr>
							<td width="20%" align="right"><font face="verdana" size="2">First Name :</font></td>
							<td><input type="text" name="TxtFname" maxlength="100" size="44"></td>
						</tr>
						<tr>
							<td width="20%" align="right"><font face="verdana" size="2">Last Name :</font></td>
							<td><input type="text" name="TxtLname" maxlength="100" size="44"></td>
						</tr>
						<tr>
							<td width="20%" align="right"><font face="verdana" size="2">Company Name :</font></td>
							<td><input type="text" name="TxtCompName" maxlength="100" size="44"></td>
						</tr>
						<tr>
							<td width="20%" align="right"><font face="verdana" size="2">Email ID (Like) :</font></td>
							<td><input type="text" name="TxtEmailID" maxlength="100" size="44"></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>		
						</tr>	
						<tr>
							<td colspan="2" align="center">
								<input type="submit" name="btnsubmit" value="Search">
							</td>						
						</tr>
					</table>
			</form>
			<%end if%>
			<%if trim(lcase(request("ValEditset")))="yes" then	
					Set rsGetval =Server.CreateObject("ADODB.Recordset")
					rsGetval.ActiveConnection = DataSource1
					''OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; select CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID,userid,User_Surname,firstname,LastName,User_Company,Address1,Address2,City,State,Country,Zip,Telephone,Fax,User_Business,JobFunction,User_website,user_position,Sort_User_by_Type,secret_Answer,Channel_Partner,Date_created,User_IP,user_Status,User_type
					usql1="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; select CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID,userid,User_Surname,firstname,LastName,User_Company,company_cp_code,Address1,Address2,City,State,Country,Zip,Telephone,Fax,User_Business,JobFunction,User_website,user_position,Sort_User_by_Type,secret_Answer,Channel_Partner,Date_created,User_IP,user_Status,User_type from user_master where userid="& trim(request("RecID"))
					rsGetval.Open usql1
					IF not rsGetval.EOF THEN%>
						<form name="frmreport" method="post" action="ViewCompanyDiscount.asp">
						<table width="95%" align="center" border=1 bordercolor="#f0e5dd" cellpadding="2" cellspacing="1">
							<tr>
								<td align="left" COLSPAN="2" bgcolor="#f0e5dd"><font face="verdana" size="2"><b>Update User Details</b></font></td>
							</tr>									
							<tr>
								<td align="right"><font face="verdana" size="2">User ID :</font></td>
								<td><%=trim(rsGetval("userid"))%></td>
							</tr>	
								
							<TR>   
								<TD align="right"><font face="verdana" size="2">First Name :</font></TD>
								<td><input type="Text" name="txtFirstName" size=30 value="<%=trim(rsGetval("FirstName"))%>"></td>
							</TR>	
							<TR>   
								<TD align="right"><font face="verdana" size="2">Last Name :</font></TD>
								<td><input type="Text" name="txtlastName" size=30 value="<%=trim(rsGetval("LastName"))%>"></td>
							</TR>
							<TR>   
								<TD align="right"><font face="verdana" size="2">Email ID :</font></TD>
								<td><input type="Text" name="TxtEmailID" size=30 value="<%=trim(rsGetval("EmaILID"))%>"></td>
							</TR>	
							  
							<TR>   
								<TD align="right"><font face="verdana" size="2">Address 1 :</font></TD>
								<td><input type="Text" name="TxtAddress1" size=30 value="<%=trim(rsGetval("Address1"))%>"></td>
							</TR>
							 
							<TR>   
								<TD align="right"><font face="verdana" size="2">Address 2 :</font></TD>
								<td><input type="Text" name="TxtAddress2" size=30 value="<%=trim(rsGetval("Address2"))%>"></td>
							</TR>
							  
							<TR>   
								<TD align="right"><font face="verdana" size="2">City :</font></TD>
								<td><input type="Text" name="TxtCity" size=30 value="<%=trim(rsGetval("City"))%>"></td>
							</TR>
							
							<TR>   
								<TD align="right"><font face="verdana" size="2">State / Province :</font></TD>
								<td><input type="Text" name="TxtState" size=30 value="<%=trim(rsGetval("State"))%>"></td>
							</TR> 
							
							<TR>   
								<TD align="right"><font face="verdana" size="2">Zip / Postal Code :</font></TD>
								<td><input type="Text" name="TxtZip" size=30 value="<%=trim(rsGetval("Zip"))%>"></td>
							</TR>
							<TR>   
								<TD align="right"><font face="verdana" size="2">Company Name :</font></TD>
								<td><input type="Text" name="txtCompanyName" size=30 value="<%=trim(rsGetval("User_Company"))%>"></td>
							</TR>
							<TR>   
								<TD align="right"><font face="verdana" size="2">CP Code :</font></TD>
								<td><input type="Text" name="txtCPcode" size="30" value="<%=trim(rsGetval("company_cp_code"))%>"></td>
							</TR>							
							<TR>   
								<TD align="right"><font face="verdana" size="2">User Rating :</font></TD>
								<td><input type="Text" name="txtrating" size=30 value="<%=trim(rsGetval("User_type"))%>"><font face="verdana" size="2"> (From 1-7)</font></td>
							</TR>													
							<tr>
								<td colspan="2">&nbsp;</td>		
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="hidden" name="TxtRecID" value="<%=trim(request("RecID"))%>">
									<input type="submit" name="btnsubmit" value="Update">
								</td>						
							</tr>								
						</table>	
						</form>				
					<%	end if
						set rsGetval=nothing
			end if%>
			<table align="center" width="100%" border="1" bordercolor="black" cellpadding="2" cellspacing="2" bgcolor="#f0e5dd" style="border-collapse:collapse;">
				<tr>
				<td colspan="11">
				<%		dim AddSQlSTR
				If trim(ucase(transStatus))="A" THEN
					AddSQlSTR = " (user_status='A' OR user_status='U' OR user_status='E' OR user_status='F') "
				Else				
					AddSQlSTR = " (user_status='B') "
				End If
				
				Set rsDisp =Server.CreateObject("ADODB.Recordset")
				rsDisp.ActiveConnection = DataSource1
				''rsDisp.CursorType = 3
				rsDisp.PageSize = cint(rec_per_page)
				if trim(request("btnsubmit"))="Search" then
					dim mystring,myval
					myval=0
					mystring = ""
					''TxtCompName
					if trim(request("TxtFname"))<>"" then
						myval=1
						mystring = "FirstName like ('%"&trim(request("TxtFname"))&"%')"
					end if
					if trim(request("TxtLname"))<>"" then
						myval=1
						if trim(mystring)<>"" then
							mystring = mystring & "And LastName='"&trim(request("TxtLname"))&"'"
						else
							mystring = mystring & "LastName like ('%"&trim(request("TxtLname"))&"%')"
						end if
					end if
					if trim(request("TxtCompName"))<>"" then
						myval=1
						if trim(mystring)<>"" then
							mystring = mystring & "And user_company like ('%"&trim(request("TxtCompName"))&"%')"
						else
							mystring = mystring & "user_company like ('%"&trim(request("TxtCompName"))&"%')"
						end if
					end if
					if trim(request("TxtEmailID"))<>"" then
						myval=1
						if trim(mystring)<>"" then
							mystring = mystring & "And CONVERT(varchar(500), DecryptByKey(EmailID)) like ('%"&trim(request("TxtEmailID"))&"%')"
						else
							mystring = mystring & "CONVERT(varchar(500), DecryptByKey(EmailID)) like ('%"&trim(request("TxtEmailID"))&"%')"
						end if
					end if
					if myval=1 then
						usql1="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; select CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID1,userid,User_Surname,firstname,LastName,User_Company,Address1,Address2,City,State,Country,Zip,Telephone,Fax,User_Business,JobFunction,User_website,user_position,Sort_User_by_Type,secret_Answer,Channel_Partner,Date_created,User_IP,user_Status,company_cp_code  from User_Master where "&AddSQlSTR&" and "&mystring&" order by userid desc;CLOSE SYMMETRIC KEY SKEY_GI1_DB_1;"
					else
						usql1="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; select CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID1,userid,User_Surname,firstname,LastName,User_Company,Address1,Address2,City,State,Country,Zip,Telephone,Fax,User_Business,JobFunction,User_website,user_position,Sort_User_by_Type,secret_Answer,Channel_Partner,Date_created,User_IP,user_Status,company_cp_code  from User_Master where "&AddSQlSTR&" order by userid desc;CLOSE SYMMETRIC KEY SKEY_GI1_DB_1;"
					end if
				else	
					usql1="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; select CONVERT(varchar(500), DecryptByKey(EmailID)) as EmailID1,userid,User_Surname,firstname,LastName,User_Company,Address1,Address2,City,State,Country,Zip,Telephone,Fax,User_Business,JobFunction,User_website,user_position,Sort_User_by_Type,secret_Answer,Channel_Partner,Date_created,User_IP,user_Status,company_cp_code from User_Master where "&AddSQlSTR&" order by userid desc;CLOSE SYMMETRIC KEY SKEY_GI1_DB_1;"
				end if
				'response.write usql1
				 rsDisp.CursorLocation = adUseClient
				rsDisp.CursorType = adOpenStatic
				rsDisp.LockType = adLockBatchOptimistic
				rsDisp.Open usql1 ,DataSource1  '',3 ',DataSource1,3,1
				''paging
				'rsDisp.movefirst
				rowcount = 0
				Start = 1
				''rsDisp.MOVEFIRST
				E = cint(rec_per_page)
				i = rsDisp.RecordCount
				''response.write rsDisp.RecordCount & " MMMMMM" & E
				p = i
				If i=-1 then
					i = 57343
				end if
				
				''dim pageCNT1
				''pageCNT1 = round(i/rec_per_page)
				if i>cint(rec_per_page) then
					Response.Write ("<table width='100%' style='border-collapse:collapse'><tr bgcolor='white'><td><font face=verdana size=2 color=""blue""><b>Pages:")
					for i=1 to rsDisp.PageCount%>	
						<%if trim(request("btnsubmit"))="Search" then%>			
							<a href="ViewAllUsers.asp?Start=<%=Start%>&amp;E=<%=E%>&amp;Cp=<%=i%>&ttype=<%=trim(request("ttype"))%>&btnsubmit=Search&TxtFname=<%=trim(request("TxtFname"))%>&TxtLName=<%=trim(request("TxtLName"))%>&TxtCompName=<%=trim(request("TxtCompName"))%>&TxtEmailID=<%=trim(request("TxtEmailID"))%>"><%=i%></a>
						<%else%>
							<a href="ViewAllUsers.asp?Start=<%=Start%>&amp;E=<%=E%>&amp;Cp=<%=i%>&ttype=<%=trim(request("ttype"))%>"><%=i%></a>						
						<%end if%>	<% start = start+cint(rec_per_page)
						E = E+cint(rec_per_page)
					next  
				   	if cp >= 1 then
						Response.Write ("</td><td  align=right width='8%'><font size='2' face=verdana color=""blue""><b>Page :&nbsp;<b>"&Cp&"") 
					end if  
						Response.Write ("</td></tr></table>")
				end if 	
				if cp > 1 then
					 rsDisp.AbsolutePosition = Request.QueryString("Start")
				END IF
				Response.Write ("<tr>")
					Response.Write ("<th><font face=""verdana"" size=""2"">User ID</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">Date Created</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">First Name</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">Last Name</font></th>")
					'Response.Write ("<th><font face=""verdana"" size=""2"">Email ID</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">Company</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">CP Code</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">Factor</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">GTWY</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">Status</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">Rating</font></th>")
					Response.Write ("<th><font face=""verdana"" size=""2"">Options</font></th>")
				Response.Write ("</tr>")
				IF not rsDisp.EOF THEN
					j=1
					no = trim(Request.QueryString("Start"))
					if no = "" then
						no = 1
					else
						no = no
					end if
					startEdit=no
					while not rsDisp.EOF and rowcount<rsDisp.PageSize
						dim getStatusCHK
						getStatusCHK = ""
						If trim(ucase(rsDisp("user_Status")))="F" THEN
							getStatusCHK = "0" '"F"
						ElseIf trim(ucase(rsDisp("user_Status")))="U" THEN
							getStatusCHK ="1"' "U"
						ElseIf trim(ucase(rsDisp("user_Status")))="E" THEN
							getStatusCHK ="1"' "E"
						ElseIf trim(ucase(rsDisp("user_Status")))="A" THEN
							getStatusCHK ="1" ' "A"
						ElseIf trim(ucase(rsDisp("user_Status")))="L" THEN
							getStatusCHK ="2" ' "A"	
						End If
						if trim(rsDisp("company_cp_code")) <>"" then
							getStatusCHK ="2"
						else
							getStatusCHK ="1"
						end if
						dim DateCreated, ActDate
						DateCreated = split(trim(rsDisp("Date_created"))," ")
						ActDate = DateCreated(0)
						Response.Write ("<tr bgcolor='white'>")
							''' chekc to see if any report was bought
							Set rsCheck2 =Server.CreateObject("ADODB.Recordset")
							rsCheck2.ActiveConnection = con
							sqlcheck2 = "select user_id from TBL_User_Transaction where user_id="&rsDisp("userid")&" and trans_status='M'"
							rsCheck2.open sqlcheck2 
							if not rsCheck2.eof then
								Response.Write ("<td align='center' bgcolor='yellow'>")
							else
								Response.Write ("<td align='center'>")
							end if
							Set rsCheck2 = nothing
							Response.Write ("<a href='javascript:OpenWin("&rsDisp("userid")&");'><font face='verdana' size='2'>"&trim(rsDisp("userid"))&"</font></a></td>")
							Response.Write ("<td align='center'><font face='verdana' size='2'>"& trim(ActDate) &"</font></td>")
							Response.Write ("<td align='center'><font face='verdana' size='2'>"& rsDisp("FirstName") &"</font></td>")
							Response.Write ("<td align='center'><font face='verdana' size='2'>"& rsDisp("LastName") &"</font></td>")
							'Response.Write ("<td align='left'>&nbsp;<a href='mailto:"& rsDisp("EmailID1") &"'><font face='verdana' size='2'>"& rsDisp("EmailID1") &"</font></a></td>")
							Response.Write ("<td align='left'>&nbsp;<font face='verdana' size='2'>"& rsDisp("User_Company") &"</font></td>")
							Response.Write ("<td align='left'>&nbsp;<font face='verdana' size='2'>"& rsDisp("company_cp_code") &"</font></td>")
							''Response.Write ("<td align='center'><font face='verdana' size='2'>"& rsDisp("User_Business") &"</font></td>")
							''Response.Write ("<td align='center'><font face='verdana' size='2'>"& rsDisp("User_Type") &"</font></td>")
							Response.Write ("<td align='center'><font face='verdana' size='2'>"& trim(getStatusCHK) &"</font></td>")
							Response.Write ("<td align='center' style='width:106px;'><font face='verdana' size='2'>")%>
								<div style=" margin-top: 13px;"> 
									<span style="margin:0px 3px float-left;width:15px;height:auto;font-size: 11px;">RLP</span>
									<span style="margin:0px 3px float-left;width:15px;height:auto;font-size: 11px;">CLP</span>
									<span style="margin:0px 3px float-left;width:15px;height:auto;font-size: 11px;">BLP</span>
									<span style="margin:0px 3px float-left;width:15px;height:auto;font-size: 11px;">ILP</span>
								</div>
								<div style="margin-top: 2px;"> 
									<input type="radio" id="optGTWY<%=trim(rsDisp("userid"))%>" name="optGTWY<%=trim(rsDisp("userid"))%>" style="margin:0px 3px float-left; width:15px; height:auto">
									 <input type="radio" id="optGTWY<%=trim(rsDisp("userid"))%>" name="optGTWY<%=trim(rsDisp("userid"))%>" style="margin:0px 3px float-left margin:0px 3px float-left; width:15px; height:auto">
									 <input type="radio" id="optGTWY<%=trim(rsDisp("userid"))%>" name="optGTWY<%=trim(rsDisp("userid"))%>" style="margin:0px 3px float-left margin:0px 3px float-left; width:15px; height:auto">
									 <input type="radio" id="optGTWY<%=trim(rsDisp("userid"))%>" name="optGTWY<%=trim(rsDisp("userid"))%>" style="margin:0px 3px float-left margin:0px 3px float-left; width:15px; height:auto">
								</div>
								<div>
									 <input type="input" placeholder="Code" id="txtGTWY<%=trim(rsDisp("userid"))%>" name="txtGTWY<%=trim(rsDisp("userid"))%>" style="margin: 2px 0px;float-left;width:100%;height: 23px;">   
								</div>
							<%Response.write ("</font></td>")
							Response.Write ("<td align='center'><font face='verdana' size='2'>NS</font></td>")
							If trim(request("start"))<>"" then
								Response.Write ("<td align='center'><font face='verdana' size='2' color=blue><a style=""cursor:hand;"" onclick=""Javascript:CheckUSRType('1','"&trim(rsDisp("userid"))&"',"&trim(request("start"))&", "&trim(request("E"))&","&trim(request("Cp"))&");"">1</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(2,"&trim(rsDisp("userid"))&");'>2</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(3,"&trim(rsDisp("userid"))&");'>3</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(4,"&trim(rsDisp("userid"))&");'>4</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(5,"&trim(rsDisp("userid"))&");'>5</a></font></td>")
							ELSE
								Response.Write ("<td align='center'><font face='verdana' size='2' color=blue><a style=""cursor:hand;"" onclick=""Javascript:CheckUSRType('1','"&trim(rsDisp("userid"))&"',0,0,0);"">1</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(2,"&trim(rsDisp("userid"))&",0,0,0);'>2</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(3,"&trim(rsDisp("userid"))&");',0,0,0>3</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(4,"&trim(rsDisp("userid"))&",0,0,0);'>4</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(5,"&trim(rsDisp("userid"))&",0,0,0);'>5</a></font></td>")
							End If
							'''Response.Write ("<td align='center'><font face='verdana' size='2' color=blue><a style=""cursor:hand;"" onclick=""Javascript:CheckUSRType('1','"&trim(rsDisp("userid"))&"');"">1</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(2,"&trim(rsDisp("userid"))&");'>2</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(3,"&trim(rsDisp("userid"))&");'>3</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(4,"&trim(rsDisp("userid"))&");'>4</a>|<a style=""cursor:hand;"" onclick='Javascript:CheckUSRType(5,"&trim(rsDisp("userid"))&");'>5</a></font></td>")
							if trim(ucase(transStatus))="A" then
								''Response.Write ("<td align='center'><a href='ViewAllUsers.asp?ValEdit=1&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2' color=blue>Code 1</font></a> | <a href='AddAccessToUsers.asp?id="&rsDisp("userid")&"'><font face='verdana' size='2'>Code 2</font></a> | <!--a href='ViewAllUsers.asp?ValEdit=3&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Code 3</font></a> | --> <a href='ViewAllUsers.asp?ValStat=B&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Block</font></a> | <a href='ViewAllUsers.asp?ValEDIT=yes&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Edit</font></a></td>")
								Response.Write ("<td align='center'><!--a href='ViewAllUsers.asp?ValEdit=3&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Code 3</font></a> | --> <a href='ViewAllUsers.asp?ValStat=B&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Block</font></a> | <a href='ViewAllUsers.asp?ValEditset=yes&RecID="&rsDisp("userid")&"'><font face='verdana' size='2'>Edit</font></a> | <a href=javascript:openwinMessages('" & Trim(rsDisp("userid")) &"','" & Trim(rsDisp("EmailID1"))&"');><font face='verdana' size='2'>Draft Mail</font></a>  <textarea class='w-100' placeholder='Notes View...' id='mUserMessage' name='mUserMessage'  rows='2'></textarea></td>")
							else
								''Response.Write ("<td align='center'><a href='ViewAllUsers.asp?ValEdit=1&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Code 1</font></a> | <a href='AddAccessToUsers.asp?id="&rsDisp("userid")&"'><font face='verdana' size='2'>Code 2</font></a> | <!--a href='ViewAllUsers.asp?ValEdit=3&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Code 3</font></a> | --> <a href='ViewAllUsers.asp?ValStat=A&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Activate</font></a> | <a href='ViewAllUsers.asp?ValEDIT=yes&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Edit</font></a></td>")
								Response.Write ("<td align='center'><a href='ViewAllUsers.asp?ValStat=A&RecID="&rsDisp("userid")&"&emailid="&rsDisp("emailid1")&"'><font face='verdana' size='2'>Activate</font></a> | <a href='ViewAllUsers.asp?ValEditset=yes&RecID="&rsDisp("userid")&"'><font face='verdana' size='2'>Edit</font></a> | <a href=javascript:openwinMessages('" & Trim(rsDisp("userid")) &"','" & Trim(rsDisp("EmailID1"))&"');><font face='verdana' size='2'>Draft Mail</font></a> | <textarea class='w-100' placeholder='Notes View...' id='mUserMessage' name='mUserMessage'  rows='2'></textarea></td>")
							end if
						Response.Write ("</tr>")
						j=j+1
						no=no+1
						rowcount=rowcount+1
					rsDisp.MoveNext 
					wend
				else
					Response.Write ("<tr bgcolor='white'>")
							Response.Write ("<td colspan=9 align=center><font face='verdana' size='2' color='red'>-- No Records Found --</font></td>")					
					Response.Write ("</tr>")
				End if
				set rsDisp=nothing
				%>
				</table>
				</td>
				</tr>
				<tr><td>&nbsp;</td></tr>
			</table>			
		</td>
		</tr>
	<tr><td colspan=2 valign="bottom"><!--#include file="bottom.htm"--></td></tr>
</table>
</form>
<script>
			function openwinMessages(code,Uemail)
				{
					//alert(Uemail);
					var src = "User_message.asp?code="+code +"&Uemail=" +Uemail;
					var wint = window.open(src,"GLOBINDRPP","scrollbars=yes,resizable=yes,width=1024,height=600, top=0,left=0");
				}
		
		
		</script>
</BODY>
</HTML>
