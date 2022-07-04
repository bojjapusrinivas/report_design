<ul class=" analytcs d-flex flex-wrap  mb-0 justify-content-start  p-3 my-3 border w-100 font-weight-bold w-md-100 w-sm-100 mx-auto  justify-content-sm-start "><%
segnamesplit= split(segmentname_Show,",")
regionsplit=split(cname_Show,",")
m=1
For i = 0 To UBound(segnamesplit)

	''response.write (segnamesplit(i))
	for j =0 to ubound(regionsplit)
			pageLoopVal=m
	''response.write "<a href=""javascript:Add_Ancillaries2('" & trim(segnamesplit(i))& "','" & trim(regionsplit(j)) & "','" & trim(request("YearType")) & "','" & trim(request("getDATA")) & "','" & trim(pageLoopVal) & "');"" >" & segnamesplit(i) & "/" & regionsplit(j) & "</a> | " 
		if trim(request("pageLoopVal"))=trim(pageLoopVal) then
			''response.write "<li class='mx-3 my-1 '><a class='active' href=""Ancillaries_2.asp?code="& session("giacode") & "&encID=" & request("encID") & "&pageLoopVal=" & pageLoopVal & "&gregion=" & trim(regionsplit(j)) &"&stype=" & trim(segnamesplit(i)) & "&YearType=undefined&getDATA=undefined&type=submit""&get_col_email_string&"">" & segnamesplit(i) & "/" & regionsplit(j) & "</a></li> " 
			response.write "<li class='mx-3 my-1 '><a class='active' href=""Ancillaries_2.asp?code="& session("giacode") & "&encID=" & request("encID") & "&pageLoopVal=" & pageLoopVal & get_col_email_string & "&type=submit"">" & segnamesplit(i) & " - " & regionsplit(j) & "</a></li> " 
		else
			//response.write "<li class='mx-3 my-1'><a  href=""Ancillaries_2.asp?code="& session("giacode") & "&encID=" & request("encID") & "&pageLoopVal=" & pageLoopVal & "&gregion=" & trim(regionsplit(j)) &"&stype=" & trim(segnamesplit(i)) & "&YearType=undefined&getDATA=undefined&type=submit""&get_col_email_string&"">" & segnamesplit(i) & "/" & regionsplit(j) & "</a></li>" 
			response.write "<li class='mx-3 my-1'><a  href=""Ancillaries_2.asp?code="& session("giacode") & "&encID=" & request("encID") & "&pageLoopVal=" & pageLoopVal & get_col_email_string &  "&type=submit"">" & segnamesplit(i) & " - " & regionsplit(j) & "</a></li>" 
		end if
		 m=m+1
	next
next
	maxpageloopval=	m-1 ''pageLoopVal
	''response.write maxpageloopval
%></ul>