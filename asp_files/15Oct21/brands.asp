<!DOCTYPE html>
<%
'for each var in request.querystring
'	response.write var & "="& request(var)&"<br>"
'next

%>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<!--#INCLUDE FILE="ADOVBS.asp" -->
<!--#INCLUDE FILE="aspincludes/dbopen.asp" -->
<%



	If trim(request("bcode"))<>"" Then
		session("bcode") = trim(request("bcode"))
	End If
	

	'''' CHECK TO SEE IF trim(request("code")) IS EMPTY
	
	
			Set RSInfBrand = Server.CreateObject("ADODB.Recordset")
			
			If trim(request("bcode"))<>"" then
				Brand_Query="SELECT top 1 company,res_brand_name,company_cpcode,res_brand_image_url,country,mcpcodes,filename_md5,cmp_hidden_code as cmpid,(select top 1 res_brand_image_url from GIA_Company_Filter.dbo.vw_RESX_WIPO_FULL_AND_REST  where res_brand_name=a.res_brand_name and res_brand_image_url is not null and res_brand_holder_country='US' )  as brandimage from GIA_Company_Filter.dbo.Brand_Unique_Details a WHERE slug='" & trim(session("bcode")) & "'"		
			Else
				Brand_Query="SELECT top 1 company,res_brand_name,company_cpcode,res_brand_image_url,country,mcpcodes,filename_md5,cmp_hidden_code as cmpid,(select top 1 res_brand_image_url from GIA_Company_Filter.dbo.vw_RESX_WIPO_FULL_AND_REST  where res_brand_name=a.res_brand_name and res_brand_image_url is not null and res_brand_holder_country='US')  as brandimage from GIA_Company_Filter.dbo.Brand_Unique_Details a WHERE slug='" & trim(session("bcode")) & "'"		
			End If
			'response.write Brand_Query
			''response.end
			RSInfBrand.Open Brand_Query, DataSource4
			If Not RSInfBrand.EOF Then
			companyname=trim(RSInfBrand("company"))
			filemd5 = trim(ucase(RSInfBrand("filename_md5")))
			cmpID = Trim(RSInfBrand("cmpid"))
			brandname=Trim(RSInfBrand("res_brand_name"))
			brandimage=Trim(RSInfBrand("res_brand_image_url"))
			if Trim(RSInfBrand("brandimage")) <>"" then
				brandimage=Trim(RSInfBrand("brandimage"))
			end if
			COUNTRY=Trim(RSInfBrand("country"))
			''response.write trim(RSInfBrand("mcpcodes"))
			mcpcodes=Trim(RSInfBrand("mcpcodes"))
			cpCode = Trim(RSInfBrand("company_cpcode"))
			if len(mcpcodes)>10 then
				mcpcont=split(mcpcodes,";")
				mcpcount=ubound(mcpcont)
			else
				mcpcount=1
			end if
			
	'session("CPCode")=code
End If	
%>

<meta charset="utf-8">
<title>BRAND - <%=brandname%>&nbsp; - <%=companyname%> - StrategyR.com</title>
<meta name="description" content="BRAND - <%=brandname%>&nbsp; - <%=companyname%> - StrategyR.com"/>
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
<link rel="stylesheet" href="https://www.strategyr.com/css/giaslider_css.css">
<link rel="stylesheet" href="https://www.strategyr.com/css/owl/owl.carousel.css">
<link rel="stylesheet" href="https://www.strategyr.com/css/owl/owl.theme.green.css">
<link rel="stylesheet" href="https://www.strategyr.com/css/owl/owl.theme.default.css">
<!--link rel='stylesheet' href="https://www.strategyr.com/css/eco_systems.css" async>
<link rel="stylesheet" href="https://www.strategyr.com/css/competitive_style1.css" />
<link rel="stylesheet" href="https://www.strategyr.com/css/landing_page_new.css" />-->
<link rel="stylesheet" href="https://www.strategyr.com/css/brand_influencer.css" />
<link rel="stylesheet" href="https://www.strategyr.com/css/jquery.range.css" />
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
 
 function funAddSegments()
 {
   
    var vSegname =  $("#TxtSeg").val();
	  var CPcode=$("#HDNCPcode").val();
	  var BCode = $("#HDNbcode").val();
  
       //alert(CPcode);	
       //alert(vSegname);
	   //alert(BCode);	
	
	      if (vSegname != null && vSegname != '')
				{		
			     $.ajax({ 
					url: "Ajax_AddSegments.asp",
					type: "POST",
					data:'vSegname='+encodeURIComponent(vSegname)+'&CPcode='+encodeURIComponent(CPcode)+'&BCode='+encodeURIComponent(BCode)+'', 				
					success: function(data){
					//alert(data);
					alert("Segment added sucessfully.");		
					//$("#linkedin_mobel").attr("style", "display:block !important");		
					},
					error: function (xhr, ajaxOptions, thrownError) {
					alert(xhr.status);
					alert(thrownError);
					alert(xhr.responseText); 
					}
				  });
				    // alert(vSegname);	
				} 
				else
				 {
					  alert('Segment Name can not be left blank');				
				 }					  
			  
 }




		function myFunction(txtname,taxval,filename,code) {
          // 01txtval.val(val);
		 // alert(parseFloat(5.5));
		  if (parseFloat(taxval)>5.1)
		  {
			// alert(parseInt(taxval));
			//var taxval1 = taxval.toFixed(1);
			//alert (taxval.toFixed(1));
			/// TO REMOVE ROUND TO 1 DECIMAL POINT IN THE FLOAT TYPE VARIABLE
			taxval = Math.round(taxval * 10) / 10
			$("#" + txtname).val(taxval);
			AddMarket_Influencer_Score(filename,code);
		  }
		 else    
		 {
		   $("#" + txtname).val('');
		 }
		
          // alert("The input value has changed. The new value is: " + val);
      }
   </script>
<script >


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

function fnc(value, min, max) 
{
    if(parseInt(value) < 5 || isNaN(value)) 
        return 5; 
    else if(parseInt(value) > 10) 
        return "10"; 
    else return value;
}

function AddAllComp_metris()
{
    //alert(code);
    //var v= $('input[type=radio].rankclass:checked');
	   // $(v).each(function(i){
		    // alert($(this));		 
			
	//});
	
	 alert("Barnd influence data updated successfully");
}

</script>
<!-- Wrapper  Start -->

			<!-----TOP START----->               
			<!--#include file="ASPIncludes/TopStrip.asp"-->
			<!-----TOP START END----->
<script src="https://www.strategyr.com/scripts/owl/owl.carousel.js"></script>
<!-- Body Start here -->

<!-- jQuery UI library -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">


      <link rel="stylesheet" href="https://www.strategyr.com/css/jquery.range.css" />
      <link rel="stylesheet" href="https://www.strategyr.com/css/share/sharer.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!---FROM HERE COPY STYLES-->

<!---UPTO HERE STYLES-->

<style>
   .modal {
      max-width: 800px !important;
   }

   .modal.brand_image_library{
       height: auto;
   }
</style>
	
<input type="hidden" name="HDNbcode" id="HDNbcode" value="<%=trim(session("bcode"))%>">
<input type="hidden" name="HDNCPcode" id="HDNCPcode" value="<%=trim(cpCode)%>">
<!-- Categories for home page Start -->
<div class="container">
   <!---COPY FORM HERE-->
   <!---BEGIN: TOP INFLUENCER LABLE -->
   <div class="w-100">
		<div class="row mb-0 ">
            <h3 class="ml-1 py-2 text-center title px-4"><%=ucase(brandname)%> - BRAND SHARE & MARKET RATING</h3>
         </div>
      <div id="influencer_lable" class="bg-white border shadow p-2 ">
		
         <div class="row mb-0 ">
            <h3 class="influencer_name"> <%=ucase(brandname)%></h3>
         </div>
         <div class="d-flex">
            <div class="left_block" style="width:100%;">
               <div class="row mb-0 mt-0">
                  <div class="middle_column">
                     <div class="img-block d-flex justify-content-start align-items-center">
                        <div class="w-100 h-100 d-flex justify-content-start align-items-center"
                           style="overflow: hidden">
                           <img src="<%=brandimage%>" class="img-fluid">
                        </div>
                     </div>
                     <div class="label_aside">
                        <h4 class="text-dark "><%=companyname%></h4>
                        <h4 class="text-dark"><%=country%></h4>
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
         </div->
      </div>
      <!---COPY FROM HERE-->
      <!---BEGIN COMPATITIVE---->
   </div>
   <!---END: TOP INFLUENCER LABLE -->
   <HR />
   <!---BEGIN: INFLUENCER AREA -->
   <div  class="table-responsive border-0">
      <div class="mt-3 position-relative pb-3 d-flex flex-column">
         <!---BEGIN: INFLUENCER TABLE-->
         <table id="Influencer_table">
            <!---TABLE HEADER-->
            <thead class="font-weight-bold">
               <tr class="m-0 p-0">
                  <th class="w-100 text-center py-2">
                     <h4 class="ml-1 py-2">BRAND SHARE AND MARKET RATING </h4>
                  </th>
               </tr>
            </thead>
            <!---TABLE BODY-->
            <tbody>
               <!---ROW BEGIN-->
			    <%Set RSInfProjects = Server.CreateObject("ADODB.Recordset")
				inf_ProjectQuery="SELECT   code,newcode,title,file_name,dop  from stat_globind.dbo.mcpnewtopic WHERE code in (select distinct trim(token) from dbo.String_Split('" & trim(mcpcodes) &"',';'))"		
				
				RSInfProjects.Open inf_ProjectQuery, DataSource4,3
				'response.write inf_ProjectQuery
				'totProjs= RSInfProjects.recordcount
				
				If Not RSInfProjects.EOF Then
				''totProjs= RSInfProjects("noofreports")
					While not RSInfProjects.EOF
					%>
				   <tr>
					<td>
                     <div class="w-100 d-flex my-1">
                        <div class="w-100 d-flex justify-content-between">
                           <div class="d-flex justify-content-start">
                              <div class="input_block">
                                 <input type="checkbox" data-toggle="collapse"
                                    data-target="#collapse_<%=trim(RSInfProjects("code"))%>"
                                    aria-expanded="true"
                                    aria-controls="collapseOne" class="mr-2">
                              </div>
                              <h4 class="font-weight-bold mb-0"><a
                                 href="https://www.strategyr.com/<%=trim(RSInfProjects("file_name"))%>"target="new" class="text-dark pl-2"><%=trim(RSInfProjects("title"))%></a> 
                              </h4>
                           </div>
                          
                        </div>
                     </div>
                     <!---COLLAPSE FOR TABLE ROW--->
                     <div id="collapse_<%=trim(RSInfProjects("code"))%>" aria-expanded="false" class="collapse">
                           <div class="w-100">
                              <div class="d-flex justify-content-start flex-wrap flex-lg-row flex-xl-row flex-md-row flex-sm-column flex-column py-2 w-100 border-top">
                                 <!--01-->
                                 <% 
								 Dim innerDiv
								 innerDiv=""
								 Set RSSegments = Server.CreateObject("ADODB.Recordset")
										Seg_Query="SELECT GIA_NO, Segment_ID, Type, SEG_ID, Name, SegmentID FROM  vwReports_GIA_Segments$ where GIA_NO='"&trim(RSInfProjects("newcode"))&"' order by segmentid"		
										RSSegments.Open Seg_Query, DataSource7,3
										'response.write Seg_Query
									''	totProjs= RSSegments.recordcount 
										
										'response.writeSeg_Query
										'response.end
										
										If Not RSSegments.EOF Then%>
										<div class="w-100 pl-1 mb-2 ">
											<i><strong>Select all <%=trim(brandname)%> relevant segments</strong></i>
										</div>
										
										<%	While not RSSegments.EOF
											%>  
											
											 <div class="d-flex mr-3">
												   <input type="checkbox"  class="mr-1"  data-toggle="collapse" data-target="#S<%=trim(RSSegments("Segment_ID"))%>" aria-expanded="true"  aria-controls="collapse">
												   <p class="ml-1 mb-2"><%=trim(RSSegments("Name"))%></p>
											 </div>
											 
											 
											<%	
											if session("EID") <>"" then 
											  ''innerDiv = innerDiv & "<div class='d-flex mr-3'><i>Help curate brand images & receive a complimentary copy of our influencer curated cluster</i></div>"
											  innerDiv = innerDiv & "<div id='S"&trim(RSSegments("Segment_ID"))&"' aria-expanded='false' class='collapse ' ><div class='d-flex justify-content-start ml-1'><p class='mb-2'>&raquo;&nbsp;"&trim(RSSegments("Name"))&" - </p><a href='https://www.strategyr.com/Report_Brand_Images.asp?Cpcode=" & cpCode & "&mcpcode=" & trim(RSInfProjects("code")) & "&sid="& trim(RSSegments("segmentid"))&"' target='_new' class='link2 font-weight-bold'>&nbsp;Brand Library</a></div></div>"
											 else
											  ''innerDiv = innerDiv & "<div class='d-flex mr-3'><i>Help curate brand images & receive a complimentary copy of our influencer curated cluster</i></div>"
											  innerDiv = innerDiv & "<div id='S"&trim(RSSegments("Segment_ID"))&"' aria-expanded='false' class='collapse ' ><div class='d-flex justify-content-start ml-1'><p class='mb-2'>&raquo;&nbsp;"&trim(RSSegments("Name"))&" - </p><a href='https://www.strategyr.com/LoginRepeat.asp' target='_new' class='link2 font-weight-bold'>&nbsp;Brand Library</a></div></div>"
											 end if
											 '' isno=isno+1
											  RSSegments.movenext
											  
											wend
										end if
								set RSSegments=nothing
						
								%>                                 
								 
							 <div class="w-100 border-top  pt-2" id="block_01">
								<div class='d-flex mr-3 w-100 pl-1 mb-0 pb-2'><i style="line-height: normal"><strong> To view brand images. Help curate image and data to receive complimentary cluster data.</strong></i></div>
                                 <!---Mobile Games-->
                                 <!--div id="mobile_Games" aria-expanded="false" class="collapse " >
                                       <div class="d-flex justify-content-start">
                                          <p>Mobile Games -</p>
                                          <a href="#brand_image_library" rel="modal:open" class="link2 font-weight-bold">ADD FROM IMAGE LIBRARY</a>
                                       </div>
                                 </div-->								 
								<%response.write(innerDiv)%>                                
                            </div>
                           <!-----end -->								 
                              </div>
                            </div>
                        </div>                    
                  </td>
               </tr>
				<%	RSInfProjects.movenext
					wend
					end if
					set RSInfProjects=nothing
					%>             
            </tbody>
         </table>
         <!---END: INFLUENCER TABLE-->
         <!---BEGIN: VIEW MORE & SUBMIT  AREA-->
         <table id="Influencer_table">
			<%if session("EID") <>"" then%>
			<tr style="background:#fff" class="w-100">
               <td class="w-100 py-2 border-0">
				  <div class="d-flex justify-content-start align-items-right w-100 mt-2  ">                                         
					   <p class="mr-2 mb-1">Add missing segment for the brand</p>
					   <a href="#addnew_brand"  rel="modal:open" class="ml-2 rounded-0  font-weight-bold  text-blue add_country" style="color:#169FE6 !important;font-size:14px !important; margin-top: -2px;">ADD SEGMENT</a>
				  </div>                          
               </td>
            </tr>
			<%else%>
			<tr style="background:#fff" class="w-100">
               <td class="w-100 py-2 border-0">
				  <div class="d-flex justify-content-start align-items-right w-100 mt-2  ">                                         
					   <p class="mr-2 mb-1">Add missing segment for the brand</p>
					   <a href="https://www.strategyr.com/LoginRepeat.asp"   class="ml-2 rounded-0  font-weight-bold  text-blue add_country" style="color:#169FE6 !important;font-size:14px !important; margin-top: -2px;">ADD SEGMENT</a>
				  </div>                          
               </td>
            </tr>
			<%end if %>
			<% ''response.write mcpcount & " KLKLKLKLKL"
			'''if  cint(mcpcount)> 10 then
				if session("EID") <>"" then%>
					<tr class="border">
					   <td class="comp_sub">
						 <!-- <p class="font-weight-bold mb-0">
							 <span class="float-left">
							 <a href="Brand_All_Details.asp?bcode=<%=trim(request("bcode"))%>" class="view_more">More...</a>
							 </span>
						  </p>-->
						  <a href="#" class="submit-button my-2  float-right" type="button"> SUBMIT</a>
					   </td>
					</tr> 
				<%else %>
					<tr class="border">
					   <td class="comp_sub">
						<!--  <p class="font-weight-bold mb-0">
							 <span class="float-left">
							 <a href="https://www.strategyr.com/LoginRepeat.asp" class="view_more">More...</a>
							 </span>
						  </p>-->
						  <a href="https://www.strategyr.com/LoginRepeat.asp"  class="submit-button my-2  float-right" type="button"> SUBMIT</a>
					   </td>
					</tr>  
			
			<%	end if
			''end if %>
         </table>
         <!---END: VIEW MORE & SUBMIT  AREA-->
      </div>
      <!---TABLE END-->
   </div>
   <!---END: INFLUENCER AREA -->
  
   <!---COPY UP TO HERE-->
