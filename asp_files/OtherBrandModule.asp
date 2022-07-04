
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]>
<!-->
<html lang="en">
<!--<![endif]-->

<head>
    <!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8">
    <title>Market Research Report Collections - Leading Market Research Reports Firm</title>
    <!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS
================================================== -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/gia.css">
    <link rel="stylesheet" href="css/colors/blue.css" id="colors">
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel='stylesheet' href="css/all-ie-only.css" />
    <link rel='stylesheet' href="css/tri_page.css" />
    <link rel='stylesheet' href="css/gia_switches.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/wedges_effect.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <link rel="stylesheet" href="css/simulator_styles.css" />
    <link rel="stylesheet" href="css/input_style.css" />
    <link rel="stylesheet" href="css/example-styles.css" />
    <link rel="stylesheet" href="css/labels.css" />
    <!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <!--[if IE]>
	<link rel="stylesheet" type="text/css" href="all-ie-only.css" />
<![endif]-->
    <!-- Java Script
================================================== -->
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/jquery.selectnav.js"></script>
    <script src="scripts/jquery.modernizr.js"></script>
    <script src="scripts/jquery.easing.1.3.js"></script>
    <script src="scripts/jquery.contact.js"></script>
    <script src="scripts/jquery.isotope.min.js"></script>
    <script src="scripts/custom.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
   
    <!--- accordion2 script ---->

    <style>
        #label_container h4 {
            line-height: 14px !important;
        }

    </style>
</head>
<%Server.ScriptTimeout=2000%>

<%	''Response.Buffer = True
	Response.ExpiresAbsolute = 0
	Response.CodePage = 65001
Response.CharSet = "utf-8"
	session("security_code") = ""
	session("ReportCode") = ""
	'If trim(session("ReportCode"))="" Then
		session("ReportCode") = trim(request("code"))	
	'End If
	
	If Trim(request("encID"))<>"" then
		If session("security_code") ="" then
		   session("security_code") = Trim(request("encID"))
		End If
	Else
		session("security_code") = ""
	End If
		
	strReportTitle = trim(session("ReportTitle"))
	strReportCode = trim(session("ReportCode"))
	intRptID = trim(session("ReportID"))
Function SelectRadio(val1,val2)
 	IF trim(val1) = trim(val2) then
		SelectRadio = " Checked"
	else
		SelectRadio = ""
	End IF
END Function
	
'''IF Seeions expires log out to main screen'''''
IF trim(session("EID"))="" THEN
	''response.redirect "https://www.strategyr.com/GIA_Research_Program.asp?code="&Trim(request("code"))&"&SessOUT=True"
End If

If Trim(session("isMCP"))="" then
	If Trim(request("code"))<>"" Then
	  ''isMCPCnt = InStr("MCP-1001","-")
	 isMCPCnt = InStr(request("code"),"-")
	 If (isMCPCnt>0) then
		session("isMCP") = "Y"
	 Else
		session("isMCP") = "N"
	 End if
	''response.write session("isMCP")
	End If
End If	



%>
<!--#include file="adovbs.asp"-->
<!--#INCLUDE FILE="aspincludes/dbopen.asp" -->

<%
	DIM RPT_MCP_CODE
	RPT_MCP_CODE = ""
	Set Conn = Server.CreateObject("ADODB.Connection")
	Set RS = Server.CreateObject("ADODB.Recordset")
	Conn.Open DataSource

	
	If session("isMCP") = "N" then
		SQL = "SELECT * FROM MCPNewTopic WHERE NewCODE='" & session("ReportCode") & "'"
	Else
		SQL = "SELECT * FROM MCPNewTopic WHERE newCODE='" & session("ReportCode") & "'"
	End If
	''response.write sql
	RS.Open SQL, conn,1,2
	If Not RS.EOF Then
			giacode=Trim(RS("newcode"))
			strReportTitle = Trim(RS("title"))
			Companies_List = Trim(RS("companyNames"))
			CpCodes=Trim(RS("CPCodes"))
			region=Trim(RS("region"))
			''If session("isMCP") = "Y" Then
			  Segment_List = Trim(RS("Segments_Covered"))
			''End if
			session("ReportTitle") = ucase(Trim(RS("title")))
			RPT_MCP_CODE = Trim(RS("code"))
	End If
	set RS = nothing
	set conn = Nothing
	session("giacode")=giacode
	
	intRptID = Trim(request("code"))
	code = Trim(request("code"))
	strReportTitle = trim(ucase(strReportTitle)) 
	''intReportCode = session("ReportCode") 
	CMP_SPLT = Split(Companies_List,";")
	
