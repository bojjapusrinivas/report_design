	<!--#include file="ASPIncludes/DBopen.asp"-->
	<!--#include file="ADOVBS.asp"-->
	 <table class="table w-100" style="width:100%;">
                    <tbody>
						
                       
	<%
	''Set MyCon = Server.CreateObject("ADODB.Connection")		
   '' MyCon.Open Datasource7
   dim GTRecCNT
   GTRecCNT = 1
	RecMarketSegSQL = "select * from Baseline_REPORT_MARKET_SEGMENTS$  where GIA_no='" &  trim(request("vGIANO")) & "' and type='Market Segments' order by seg_id"
	Set RSMarketSeg = Server.CreateObject("ADODB.Recordset")
	RSMarketSeg.Open RecMarketSegSQL, Datasource7
	If Not RSMarketSeg.EOF Then
	while not RSMarketSeg.EOF
	 vNoofapps = RSMarketSeg("No_of_Applications")%>
	 <tr>
		<th colspan="5" scope="col" style="color:black;background-color:#FFF1EB;">MARKET SEGMENT - <b><%=trim(ucase(RSMarketSeg("Name")))%></b></td>
	 </tr>
	 <tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">MARKET SEGMENT</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">APPLICATION NO</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">APPLICATION NAME</th>	
							<th scope="col" style="color:black;background-color:#FFF1EB;">NO. OF CHANNELS</th>	
							<th scope="col" style="color:black;background-color:#FFF1EB;">KEY APPLICATION</th>								
     </tr> 
	 <%
		'response.write vNoofapps		
		For i = 1 To cint(vNoofapps)
		dim Varchkbox
		Varchkbox = ""
		If i = 1 then
			Varchkbox = "checked"
		End If
		%>
				
					<tr>
						<td class="GIA_NO">
							<b><%=RSMarketSeg("Name")%></b>
						</td>
						
						<td class="GIA_NO">				                                
							<input type="text" size="2" readonly name="AppCount<%=i%>" id="AppCount<%=i%>" value="<%=i%>">
						</td>
						<td class="SEGMENT">
							<input name="ApplicationName<%=i%>" id="ApplicationName<%=i%>" placeholder="Add Application <%=i%>" type="text" class=" mx-auto" style="width:100%;display: block">
							
						</td>
						
						<td class="GIA_NO">
						<input type="text" class="js-input rank_input mx-2" name="Txt_Channel<%=i%>" id="Txt_Channel<%=i%>" value="" style="width: 40px !important;" size="3" tabindex="3" placeholder="##">
						</td>

						<td class="GIA_NO">
							<input type="checkbox" class="js-input rank_input mx-2" <%=Varchkbox%> name="Txt_Key<%=i%>" id="Txt_Key<%=i%>" value="" style="width: 40px !important;" size="3" tabindex="3" >
						</td>						
					</tr>
		<% next
		GTRecCNT = GTRecCNT + 1		
		RSMarketSeg.movenext
		wend
	end if
	SET RSMarketSeg=NOTHING
	 
	 %>
	  <tr>
										<td colspan="5">
											<div class="collapse" id="SHOW_ADD_APPLICATION2">
											 <div class="card card-body border-0 p-0">     
											   <!--  Display market segment-->	
											   <table class="table w-100 mb-1 border-0">
												<tbody><tr>
												   <td scope="col" style="color:black;">
													  <div class="d-flex  align-items-center">
														 
														 <input type="submit" name="btnAdd" class=" btn-primary p-2 shadow-sm border-0 mx-1 mb-0" onclick="funMSChannels()" value="ADD" id="btnAdd">
													  </div>
												   </td>
												</tr>
												
											 </tbody></table>
											</div>
										</div></td>
										</tr>
	
									
									 <tr><td colspan="3"><input type="button" value="ADD CHANNELS" onclick="funMSChannels()"></td></tr>
									<!--    <th scope="col" style="color:black;background-color:#FFF1EB;" colspan="10"><input type="button" value="ADD APPLICATIONS" onclick="funAddAllSegments();" ></th>
									</tr-->
						
</tbody></table>