</div>
<!-- Wrapper / End -->
<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->
<!---BEGIN: Model-->
<!-----END: MODEL -->
<script src="https://www.strategyr.com/js/limit.text.js"></script>
<script src="https://www.strategyr.com/scripts/sharer.js"></script>
<script src="https://www.strategyr.com/scripts/jquery.range.js"></script>
<div id="addnew_brand" class="modal rounded-0">
   <div class="w-100">
      <table class="w-100">
         <tbody>
            <tr>
               <td class="w-100">
                  <div class="d-flex justify-content-start">
                     <!--div class="input_block">
                        <input type="checkbox"class="mr-2">
                     </div-->
                     <div class="input_block w-100 d-flex justify-content-between">
                        <input type="text" class="mr-2 w-100 border mb-0" placeholder="Add New Segment" id="TxtSeg" name="TxtSeg">&nbsp;<input type="button" name="btnaddSeg" id="btnaddSeg" value="ADD" 
						>
                     </div>
                  </div>
                  </div>
               </td>
            </tr>
         </tbody>
      </table>
   </div>
 </div>

<script>
    /*$('#submit_form').click(function(event) {
    $("#linkedin_mobel").modal({
      fadeDuration: 250,
      clickClose: false,    
    });
    return false;
  });*/
</script>

</body>
</html>