'response.write Companies_List
	
	
	If Trim(request("code"))<>"" Then
		If session("ReportCode") ="" then
		   session("ReportCode") = Trim(request("code"))		   
		End If
	Else
		session("ReportCode") = ""
	End If

	''''FE471CA7EA '''security_code

	If Trim(request("encID"))<>"" then
		If session("security_code") ="" then
		   session("security_code") = Trim(request("encID"))
		End If
	Else
		session("security_code") = ""
	End If

daydisplay=WeekDayName(Weekday(Now())) & ","
'''response.write trim(session("security_code"))
%>
<script>
function Addinfluence_moduletoDB(sno,code,encid,relval,cpcode,brandname)
{
	
	var vsno= sno;
	var vGiaCode = code;
	var vencID = encid;
	var relval=relval;
	var vcpcode=cpcode;
//alert(relval);
//alert(sno);
	
		if((relval!="") && (relval!==undefined) && (vencID!="") && (vGiaCode!=""))
		{ 
			//alert (vtxtRegionVal);
			//alert (RegionName);
			///ReportCode = '"&trim(request("vGiaCode"))&"' and eNcID ='"&trim(request("vencID"))&"' and Country_Name ='"&trim(request("vRegion"))&"'" 
			$.ajax({
					url: "Ajax_AddGIA_Research_Brand_Competitive.asp",
					type: "POST",
					data:'vGiaCode='+encodeURIComponent(vGiaCode)+'&vencID='+encodeURIComponent(vencID)+'&vcpcode='+encodeURIComponent(vcpcode)+'&relval='+encodeURIComponent(relval)+'&vsno='+encodeURIComponent(vsno)+'&brandname='+encodeURIComponent(brandname)+'', 		
					success: function(data){
				   // alert(data);
					alert("Brands Rank Added Sucessfully");
					//parent.location.reload();
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
			alert('Rank not selected');
		}
}

function addbranddata(code,encid,cpcode){

var vBrand = document.getElementById("txtbrandname").value;
var vBrandImageLink = $("#txtBrandImageLink").val();
//alert(vBrandImageLink);
var vtype =   $('input[name="btype"]').val();
//var vtype =	document.getElementById("btype").selectedIndex;
 var vtype = $('input[id="btype"]:checked').map(function()
            {
                return $(this).val();
            }).get();

//alert(vBrand);
//alert(vtype);

	if((vBrand!="") && (vtype!==undefined) && (vtype!="") && (vBrandImageLink!="") )
		{ 
		 $.ajax({
					url: "Ajax_AddGIA_Research_Brand_Add.asp",
					type: "POST",
					data:'vGiaCode='+encodeURIComponent(code)+'&vencID='+encodeURIComponent(encid)+'&vcpcode='+encodeURIComponent(cpcode)+'&relval='+encodeURIComponent(vtype)+'&brandname='+encodeURIComponent(vBrand)+'&vBrandImageLink='+encodeURIComponent(vBrandImageLink)+'', 		
					success: function(data){
					//alert(data);
					alert("Brand Added Sucessfully");
					window.close();
					//parent.location.reload();
					},
					error: function (xhr, ajaxOptions, thrownError) {
					alert(xhr.status);
					alert(thrownError);
					alert(xhr.responseText);
					}
				  });
				 // alert("Brand Added Successfully.");
		}
		else
		
		{alert('Brand Name/Image Link/Rank not selected');}
}
	</script>
<body >
    <!-- Wrapper / Start -->
    <div id="wrapper" class="bor-radius">
        <div id="top-line" style="box-shadow:none; height:5px;"> </div>
        <!-- Content
================================================== -->
        <!---BEGN REPORT TITLE--->
        <!---END REPORT TITLE--->
        <!---BEGIN:PAGE CONTENT--->
        <div class="page-content">
            <div class="container">
                <!---- BEGIN : HEADER SECTION ---->
                <header>
                    <div class="row" style="margin-bottom:0px;">
                         <!---- BEGIN : HEADER SECTION ---->
                
                         <div class="logo_text px-4">                           
							<img src="images/strategyr_logo.svg" class="strategyrR_logo text-center mx-auto" style="width:210px !important;">							
                         </div>
                        <div class="sixteen columns head_title_block text-center  d-flex justify-content-center border-bottom">
                            <h2 style="font-weight:bold; color:#900;line-height: 23px;" class="mt-2 font-size-20"> <%=strReportTitle%>&nbsp; (<%=code%>)</h2>
                        </div>
                        <div class="mobile_display" style="text-align:center; width:100% !important"> <img src="https://www.strategyr.com/resize_img/sig_100.jpg" alt="GIA" class="logo signatrue_logo" style="width:90px; height:auto; margin:0 auto; padding-top:10px"> </div>
                    </div>
               
                <!---- END : HEADER SECTION ---->

                        <div class="sixteen columns head_title_block text-center  d-flex justify-content-center mt-2">
                            <h3 style="font-weight:bold; color:#900;line-height: 23px;" class="mt-2">
                             COMPETITIVE BRANDS - CROWD CURATED 
                            </h3>
                        </div>
                    </div>
                </header>
                <!---- END : HEADER SECTION ---->
                <!---Begin: Main Content--->
				<div class="container">
                <main>
	<!--	<form name="frmadd" method="post" action="Ancillaries_2.asp?code=<%=Trim(request("code"))%>&encID=<%=Trim(request("encID"))%>">			-->

	<!--include file="Lables.asp"-->
	
                    <section>
					<%''select * from REPORTS_GSA_REGIONS$  SELECT * FROM GIA_REGIONS_COUNTRIES$
					'''' GET total employee count
					Dim totalCompanyCount
					totalCompanyCount = 1
					PeopleTotalCNT = "SELECT count(*) as CMP_Count FROM [GIA_MC_PROGRAM].[dbo].[vwInfluencersPeople] WHERE filename='" & Company_CP_Code & "'"
					
					''CountryQryBrNSA = "select distinct b.res_brand_name, (select top 1  a.res_brand_image_url from vw_RESX_WIPO_FULL_AND_REST a where a.res_brand_name=b.res_brand_name and a.mcp_code=b.mcp_code and a.res_brand_image_url is not null ) as res_brand_image_url from vw_RESX_WIPO_FULL_AND_REST b where b.mcp_code='" & RPT_MCP_CODE & "' and b.res_brand_image_url is not null and b.res_brand_status='Active' order by b.res_brand_name"
					Set RSPeopleRS = Server.CreateObject("ADODB.Recordset")
					RSPeopleRS.Open PeopleTotalCNT, Datasource7,3,3
					If not RSPeopleRS.EOF then
						totalCompanyCount = RSPeopleRS("CMP_Count")
					End IF
					Set RSPeopleRS = nothing
					

												''CountryQryBrNSA = "select distinct b.res_brand_name,b.res_brand_holder,b.res_brand_image_url,b.sno from gia_company_filter.dbo.WIPO_company_Brands b where b.company_cpcode='" & trim(request("cp")) & "' order by b.res_brand_name"
												CountryQryBrNSA	="SELECT * FROM (SELECT ROW_NUMBER() OVER(PARTITION BY res_brand_name ORDER BY sno DESC) AS StRank,sno, res_brand_name,res_brand_holder,country,res_brand_image_url,mcp_code,company_cpcode FROM gia_company_filter.dbo.WIPO_Company_Brands where company_cpcode='" & trim(request("cp")) & "') n WHERE StRank = 1"
												Set RSwBrands = Server.CreateObject("ADODB.Recordset")
												''response.write CountryQryBrNSA
												RSwBrands.Open CountryQryBrNSA, Datasource7,3
												
												brandcount=RSwBrands.recordcount
												if cint(brandcount)<=0 then%>
													<!--script>
														alert("No Records  exists.");
														window.close();
													</script--->
													<!--<form name="frm1" method="post">-->
												<%	Set Conn = Server.CreateObject("ADODB.Connection")
												Conn.Open Datasource10
												RecChkSQL = "SELECT * FROM Ancillaries_BrandsModule WHERE Code = '"&trim(request("code"))&"' and encid ='"&trim(request("encid"))&"' and cpcode ='"&request("cp")&"' and type = 'Competitive' and Influencer_sno='0'  "
											   '' response.write RecChkSQL
												''Dim CompetitiveChkedValue
												CompetitiveChkedValue =""
												Set RecChkRS = Server.CreateObject("ADODB.Recordset")
												RecChkRS.Open RecChkSQL, Conn
												If Not RecChkRS.EOF Then
													CompetitiveChkedValue=RecChkRS("Scale")
													strBrandImageLink=RecChkRS("BrandImage")
													strBrandName=RecChkRS("BrandName")
													insType="UPDATE"
												ELSE 
													insType="ADD"
												End If	 
												''response.write(RecChkSQL)&"<br>"
												''response.write(CompetitiveChkedValue)"
												''set Conn = Nothing%>
													<div class="w-100 mt-2 text-center">
														<font color='red'>Currently brand data is not available for this company: <%=trim(request("cmpname"))%></font>														
													</div>
													<div class="w-100 mt-3 mb-2">
														<h3 class="font-weight-bold font-size-15 mb-0 text-center"><%=insType%> BRAND NAME</h3>
													</div>
													<div class="w-100 mt-2 text-center">
															
															<input type="text" name="txtbrandname" value="<%=strBrandName%>" id="txtbrandname" class="textbox_border shadow  simulator-input-text p-2" placeholder="BRAND NAME" style="height:28px; width:250px; margin:0 auto">

													</div>
													<div class="w-100 mt-2 text-center">															
															<input type="text" name="txtBrandImageLink" value="<%=strBrandImageLink%>" id="txtBrandImageLink" class="textbox_border shadow  simulator-input-text p-2" placeholder="BRAND IMAGE LINK" style="height:28px; width:250px; margin:0 auto">
													</div>


													<div class="W-100">
													
													<div class="label_middle_block d-flex text-center mt-2">
														
														<div class="  d-flex flex-row  flex-md-row position-relative align-content-center w-100 ">
															<div class="text-left label_aside mx-auto" style="margin-left:5px">											
															   <div class="d-flex mt-2">
															   <h4 class="mb-0 d-flex  columns px-0 mr-xl-3 mr-lg-3 mr-md-3 mr-sm-2 ml-0 "><input type="radio" name="btype" id="btype" value="Dominant" <%=SelectRadio(CompetitiveChkedValue,"Dominant")%>  ><span style='margin-top:0px;'>Dominant</span></h4>
																<h4 class="mb-0 d-flex  columns px-0 mr-xl-3 mr-lg-3 mr-md-3 mr-sm-2 ml-0  "><input type="radio"  name="btype" id="btype" value="Significant" <%=SelectRadio(CompetitiveChkedValue,"Significant")%> ><span style='margin-top:0px;'>Active</span></h4><br>
																</div>
																<div class="d-flex mt-2">
																<h4 class="mb-0 d-flex  columns px-0 mr-xl-3 mr-lg-3 mr-md-3 mr-sm-2 ml-0"><input type="radio"  name="btype" id="btype" value="Niche" <%=SelectRadio(CompetitiveChkedValue,"Niche")%> ><span style='margin-top:0px;'>Niche</span></h4>
																<h4 class="mb-1 d-flex  columns pl-2 mr-xl-3 mr-lg-3 mr-md-3 mr-sm-2 " style="margin-left:22px !important;">
																<input type="radio"  id="btype"  value="N/A"  name="btype" <%=SelectRadio(CompetitiveChkedValue,"N/A")%>><span style='margin-top:0px;'>N/A</span></h4>
																														
																
																 </div>
														   </div>
														   
														</div>

													</div>
													</div>

													<div class="w-100 text-center">
									<button name="btnaddbrand" value="ADD" onClick="addbranddata('<%=Trim(request("code"))%>','<%=Trim(request("encID"))%>','<%=request("cp")%>');" class="btn btn-gia-primary text-white rounded-0 shadow m-3 font-weight-bold p-2"><%=insType%></button>
