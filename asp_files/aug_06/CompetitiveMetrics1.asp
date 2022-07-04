

<script src="scripts/bootstrap.bundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>

<link rel="stylesheet" href="css/competitive_style1.css" />
<%

Function SelectRadio(val1,val2)
 	IF trim(val1) = trim(val2) then
		SelectRadio = " Checked"
	else
		SelectRadio = ""
	End IF
END Function
Function checked(val1,val2)
		IF trim(val1) = trim(val2) Then		
			checked = "checked"
		else
			checked = ""
		End IF
	END Function
%>
<script type="text/javascript">



function isNumberKey(evt, element) {
  var charCode = (evt.which) ? evt.which : event.keyCode
  if (charCode > 31 && (charCode < 48 || charCode > 57) && !(charCode == 46 || charCode == 8))
    return false;
  else {
    var len = $(element).val().length;
    var index = $(element).val().indexOf('.');
    if (index > 0 && charCode == 46) {
      return false;
    }
    if (index > 0) {
      var CharAfterdot = (len + 1) - index;
      if (CharAfterdot > 2) {
        return false;
      }
    }

  }
  return true;
}

function AddAllComp_metris(code)
{
 //alert(code);
    //var v= $('input[type=radio].rankclass:checked');
	   // $(v).each(function(i){
		    // alert($(this));
			 
			
	//});
	
	 alert("Data Updated Sucessfully");
}

function AddComp_metris(cpcode,mcpcode) {	 

  // alert("hi");
 // alert(cpcode);
 //alert(mcpcode);
 
 
    var vcpCode = cpcode;
	 var vMCPcode = mcpcode;
	 
     var vtxtRank = $("#Rank"+vcpCode).val();
	 var vtxtRtype = "Rtype" + vcpCode;
	// var varqualitative=  $('input[id="qualitative"]:checked').val(); 
	//alert (vtxtRank);
	  var vtxtRval=  $('input[id='+vtxtRtype+']:checked').val(); 
	//alert(vtxtRval);
	valsessiontxt = $("#txtsession").val();
	//alert(valsessiontxt);
	var vRegion=$('#region_selection_dropdown_01').val();
	
	if (valsessiontxt != null && valsessiontxt != '')
	{
	
			if ( vtxtRval != null && vtxtRval != '' && vtxtRank != null && vtxtRank != '')
		  {  
			// alert(vtxtRval);
			 $.ajax({
				url: "Ajax_AddRLP_Compitator_Rank.asp",
				type: "POST",
				data:'vcpCode='+encodeURIComponent(vcpCode)+'&vMCPcode='+encodeURIComponent(vMCPcode)+'&vtxtRtype='+encodeURIComponent(vtxtRval)+'&vtxtRval='+encodeURIComponent(vtxtRank)+'&vRegion='+encodeURIComponent(vRegion)+'', 				
				success: function(data){
				//alert(data);
				//alert("Data Updated Sucessfully");
					
				},
				error: function (xhr, ajaxOptions, thrownError) {
				alert(xhr.status);
				alert(thrownError);
				alert(xhr.responseText);
				}
			  });
			} 
			  else 
			  {
				alert('Value cannot be left blank');
				//$(vtxtRtype).prop("checked", false);
				$("#Rank"+vcpCode).focus(); 
			  }	
      }			  
	   else	   
	  {
	      window.location.href = "https://www.strategyr.com/LoginRepeat.asp"
	   // window.location.href="LoginRepeat.asp";
	     // alert('');
		  //
	 }
		 

        
		}

</script>


