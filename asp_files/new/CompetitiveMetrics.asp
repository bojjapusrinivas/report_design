<script src="scripts/bootstrap.bundle.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<style>
input::-webkit-input-placeholder,
 textarea::-webkit-input-placeholder
 {
    color: #000 !important;
}

 input::-webkit-input-placeholder,
 textarea::-webkit-input-placeholder

{
    color: #ccc !important;
}
        .short_text{
            display: none;
        }

        .long_text{
            display: block;
        }

        .collapse_btn{
            width: 18px;
            height: 18px;
            position: relative;
            padding: 0px;
        }

        .collapse_btn.collapsed:before
        {
            content: '\f067';
        position: absolute;
        width: 18px;
        height: 18px;
        font-family: FontAwesome;
        color: #169FE6;
        left: 0px;
        font-size: 10px;
        top: 2px;
        z-index: 999;
        font-weight: 400;
        text-align: center;
        }

        .collapse_btn:before
        {
        content: '\f068';
        position: absolute;
        width: 18px;
        height: 18px;
        font-family: FontAwesome;
        color: #169FE6;
        left: 0px;
        font-size: 10px;
        top: -6px;
        z-index: 999;
        font-weight: 400;
        text-align: center;
        }


        .tooltippopup[title]:hover:after {
        content: attr(title);
        position: absolute;
        display: block;
        min-width: 105px;
        line-height: 17px;
        letter-spacing: normal;
        padding: 3px;
        font-size: 11px;
        min-height: auto;
        color: #000;
        bottom: 24px;
        background: #fff;
        /* font-family: 'Open Sans'; */
        border: rgba(0, 0, 0, 0.2) solid 1px;
        right: -23px;
        text-align: center;
}


        @media only screen and (max-width: 959px){

            .short_text{
            display:block;
        }

        .long_text{
            display: none;
        }
		


        }

    </style>

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
function AddComp_metris(cpcode,mcpcode) {	 

  // alert("hi");
 // alert(cpcode);
 //alert(mcpcode);
 //alert(region);
 
    var vcpCode = cpcode;
	 var vMCPcode = mcpcode;
	 
     var vtxtRank = $("#Rank"+vcpCode).val();
	 var vtxtRtype = "Rtype" + vcpCode;
	// var varqualitative=  $('input[id="qualitative"]:checked').val(); 
	//alert (vtxtRank);
	  var vtxtRval=  $('input[id='+vtxtRtype+']:checked').val(); 
	//alert(vtxtRval);
	
			if ( vtxtRval != null && vtxtRval != '' && vtxtRank != null && vtxtRank != '')
		  {  
			// alert(vtxtRval);
			 $.ajax({
				url: "Ajax_AddRLP_Compitator_Rank.asp",
				type: "POST",
				data:'vcpCode='+encodeURIComponent(vcpCode)+'&vMCPcode='+encodeURIComponent(vMCPcode)+'&vtxtRtype='+encodeURIComponent(vtxtRval)+'&vtxtRval='+encodeURIComponent(vtxtRank)+'', 				
				success: function(data){
				//alert(data);
				alert("Data Updated Sucessfully");
					
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
			  }		
		 

        
		}

</script>


<div class="w-100">
	<div class="row mb-0 mx-0">
		<div class="w-100  mb-2 ">
			<h3 class="text-primary text_orange font-weight-bold m-0 line-height-'normal mt-1 text-center mb-2">COMPETITIVE METRICS</h3>
				<div class="w-lg-100 w-xl-100  d-flex flex-wrap justify-content-around" >
									
												 
												
				<%
				''response.write catid
				''response.write F_status
				if trim(completed)="Y" then
					sql1 = "select top 10  company,filename, MCPCODES  FROM [GIA_MC_PROGRAM].[dbo].[InfluencersCompanies] WHERE filename in  (SELECT code FROM  stat_globind.dbo.MCP_CPCodes where mcpcode='" & trim(code) &"') order by noofreports"
				else
					sql1 = "SELECT  top 10  company,filename, MCPCODES FROM gia_mc_program.dbo.InfluencersCompanies WHERE MCPCODES LIKE '%" & code & "%' order by noofreports" 
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
							rsMetrics.Open SqlMetrics,DataSource4
							if not rsMetrics.EOF Then
									RanK_Type=rsMetrics("RanK_Type")
									Rank=rsMetrics("Rank")
							else
									RanK_Type=""
									Rank=""
							end if
							set rsMetrics=nothing
					 %><div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">				
                                <div class="w-100 h-100 ">
                                   
                                    <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                                        <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                            <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;"> <%=RSInfluncer("company")%></h4>
                                            <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExample<%=RSInfluncer("Filename")%>" role="button" aria-expanded="false" aria-controls="collapseExample<%=RSInfluncer("Filename")%>">
                                               
                                              </a>
                                          </div>
                                          <div class="w-100 ">
                                            <div class="collapse border-0   flex-wrap" id="collapseExample<%=RSInfluncer("Filename")%>" style="background: #f3f3f3;">
                                                <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">
                                                    
                                                    <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                                        <input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Dominant"  <%=checked("Dominant",RanK_Type)%> class="p-0 mr-1" >
                                                        <span class="long_text" style=" padding-top: 3px;">Dominant </span>
                                                        <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                                    </div>

                                                    <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                                        <input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Strong" <%=checked("Strong",RanK_Type)%> class="p-0 mr-1" >
                                                        <span class="long_text" style=" padding-top: 3px;">Strong </span>
                                                        <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                                    </div>

                                                    <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                                        <input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Niche"  <%=checked("Niche",RanK_Type)%> class="p-0 mr-1" > 
                                                        <span class="long_text" style=" padding-top: 3px;">Niche  </span>
                                                        <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                                    </div>

                                                    <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                                        <input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Trivial" <%=checked("Trivial",RanK_Type)%> class="p-0 mr-1" >  
                                                        <span class="long_text" style=" padding-top: 3px;">Trivial </span>
                                                        <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                                    </div>

							
                                                </div>
												<div class="d-flex " style="margin-left:12px;">
												Rank:&nbsp;<input type="text" maxlength="4"  name="Rank<%=RSInfluncer("filename")%>" id="Rank<%=RSInfluncer("filename")%>" value="<%=Rank%>" onkeypress='return isNumberKey(event,this)' maxlength='4' size='20' tabindex='3' class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCars<%=RSInfluncer("filename")%>"  placeholder="##.#" > &nbsp;&nbsp;<button onclick="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
												</div>
                                              </div>

                                          </div>



                                    </div> 

                                </div>
                               
                            </div><%
							K = K+1
					RSInfluncer.movenext
					Wend
				End If
				Set RSInfluncer = Nothing
				Set Conn1 = nothing
				%>
				
				 </div>
				 <%if session("EID") <>"" then%>
				<a style="font-size:16px;margin:0 auto !important;width:140px; display:block; font-weight:bold;padding:10px;cursor: pointer;color: #007bff;" href="Report_CompetitiveMetrics.asp?code=<%=code%>" target="new"  >VIEW <%=companies-10%> MORE</a> 
				<%else%>
				<a style="font-size:16px; margin:0 auto!important;width:140px;display:block;font-weight:bold;padding:10px;cursor: pointer;color: #007bff;" href="LoginRepeat.asp"  >VIEW <%=companies-10%> MORE</a> 
				<%end if%>
		</div>
		
			 <%if session("EID") ="" then%>
			 <div class="w-100 text-left pt-2  mt-3 border-top  ">
				<h4 class="font-weight-bold  text-center my-0 "> Sign-in with email to View Deeper Validated Engagement Details - </h4>
					<div class="w-100">
							
								<span class="d-flex flex-md-row flex-sm-row flex-wrap  justify-content-center mt-2">
								
							<a  href="LoginRepeat.asp" style="cursor:pointer !important;"><button class=" rounded-0 p-2  mx-2 border-0   "type="button" id="highlights_btn2" style="cursor:pointer !important;">
									Companies 
								</button>	</a>
														
								<a  href="LoginRepeat.asp"><button class=" rounded-0 p-2    mx-2 border-0" type="button" id="preview_btn2" style="cursor:pointer !important;">
									Executives
								</button></a>
								<a  href="LoginRepeat.asp"><button class=" p-2 rounded-0  mx-2 border-0" type="button" id="differentiators_btn2" style="cursor:pointer !important;">
									Research Modules
								</button></a>
								<a  href="LoginRepeat.asp"><button class=" rounded-0 p-2  mx-2 border-0" type="button" id="expert_btn2" style="cursor:pointer !important;">
									Trend Data
								</button></a>
							<!--	<a  href="LoginRepeat.asp"><button class=" rounded-0 p-2   mx-2 border-0" type="button" id="expert_btn1" style="cursor:pointer !important;">
									News
								</button></a>-->
							   
								</span>
								
								
					</div>
				</div>
				<%else%>
					 <div class="w-100 text-left pt-2  mt-3 border-top  ">
				<h4 class="font-weight-bold  text-center my-0 "> View Deeper Validated Engagement Details - </h4>
					<div class="w-100">
							
								<span class="d-flex flex-md-row flex-sm-row flex-wrap  justify-content-center mt-2">
								
								<a href="view_reportcompanies.asp?rcode=<%=code%>" target="New"><button class=" rounded-0 p-2  mx-2 border-0  b " type="button" id="highlightsbtn1" style="cursor:pointer !important;">
									Companies 
								</button>	</a>
														
								<button class=" rounded-0 p-2    mx-2 border-0" type="button" id="previewbtn1" style="cursor:pointer !important;">
									Executives
								</button>
								<a href="Research_Modules.asp?code=<%=code%>&encID=<%=session("security_code")%>" target="new"><button class=" p-2 rounded-0      mx-2 border-0" type="button" id="differentiatorsbtn1" style="cursor:pointer !important;">
									Research Modules
								</button></a>
								<a href="view_reporttrends.asp?rcode=<%=code%>" target="New"><button class=" rounded-0 p-2     mx-2 border-0" type="button" id="expertbtn1" style="cursor:pointer !important;">
									Trend Data
								</button></a>
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
						
							   
    