<!--<input type="button" name="ADD" value="ADD" onClick="addbranddata()">-->

													</div>
													
													
													<!--</form>-->
												<%end if
												%>
	<%',res_brand_image_url
												If Not RSwBrands.EOF Then 
												
												if cint(brandcount)<=0 then%>
													<script>
														alert("No Records  exists.");
													</script>
												<%end if
												%> 
                        <div class="row  mx-0  mt-3 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                            <h3 class="font-weight-bold  mb-0"><%=RSwBrands("res_brand_holder")%>  [<span style="color:#169fe6; font-weight:bold;"><%=brandcount%></span>] </h3>
                        </div>

                        <div class="row  mx-0  mt-3 px-lg-3 px-sm-0 px-md-2 px-xl-3">
                            Please <i class="fa fa-check-square" aria-hidden="true" style="color:#008000;"></i> select and rate brands from your company which are relevant to this project or product.
                        </div>
                        <hr/>
							<div class="w-lg-100 w-xl-100 border-bottom d-flex flex-wrap justify-content-around" style="align-items: baseline !important;" >
                       
                            
																
																
												<% RSwBrands.movefirst
												while not RSwBrands.EOF
												starVal="3"
											
																B= B+1%>
																
																
					
						<div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column shadow my-2 border p-2">				
							<div class="w-100">
                                <div id="label_container" class="bg-white cards m-0 p-0">
								<div class="top_block mt-2 ">
										<h3 class="font-weight-bold  mb-1 pb-1  text-center border-bottom textlimit" style="color:#900"> <%=RSwBrands("res_brand_name")%></h3>
								</div>
                                    <div class="label_middle_block d-flex text-center">
                                        <div class="  d-flex flex-row  flex-md-row position-relative align-content-center w-100 ">
                                      
                                            <div class="mb-1 w-xl-40 w-lg-40 w-md-40 w-sm-40 ">
                                                <div class="d-flex justify-content-center">
                                                    <div class="img-block" style="margin-right: 0px">
                                                        <div class="w-100 h-100  d-flex justify-content-center align-items-center" style="overflow: hidden">
                                                            <img src="<%=RSwBrands("res_brand_image_url")%>" class="img-fluid"> </div>
                                                    </div>
                                                </div>
                                            </div>
											
											<%
											
											    Set Conn = Server.CreateObject("ADODB.Connection")
												Conn.Open Datasource10
												RecChkSQL = "SELECT * FROM Ancillaries_BrandsModule WHERE Code = '"&trim(request("code"))&"' and encid ='"&trim(request("encid"))&"' and cpcode ='"&RSwBrands("company_cpcode")&"' and type = 'Competitive' and email_id='"&session("EID")&"' and Influencer_sno='"&RSwBrands("sno")&"'  AND (BrandName = '"&RSwBrands("res_brand_name")&"')"
											   '' response.write RecChkSQL
												''Dim CompetitiveChkedValue
												CompetitiveChkedValue =""
												Set RecChkRS = Server.CreateObject("ADODB.Recordset")
												RecChkRS.Open RecChkSQL, Conn
												If Not RecChkRS.EOF Then
													CompetitiveChkedValue=RecChkRS("Scale")
												End If	 
												''response.write(RecChkSQL)&"<br>"
												''response.write(CompetitiveChkedValue)"
												set Conn = Nothing
												
											%>
                                            <div class="text-left   label_aside mt-xl-2 mt-lg-2 mt-md-2 mt-sm-0" style="margin-left:5px">
                                                
                                               <div class="d-flex mt-2">
											   <h4 class="mb-0 d-flex  columns px-0 mr-xl-3 mr-lg-3 mr-md-3 mr-sm-2 ml-0 "><input type="radio" name="star_rating<%=RSwBrands("res_brand_name")%>" id="<%=RSwBrands("res_brand_name")%>Dominant" value="Dominant"  <%=SelectRadio(CompetitiveChkedValue,"Dominant")%> onClick="Addinfluence_moduletoDB('<%=RSwBrands("sno")%>','<%=Trim(request("code"))%>','<%=Trim(request("encID"))%>','Dominant','<%=RSwBrands("company_cpcode")%>','<%=RSwBrands("res_brand_name")%>')">Dominant</h4><br>
                                                <h4 class="mb-0 d-flex  columns px-0 mr-xl-3 mr-lg-3 mr-md-3 mr-sm-2 ml-0  "><input type="radio" name="star_rating<%=RSwBrands("res_brand_name")%>" id="<%=RSwBrands("res_brand_name")%>Active" value="Active" <%=SelectRadio(CompetitiveChkedValue,"Active")%> onClick="Addinfluence_moduletoDB('<%=RSwBrands("sno")%>','<%=Trim(request("code"))%>','<%=Trim(request("encID"))%>','Active','<%=RSwBrands("company_cpcode")%>','<%=RSwBrands("res_brand_name")%>')">Active</h4><br>
												</div>
												 <div class="d-flex mt-2">
												<h4 class="mb-0 d-flex  columns px-0 mr-xl-3 mr-lg-3 mr-md-3 mr-sm-2 ml-0 "><input type="radio" name="star_rating<%=RSwBrands("res_brand_name")%>" id="<%=RSwBrands("res_brand_name")%>Niche" value="Niche"  <%=SelectRadio(CompetitiveChkedValue,"Niche")%> onClick="Addinfluence_moduletoDB('<%=RSwBrands("sno")%>','<%=Trim(request("code"))%>','<%=Trim(request("encID"))%>','Niche','<%=RSwBrands("company_cpcode")%>','<%=RSwBrands("res_brand_name")%>')"><span>Niche</span></h4><br>
												<h4 class="mb-1 d-flex  columns pl-2 mr-xl-3 mr-lg-3 mr-md-3 mr-sm-2 " style="margin-left: 22px !important;"><input type="radio" name="star_rating<%=RSwBrands("res_brand_name")%>" id="<%=RSwBrands("res_brand_name")%>N/A" <%=SelectRadio(CompetitiveChkedValue,"N/A")%>  value="N/A" onClick="Addinfluence_moduletoDB('<%=RSwBrands("sno")%>','<%=Trim(request("code"))%>','<%=Trim(request("encID"))%>','N/A','<%=RSwBrands("company_cpcode")%>','<%=RSwBrands("res_brand_name")%>')">N/A</h4>
												</div>
                                            </div>
                                        </div>

                                    </div>


                                </div>
                            </div>
				
                        </div>
						
							<%RSwBrands.MoveNext
						Wend%>
						  
					
																	
						
						</div>
                       



			

