	<!--#include file="ASPIncludes/DBopen.asp"-->
	<!--#include file="ADOVBS.asp"-->
	
<%	if (trim(request("vGIANO")) <>"" )  then
			vSegment_ID=replace(replace(replace(trim(request("vGIANO")),"MCP",""),"-",""),"NT","")
			vSEG_ID= trim(request("i"))
			
			
			RecChannelSQL = "select * from Baseline_REOPORT_MARKET_SEGMENTS_APPLICATIONS$  where GIA_no='" &  trim(request("vGIANO")) & "'"
			Set RecChannelRS = Server.CreateObject("ADODB.Recordset")
			''response.write RecChannelSQL
			RecChannelRS.Open RecChannelSQL, DataSource7
			
		If Not RecChannelRS.EOF Then
		while not RecChannelRS.EOF
		%>
	<table class="table w-100" >
                    <tbody>
						<!--tr>
							<th colspan="8" scope="col" align="center" style="color:black;background-color:#FFF;">KEY MARKET SEGMENT (MS)</th>
						</tr-->
                        <tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">ID</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">CHANNEL NAME</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">APPLICATION</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">2019 MARKET SIZE</th>
                            <!--<th scope="col" style="color:black;background-color:#FFF1EB;text-align: center !important;">%</th>-->
                            <th scope="col" style="color:black;background-color:#FFF1EB;" colspan="2" class="text-center">
								<div class="d-flex justify-content-between"> 
							        <span class="ml-4">%</span>
							         <span class="mx-auto">ALLOCATION</span>
							     </div>
							</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" colspan="3" class="text-center">%GROWTH TREND</th>
                            <!--th scope="col" style="color:black;background-color:#FFF1EB;">OPTIONS</th-->
                        </tr> 
						<tr>
                            
							<th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
							<th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"></th>
							<th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" class="text-center"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">2012</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">2019</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">2030</th>
                            <!--th scope="col" style="color:black;background-color:#FFF1EB;"></th-->
                        </tr> 
					<%
						'Set MyCon = Server.CreateObject("ADODB.Connection")		
					   ' MyCons.Open Datasource7
							 
						Dim rString, vSegNameShow
						if (trim(request("vGIANO")) <>"" )then
									'''' GET PRIMARY TYPE
									vsegmentType=trim(RecChannelRS("Application_name"))
									vSegTypeSpace = replace(vsegmentType," ","_")
									''response.write "vSegTypeSpace = "&vSegTypeSpace
									dim GTPrimary_Type,Segnos
									GTPrimary_Type = ""
									Segnos = 1
									Segnos = trim(RecChannelRS("No_of_channels")) 
									For i = 1 To Segnos
									'' random
									
									'If trim(request("vSegName"))="undefined" Then
									'	vSegNameShow = "Market Segment"
								'	End If
									%>
				
							
							<tr>

                            <td class="GIA_NO">
                                <%=i%>
                            </td>
                            <td class="SEGMENT">
                                <input name="SegmentName_<%=vSegTypeSpace%>_<%=i%>" id="SegmentName_<%=vSegTypeSpace%>_<%=i%>" placeholder="Add Segment" type="text" class=" mx-auto" style="width:100%;display: block">
                            </td>
							
							<td class="SEGMENT"><%=trim(vsegmentType)%></td>
							
							
                            
                            <td class="Type">
                               
                                <input name="gvSegments_<%=vSegTypeSpace%>_<%=i%>" id="gvSegments_<%=vSegTypeSpace%>_<%=i%>"  type="text" class="mx-auto" style="width:80px;display: block" value="0">
								
                            </td>

                            <td class="Allocation_Percentage" COLSPAN="2">
                                <div class="w-100">								
                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_<%=vSegTypeSpace%>_<%=i%>" id="rank_input_<%=vSegTypeSpace%>_<%=i%>" value="0" maxlength="4" size="20" tabindex="3" placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_<%=vSegTypeSpace%>_<%=i%>" />
                                    </div>
                                    <script>
									
                                        var $slide_<%=vSegTypeSpace%>_<%=i%>= $("#slide_<%=vSegTypeSpace%>_<%=i%>");
                                        var $slide_input_<%=vSegTypeSpace%>_<%=i%> = $("#rank_input_<%=vSegTypeSpace%>_<%=i%>");
                                        var instance<%=vSegTypeSpace%>_<%=i%>;
                                        var min = 0;
                                        var vfromval = <%=i%>;
                                        var max = 100;

                                        $slide_<%=vSegTypeSpace%>_<%=i%>.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_<%=vSegTypeSpace%>_<%=i%>.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_<%=vSegTypeSpace%>_<%=i%>.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance<%=vSegTypeSpace%>_<%=i%> = $slide_<%=vSegTypeSpace%>_<%=i%>.data("ionRangeSlider");

                                        $slide_input_<%=vSegTypeSpace%>_<%=i%>.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance<%=vSegTypeSpace%>_<%=i%>.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>
                                </div>
                            </td>

							<td class="CAGR_Percentage">
                                <input name="txtCAGR_Percentage14_<%=vSegTypeSpace%>_<%=i%>" type="text" id="txtCAGR_Percentage14_<%=vSegTypeSpace%>_<%=i%>" Placeholder="##.#" value="0"
                                    style="width: 40px;text-align: center; ">
                            </td>
                          
							<td class="CAGR_Percentage">
                                <input name="txtCAGR_Percentage20_<%=vSegTypeSpace%>_<%=i%>" type="text" id="txtCAGR_Percentage20_<%=vSegTypeSpace%>_<%=i%>" Placeholder="##.#" value="0"
                                    style="width: 40px;text-align: center; ">
                            </td>
							<td class="CAGR_Percentage">
                                <input name="txtCAGR_Percentage30_<%=vSegTypeSpace%>_<%=i%>" type="text" id="txtCAGR_Percentage30_<%=vSegTypeSpace%>_<%=i%>" Placeholder="##.#" value="0"
                                    style="width: 40px;text-align: center; ">
                            </td>
                           
                        </tr>
							
							
						   <%
						Next
						''rString = rsSegments("topic") 
						%>
						<tr>

                            <th scope="col" style="color:black;background-color:#FFF1EB;" colspan="10"><input type="button" value="ADD CHANNELS" onclick="funAddAllSegments();" ></th>
						</tr>
					<%end if
				
						RecChannelRS.MOVENEXT
								WEND
								END If
					SET RecChannelRS=nothing
	end if	
			
					''SET rsSegments=NOTHING
	''end if
	
	
	'set MyCons= Nothing
	''response.write rString
%>
</table>