<div class="w-100">

	<div class="row mb-0 mx-0">
	<form name="Form1" id="Form1" method="get" >
		<div class="w-100  mb-2 ">
			<h3 class="text-primary text_orange font-weight-bold m-0 line-height-'normal mt-2 text-center mb-3" style="font-size:18px;">COMPETITIVE METRICS</h3><input type="hidden" value="<%=session("EID")%>" id="txtsession">
				<div class=" mt-3 position-relative">


					<div id="competitive_metrics_table" class="region_selection_block border-0" >

						<div class="w-100">
							<select name="region_selection_dropdown_01" id="region_selection_dropdown_01" >
								<option value="WORLD RANK & SHARE" class="list_01">WORLD RANK & SHARE</option>
								<option value="USA RANK & SHARE" class="list_02">USA RANK & SHARE</option>
								<option value="CANADA RANK & SHARE" class="list_03">CANADA RANK & SHARE</option>
								<option value="JAPAN RANK & SHARE" class="list_04">JAPAN RANK & SHARE</option>
								<option value="CHINA RANK & SHARE" class="list_05">CHINA RANK & SHARE</option>
								<option value="U.K RANK & SHARE" class="list_06">U.K RANK & SHARE</option>
								<option value="FRANCE RANK & SHARE" class="list_07">FRANCE RANK & SHARE</option>
								<option value="GERMANY RANK & SHARE" class="list_08">GERMANY RANK & SHARE</option>
								<option value=">ITALY RANK & SHAR" class="list_09">ITALY RANK & SHARE</option>
								<option value="SPAIN RANK & SHARE" class="list_10">SPAIN RANK & SHARE</option>
								<option value="RUSSIA RANK & SHARE" class="list_11">RUSSIA RANK & SHARE</option>
								<option value="INDIA RANK & SHARE" class="list_12">INDIA RANK & SHARE</option>
								<option value="SOUTH KOREA RANK & SHARE" class="list_13">SOUTH KOREA RANK & SHARE</option>
								<option value="OTHER RANK & SHARE" class="list_14">OTHER RANK & SHARE</option>
							</select>
						 </div>

						 <div class="w-100 mobile_title">
							<h4>COMPANY</h4>
						</div>



					</div>

									
					 <table id="competitive_metrics_table">

                        <!---TABLE HEADER-->
                        <thead class="font-weight-bold">
                            <tr class="m-0 p-0">
								<th>
                                                   
								</th>

                                <th>
                                    <h4> COMPANY</h4>
                                </th>

                                <th>
                                    
                                        <!--h4 class="text-center border-bottom mb-0">WORLD RANK & SHARE</h4--->
									   <div class="d-flex w-100  mt-0">
                                            <span class="short_text ">D <!--a herf="javascript:void(0)"
                                                    class="text-primary"><i
                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                        title="Dominant"></i></a--></span>
                                            <span class="short_text">S <!--a herf="javascript:void(0)"
                                                    class="text-primary"><i
                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                        title="Strong"></i></a--></span>
                                            <span class="short_text ">N <!--a herf="javascript:void(0)"
                                                    class="text-primary"><i
                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                        title="Niche"></i></a--></span>
                                            <span class="short_text   ">T <!--a herf="javascript:void(0)"
                                                    class="text-primary"><i
                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                        title="Trivial"></i></a--></span> 


														<span class="short_text   ">
															<h4> % <span class="text-danger">*</span></h4>
															<!--a herf="javascript:void(0)"
																class="text-primary"><i
																	class="fa fa-info-circle  i5 message tooltippopup "
																	title="Trivial"></i></a-->
														</span>

                                       </div>
                                  

                                </th>
                               
                            </tr>
                        </thead>
							  <tbody>								 
												
				<%
				''response.write catid
				''response.write F_status
				if trim(completed)="Y" then
					sql1 = "select top 10  company,filename, MCPCODES,logo_local, Logo_background_color  FROM [GIA_MC_PROGRAM].[dbo].[InfluencersCompanies] WHERE filename in  (SELECT code FROM  stat_globind.dbo.MCP_CPCodes where mcpcode='" & trim(code) &"') order by company"
				else
					sql1 = "SELECT  top 10  company,filename, MCPCODES,logo_local, Logo_background_color FROM gia_mc_program.dbo.InfluencersCompanies WHERE MCPCODES LIKE '%" & code & "%' order by company" 
				end if
				''Filename like ('%" & Replace(cpcodes,"; ","%') or Filename like ('%")  & "%')" 
				''response.write completed
				'response.end
				Set RSInfluncer = Server.CreateObject("ADODB.Recordset")						
				Set Conn1 = Server.CreateObject("ADODB.Connection")
				Conn1.Open DataSource4
				RSInfluncer.ActiveConnection = conn1
				'RSInfluncer.CursorType = 3
			'	response.write sql1
			'	response.end
				RSInfluncer.OPEN sql1
				MCPCODES_lIST = ""
				If not RSInfluncer.EOF Then
					
					
					While not RSInfluncer.EOF
						'' response.write RSInfluncer("company") & "<br>"
					 ''response.write("<tr class='table-row' id='table-row-"&RSInfluncer("Filename") &"'><td width='360px !important;' ><input type='hidden' name='cname"&RSInfluncer("Filename")&"'  id='cname"&RSInfluncer("Filename")&"' value='" &RSInfluncer("company")& "' ><input class='mx-2 select-mode' type='checkbox' name='MScheckbox' id='"&RSInfluncer("Filename") &"'  value='"&RSInfluncer("Filename") &"' "&checked(vMCPCode,RSInfluncer("Filename"))&"><a href='javascript:void(0)' title='" & RSInfluncer("company") & "' class='text-dark' ><span class='textlimit'>" & RSInfluncer("company") & "</span></a></td><td  align='center'><input type='radio'  id='Player_"&RSInfluncer("filename")&"' name='Player_"&RSInfluncer("filename")&"'   "&SelectRadio(trim(vStatus),"D")&"  value='D##"&RSInfluncer("filename")&"' class='colorCars"&RSInfluncer("filename")&"'></td><td  align='center'><input type='radio' class='colorCars"&RSInfluncer("filename")&"'  name='Player_"&RSInfluncer("filename")&"' "&SelectRadio(trim(vStatus),"A")&"  value='A##"&RSInfluncer("filename")&"'></td><td  align='center'><input type='radio'  class='colorCars"&RSInfluncer("filename")&"' id='Player_"&RSInfluncer("filename")&"' name='Player_"&RSInfluncer("filename")&"' "&SelectRadio(trim(vStatus),"NP")&"  value='NP##"&RSInfluncer("filename")&"'></td><td  align='center'><input type='radio' class='colorCars"&RSInfluncer("filename")&"' "&SelectRadio(trim(vStatus),"I")&"  name='Player_"&RSInfluncer("filename")&"' id='Player_"&RSInfluncer("filename")&"' value='I##"&RSInfluncer("filename")&"'></td><td><input type='text'  name='M2021Share"&RSInfluncer("filename")&"' id='M2021Share"&RSInfluncer("filename")&"' value='"&v2021&"'  onkeypress='return isNumberKey(event,this)' maxlength='4' size='20' tabindex='3' class='textbox_border w-100 p-1 simulator-input-text price2021 colorCars"&RSInfluncer("filename")&"'  placeholder='##.#' ></td></tr>")
					 Set rsMetrics = Server.CreateObject("ADODB.Recordset")								
							SqlMetrics="select * from tbl_Competitive_metrics where CP_code in ('"&RSInfluncer("Filename")&"') and MCP_code='" & code & "' and (Session_id='" & session.SessionID & "' or email='" & session("eid") & "')"
							''response.write(SqlMetrics)
							rsMetrics.Open SqlMetrics,DataSource4
							if not rsMetrics.EOF Then
									RanK_Type=rsMetrics("RanK_Type")
									Rank=rsMetrics("Rank")
									highlight="highlight"
							else
									RanK_Type=""
									Rank=""
									highlight=""
							end if
							set rsMetrics=nothing
							if trim(RSInfluncer("Logo_background_color"))<>"" then
							backcolor="background-color:" & RSInfluncer("Logo_background_color")
							else
							backcolor=""
							end if
					 %>
					  <!---ROW BEGIN (THIS ROW TO BE REPEATED) -->
                                    <tr  class="<%=highlight%>">
											<td>
												<div class="img_block">
													<a href="#ex1" rel="modal:open"> <img src="<%=RSInfluncer("logo_local")%>" style="<%=backcolor%>" class="img-fluid"></a>
                                                    </div>
												</td>
                                            <td><h4 title="<%=RSInfluncer("company")%>"> <%=RSInfluncer("company")%> </h4></td>
                                            <td>

                                                <div class="d-flex w-100 ">
                                                    <span class="short_text "> <input type="radio" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')"  name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Dominant" <%=checked("Dominant",RanK_Type)%> class="p-0 mr-1" ></span>
                                                    <span class="short_text "><input type="radio" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Strong" <%=checked("Strong",RanK_Type)%> class="p-0 mr-1" ></span>
                                                    <span class="short_text "><input type="radio" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Niche" <%=checked("Niche",RanK_Type)%> class="p-0 mr-1" > </span>
                                                    <span class="short_text "><input type="radio"  onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Trivial" <%=checked("Trivial",RanK_Type)%> class="p-0 mr-1" >  </span>
													<span class="short_text"><input type="text" maxlength="4"   onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rank<%=RSInfluncer("filename")%>" id="Rank<%=RSInfluncer("filename")%>" value="<%=Rank%>" onkeypress='return isNumberKey(event,this)' maxlength='4' size='20' tabindex='3' class="textbox_border inputselector" placeholder="##.#" >
														<%if session("EID") ="" then%>  <p class="input_popup_msg"> Login Required</p><%end if%></span>
                                                </div>
                                            </td>
                                          
                                    </tr>
					 
				<%
							K = K+1
					RSInfluncer.movenext
					Wend
				End If
				Set RSInfluncer = Nothing
				Set Conn1 = nothing
				%>
				  </tbody>

                           </table>

                           <table id="competitive_metrics_table" class="border-0">
                            <tr>
                                <td class="comp_sub">
                                    <a href="#" onclick="AddAllComp_metris('<%=code%>')" class="submit-button my-2  float-right" type="button" > SUBMIT </a>

                                </td>
                            </tr>
                        </table>
						<div class="border-0 font-weight-bold" id="validate_msg" style="font-size: 12px !important;font-style: color:#000; font-weight:500; margin-top:0px !important">
                              <sapn class="text-danger">*</sapn> D = Dominant; S = Strong; N = Niche; T = Trivial 
                        </div>
						<div class="border-0 font-weight-bold" id="validate_msg" style="font-size: 12px !important;font-style: italic; margin-top:1px !important" >
							 <sapn class="text-danger">*</sapn> Validated respondents are incentivized with cluster data<!--Validated participants will receive complimentary Cluster data by email-->
						</div>
				 </div>
				 
				  <div class="competitive_table_message w-100 text-center">
            <sapn class="text-danger">Note:</sapn> Best viewed in Landscape Mode
        </div>
				 <%if session("EID") <>"" then%>
				<a  href="Report_CompetitiveMetrics.asp?code=<%=code%>" target="new" class="view_entire_pool_btn"  >VIEW ENTIRE POOL OF <%=companies%> COMPETITORS</a> 
				<%else%>
				<a  href="LoginRepeat.asp" class="view_entire_pool_btn"  >VIEW ENTIRE POOL OF <%=companies%> COMPETITORS</a> 
				<%end if%>
		</div>
		
		</form>		
			 <%if session("EID") ="" OR trim(request("encid"))="" then%>
			 <div class="w-100 text-left pt-2  mt-3 border-top  ">
				<h4 class="font-weight-bold  text-center my-0 " style="font-size:17px;"> Login to access data silos </h4>
					<div class="w-100">
							
								<span class="d-flex flex-md-row flex-sm-row flex-wrap  justify-content-center mt-2 view_deeper">
								<button class=" rounded-0 p-2 shadow   btn_type_02  " type="button"  id="expert_btn">
                                EXPERT PANEL
                            </button>
							<a href="LoginRepeat.asp" class=" rounded-0 p-2 shadow   btn_type_02 text-center" type="button"  style="cursor:pointer !important;">
									RESEARCH MODULES
								</a>
							<a  href="LoginRepeat.asp" class=" rounded-0 p-2 shadow   btn_type_02 text-center" type="button"  style="cursor:pointer !important;">
									MARKET TRENDS
								</a>
							<a  href="LoginRepeat.asp"  class=" rounded-0 p-2 shadow   btn_type_02 text-center" type="button"  style="cursor:pointer !important;">
									EXECUTIVES
								</a>	
								
							<!--<a  href="LoginRepeat.asp" style="cursor:pointer !important;"><button class=" rounded-0 p-2  mx-2 border-0   "type="button" id="highlights_btn2" style="cursor:pointer !important;">
									Companies 
								</button>	</a>
														
								
								
								
								<a  href="LoginRepeat.asp"><button class=" rounded-0 p-2   mx-2 border-0" type="button" id="expert_btn1" style="cursor:pointer !important;">
									News
								</button></a>-->
							   
								</span>
								
								
					</div>
				</div>
				<%else%>
					 <div class="w-100 text-left pt-2  mt-3 border-top  ">
				<h4 class="font-weight-bold  text-center my-0 "  style="font-size:17px;">View Deeper Validated Engagement Details </h4>
					<div class="w-100">
							
								<span class="d-flex flex-md-row flex-sm-row flex-wrap  justify-content-center mt-2">
								<a  class=" rounded-0 p-2 shadow   btn_type_02  " type="button"  id="expert_btn">
                                EXPERT PANEL
                            </a>
								<a href="Research_Modules.asp?code=<%=code%>&encID=<%=session("security_code")%>" target="new" class=" rounded-0 p-2 shadow   btn_type_02 text-center" type="button"  style="cursor:pointer !important;">
									RESEARCH MODULES
								</a>
								<a href="view_reporttrends.asp?rcode=<%=code%>" target="New" class=" rounded-0 p-2 shadow   btn_type_02 text-center"    type="button"  style="cursor:pointer !important;">
									MARKET TRENDS
								 </a>
								
							<!--	<a href="view_reportcompanies.asp?rcode=<%=code%>" target="New"><button class=" rounded-0 p-2  mx-2 border-0  b " type="button" id="highlightsbtn1" style="cursor:pointer !important;">
									Companies 
								</button>	</a>-->
														
								<a href="app_get_gia_Influencers.asp?firstname=&lastname=&company=ABB Ltd." target="New" class=" rounded-0 p-2 shadow   btn_type_02 text-center" type="button"  style="cursor:pointer !important;">
									EXECUTIVES
								 </a>
								
								
							<!--	<a href="Report_news.asp?rcode=<%=code%>" target="New">
								<button class=" rounded-0 p-2    mx-2 border-0" type="button" id="News_btn1" style="cursor:pointer !important;">
									News
								</button></a>-->
							   
								</span>
								
								
					</div>
				</div>
				
				<%end if%>
		</div>
	</div>			
				
		<script src="js/limit.text.js"></script>

	
		
<script>

 $(document).ready(function(){

   $('.inputselector').click(function(e){
         $(this).parent().addClass('active');
    });

    $('.inputselector').focusout(function(e){
         $(this).parent().removeClass('active');
    });
})   
</script>


<script>

var windowWidth = $(window).width(); 
 
 if(windowWidth <= 480){ 
 //Means the screen is mobile add a class 
 $("#competitive_metrics_table tr td:nth-child(2) h4").attr('class', 'text-limit'); 
 } 
  
 else{ 
 //Means screen is desktop or tablet 
 $("#competitive_metrics_table tr td:nth-child(2) h4").removeAttr('text-limit'); 
 } 


</script>

<script>
    $(document).ready(function(){
          $('.text-limit').limitText({
             length: 27
         });
     })
 
 </script>					   
   	<script>
    $("#competitive_metrics_table  tr td input:radio").click(function() {
               $(this).parent().parent().parent().parent().addClass("highlight")
     })

    
</script> 


<div id="ex1" class="modal text-center">
  	<img src="<%=RSInfluncer("logo_local")%>" style="<%=backcolor%>" class="img-fluid mx-auto">
    <!---a href="#" rel="modal:close">Close</a--->
</div>
