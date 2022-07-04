	<!--#include file="ASPIncludes/DBopen.asp"-->
	<!--#include file="ADOVBS.asp"-->
	<table class="table w-100" >
                    <tbody>
						<!--tr>
							<th colspan="8" scope="col" align="center" style="color:black;background-color:#FFF;">KEY MARKET SEGMENT (MS)</th>
						</tr-->
                        <tr>
                            <th scope="col" style="color:black;background-color:#FFF1EB;"> ID</th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">SEGMENT NAME</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">No. of Apps</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">SEGMENT TYPE</th>
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
							<th scope="col" style="color:black;background-color:#FFF1EB;"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;" class="text-center"></th>
                            <th scope="col" style="color:black;background-color:#FFF1EB;">2012</th>
							<th scope="col" style="color:black;background-color:#FFF1EB;">2019</th>
							<th scope="col" style="color:black;background-color:#FFF1EB; text-align: center;">2030</th>
                            <!--th scope="col" style="color:black;background-color:#FFF1EB;"></th-->
                        </tr> 
					<%
						'Set MyCon = Server.CreateObject("ADODB.Connection")		
					   ' MyCons.Open Datasource7
							 
						Dim rString, vSegNameShow
						if (trim(request("vGIANO")) <>"" )then
									'''' GET PRIMARY TYPE
									dim GTPrimary_Type
									GTPrimary_Type = ""
									Segnos=trim(request("vSegCount")) 
									For i = 1 To Segnos
									'' random
									
									If trim(request("vSegName"))="undefined" Then
										vSegNameShow = "Market Segment"
									End If
									%>
				
							
							<tr>

                            <td class="GIA_NO">
                                <%=i%>
                            </td>
                            <td class="SEGMENT">
                                <input name="SegmentName<%=i%>" id="SegmentName<%=i%>" placeholder="Add Segment" type="text" class=" mx-auto" style="width:100%;display: block">
                            </td>
							<td class="CAGR_Percentage">
                                <input name="txtNoofApps_<%=i%>" type="text" id="txtNoofApps_<%=i%>" Placeholder="##.#" value="0"  style="width: 30px;text-align: center; ">
                            </td>
							<td class="SEGMENT"><%=trim(vSegNameShow)%></td>
							<!--td class="Type">
                              <select id="gvSegmentType<%=i%>">
							  <option value="">--Select Channel Type--</option>
							<%  RecChannelSQL = "select * from Baseline_Channel_Types_Bespoke  where GIA_no='" &  trim(request("vGIANO")) & "'"
								Set RecChannelRS = Server.CreateObject("ADODB.Recordset")
								RecChannelRS.Open RecChannelSQL, Datasource7	
								If Not RecChannelRS.EOF Then
									while not RecChannelRS.EOF
								%> 
							   
								  <option value="<%=RecChannelRS("Type")%>"><%=RecChannelRS("Type")%></option>
								  
								  
								<%
								RecChannelRS.MOVENEXT
								WEND
								END If
								if (trim(request("vSegName")) <>"" )Then%>
									<option value="<%=trim(request("vSegName"))%>"><%=trim(request("vSegName"))%></option>
								<%End If
								%> 
								
								</select>
                                
								
                            </td-->
							<!--td class="Type">                              
								<%if (trim(request("vSegName")) <>"" )Then%>
									 <%=trim(request("vSegName"))%>
								<%End If
								%> 
                            </td-->
                            <td class="Type">
                               
                                <input name="gvSegments<%=i%>" id="gvSegments<%=i%>"  type="text" class="mx-auto" style="width:60px;display: block; text-align: center;" value="0">
								
                            </td>

                            <td class="Allocation_Percentage" COLSPAN="2">
                                <div class="w-100">								
                                    <div class="range-slider ranking_slider">
                                        <p style="font-size: 15px;  font-weight: bold; margin-top: 13px;">%</p>
                                        <input type="text" maxlength="4" class="js-input rank_input"
                                            name="rank_input_<%=i%>" id="rank_input_<%=i%>" value="0" maxlength="4" size="20" tabindex="3" placeholder="##.#">
                                        <input type="text" value="0" class="js-range-slider" id="slide_<%=i%>" />
                                    </div>
                                    <script>
									
                                        var $slide_<%=i%>= $("#slide_<%=i%>");
                                        var $slide_input_<%=i%> = $("#rank_input_<%=i%>");
                                        var instance<%=i%>;
                                        var min = 0;
                                        var vfromval = <%=i%>;
                                        var max = 100;

                                        $slide_<%=i%>.ionRangeSlider({
                                            skin: "big",
                                            type: "single",
                                            min: min,
                                            max: max,
                                            from: vfromval,
                                            grid: true,
                                            step: 0.5,
                                            grid_num: 10,

                                            onStart: function (data) {
                                                $slide_input_<%=i%>.prop("value", data
                                                    .from);
                                            },
                                            onChange: function (data) {
                                                $slide_input_<%=i%>.prop("value", data
                                                    .from);
                                            }
                                        });

                                        instance<%=i%> = $slide_<%=i%>.data("ionRangeSlider");

                                        $slide_input_<%=i%>.on("input", function () {
                                            var val = $(this).prop("value");

                                            // validate
                                            if (val < min) {
                                                val = min;
                                            } else if (val > max) {
                                                val = max;
                                            }

                                            instance<%=i%>.update({
                                                from: val
                                            });

                                            $(this).prop("value", val);
                                        });
                                    </script>
                                </div>
                            </td>

							<td class="CAGR_Percentage">
                                <input name="txtCAGR_Percentage14_<%=i%>" type="text" id="txtCAGR_Percentage14_<%=i%>" Placeholder="##.#" value="0"
                                    style="width: 40px;text-align: center; ">
                            </td>
                          
							<td class="CAGR_Percentage">
                                <input name="txtCAGR_Percentage20_<%=i%>" type="text" id="txtCAGR_Percentage20_<%=i%>" Placeholder="##.#" value="0"
                                    style="width: 40px;text-align: center; ">
                            </td>
							<td class="CAGR_Percentage">
                                <input name="txtCAGR_Percentage30_<%=i%>" type="text" id="txtCAGR_Percentage30_<%=i%>" Placeholder="##.#" value="0"
                                    style="width: 40px;text-align: center; ">
                            </td>
                           
                        </tr>
							
							
						   <%
						Next
						''rString = rsSegments("topic") 
						%>
						<tr>

                            <th scope="col" style="color:black;background-color:#FFF1EB;" colspan="10"><input type="button" value="ADD MARKET SEGMENTS" onclick="funAddAllSegments();" ></th>
						</tr>
					<%end if
					''SET rsSegments=NOTHING
	''end if
	
	
	'set MyCons= Nothing
	''response.write rString
%>
</table>