</div>

                        </div>



			<%End If
						Set RSwBrands = Nothing%>
                    </section>
                    <!---- COPY UP TO HERE------>

                </main>
				</div>
                <!---End: Main Content--->
                <!---- END : CONTENT SSECTION ---->
            </div>
            <!---CONTAINER END--->
        </div>
    </div>
	<script src="js/limit.text.js"></script>

<script>
   $(document).ready(function(){
         $('.textlimit').limitText({
            length: 17
        });
    })    

</script>
    <!-- Footer
================================================== -->
    <!-- Footer / Start -->
   <!--#include file="ASPIncludes/BottomStrip.asp"-->
    <!----feedback--->
    <div id="feedback_pop" class="modal">
        <div class="w-100">
            <div class="p-3">
                <h3 align="center" class="font-weight-bold font-size-20 py-2 border-bottom text-center primary_color ">FEEDBACK</h3>
                <div class="my-2">
                    <div class="form-group">
                        <p class="text-center"> Please give your valuable feedback</p>
                        <textarea class="form-control w-100 m-0" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <div class="w-100 text-center mb-0">
                        <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow">SUBMIT</button>
                        <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!----Alert_BOX--->
    <div id="alert" class="modal">
        <div class="row alert_block">
            <div class="p-3">
                <h3 align="center" class="font-weight-bold font-size-20 py-2 border-bottom text-center primary_color ">ALERT</h3>
                <div class="my-2">
                    <!--p align="left">Request a Global Expert Panel Registry. </p-->
                    <p style="font-size:15px !important" class="text-darker">Receive activity alerts for project updates by email and in mobile app </p>
                    <div class="mb-3 ml-2">
                        <input data-brackets-id="213770" type="checkbox" name="alert" id="checkAll" onclick="toggle()" class="mb-3" value="ALL ALERTS" style="margin-top:2px">&nbsp;ALL ALERTS
                        <br />
                        <input data-brackets-id="213770" class="ml-4 mb-3" type="checkbox" name="alert" id="ALL_ALERTS" onclick="toggle()" value="ALL ALERTS" style="margin-top:2px">&nbsp;Peer-to-Peer
                        <br />
                        <input data-brackets-id="213770" class="ml-4 mb-3" type="checkbox" name="alert" id="ALL_ALERTS" onclick="toggle()" value="ALL ALERTS" style="margin-top:2px">&nbsp;Competitive Enterprise
                        <br />
                        <input data-brackets-id="213770" class="ml-4 mb-3" type="checkbox" name="alert" id="ALL_ALERTS" onclick="toggle()" value="ALL ALERTS " style="margin-top:2px">&nbsp;Project Updates
                    </div>
                    <div>
                        FREQUENCY: &nbsp;
                        <input data-brackets-id="206492" type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="MILLION" style="margin-top:2px" checked="">&nbsp;Month&nbsp;&nbsp;
                        <input data-brackets-id="206492" type="radio" name="MARKET_MEASURE_USD" id="MARKET_MEASURE_USD" value="MILLION" style="margin-top:2px" checked="">&nbsp;Quarter
                    </div>
                </div>
                <hr>
                <div class="row text-center mb-0">
                    <button class="btn btn-gia-primary btn-sm w-sm-45 w-md-25 w-lg-25 mx-2 my-1 rounded-0 shadow">SUBMIT</button>
                    <!--a href="#close-modal" rel="modal:close" class="btn btn-gia-primary btn-sm w-sm-45  w-md-25 w-lg-25 my-1  mx-2 rounded-0 shadow">UPDATE</a-->
                </div>
            </div>
        </div>
    </div>
   
    
    
    
    </body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="scripts/bootstrap.bundle.js"></script>
