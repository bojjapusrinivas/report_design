												  	<!--#include file="ASPIncludes/DBopen.asp"-->
	<!--#include file="ADOVBS.asp"-->
	
<%
	'Set MyCon = Server.CreateObject("ADODB.Connection")		
   ' MyCons.Open Datasource7
	Dim rString
	if (trim(request("vGIANO")) <>"" )then
		''response.write request("vCountry")
		Set RSglobalCAGR =Server.CreateObject("ADODB.Recordset")
		RSglobalCAGR.ActiveConnection = DataSource7
		Set MyCon = Server.CreateObject("ADODB.Connection")		
		MyCon.Open Datasource7
		dim BYearVar, EyearVar, SyearVar
		BYearVar = trim(session("BYear"))
		EyearVar = trim(session("Eyear"))
		SyearVar = trim(session("Syear"))
		dim GTCountry_Name
		GTCountry_Name = trim(request("vCountry"))
		If trim(BYearVar)="" Then
			BYearVar = "2020"
		End If
		If trim(EyearVar)="" Then
			EyearVar = "2030"
		End If
		If trim(SyearVar)="" Then
			SyearVar = "2012"
		End If
		For displayYear=trim(BYearVar) to trim(EyearVar) 
			QueryYearsF=QueryYearsF & ",sum([" &  displayYear  & "]) as '" &  displayYear  & "'"
		Next 
		IF trim(request("vCountry"))="World" then
			usqlGlobalCagr="select segment_name,Segment_type,Segment_ID " & QueryYearsF & ",ROUND(dbo.ReturnCAGR_Cust(SUM([" & session("EYear") & "]), SUM([" &BYearVar& "]),"&session("EYear")&","&BYearVar&"), 2) AS CAGR from vw_Report_Countries_AnalytixConsolidate$_cust where (gia_no='" & trim(request("vGIANO")) & "') group by segment_name,Segment_type,Segment_ID ORDER BY convert(int, SUBSTRING(SEGMENT_ID,CHARINDEX('-',SEGMENT_ID)+1,LEN(segment_id)-CHARINDEX('-',SEGMENT_ID)))"
		else
			usqlGlobalCagr="select segment_name,Segment_type,Segment_ID " & QueryYearsF & ",ROUND(dbo.ReturnCAGR_Cust(SUM([" & session("EYear") & "]), SUM([" &BYearVar& "]),"&session("EYear")&","&BYearVar&"), 2) AS CAGR from vw_Report_Countries_AnalytixConsolidate$_cust where (gia_no='" & trim(request("vGIANO")) & "') and country_name='"&replace(trim(request("vCountry")),"_"," ")&"' group by segment_name,Segment_type,Segment_ID ORDER BY convert(int, SUBSTRING(SEGMENT_ID,CHARINDEX('-',SEGMENT_ID)+1,LEN(segment_id)-CHARINDEX('-',SEGMENT_ID)))"
		end if
		Maxval=100
		''response.write usqlGlobalCagr
		RSglobalCAGR.Open usqlGlobalCagr%>	
		
		<table>
			<tr>
				<td>
					<div class="w-100" id="fixed-column-scroll-table">
						<table class="w-100">
						<tr >
							<thead style="background-color: #00D4FF;">
								<th class="headcol" ><h3>Application 1 (Primary)</h3></th>
								<!--<th>Type</th>-->
								<%For ThYear=BYearVar to EyearVar %>
									<td class="long">%</td>
									<td class="long"><%=ThYear%></td>
								<%Next %>
								<td>CAGR</td>
							</thead>
						</tr>
						<%IF not RSglobalCAGR.EOF THEN	
							i=1
							j=1
							dim getValue
							getValue1 = cdbl(EyearVar) - cdbl(BYearVar)
							getValue1 = getValue1 + 3
							dim dictObject(15)
							Set dictObject(1)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(2)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(3)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(4)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(5)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(6)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(7)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(8)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(9)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(10)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(11)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(12)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(13)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(14)=Server.CreateObject("Scripting.Dictionary")
							Set dictObject(15)=Server.CreateObject("Scripting.Dictionary")
							
							Dim SegTypeNEW, SegTypeOLD, SegTypeTotal
							SegTypeNEW = ""
							SegTypeOLD = ""			
							SegTypeTotal = 0
							
							while not RSglobalCAGR.EOF
								SegTypeNEW = trim(RSglobalCAGR("segment_type"))
								Segment_ID = trim(RSglobalCAGR("Segment_ID"))
							%>
							
							<%If trim(SegTypeOLD)<>"" Then
								If trim(SegTypeOLD)<>trim(SegTypeNEW) Then%>
								<tr>
									<thead style="background-color: #ffffff;">
										<th >TOTALS</th>
										<%For ThYear=BYearVar to EyearVar 
											colYearTH="" &  ThYear  & ""
										%>  <th class="section_subheader"><input type="text" maxlength="4" class="js-input rank_input" name="segment_percentage_total_<%=Segment_ID%>_<%=ThYear%>_<%=GTCountry_Name%>" id="segment_percentage_total_<%=Segment_ID%>_<%=ThYear%>_<%=GTCountry_Name%>" value="100" size="20" tabindex="3" placeholder="##.#"></th>
											<th class="section_subheader">							
											<%dim gtTotalYear
											gtTotalYear = 0
											If i = j Then
												stVal = 1
												endVal = i-1
											else
												stVal = (i)-(j-1)
												endVal = i-1
											End If
											for x = stVal to endVal
												colx="" &  x  & ""
												gtTotalYear = gtTotalYear + dictObject(colx).item(colYearTH)
											Next
											''response.write gtTotalYear
											%>
											<input type="text" maxlength="4" class="js-input rank_input" name="segment_percentage_total_<%=Segment_ID%>_<%=ThYear%>" id="segment_size_total_<%=Segment_ID%>_<%=ThYear%>_<%=GTCountry_Name%>" value="<%=gtTotalYear%>_<%=GTCountry_Name%>" size="20" tabindex="3" placeholder="##.#">
											</th>
										<%Next %>
										<th style="background-color:yellow;">&nbsp;</th>
									</thead>
								</tr>
								<tr><td colspan="<%=getValue1%>">&nbsp;</td></tr>
								<tr>
									<thead style="background-color: #00D4FF;">
										<th>Application (Secondary) - <%=SegTypeNEW%></th>
										<!--<th>Type</th>-->
										<%For ThYear=BYearVar to EyearVar%>
											<th>%</th>
											<th><%=ThYear%></th>
										<%Next %>
										<th style="background-color:yellow;">CAGR</th>
									</thead>
								</tr>
								<%	j = 1
								End If
							End If%>

							
							<tr>
								<td class="w-50 section_subheader" ><h3><%=trim(RSglobalCAGR("segment_name"))%></h3></td>
								<!--<td class="w-50 section_subheader" ><h3><%=trim(RSglobalCAGR("segment_type"))%></h3></td>-->
									<%
									For DcolYear=BYearVar to EyearVar 
										colYear="" &  DcolYear  & ""
										
										''Percent generation 
										Set rsSegType_total =Server.CreateObject("ADODB.Recordset")
										IF trim(request("vCountry"))="World" then
											usqlsegmentTYPE_total="select sum([" & DcolYear & "]) as '"&DcolYear&"'  from vw_Report_Countries_AnalytixConsolidate$_cust where  (gia_no='" &trim(request("vGIANO"))&"'  and segment_type='"&trim(RSglobalCAGR("segment_type"))&"') group by Segment_type,GIA_NO"
										else
											usqlsegmentTYPE_total="select sum([" & DcolYear & "]) as '"&DcolYear&"'  from vw_Report_Countries_AnalytixConsolidate$_cust where  (gia_no='" &trim(request("vGIANO"))&"' and country_name='"&replace(trim(request("vCountry")),"_"," ")&"' and segment_type='"&trim(RSglobalCAGR("segment_type"))&"') group by  country_name,Segment_type"
										end if
										''response.write usqlsegmentTYPE_total
										rsSegType_total.Open usqlsegmentTYPE_total,DataSource7
										if not rsSegType_total.eof then
											SegTypePerVal=round((RSglobalCAGR(colYear) *100)/ rsSegType_total(colYear),2)
											
										end if
										set rsSegType_total=nothing
										%>
										<td class="section_subheader">
										<h3>
											<input type="text" maxlength="4" class="js-input rank_input" name="segment_percentage_<%=Segment_ID%>_<%=DcolYear%>_<%=GTCountry_Name%>" id="segment_percentage_<%=Segment_ID%>_<%=DcolYear%>_<%=GTCountry_Name%>" value="<%=SegTypePerVal%>" size="20" onchange="SegmentPercentagevalueCalculation_100('<%=Segment_ID%>','<%=DcolYear%>','<%=GTCountry_Name%>')" tabindex="3" placeholder="##.#">
										</h3></td>
										<td class="section_subheader">
										<h3>
											<input type="text" maxlength="4" class="js-input rank_input" name="segment_size_<%=Segment_ID%>_<%=DcolYear%>_<%=GTCountry_Name%>" id="segment_size_<%=Segment_ID%>_<%=DcolYear%>_<%=GTCountry_Name%>" value="<%=RSglobalCAGR(colYear)%>" size="20" onchange="SegmentSizevalueCalculation_100('<%=Segment_ID%>','<%=DcolYear%>','<%=GTCountry_Name%>')" tabindex="3" placeholder="##.#">
										</h3>
										</td>
									<%
									dim colYearValue
									colYearValue = RSglobalCAGR(colYear)
									dictObject(i).add colYear,colYearValue
									Next 
									%>
								<td class="section_subheader" style="background-color:yellow;"><h3 ><%=RSglobalCAGR("CAGR")%></h3></td>
							</tr>
							
							<%	SegTypeOLD = trim(RSglobalCAGR("segment_type"))
								i=i+1
								j=j+1
								RSglobalCAGR.movenext
							wend%>
							
							<%If trim(SegTypeOLD)<>"" Then
								If trim(SegTypeOLD)=trim(SegTypeNEW) Then%>
								<tr>
									<thead style="background-color: #ffffff;">
										<th >TOTALS</th>
										<%For ThYear=BYearVar to EyearVar 
											colYearTH="" &  ThYear  & ""
										%>  <th class="w-50 section_subheader"><input type="text" maxlength="4" class="js-input rank_input" name="segment_percentage_total_<%=Segment_ID%>_<%=ThYear%>" id="segment_percentage_total_<%=Segment_ID%>_<%=ThYear%>" value="100" size="20" tabindex="3" placeholder="##.#"></th>
											<th class="w-50 section_subheader">							
											<%dim gtTotalYear1
											gtTotalYear1 = 0
											If i = j Then
												stVal = 1
												endVal = i-1
											else
												stVal = (i-1)-(j-2)
												endVal = i-1
											End If
											for x = stVal to endVal
												colx="" &  x  & ""
												gtTotalYear1 = gtTotalYear1 + dictObject(colx).item(colYearTH)
											Next
											'''response.write gtTotalYear1
											%>
											<input type="text" maxlength="4" class="js-input rank_input" name="segment_percentage_total_<%=Segment_ID%>_<%=ThYear%>" id="segment_size_total_<%=Segment_ID%>_<%=ThYear%>" value="<%=gtTotalYear1%>" size="20" tabindex="3" placeholder="##.#">
											</th>
										<%Next %>
										<th style="background-color:yellow;">&nbsp;</th>
									</thead>
								</tr>
								<tr><td colspan="<%=getValue1%>">&nbsp;</td></tr>
								
							<%	j = 1
							End If
							End If%>
							
						<%end if
						SET RSglobalCAGR=NOTHING
						if trim (session("Historic"))="Y" then
						%>
						</table>
					</div>
				</td>
			</tr>
		</table>
		<h3>Historics</h3>
		<%''' Historics
		Set RSglobalCAGR =Server.CreateObject("ADODB.Recordset")
		RSglobalCAGR.ActiveConnection = DataSource7
		Set MyCon = Server.CreateObject("ADODB.Connection")		
		MyCon.Open Datasource7
		For displayYear = SyearVar to (ByearVar-1) 
			QueryYearsF=QueryYearsF & ",sum([" &  displayYear  & "]) as '" &  displayYear  & "'"
		Next 
		usqlGlobalCagr="select segment_name,Segment_ID " & QueryYearsF & ",ROUND(dbo.ReturnCAGR_Cust(SUM([" & ByearVar-1 & "]), SUM([" & session("SYear") & "]),"&ByearVar-1&","&session("SYear")&"), 2) AS CAGR from vw_Report_Countries_AnalytixConsolidate$_cust where (gia_no='" & trim(request("vGIANO")) & "') group by segment_name,Segment_ID ORDER BY convert(int, SUBSTRING(SEGMENT_ID,CHARINDEX('-',SEGMENT_ID)+1,LEN(segment_id)-CHARINDEX('-',SEGMENT_ID)))"
		Maxval=100
		RSglobalCAGR.Open usqlGlobalCagr%>	
		
		<table>
			<tr>
				<td>
					<div class="w-100" id="fixed-column-scroll-table">
		
		<table class="w-100">
		<tr >
			<thead style="background-color: #569ED0;">
				<th>Segment Name</th>
				<%For ThYear=SyearVar to (ByearVar-1) %>
					<th>%</th>
					<th><%=ThYear%></th>
				<%Next %>
				<th>CAGR</th>
			</thead>
		</tr>
		<%IF not RSglobalCAGR.EOF THEN	
			i=1
			while not RSglobalCAGR.EOF%>
			<tr>
				<td class="w-100 section_subheader" ><h3><%=trim(RSglobalCAGR("segment_name"))%></h3></td>
					<% For DcolYear=SyearVar to (ByearVar-1) 
						colYear="" &  DcolYear  & ""
						''Percent generation
						'Set rsSegTypeH_total =Server.CreateObject("ADODB.Recordset")
						''IF trim(request("vCountry"))="World" then
							''	usqlsegmentTYPEH_total="select sum([" & colYear & "]) as '"&colYear&"'  from vw_Report_Countries_AnalytixConsolidate$_cust where  (gia_no='" &trim(request("vGIANO"))&"'  and segment_type='"&trim(RSglobalCAGR("segment_type"))&"') group by Segment_type,GIA_NO"
							''else
						''		usqlsegmentTYPEH_total="select sum([" & colYear & "]) as '"&colYear&"'  from vw_Report_Countries_AnalytixConsolidate$_cust where  (gia_no='" &trim(request("vGIANO"))&"' and country_name='"&replace(trim(request("vCountry")),"_"," ")&"' and segment_type='"&trim(RSglobalCAGR("segment_type"))&"') group by  country_name,Segment_type"
						'end if
						'response.write usqlsegmentTYPEH_total
								''rsSegTypeH_total.Open usqlsegmentTYPEH_total,DataSource7
								''if not rsSegTypeH_total.eof then
								''	SegTypeHPerVal=round((RSglobalCAGR(colYear) *100)/ rsSegTypeH_total(colYear),2)
									
								''end if
								''set rsSegTypeH_total=nothing
						%>
						<td class="w-100 section_subheader"><h3><input name="txt_Percentage" type="text" id="txtCAGR_Percentage" value="<%=SegTypeHPerVal%>" style="width: 40px;text-align: center; "></h3></td>
						<td class="w-100 section_subheader"><h3><%=RSglobalCAGR(colYear)%></h3></td>
					<%
					Next 
					%>
				<td class="w-100 section_subheader"><h3><%=RSglobalCAGR("CAGR")%></h3></td>
			</tr>
			<%i=i+1
			   RSglobalCAGR.movenext
			wend
		end if
		SET RSglobalCAGR=NOTHING
		
		
	end if
	end if
	%>
		</div>
		</td>
		</tr>
		</table>
	
	
	