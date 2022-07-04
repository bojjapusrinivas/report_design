<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
<!--#INCLUDE FILE="ADOVBS.asp" -->
<!--#INCLUDE FILE="aspincludes/dbopen.asp" -->
<!-- Basic Page Needs
<%
'''Website -- Sorry, the servers are under maintenance. Please try again

''Response.write ("Sorry, the servers are under maintenance. Please try again")
''response.end
%>
================================================== -->
<meta charset="utf-8">
<title>Market Research Report Collections - Global Industry Analysts, Inc. - Official Website</title>
<meta name="description" content="Official Website - Global Industry Analysts, Inc. (GIA) is a reputed publisher of off-the-shelf market research. Recognized as one of the most consistently accurate forecasting company in the world, GIA currently serves more than 9,500 companies from 36 countries worldwide. The company was founded in 1987, initially recognized globally as a research boutique specializing in the medical industry. Over the past 25 years, the company expanded its coverage and now publishes extensively upon more than 180 major industries."/>
<meta name="keywords" content="Market Research, Market Research Reports, Global Strategic Business Reports, multi-client research programs, Market Trend Reports, Global Industry Outlooks" />
<meta name="p:domain_verify" content="e373fc05e5338589a9a20fa7eb8cbeea"/>
<meta name="robots" content="index, follow" />
<meta name="classification" content="Market Research reports" />
<meta name="revisit-after" content="5 days" />
<meta name="author" content="strategyr.com" />
<meta name="identifier-url" content="www.strategyr.com" />
<meta name="distribution" content="Global" />
<meta name="coverage" content="Worldwide" />
<meta name="rating" content="General" />
<meta name="language" content="English" />
<meta http-equiv="Keep-Alive" content="300">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<meta name="p:domain_verify" content="2d36e07dec67d2a8d0bea712d690fe78"/>
<meta name="google-site-verification" content="Bde3xUPGs4PkgWyVdVlJ_fHl_VITc2uZv5niZBQb4Pw" />
 <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</head>
<body leftmargin=0 rightmargin=0 topmargin=0 bottommargin=0 onBeforePrint="document.body.style.display='none'" onAfterPrint="document.body.style.display=''" onContextmenu="return false" onSelectstart="return false" onDragstart="return false" >
<link rel="stylesheet" href="css/giaslider_css.css">
<link rel="stylesheet" href="css/owl/owl.carousel.css">
<link rel="stylesheet" href="css/owl/owl.theme.green.css">
<link rel="stylesheet" href="css/owl/owl.theme.default.css">
<!--link rel='stylesheet' href="css/eco_systems.css" async-->
<link rel="stylesheet" href="css/competitive_style.css" />

<div id="wrapper" class="bor-radius"> 
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

function Redirect(){
<%
		
		
		
			if (((trim(Request("chksearch"))="Title & Keywords") or (trim(Request("chksearch"))="Only Report Title")) and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("showsearchNew.asp?search="&Request("search"))
			End if 

			if ((trim(Request("chksearch"))="Company Names") and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("ShowCompaniesList.asp?search="&Request("search")&"&PageView=Show")
				
			End if 
		
	%>
}

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
	 
     var vtxtRval = $("#Rank"+vcpCode).val();
	 var vtxtRtype = "Rtype" + vcpCode;
	// var varqualitative=  $('input[id="qualitative"]:checked').val(); 
	 // alert (vtxtRank);
	 var vtxtRtype=  $('input[id='+vtxtRtype+']:checked').val(); 
	// alert(vtxtRtype);
	 // alert(vtxtRval);
	//alert("Data Saved");
		if (vtxtRtype != null && vtxtRtype != '' && vtxtRval != null && vtxtRval != '')
		  {  
			// alert(vtxtRval);
			 $.ajax({
				url: "Ajax_AddRLP_Compitator_Rank.asp",
				type: "POST",
				data:'vcpCode='+encodeURIComponent(vcpCode)+'&vMCPcode='+encodeURIComponent(vMCPcode)+'&vtxtRtype='+encodeURIComponent(vtxtRtype)+'&vtxtRval='+encodeURIComponent(vtxtRval)+'', 				
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
<!-- Wrapper  Start -->

			<!-----TOP START----->               
			<!--#include file="ASPIncludes/TopStrip.asp"-->
			<!-----TOP START END----->
<script src="scripts/owl/owl.carousel.js"></script>
<!-- Body Start here -->

<!-- jQuery UI library -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<style>
 .ui-autocomplete
 {
 max-height:200px;
/* height:300px !important;
 overflow:hidden;*/
 overflow-x: scroll;
 }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

	
	<script type="text/javascript">
	function Redirect(){
	<%
		
		
		
			if (((trim(Request("chksearch"))="Search by keyword or Company") or (trim(Request("chksearch"))="Only Report Title")) and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("showsearchNew.asp?search="&Request("search"))
			End if 

			if ((trim(Request("chksearch"))="Company Names") and (Request("search")<>"") and (Request("search")<>" ")) then
				Response.Redirect("ShowCompaniesList.asp?search="&Request("search")&"&PageView=Show")
				
			End if 
		
	%>
	}
	</script>
	 
				  
<%
code =request("code")
%>
<!-- Categories for home page Start -->

<div class="container floated">
	 <!---BEGN REPORT TITLE--->
			<!--#INCLUDE FILE="newReportTitle_New1.asp" -->
        <!---END REPORT TITLE--->					

			<div class="w-100">
	<div class="row mb-0 mx-0">
		<div class="w-100 text-left mb-2 ">
            <h3 class="text-primary text_orange font-weight-bold m-0 line-height-normal mt-1 text-center mb-2">COMPETITIVE METRICS</h3>


				<div class="table-responsive mt-3 position-relative">
									
			 <%if session("EID") <>"" then	
'''response.write(session.SessionID)			 
			 %>									 
												
				<%if trim(completed)="Y" then
							sql1 = "select   company,filename, MCPCODES  FROM [GIA_MC_PROGRAM].[dbo].[InfluencersCompanies] WHERE filename in  (SELECT code FROM  stat_globind.dbo.MCP_CPCodes where mcpcode='" & trim(code) &"') order by company"
						else
							sql1 = "SELECT  company,filename, MCPCODES FROM gia_mc_program.dbo.InfluencersCompanies WHERE MCPCODES LIKE '%" & code & "%' order by company" 
						end if

				
				
				'sql1="SELECT    company,filename, MCPCODES FROM gia_mc_program.dbo.InfluencersCompanies WHERE MCPCODES LIKE '%" & code & "%' order by company" 
				
				''Filename like ('%" & Replace(cpcodes,"; ","%') or Filename like ('%")  & "%')" 
				''response.write completed
				'response.end
				Set RSInfluncer = Server.CreateObject("ADODB.Recordset")						
				Set Conn1 = Server.CreateObject("ADODB.Connection")
				Conn1.Open DataSource4
				RSInfluncer.ActiveConnection = conn1
				'RSInfluncer.CursorType = 3
				'response.write sql1
				'response.end
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
					%>
                    <!---COPIED FROM HERE -->
                    <table id="competitive_metrics_table">

                        <!---TABLE HEADER-->
                        <thead class="font-weight-bold">
                            <tr class="m-0 p-0">
                                <th>
                                    <h4> COMPANY</h4>
                                </th>
                                <th>
                                    <div class="d-flex flex-column my-1">
                                        <h4 class="text-center border-bottom"> RANK</h4>
                                        <div class="d-flex w-100 justify-content-center mt-1">
                                            <span class="short_text ">D <a herf="javascript:void(0)"
                                                    class="text-primary"><i
                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                        title="Dominant"></i></a></span>
                                            <span class="short_text">S <a herf="javascript:void(0)"
                                                    class="text-primary"><i
                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                        title="Strong"></i></a></span>
                                            <span class="short_text ">N <a herf="javascript:void(0)"
                                                    class="text-primary"><i
                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                        title="Niche"></i></a></span>
                                            <span class="short_text   ">T <a herf="javascript:void(0)"
                                                    class="text-primary"><i
                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                        title="Trivial"></i></a></span>

                                        </div>
                                    </div>

                                </th>
                                <th>

                                    <h4> % <span class="text-danger">*</span></h4>
                                </th>
                            </tr>
                        </thead>

                        <!---TABLE BODY-->

                        <tbody>

                            <!---ROW BEGIN (THIS ROW TO BE REPEATED) -->
                                    <tr>
                                            <td><h4 title="<%=RSInfluncer("company")%>"> <%=RSInfluncer("company")%> </h4></td>
                                            <td>

                                                <div class="d-flex w-100 justify-content-center">
                                                    <span class="short_text "> <input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Dominant" <%=checked("Dominant",RanK_Type)%> class="p-0 mr-1" ></span>
                                                    <span class="short_text "><input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Strong" <%=checked("Strong",RanK_Type)%> class="p-0 mr-1" ></span>
                                                    <span class="short_text "><input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Niche" <%=checked("Niche",RanK_Type)%> class="p-0 mr-1" > </span>
                                                    <span class="short_text "><input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Trivial" <%=checked("Trivial",RanK_Type)%> class="p-0 mr-1" >  </span>

                                                </div>
                                            </td>
                                            <td>
                                                    <input type="text" maxlength="4"  name="Rank<%=RSInfluncer("filename")%>" id="Rank<%=RSInfluncer("filename")%>" value="<%=Rank%>" onkeypress='return isNumberKey(event,this)' maxlength='4' size='20' tabindex='3' class="textbox_border inputselector" placeholder="##.#" >
                                                    <p class="input_popup_msg"> Login Required</p>
                                            </td>
                                    </tr>

                           </tbody>

                           </table>

                           <table id="competitive_metrics_table">
                            <tr>
                                <td>
                                    <a href="#" class="submit-button my-2  float-right" type="button" > SUBMIT </a>

                                </td>
                            </tr>
                        </table>


                           <!---COPIED UP TO HERE -->





                    
                    <!--div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">				
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
                                                        <input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Dominant" <%=checked("Dominant",RanK_Type)%> class="p-0 mr-1" >
                                                        <span class="long_text" style=" padding-top: 3px;">Dominant </span>
                                                        <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                                    </div>

                                                    <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                                        <input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Strong" <%=checked("Strong",RanK_Type)%> class="p-0 mr-1" >
                                                        <span class="long_text" style=" padding-top: 3px;">Strong </span>
                                                        <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                                    </div>

                                                    <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                                        <input type="radio" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Niche" <%=checked("Niche",RanK_Type)%> class="p-0 mr-1" > 
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
                               
                            </div--><%
							K = K+1
					RSInfluncer.movenext
					Wend
				End If
				Set RSInfluncer = Nothing
				Set Conn1 = nothing
				%>
				
				 </div>
			<!--	<a style="font-size:18px; font-weight:bold;padding:10px;cursor: pointer;color: #007bff;" class="text-center">VIEW MORE</a> -->
		</div>

        <div class="competitive_table_message w-100 text-center">
            <sapn class="text-danger">Note:</sapn> Best viewed in Portrait Mode
        </div>
		 
			 <div class="w-100 text-left pt-2  mt-3 border-top  ">
				<h4 class="font-weight-bold  text-center my-0 "> View Deeper Validated Engagement Details - </h4>
					<div class="w-100">
							
								<span class="d-flex flex-md-row flex-sm-row flex-wrap  justify-content-center mt-2">
								
								<a href="view_reportcompanies.asp?rcode=<%=code%>" target="New"><button class=" rounded-0 p-2  mx-2 border-0  b " type="button" id="highlights_btn1" style="cursor:pointer !important;">
									Companies 
								</button>	</a>
														
								<button class=" rounded-0 p-2    mx-2 border-0" type="button" id="preview_btn1" style="cursor:pointer !important;">
									Executives
								</button>
								<a href="Research_Modules.asp?code=<%=code%>&encID=<%=session("security_code")%>" target="new"><button class=" p-2 rounded-0      mx-2 border-0" type="button" id="differentiators_btn1" style="cursor:pointer !important;">
									Research Modules
								</button></a>
								<a href="view_reporttrends.asp?rcode=<%=code%>" target="New"><button class=" rounded-0 p-2     mx-2 border-0" type="button" id="expert_btn1" style="cursor:pointer !important;">
									Trend Data
								</button></a>
							<!--	<a href="Report_news.asp?rcode=<%=code%>" target="New">
								<button class=" rounded-0 p-2    mx-2 border-0" type="button" id="expert_btn1" style="cursor:pointer !important;">
									News
								</button></a>-->
							   
								</span><br>
								
								
					</div>
				</div>
		</div>
	</div>	
			
			
				 
			<%end if%>
			 <%if session("EID") ="" then%>
				
				<a style="font-size:18px; font-weight:bold;padding:10px;cursor: pointer;color: #007bff;" href="LoginRepeat.asp" target="new" class="text-center">VIEW MORE</a> 
				<%end if%>
			</div>
									   
               

	
</div>

<!-- Categories for home page end -->

</div>
<!-- Body End here -->

</div><!-- Wrapper / End -->

<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->

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
 
 if(windowWidth <= 768){ 
 //Means the screen is mobile add a class 
 $("#competitive_metrics_table tr td:nth-child(1) h4").attr('class', 'text-limit'); 
 } 
  
 else{ 
 //Means screen is desktop or tablet 
 $("#competitive_metrics_table tr td:nth-child(1) h4").removeAttr('text-limit'); 
 } 


</script>

<script>
    $(document).ready(function(){
          $('.text-limit').limitText({
             length: 25
         });
     })
 
 </script>
		
</body>
</html>