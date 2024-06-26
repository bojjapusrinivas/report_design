<%@ LANGUAGE="VBScript" %>

<%
Response.CodePage = 65001
Response.CharSet = "utf-8"
%>
<!--#include file="../ASPIncludes/SendEmail.asp"-->
<!--#include file="../ASPIncludes/SiteFunctions.asp"-->

<!--#include file="../ASPIncludes/CheckSQLSearchInc.asp"-->
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Press ">
    <meta name="generator" content="press">
    <title>PRESS GRAPHICS</title>
    <link rel="canonical" href="">
    <!-- Favicons -->
    <meta name="theme-color" content="#563d7c">
    <!-- STYLE SHEET -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/custom_style_01.css" rel="stylesheet">
    <link href="css/font-awesome_4.css" rel="stylesheet">
  
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
   
		<link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
 <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
        <style>
            label { margin: 10px auto; }
                    .toPic {
                        display: none;
                    }
            
            </style>


</head>
<!--#include file="../adovbs.asp"-->
<!--#INCLUDE FILE="../aspincludes/dbopen.asp" -->
<body id="press_report " class="py-3">

    <!---- BEGIN:TEMPLATE-01---->
   <!-- <div class="press_template_01 " id="press_template_01">-->
	<div id="wapper" class="p-0 mx-auto border">
        <!---BEGIN:TEMPLATE-01-BACKGROUND--->
     
        <!---END:TEMPLATE-01-BACKGROUND--->
		<%
		Set ConnMain = Server.CreateObject("ADODB.Connection")
		
		ConnMain.Open DataSource4
		Set RSeventMain = Server.CreateObject("ADODB.Recordset")
		 
		if trim(request("code")) <> "" then
		code=trim(request("code"))
			query="select *,gia_mc_program.dbo.fnGetBrandCountby_MCP_new(code) as brandcount, format(convert(datetime, '01 ' + dop, 106),'MMM yyyy') as smldop from stat_globind.dbo.vw_MCPNewTopicEEE where code ='" &code& "'"
		else
		code= "MCP10442"
		query="select *,gia_mc_program.dbo.fnGetBrandCountby_MCP_new(code) as brandcount, format(convert(datetime, '01 ' + dop, 106),'MMM yyyy') as smldop from stat_globind.dbo.vw_MCPNewTopicEEE where code ='" &code& "'"
		end if
		RSeventMain.Open query, Con ,3
		''response.write query
		
		If Not RSeventMain.EOF Then
		
		%>
        <!----BEGIN:TITLE---->
        
		<div class="row mx-0">
            <div class="col-12 p-3  text-center border-bottom">
                <h1 class="font_01 my-0 ">
				 <%=ucase(RSeventMain("title"))%> - GLOBAL MARKET TRAJECTORY
			</h1>
			</div>
		</div>
        <!----END:TITLE---->

        <!----BEGIN:CONTENT---->
		<div class="row mx-0 pb-2">
        <div class="col-5 p-2  left_block position-relative">
            <div class="executive_block" STYLE="height:368px;">
            <!--<h2 class="text-center mt-2 mb-3 font_02">EXECUTIVE ENGAGEMENTS</h2>-->
            <div class="w-100 position-absolute executive_image_block">
                <img src="img/executive_desing_01.jpg" class="executive_image mx-auto d-block"/>
            </div>
            <!---LOGO Block-->
            <div class="log_block d-flex flex-column justify-content-center ">
                <img src="img/logo.png" class="logo m-auto" style="width:145px;"/>
                <img src="img/34.png" class="logo_34 m-auto"/>

            </div>
            <div class="d-flex ml-5" style="margin-top:-33px">
                <!--Competitors -->
                <div class="Executive_Pool d-flex flex-column justify-content-center  text-center">
					<img src="img/icon_03.svg" class="icon"/>
                    <h3 class="font_03 my-1 text-uppercase font-weight-bold ">Competitors  </h3>
                    <h2 class="font_02 "><%=RSeventMain("companies")%></h2>
                    

                </div>


                <!--Executive Pool  -->
                <div class="Outreach  d-flex flex-column justify-content-center  text-center">
					<img src="img/icon_01.svg" class="icon"/>
                    <h3 class="font_03 my-1 text-uppercase font-weight-bold ">Executive Pool </h3>
                    <h2 class="font_02 "><%=RSeventMain("pool_outreach")%></h2>
                    

                </div>
            </div>

                <!--PARTICIPANTS  -->
                <div class="d-flex justify-content-center">
                    <div class=" Competitors   d-flex flex-column justify-content-center  text-center">
					<img src="img/icon_02.svg" class="icon"/>
                    <h3 class="font_03 my-1 text-uppercase font-weight-bold ">PARTICIPANTS</h3>
                    <h2 class="font_02 "><%=RSeventMain("Participants")%></h2>
                    </div>
                </div>

        </div>
		<div class="row mx-0 mt-4 mb-1">
		<div class="w-100  mt-0 mb-1">
			<div class="col-12 ml-4 text-center">
				<p style="font-size:12px;" class="mb-0"><i> <span style="color:red !important">*</span> Our research program is ongoing and dynamic.<br> Engagement stats are published quarterly.</i></p>
			</div>
		</div>
	</div>
        </div>

        <div class="col-7 p-2 right_block position-relative">
             <!---- DASH BOARD SECTION----->
             <div class="w-100 text-center mt-2 mb-3">
                <div class="w-100 dash_board ">
                   <div class="border-right px-2">
                    <h2 class="text-center px-2 pt-0 font_02 border-bottom w-100">DATE</h2>
                    <h3 class="text-center font_03 secondary_color mb-0 "><%=ucase(RSeventMain("smldop"))%></h3>
                   </div>
                   <div class="border-right px-2" >
                    <h2 class="text-center px-2 pt-0 font_02 border-bottom w-100">TABLES</h2>
                    <h3 class="text-center font_03 secondary_color mb-0"><%=RSeventMain("market_data_tables")%></h3>
                   </div>
                   <div class="border-right px-2">
                    <h2 class="text-center px-2  pt-0 font_02 border-bottom w-100">PAGES</h2>
                    <h3 class="text-center font_03 secondary_color mb-0"><%=RSeventMain("pages")%></h3>
                   </div>
                   <div class="px-2">
                    <h2 class="text-center px-2 pt-0 font_02 border-bottom w-100">EDITION</h2>
                    <h3 class="text-center font_03 secondary_color  mb-0"><%=RSeventMain("edition")%></h3>
                   </div>
                </div>
            </div>

            
                <!---- GEOGRAPHIC SECTION----->
                <div class="w-100 text-center  mb-3">
                    <h2 class="text-center font_02">GEOGRAPHIES – INDEPENDENTLY ADDRESSED</h2>
                    <div class="w-100">
                        <ul class="p-0 m-0 d-flex flex-wrap flex-row  geographics">
							<% if trim(RSeventMain("region"))="GEO_A" then%>
                             <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>USA</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Canada</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Japan</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>China</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Europe</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>France</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Germany</li>
                   
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Italy</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>UK</li>
               
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Asia-Pacific</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Australia</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>India</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>South Korea</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Other Geographies</li>
						<%else%>
                           <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>USA</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Canada</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Japan</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>China</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Europe</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>France</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Germany</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Italy</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>UK</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Asia-Pacific</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Other Geographies</li>
						<%end if%>
                        </ul>
                    </div>
                </div>


                <!---- SEGMENTS SECTION----->
                <div class="w-100 text-center  mb-3">
                    <h2 class="text-center font_02">SEGMENTS - INDEPENDENTLY ANALYZED</h2>
                    <div class="w-100 d-flex mb-2">
					 <ul class="p-0 m-0 d-flex flex-wrap flex-row  geographics">
						<% ' response.write RSeventMain("Segments_Covered")
					sql="SELECT   GIA_NO, Type , Name, SegmentID FROM   GIA_Analytix.dbo.vwReports_GIA_Segments$ where gia_no='"& TRIM(RSeventMain("newcode")) & "' order by convert(int,segmentid)"
				''RSSegments.ActiveConnection = Con
				Set RSSegments = Server.CreateObject("ADODB.Recordset")
				RSSegments.OPEN sql,Con ,3
				
				seglen= len(RSeventMain("Segments_Covered"))
				''response.write seglen
				segcount=RSSegments.recordcount
				If not RSSegments.EOF Then
				While not RSSegments.EOF
						if (trim(stype)<> trim(RSSegments("type"))) then
							if segmentid <> 1 then%>
							 </ul>
							</div>
							<%end if%>
                            <div class="w-100 d-flex mb-2 flex-column">
                                <h5 class="font_05 mt-0 mb-1 ml-1  side_heading "> <%=RSSegments("type")%> <i class="fa fa-chevron-right red_color c" aria-hidden="true"></i></h4>
                                <ul class="p-0 m-0 d-flex flex-wrap flex-row segments">
							<li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i><%=RSSegments("name")%></li>
						<%else%>
						<li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i><%=RSSegments("name")%></li>
							<%	
						end if
						stype=trim(RSSegments("type"))		
					RSSegments.movenext
					Wend%>
					</div>
				
				<%end if%>
					<!--
                    <div class="w-100 d-flex">

                        <h4 class="font_04 my-0 mx-2 "> Platform <i class="fa fa-chevron-right red_color c" aria-hidden="true"></i></h4>
                        <ul class="p-0 m-0 d-flex flex-wrap flex-row  geographics">
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Offline</li>
                            <li class="list_style"><i class="fa fa-check-square-o mr-1" aria-hidden="true"></i>Online</li>
                        </ul>
                    </div>-->

                </div>
				
                    <!---- COMPETITORS SECTION----->
					
					<%if cint(seglen) <150 then%>
                    <div class="w-100 text-center ">
                        <h2 class="text-center font_02">COMPETITORS - <%=RSeventMain("companies")%></h2>
                        <div class="w-100 ">
                            <ul class="p-0 m-0 d-flex flex-wrap flex-row  competitors">
							<%  companies_list=split(RSeventMain("companynames"),";")
								''response.write 	ubound(companies_list)
								i=0
								for each x in companies_list
									if i <= 8 then
									response.write("<li class='list_style'><i class='fa fa-check-square-o mr-1' aria-hidden='true'></i>" & x & "</li>")
									end if
									i=	i+1
								next
								%>
								<li class='list_style'><i class='fa fa-check-square-o mr-1' aria-hidden='true'></i>View complete list at  <a href="www.StrategyR.com" style="color:#435FBD"> www.StrategyR.com</li>
                            </ul>
                        </div>
                    </div>
					<%end if%>
					
        </div>
    </div>
	
	<%if cint(seglen) >=150 then%>
		<div class="row mx-0">
			<div class="w-100 text-center mt-0 mb-1">
				<div class="col-12 ml-4">
					<h2 class="text-left font_02">COMPETITORS - <%=RSeventMain("companies")%></h2>
						<div class="w-100 ">
							<ul class="p-0 m-0 d-flex flex-wrap flex-row  competitors">
								<%  companies_list=split(RSeventMain("companynames"),";")
									''response.write 	ubound(companies_list)
									i=0
									for each x in companies_list
										if i <= 8 then
										response.write("<li class='list_style'><i class='fa fa-check-square-o mr-1' aria-hidden='true'></i>" & x & "</li>")
										end if
										i=	i+1
									next
									%>
								<li class='list_style'><i class='fa fa-check-square-o mr-1' aria-hidden='true'></i>View complete list at  <a href="www.StrategyR.com" style="color:#435FBD"> www.StrategyR.com</li>
							</ul>
						</div>
				</div>
			</div>
		</div>
  	<%end if%>

      
		<%end if
		Set RSeventMain = Nothing
		Set ConnMain = Nothing%>
		
		<div class="row mx-0">
			<div class="col-12 p-1  text-center border-top">
				<P class=" my-0 text-center ">
					<small>StrategyR™ - Global Industry Analysts, Inc. USA. All Rights Reserved. <span class="secondary_color"> www.StrategyR.com</span></small>
				</P>
			</div>
		</div>

      
  </div>
        <!----END:CONTENT--->

    

   
    <!---- END:TEMPLATE-01---->