<script src="js/jquery.multi-select.js"></script>
<script src="js/limit.text.js"></script>
<script>
    //----ACCORDION----//
    var acc = document.getElementsByClassName("accordion_key");
    var i;
    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var panel3 = this.nextElementSibling;
            if (panel3.style.maxHeight) {
                panel3.style.maxHeight = auto;
            } else {
                panel3.style.maxHeight = panel3.scrollHeight + "px";
            }
        });
    }

</script>
<script>
    $(window).scroll(function() {
        if ($(this).scrollTop() > 210) {
            $('.simulator_top_header').addClass('fixed-top');
        } else {
            $('.simulator_top_header').removeClass('fixed-top');
        }
    });

</script>
<!---CHECK ALL SCRIPT--->
<script>
    $("#checkAll").click(function() {
        $('input:checkbox').not(this).prop('checked', this.checked);
    });

</script>

<script src="js/limit.text.js"></script>

<script>
   $(document).ready(function(){
         $('.textlimit').limitText({
            length: 35
        });
    })

</script>
<script>
function OpenOthBrands(cp,mcp,encid){
myWin = open("OtherBrandModule.asp?code="+mcp+"&cp="+cp+"&encid=" +encid,"Globind","width=800,height=700,status=no,toolbar=no,menubar=no,scrollbars=no");
}
</script>
<script>
	$(document).ready(function() {
		 $(".img-block div img").bind("error", function() {
			// Replacing image source
			$(this).attr("src", "/images/image_placeholder.jpg");
		});
	});

</script>
</html>
