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
<link rel="stylesheet" href="css/competitive_style2.css" />

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
<link rel="stylesheet" href="css/range_slider_tables.css"/>
<link rel="stylesheet" href="css/drop_down_style.css" />
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
%><style>
    .modal {
        max-width: 300px !important;
    }
</style>

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

function AddAllComp_metris(code)
{
 //alert(code);
    //var v= $('input[type=radio].rankclass:checked');
	   // $(v).each(function(i){
		    // alert($(this));
			 
			
	//});
	
	 alert("Data Updated Sucessfully");
}

function NewComp_metrisAdd(mcpcode)
{
     var vMCPcode =  mcpcode;
    var vtxtCmp_Name= $("#txtCmp_Name").val(); 	
	var vtxtRval = $("#txtRankCPNew").val();
	var vtxtRtype= ""; $('input[id=RtypeCPNew]:checked').val(); 	 
	 
	// var vtxtRtype = "RtypeCPNew" ;	
	// var vRtypeCPNew=  $('input[id='+vtxtRtype+']:checked').val(); 
	//  	
	 // alert(vtxtCmp_Name);
	   // alert(vtxtRval);
		// alert(vtxtRtype);
		
		//if (vtxtCmp_Name != null && vtxtCmp_Name != '' && vtxtRtype != null && vtxtRtype != ''  && vtxtRval != null && vtxtRval != '')
		 if (vtxtCmp_Name == null || vtxtCmp_Name == '')
		  {
		       alert('Company Name cannot be left blank'); 
				$("#txtCmp_Name").focus(); 
		  }
		 // else if (vtxtRtype == null || vtxtRtype == '')
		 // {
		      // alert('Please select Rank');
				//$("#vxtCmp_Name").focus(); 
		 // }
		  else if (vtxtRval == null || vtxtRval == '')
		  {
		      alert('Value cannot be left blank');
				$("#txtRankCPNew").focus();   
		  }
		  else
		  {  
			// alert(vtxtRval);
			$.ajax({
				url: "Ajax_AddNEW_Company_RLP_Compitator_Rank.asp",
				type: "POST",
				data:'vtxtCmp_Name='+encodeURIComponent(vtxtCmp_Name)+'&vtxtRtype='+encodeURIComponent(vtxtRtype)+'&vtxtRval='+encodeURIComponent(vtxtRval)+'&vMCPcode='+encodeURIComponent(vMCPcode)+'', 				
				success: function(data){
				//alert(data);
				alert("Update Successful");
				$("#txtCmp_Name").val('');	
				$("#txtRankCPNew").val('');
				},
				error: function (xhr, ajaxOptions, thrownError) {
				alert(xhr.status);
				alert(thrownError);
				alert(xhr.responseText);
				} 
			  });
			} 
			

        
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
				$("#Rank"+vcpCode).focus();
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
<style>        
#addcompanies.modal {
        max-width: 430px !important;
        padding:10px;
        width: 98%;
        border-radius: 0px;        
       
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

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>
	 
				  
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
            <h3 class="text-primary text_orange font-weight-bold m-0 line-height-normal mt-2 text-center mb-2" style="font-size:18px;">COMPETITIVE METRICS</h3>
 <%if session("EID") <>"" then	
'''response.write(session.SessionID)			 
			 %>	

				<div class="w-100">

                   
                        <div class="chosen-wrapper" data-js="custom-scroll">
						
							<select class="chosen-select" data-placeholder="WORLD RANK & SHARE">
                                <option value="volvo" class="list_01">WORLD MARKET RANK & SHARE</option>
                                <option value="saab" class="list_02">USA RANK & SHARE</option>
                                <option value="opel" class="list_03">CANADA RANK & SHARE</option>
                                <option value="audi" class="list_04">JAPAN RANK & SHARE</option>
                                <option value="audi" class="list_05">CHINA RANK & SHARE</option>
                                <option value="audi" class="list_06">U.K RANK & SHARE</option>
                                <option value="audi" class="list_07">FRANCE RANK & SHARE</option>
                                <option value="audi" class="list_08">GERMANY RANK & SHARE</option>
                                <option value="audi" class="list_09">ITALY RANK & SHARE</option>
                                <option value="audi" class="list_10">SPAIN RANK & SHARE</option>
                                <option value="audi" class="list_11">RUSSIA RANK & SHARE</option>
                                <option value="audi" class="list_12">INDIA RANK & SHARE</option>
                                <option value="audi" class="list_13">SOUTH KOREA RANK & SHARE</option>
                                <option value="audi" class="list_14">OTHER RANK & SHARE</option>
                            </select>
                        </div>
					
                    

                   <div class="w-100">
						<div id="competitive_table">
				         <table class="w-100">

							<!---TABLE HEADER-->
							

								<thead>
									<tr>
										<th>
											<div class="col-01">
												<h4>COMPANY</h4>
											</div>
										</th>
										<th>
											<div class="d-flex">
												<div class="col-02">

													<span>D</span>
													<span>S</span>
													<span>N</span>
													<span>T</span>

												</div>

												<div class="col-03">
													<div class="collapse show">
														<div class="w-100 collapse show ">
															<div class="d-flex justify-content-start">
																<div class="percent_block">
																	<h4>%</h4>
																</div>
																<div class="simulator_block">
																	<h4>DATA SIMULATOR</h4>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</th>
									</tr>
								</thead>
								
							
								<tbody>								 
													
					<%
					''response.write catid
					''response.write F_status
					if trim(completed)="Y" then
						sql1 = "select   company,filename, MCPCODES,logo_local, Logo_background_color,Filename_MD5  FROM [GIA_MC_PROGRAM].[dbo].[InfluencersCompanies] WHERE  company_status='Y' and filename in  (SELECT code FROM  stat_globind.dbo.MCP_CPCodes where mcpcode='" & trim(code) &"') and (issubsidary not in ('Y') or issubsidary ='' or issubsidary is null) and  (logo_local is not null or logo_local <>'')  and company_status='Y' order by company"
					else
						sql1 = "SELECT    company,filename, MCPCODES,logo_local, Logo_background_color,Filename_MD5 FROM gia_mc_program.dbo.InfluencersCompanies WHERE  company_status='Y' and  MCPCODES LIKE '%" & code & "%' and (issubsidary not in ('Y') or issubsidary ='' or issubsidary is null) and (logo_local is not null or logo_local <>'')  and company_status='Y' order by company" 
					end if
					''Filename like ('%" & Replace(cpcodes,"; ","%') or Filename like ('%")  & "%')" 
					''response.write completed
					'response.end
					
					
					
					Set RSInfluncer = Server.CreateObject("ADODB.Recordset")						
					Set Conn1 = Server.CreateObject("ADODB.Connection")
					Conn1.Open DataSource4
					'' after Login data auto updated 
					if trim(session("EID")) <>"" then
						chkCompMetSql="update tbl_Competitive_metrics set email='" & trim(session("EID")) & "' where mcp_code='"& code &"' and session_id='"& session.SessionID &"'  and email =''"
						Conn1.Execute chkCompMetSql
					'response.write chkCompMetSql
					end if
					
					RSInfluncer.ActiveConnection = conn1
					RSInfluncer.CursorType = 3
				'	response.write RSInfluncer.recordcount
				'	response.end
					RSInfluncer.OPEN sql1
					Rpt_cmpCount= RSInfluncer.recordcount
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
										if trim(Rank)="0" then
											Rank = "0"
										end if
								else
										RanK_Type=""
										Rank="0"
										highlight=""
								end if
								set rsMetrics=nothing
								if trim(RSInfluncer("Logo_background_color"))<>"" then
								backcolor="background-color:" & RSInfluncer("Logo_background_color") & ";"
								else
								backcolor="background-color:#f1f1f1;"
								end if						
								
						%>
						<!---ROW BEGIN (THIS ROW TO BE REPEATED) -->
										<tr >



											
                                                <td>
                                                    <div class="col-01">
                                                        <div class="img_block">
															<a href="#ex<%=RSInfluncer("filename")%>" rel="modal:open"> <img src="<%=RSInfluncer("logo_local")%>"  style="<%=backcolor%>"  class="img-fluid"/></a>
                                                        </div>  
														
													 <%if code ="MCP14959" then %>
														<h4 title="<%=RSInfluncer("company")%>"><a href="https://www.strategyr.com/market-share-rank.asp?code=<%=RSInfluncer("Filename_MD5")%>&pcode=<%=code%>" target="_blank"> <%=RSInfluncer("company")%></a> </h4>
													<%else%>
														<h4 title="<%=RSInfluncer("company")%>"> <%=RSInfluncer("company")%> </h4>
													<%end if%>

                                                    </div>
                                                  
                                                </td>
                                                <td>
                                                    <div class="d-flex">
                                                        <!--SECOND COLUMN-->
                                                        <div class="col-02">
                                                            <span><i>S</i><input type="radio" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')"  name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Dominant" <%=checked("Dominant",RanK_Type)%> class="p-0 mr-1" ></span>
                                                            <span><i>M</i><input type="radio" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Strong" <%=checked("Strong",RanK_Type)%> class="p-0 mr-1" ></span>
                                                            <span><i>N</i><input type="radio" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Niche" <%=checked("Niche",RanK_Type)%> class="p-0 mr-1" > </span>
                                                            <span><i>T</i><input type="radio"  onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Trivial" <%=checked("Trivial",RanK_Type)%> class="p-0 mr-1" ></span>
                                                        </div>
                                                        <!--FOURTH COLUMN-->
                                                        <div class="col-03">
                                                            <div aria-expanded="false" class="w-100 collapse show ">
                                                                <div class="d-flex justify-content-start">
                                                                    <div class="extra-controls percent_block">
                                                                        <i class="percentage_icon">%</i>
																		<input type="text" maxlength="4" class="js-input rank_input"     onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rank<%=replace(RSInfluncer("filename"),"-","")%>" id="Rank<%=replace(RSInfluncer("filename"),"-","")%>" value="<%=Rank%>" onkeypress='return isNumberKey(event,this)' maxlength='4' size='20' tabindex='3'  placeholder="##.#" >
															<%if session("EID") ="" then%>  <!--<p class="input_popup_msg"> Login Required</p>--><%end if%>
                                                                    </div>
                                                                    <div class="range-slider simulator_block">
                                                                        <input type="text" value="<%=Rank%>" class="js-range-slider"
                                                                            id="Slider<%=replace(RSInfluncer("filename"),"-","")%>" />
    
                                                                    </div>
                                                                    <script>
                                                                        var $range<%=replace(RSInfluncer("filename"),"-","")%> = $("#Slider<%=replace(RSInfluncer("filename"),"-","")%>");
                                                                        var $input<%=replace(RSInfluncer("filename"),"-","")%> = $("#Rank<%=replace(RSInfluncer("filename"),"-","")%>");
                                                                        var instance<%=replace(RSInfluncer("filename"),"-","")%>;
                                                                        var min = 0;
																		var vfromval=<%=Rank%>;
                                                                        var max = 100;
																		
                                                                        $range<%=replace(RSInfluncer("filename"),"-","")%>.ionRangeSlider({
                                                                            skin: "big",
                                                                            type: "single",
                                                                            min: min,
                                                                            max: max,
                                                                            from: vfromval,
                                                                            grid: true,
                                                                            step: 0.5,
                                                                            grid_num: 10,
    
                                                                            onStart: function (data) {
                                                                                $input<%=replace(RSInfluncer("filename"),"-","")%>.prop("value", data
                                                                                    .from);
                                                                            },
                                                                            onChange: function (data) {
                                                                                $input<%=replace(RSInfluncer("filename"),"-","")%>.prop("value", data
                                                                                    .from);
                                                                            }
                                                                        });
    
                                                                        instance<%=replace(RSInfluncer("filename"),"-","")%> = $range<%=replace(RSInfluncer("filename"),"-","")%>.data("ionRangeSlider");
    
                                                                        $input<%=replace(RSInfluncer("filename"),"-","")%>.on("input", function () {
                                                                            var val = $(this).prop("value");
    
                                                                            // validate
                                                                            if (val < min) {
                                                                                val = min;
                                                                            } else if (val > max) {
                                                                                val = max;
                                                                            }
    
                                                                            instance<%=replace(RSInfluncer("filename"),"-","")%>.update({
                                                                                from: val
                                                                            });
                                                                            
                                                                            $(this).prop("value", val);
                                                                        });
                                                                    </script>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
    
                                                </td>
                                           
										</tr>
										<div id="ex<%=RSInfluncer("filename")%>" class="modal text-center">
											<img src="<%=RSInfluncer("logo_local")%>" style="<%=backcolor%> max-width:250px !important;" class="img-fluid mx-auto">
											<!---a href="#" rel="modal:close">Close</a--->
										</div>
						
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
						   </div>
                           </div>
						   


						<div id="competitive_table">
                          <table id="competitive_metrics_table" class="border-0">
                            <tr>
                                <td class="d-flex justify-content-between align-items-center w-100 mt-2">
									<p class="font-weight-bold mb-0">                                         
                                         <span class="d-flex flex-xl-row flex-lg-row flex-sm-row flex-sm-column flex-column">
                                            <span class="mr-2 mb-1">Did we miss a player?</span>
                                            <a href="javascript:void(0)" id="addcompanies_btn" class="ml-lg-3 ml-xl-3 ml-md-2 ml-sm-0 rounded-0  font-weight-bold  text-blue add_country" style="color:#169FE6 !important;font-size:14px !important">[ADD COMPANY]</a>
                                         </span>
                                     </p>
                                    <a href="#" onclick="AddAllComp_metris('<%=code%>')" class="submit-button my-2  float-right" type="button" > SUBMIT </a>
                                </td>
                            </tr>
                        </table>
						</div>
				
				<div class="text-left">
				 <div class="border-0 font-weight-bold" id="validate_msg" style="font-size: 12px !important;font-style: color:#000; font-weight:500; margin-top:5px !important">
                              <sapn class="text-danger">*</sapn> D = Dominant; S = Strong; N = Niche; T = Trivial 
                </div>
				 <div class="border-0 font-weight-bold" id="validate_msg" style="font-size: 12px !important;font-style: italic; margin-top:-10px !important; letter-spacing:-0.5px;" >
                                        <sapn class="text-danger">*</sapn> Validated respondents are incentivized with cluster data <!-- Validated participants will receive complimentary Cluster data by email-->
                                    </div>
				</div>	
									
			<!--	<a style="font-size:18px; font-weight:bold;padding:10px;cursor: pointer;color: #007bff;" class="text-center">VIEW MORE</a> -->
			</div>
		
       
		 
			 <div class="w-100 text-left pt-2  mt-3 border-top  ">
				<h4 class="font-weight-bold  text-center my-0 "> View Deeper Validated Engagement Details - </h4>
					<div class="w-100">							
								<span class="d-flex flex-md-row flex-sm-row flex-wrap  justify-content-center mt-2">
								<button class=" rounded-0 p-2 shadow   btn_type_02 mx-1 " type="button"  id="expert_btn"  style="background: #255e91; border: none;color: #fff;">
                                EXPERT PANEL
                            </button>
								<a href="Research_Modules.asp?code=<%=code%>&encID=<%=session("security_code")%>" target="new" class=" rounded-0 p-2 shadow   btn_type_02 text-center" type="button"  style="cursor:pointer !important; background: #255e91; border: none;color: #fff;">
									RESEARCH MODULES
								</a>
								<a href="view_reporttrends.asp?rcode=<%=code%>" target="New" class=" rounded-0 p-2 shadow   btn_type_02 text-center mx-1"     type="button"  style="cursor:pointer !important; background: #255e91; border: none;color: #fff;">
									MARKET TRENDS
								 </a>
								
							     <!--	<a href="view_reportcompanies.asp?rcode=<%=code%>" target="New"><button class=" rounded-0 p-2  mx-2 border-0  b " type="button" id="highlightsbtn1" style="cursor:pointer !important; " style="background: #255e91; border: none;color: #fff;">
									Companies 
								</button>	</a>-->
								
								
								 <a href="app_get_gia_Influencers.asp?firstname=&lastname=&company=ABB Ltd." target="New" class=" rounded-0 p-2 shadow mx-1  btn_type_02 text-center" type="button"  style="cursor:pointer !important; background: #255e91; border: none;color: #fff;">
									EXECUTIVES
								 </a>
								
								
							    <!--	<a href="Report_news.asp?rcode=<%=code%>" target="New">
								<button class=" rounded-0 p-2    mx-2 border-0" type="button" id="News_btn1" style="cursor:pointer !important;">
									News
								</button></a>-->
								
							   
								</span><br>
								
								
					</div>
				</div>
		</div>
	</div>	
			
			
				 
			<%end if%>
			 <%if session("EID") ="" then%>
				
				<a style="font-size:18px; font-weight:bold;padding:10px;display:block;cursor: pointer;color: #007bff;text-center;" href="LoginRepeat.asp" target="new" class="text-center">VIEW MORE</a> 
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
 
 if(windowWidth <= 480){ 
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
             length: 20
         });
     })
 
 </script>
	<script>
    $("#competitive_metrics_table  tr td input:radio").click(function() {
               $(this).parent().parent().parent().parent().addClass("highlight")
     })

    
</script>
<div id="addcompanies" class="modal">
    <div class="row m-0">
        <h3 class="text-center w-100 font-weigth-bold" style="color: #900;"><b> </b></h3>
      
        <div class="table-responsive position-relative">
            <table class="my-2 w-100">
               
                <tbody>
                    <tr class="">
                        <td>
                            <div class="d-flex justify-content-center">
							<input type="text" class="textbox_border inputselector text-center mb-0" id="txtCmp_Name" name="txtCmp_Name" placeholder="ADD COMPANY" style="box-shadow: none !important;width: 215px;" />
							<span class="mt-1 ml-2" style="font-size: 18px; font-weight: bold;color: #169FE6; margin:0px 3px">%</span>
							<input
                                type="text"
                                maxlength="4"                               
                                name="txtRankCPNew"
                                id="txtRankCPNew"
                                value=""
                                onkeypress="return isNumberKey(event,this)"
                                size="20"
                                tabindex="3"
                                class="textbox_border inputselector mb-0 ml-1"
                                placeholder="##.#"
								style="width:60px"
                            />
							</div>
                            <p class="input_popup_msg">Login Required</p> 
                        </td>                       
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row text-center mb-0">
        <button onclick="NewComp_metrisAdd('<%=code%>')" class="btn btn-gia-primary btn-sm m-0 p-2 rounded-0 shadow" onclick="">UPDATE</button> 
    </div>
</div>
</body>
<script src="js/drop_down.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script>
  $('#addcompanies_btn').click(function(event) {
    $("#addcompanies").modal({
      fadeDuration: 250,
      clickClose: false,    
    });
    return false;
  });
</script>
</html>