<!--- BEGIN:PREVIEW---->
<div class="container  mt-3 pt-3">

    <div class="w-100 d-flex justify-content-center flex-column text-center">

      <!--  <h2 class="toCanvas"> <a href="javascript:void(0);" class="btn btn-danger"> To Canvas </a></h2>
        <h2 class="toPic"><a href="javascript:void(0);" class="btn btn-danger"> To Image </a></h2>-->
        <h5>
       <!--    <label for="imgW">Image Width:</label>
    <input type="number" value="" id="imgW" placeholder="Image Width" class="form-control">
    <label for="imgH">Image Height:</label>
    <input type="number" value="" id="imgH" placeholder="Image Height" class="form-control">
    <label for="imgFileName">File Name:</label>-->
    <input type="hidden" placeholder="File Name" id="imgFileName" value="<%=code%>" class="form-control">
	<input type="hidden" placeholder="File Name" id="sel" value="png" class="form-control">
    <!--<label for="sel">File Type:</label>
    <select id="sel" class="form-control">
      <option value="png">png</option>
      <option value="jpeg">jpeg</option>
      <option value="bmp">bmp</option>
    </select>-->
    <!--<button id="save" class="btn btn-danger">Save And Download</button>-->
        </h5>

    </div>

</div>
<!---END:Preview---->

</body>

<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.bundle.js"></script>
<script src="js/jquery-ui.js"></script>
 <script src="js/img_capture/canvas2image.js"></script>
<script src="js/img_capture/html2canvas.min.js"> </script>

<script type="text/javascript">
    var test = $("#wapper").get(0);
    // to canvas
    html2canvas(test).then(function(canvas) {
// canvas width
var canvasWidth = canvas.width;
// canvas height
var canvasHeight = canvas.height;
// render canvas
$('.toCanvas').after(canvas);
// show 'to image' button
$('.toPic').show(1000);
// convert canvas to image
var img = Canvas2Image.convertToImage(canvas, canvasWidth, canvasHeight);
  // render image
  $(".toPic").after(img);
  // save

let type = $('#sel').val(); // image type
    let w = $('#imgW').val(); // image width
    let h = $('#imgH').val(); // image height
    let f = $('#imgFileName').val(); // file name
    w = (w === '') ? canvasWidth : w;
    h = (h === '') ? canvasHeight : h;
    // save as image
    Canvas2Image.saveAsImage(canvas, w, h, type, f);
	this.close();
});

</script>


</html>