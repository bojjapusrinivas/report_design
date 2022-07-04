<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<!--#include file="adovbs.asp"-->
<!--#include file="aspincludes/CheckSQLInc.asp"-->

<%
 Server.ScriptTimeout=1200
dim queryStrLength
queryStrLength = 0
queryStrLength = len(Request.ServerVariables("QUERY_STRING"))
If queryStrLength>150 Then
	response.write "<p align='center'><br/><br/><font face='verdana' size=2 color='red'><b>Sorry an error occured, please contact us at info411@strategyr.com</b></font></p>"
	response.end
End If
''for var in Request.ServerVariables
''	response.write var & "="& request(var)&"<br>"
''next
	if instr(trim(Request.ServerVariables("http_referer")),"www.strategyr.com")=0 then
	
		'response.end
	end if

	if trim(Request.ServerVariables("http_referer"))="" then
		'Response.Redirect "www.strategyr.com"
		
	end if

	''session("EID")
	if trim(session("EID"))="" then
		''Response.Redirect "CMI_access.asp?login=sesout"
	end If
'''''Server.ScriptTimeout = 680

'' MAKE SURE THE SESSON VARIABLE IS CREATED SO THAT USER CAN GO TO PANELIST PAGE AND SUBSCRIBE

%>
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
<link rel="stylesheet" href="css/market-share-rank.css" />
<!-- SHARE THIS SCRIPT-->
<script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=606651264d5573001844feb4&product=sticky-share-buttons" async="async"></script>
<!-- END SHARE THIS SCRIPT -->
<head>
    <!-- Basic Page Needs
================================================== -->
<%
''On Error Resume next
%>
    <meta charset="utf-8">
    <title> Data Simulator | strategyr.com</title>
	<meta name="description" content=" Data Simulator "/>
    <!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS
================================================== -->
    <link rel='stylesheet' href="https://www.strategyr.com/css/tri_page.css" />
     
    <link rel="stylesheet" href="https://www.strategyr.com/css/font-awesome.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/wedges_effect.css" />
	
	<link rel="stylesheet" href="https://www.strategyr.com/css/labels.css" />

	<link rel="stylesheet" href="https://www.strategyr.com/css/responsive.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap" rel="stylesheet">
	  <link rel="stylesheet" href="https://www.strategyr.com/css/al-range-slider.css"/>
      <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
	  <link rel="stylesheet" href="https://www.strategyr.com/css/MARKET_DATA_SIMULATOR_STYLES.css"/>
      <link rel="stylesheet" href="https://www.strategyr.com/css/ranking_table.css" />
	  
    <!-- Java Script
================================================== -->
    <script src="https://www.strategyr.com/scripts/jquery.easing.1.3.js"></script>
    <script src="https://www.strategyr.com/scripts/jquery.contact.js"></script>
    <script src="https://www.strategyr.com/scripts/jquery.isotope.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>

  
<!--- accordion2 script ---->
<script>
$(function() {
		$('.lazy').Lazy();
	});
</script>

<script language="javascript">
function winopen1(CmpCode,RptID)
{
	//alert ("CODE: "+CmpCode);
	document.frmSelfMgmt.method="post";
	document.frmSelfMgmt.action="SM_ReportList.asp?code="+CmpCode+"&RptID="+RptID;
	document.frmSelfMgmt.submit();
}

function AddReporttoList(mcpcode,filename)
{
	
		var checkval;
		checkval = confirm("Do you want to add the report to the list");
		if (checkval==true)
		{
			
			var compcode = filename;;
			
			var src = "CMAddToList.asp?fileCode=" + compcode +"&code="+mcpcode;
			var wint = window.open(src,"GLOBIND","top=10, left=10, scrollbars=yes,width=650,height=500");		
		}
		
}

function RemoveReporttoList(mcpcode)
{
	/// CHECK to see if user is registered user to delete or add
	
		var checkval;
		checkval = confirm("Do you want to remove the report from the list");
		if (checkval==true)
		{
			var compcode = <%=trim(request("code"))%>;
			var src = "CMRemoveToList.asp?fileCode=" + mcpcode +"&code="+compcode;
			var wint = window.open(src,"GLOBIND","top=10, left=10, scrollbars=yes,width=650,height=500");		
		}
		
}
</script>
<script type="text/javascript">


var bustcachevar=1 //bust potential caching of external pages after initial request? (1=yes, 0=no)
var loadedobjects=""
var rootdomain="http://"+window.location.hostname
var bustcacheparameter=""

function ajaxpage(url, containerid)
{
	//// hide the industry group
	//if (containerid=="idProfileDisplay")
	//{
	//	document.getElementById("idProfile").style.visibility = "hidden";
	//	document.getElementById("idProfile").style.height=0;
	//}
	//if (containerid=="idProfile")
	//{
	//	var current1 = getStyle1();
	//	//alert(current);

	//	if( current1 == "hidden" )
	//	{
	//		document.getElementById("idProfile").style.visibility = "visible";
	//	}
	
	//}
	if (containerid=="idProfileDisplay")
	{
		document.getElementById("idProfile").style.visibility = "hidden";
		document.getElementById("idProfile").style.clear="both";
    		document.getElementById("idProfile").style.overflow="hidden";
		document.getElementById("idProfile").style.height=1;
	}
	if (containerid=="idProfile")
	{
		var current1 = getStyle1();
		//alert(current);

		if( current1 == "hidden" )
		{
			document.getElementById("idProfile").style.visibility = "visible";
			document.getElementById("idProfile").style.overflow="visible";
		}
	
	}
	

var page_request = false
if (window.XMLHttpRequest) // if Mozilla, Safari etc
page_request = new XMLHttpRequest()
else if (window.ActiveXObject)
{ // if IE
	try 
	{
		page_request = new ActiveXObject("Msxml2.XMLHTTP")
	} 
	catch (e)
	{
	try
	{
		page_request = new ActiveXObject("Microsoft.XMLHTTP")
	}
	catch (e){}
	}
}
else
return false
page_request.onreadystatechange=function()
{
	loadpage(page_request, containerid)
}
if (bustcachevar) //if bust caching of external page
bustcacheparameter=(url.indexOf("?")!=-1)? "&"+new Date().getTime() : "?"+new Date().getTime()
page_request.open('GET', url+bustcacheparameter, true)
page_request.send(null)
}

function loadpage(page_request, containerid)
{
if (page_request.readyState == 4 && (page_request.status==200 || window.location.href.indexOf("http")==-1))
document.getElementById(containerid).innerHTML=page_request.responseText
}

function loadobjs()
{
	if (!document.getElementById)
	return
	for (i=0; i<arguments.length; i++)
	{
		var file=arguments[i]
		var fileref=""
		if (loadedobjects.indexOf(file)==-1)
		{ //Check to see if this object has not already been added to page before proceeding
		if (file.indexOf(".js")!=-1)
		{ //If object is a js file
			fileref=document.createElement('script')
			fileref.setAttribute("type","text/javascript");
			fileref.setAttribute("src", file);
		}
		else if (file.indexOf(".css")!=-1)
		{ //If object is a css file
			fileref=document.createElement("link")
			fileref.setAttribute("rel", "stylesheet");
			fileref.setAttribute("type", "text/css");
			fileref.setAttribute("href", file);
		}
		}
	if (fileref!="")
	{
	document.getElementsByTagName("head").item(0).appendChild(fileref)
	loadedobjects+=file+" " //Remember this object as being already added to page
	}
	}
}

</script>
<script language="javascript">

function verify(o,v,iState)
	{	
	var iver;
			
        var obj = document.getElementById('idExperience');
        obj.style.visibility = "visible";
       
       
	
	}
function getStyle()
{
var temp = document.getElementById("idExperience").style.visibility;

return temp;
}

function switchMain()
{

var current = getStyle();
//alert(current);

if( current == "hidden" )
{
document.getElementById("idExperience").style.visibility = "visible";
}
else
{
document.getElementById("idExperience").style.visibility = "hidden";
document.getElementById("idExperience").style.height="10";
}
}


function getStyle1()
{
var temp = document.getElementById("idProfile").style.visibility;

return temp;
}

function switchMain1()
{

var current = getStyle1();
//alert(current);

if( current == "hidden" )
{
document.getElementById("idProfile").style.visibility = "visible";
}
else
{
document.getElementById("idProfile").style.visibility = "hidden";
document.getElementById("idProfile").style.height=0;
}
}



//console.log(valores);

function AddAllComp_metris(code)
{  

		
var checkedVals = $('.inputselector:checkbox:checked').map(function() {
        //return this.value;
		return $(this).val();
}).get();

var strlen=checkedVals.join(",").length
    //alert(strlen);
       if (strlen > 1 )
	    {
		   alert("Thank You!");
		}
		else
		{		  
		   alert("Select at least one Project");
		}
}

</script>

<script>
$(function () {
	//Show 3 items onLoad
    $("span1").slice(0, 9).show();
    $("#loadMore").on('click', function (e) {
        e.preventDefault();
		// on click of Add More.. button will show 10 more lines of records.
        $("span1:hidden").slice(0, 10).slideDown();
        if ($("span1:hidden").length == 0) {
            $("#load").fadeOut('slow');
        }
        $('html,body').animate({
            scrollTop: $(this).offset().top
        }, 1500);
    });
});

$('a[href=#top]').click(function () {
    $('body,html').animate({
        scrollTop: 0
    }, 800);
    return false;
});

$(window).scroll(function () {
    if ($(this).scrollTop() > 50) {
        $('.totop a').fadeIn();
    } else {
        $('.totop a').fadeOut();
    }
});
</script>


<style>

.inf_btn {
    border: none !important;
    background: #255E91 !important;
    font-size: 14px !important;
    font-weight: 600 !important;
    color: #fff !important;
    width: 160 px;
    height: 36 px;
    margin: 2 px !important;
    border: none;
    cursor: pointer !important;
    background: #255E91 !important;
}

</style>



<script  src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>


</head>

<body id="landing_page" leftmargin=0 rightmargin=0 topmargin=0 bottommargin=0 ><!--onBeforePrint="document.body.style.display='none'" onAfterPrint="document.body.style.display=''" onContextmenu="return false" onSelectstart="return false" onDragstart="return false" -->
    <!-- Wrapper / Start -->
    <div id="wrapper" class="bor-radius">
     
	  <!-----TOP START----->
			<!--#include file="ASPIncludes/TopStrip.asp"-->
	  <!-----TOP START END----->
        
        <!-- for Check box Check option  click on Table row  code start -->
        <!-- Content
================================================== -->
        <!---BEGN REPORT TITLE--->
	
        <div class="container" id="compan_landing_page">
		
            <div class="row w-100 pt-0 mb-2  text-center" id="title_block">
              
               
             
				<%
Dim Conn55
Dim RS55
Dim SQL55
dim Display_flag
Display_flag = "N"

Set Conn55 = Server.CreateObject("ADODB.Connection")
Conn55.Open DataSource
Set RS55 = Server.CreateObject("ADODB.Recordset")
RS55.activeconnection = Conn55
SQL55="SELECT * FROM MCPNewTopic WHERE (CODE='" & trim(request("pcode")) & "')"
'response.write SQL55
RS55.Open SQL55
If Not RS55.EOF Then
	Display_flag = Trim(RS55("Display_flag"))
	title= Trim(RS55("title"))
	filename=Trim(RS55("file_name"))
	newcode=Trim(RS55("newcode"))
	Segments=Trim(RS55("Segments_Covered"))
	geoGraphis=Trim(RS55("Regions_Covered"))
	code=Trim(RS55("code"))
	DOP=Trim(RS55("dop"))
End If
Set RS55 = Nothing
Set Conn55 = Nothing

'If Ucase(trim(Display_flag))="N" then
'	response.redirect "default.asp"
'	response.end
'End If
%>
<div id="content">
	<main>
		<!----Begin:Container---->
		<div class="container">					
			<!---BEGIN: LABEL BLOCK ---->				
			<!---END LABEL BLOCK 
			<!---BEGIN: TITLE BLOCK---->
			<div class="row text-primary  w-100 pt-0 my-0  border-bottom  text-center mt-0" id="report_page_title">
				<h2 class="font-weight-bolder mb-1" style="color:#E37038;"><%=(title)%></h2>
				<h3 class="font-weight-bold mb-1 line-height-normal" style="color:#E37038;">Global Market Trajectory &amp; Analytics</h3>
			<!--MARKET ANALYSIS, TRENDS AND FORECASTS-->				
				<h3 class="text-primary font-weight-bold mb-2"><%=code%></h3> 
			<!--	<h3 class="text-primary font-weight-bold"><%=DOP%></h3> -->
			<!---END : BEGIN----->
				
			</div>

			<div class="row text-primary  w-100 pb-0 my-0 border-0  text-center mt-0" id="report_page_title">
				<h3 class="text-primary font-weight-bold">BASELINE TREND SETTINGS - MODULE A</h3>
			</div>
			
			
			<%	Set ConnGA = Server.CreateObject("ADODB.Connection")
					ConnGA.Open DataSource7
					Set RS_gia_ANALYTICS = Server.CreateObject("ADODB.Recordset")
					RS_gia_ANALYTICS.activeconnection = ConnGA
					SQLga="SELECT * FROM reportS_gia$ WHERE GIA_NO='" & trim(NEWCODE) & "'"
					'response.write SQLga
					RS_gia_ANALYTICS.Open SQLga
					If Not RS_gia_ANALYTICS.EOF Then
						UNITS = Trim(RS_gia_ANALYTICS("UNITS"))
						REGION = Trim(RS_gia_ANALYTICS("REGION"))
						REGION_TYPE=Trim(RS_gia_ANALYTICS("REGION_TYPE"))
						GIA_NO=Trim(RS_gia_ANALYTICS("GIA_NO"))
						START_YEAR=Trim(RS_gia_ANALYTICS("START_YEAR"))
					End If
					Set RS_gia_ANALYTICS = Nothing
					Set ConnGA = Nothing
					'RESPONSE.WRITE "YEAR :" & START_YEAR & "<BR>"
					'RESPONSE.WRITE "REGION :" &REGION & "<BR>"
					'RESPONSE.WRITE "MARKET MESURE :" & UNITS
					%>

                    <!---MARKET MEASURE DATA ANALYSTS -->
                    <div class="row mx-0 mb-2 mt-2 ">
                        <div class="d-flex flex-wrap">
                            <div class="d-flex flex-xl-row flex-lg-row flex-md-row flex-sm-column justify-content-start w-100 mt-3  ">

                                <div class="w-lg-35 w-xl-35  w-md-100  w-sm-100 d-flex align-items-center justify-content-start mb-1 ml-0 mr-5">
                                
                                        <h4 for="inputPassword" class="mr-0 col-form-label ml-0 w-lg-50 w-xl-50 w-md-70 w-sm-35">MARKET MEASURE:</h4>
                                        <div class="w-lg-50 w-xl-50 w-md-30 w-sm-65">
                                        <input type="text" class="form-control w-100 border ml-2" id="inputPassword" value="US$ Million" style="height:30px">
                                        </div>
                                
                                    </div>
            
                                    <div class="w-lg-35 w-xl-35  w-md-100  w-sm-100 d-flex align-items-center justify-content-start mb-1 ml-0 mr-5">
                                        <h4 for="inputPassword" class="mr-0 col-form-label ml-0 w-lg-20 w-xl-20 w-md-30 w-sm-35">DATE :</h4>
                                        <div class="w-lg-70 w-xl-70 w-md-70  w-sm-65">
                                        <input type="date" class="form-control w-100 border ml-2" id="inputPassword" value="US$ Million" style="height:30px">
                                        </div>
                                    
                                </div>

                                <div class="w-lg-35 w-xl-35  w-md-100  w-sm-100 d-flex align-items-center justify-content-start mb-1 ml-0 mr-5">
                                
                                        <h4 for="inputPassword" class="mr-0 col-form-label ml-0 w-lg-25 w-xl-25 w-md-35 w-sm-35">ANALYST:</h4>
                                        <div class="w-lg-55 w-xl-55 w-md-65 w-sm-65">
                                            <input type="text" class="form-control w-100 border ml-2" id="inputPassword" value="" style="height:30px">
                                        </div>
                                </div>
                           </div>
                        </div>
                    </div>


                     <!---SEGMENTS AND GLOBAL COVRAGE- -->
                    <div class="row mx-0 mb-2">
                        <h4 class="font-weight-bold text-left">SEGMENTS :</h4>
                        <p class="mb-2 mt-0 text-left"><span class="mr-2"><%=UCase(trim(segments))%></span> <span class="mr-2">&#187 END-USE (INDUSTRIAL, MEDICAL, ENERGY, DEFENSE, AGRICULTURE, OTHER END-USES)</span></p>

                        <div class="d-flex justify-content-start align-items-center">
                            <h4 class="font-weight-bold">GEOGRAPHIC COVERAGE - LEVEL:</h4>
                            <span class="d-flex">
                                <div class="d-flex justify-content-start align-items-center mr-2 ml-2"><input type="radio" id="radio_01" name="map_slect" class="ml-2 font-weight-bold"  type="checkbox" data-toggle="collapse" data-target="#ga_a" aria-expanded="true" aria-controls="collapseOne" checked="" > <span style="font-size: 14px;font-weight: 600; color: #000;">A</span></div>
                                <div class="d-flex justify-content-start align-items-center mr-2 "><input type="radio" id="radio_01" name="map_slect" class="ml-2 font-weight-bold"  type="checkbox" data-toggle="collapse" data-target="#ga_b" aria-expanded="true" aria-controls="collapseOne" ><span style="font-size: 14px;font-weight: 600; color: #000;">B</span></div>
                                 <div class="d-flex justify-content-start align-items-center mr-2 "><input type="radio" id="radio_01" name="map_slect" class="ml-2 font-weight-bold"  type="checkbox" data-toggle="collapse" data-target="#ga_c" aria-expanded="true" aria-controls="collapseOne" ><span style="font-size: 14px;font-weight: 600; color: #000;">C</span></div>

                            </span>
                        </div>
                        <div id="ga_a" aria-expanded="false" class="w-100 collapse show" >
                        <p class="mb-2 text-left"><span class="mr-2">&#187 WORLD;</span> <span class="mr-2"><%=UCase(trim(geoGraphis))%></span></p>
                         </div>
                    </div>

                      <!---BASE YEAR  SEGMENTS YEAR TO YEAR  MARKET MESURE ETC- -->
                    <div class="row mx-0 mb-2">
                        <!---BASE YEAR/SEGMENTS-->
                        <div class="d-flex flex-wrap mt-3  mb-2">
                            <h3 class="text-primary font-weight-bold text-dark w-xl-50 w-lg-50 w-md-100 w-sm-100 mb-2 text-left" style="line-height: normal;"><i class="mr-3"><i style="color:#169FE6 !important">BASE YEAR:</i> 2019</i></h3>
                            <h3 class="text-primary font-weight-bold text-dark w-xl-50 w-lg-50 w-md-100 w-sm-100 mb-2 text-left" style="line-height: normal;"><i class="mr-3"><i style="color:#169FE6 !important">SEGMENT:</i> BLUETOOTH</i></h3>
                            <h3 class="text-primary font-weight-bold text-dark w-xl-50 w-lg-50 w-md-100 w-sm-100 w-sm-100 mb-2 text-left" style="line-height: normal;"><i class="mr-3"><i style="color:#169FE6 !important">REGION/COUNTARY:</i> WORLD</i></h3>
                            <h3 class="text-primary font-weight-bold text-dark w-xl-50 w-lg-50 w-md-100 w-sm-100 mb-2 text-left" style="line-height: normal;"><i class="mr-3"><i style="color:#169FE6 !important">BASE YEAR GROWTH:</i> ##.#</i></h3>  
                        </div>


                        <div class="d-flex flex-column">
                            <div class="d-flex">
                                <h3 class="text-primary font-weight-bold text-dark mb-2" style="line-height: normal;"><i style="color:#169FE6 !important">Year To Year:</i> </h3> 
                                <input type="radio" name="Year To Year1" class="ml-2"> <h3 class="text-primary font-weight-bold text-center text-dark" style="line-height: normal; font-size: 15px !important;">GROWING</h3>
                                <input type="radio" name="Year To Year1" class="ml-2" checked > <h3 class="text-primary font-weight-bold text-center text-dark" style="line-height: normal; font-size: 15px !important;">DECLINING</h3>
                               
                             </div>
    
                             <div class="d-flex">
                                <h3 class="text-primary font-weight-bold text-dark mb-2" style="line-height: normal;"><i style="color:#169FE6 !important">Year To Year:</i> </h3> 
                                <input type="radio" name="Year To Year2" class="ml-2" checked> <h3 class="text-primary font-weight-bold text-center text-dark" style="line-height: normal; font-size: 15px !important;">POSITIVE</h3>
                                <input type="radio" name="Year To Year2" class="ml-2"> <h3 class="text-primary font-weight-bold text-center text-dark" style="line-height: normal; font-size: 15px !important;">NEGATIVE</h3>
                             </div>
    
                             <div class="d-flex">
                                <h3 class="text-primary font-weight-bold text-dark mb-2" style="line-height: normal;"><i style="color:#169FE6 !important">MARKET STAGING:</i> </h3> 
                                <input type="radio" name="marketstaging" class="ml-2" checked> <h3 class="text-primary font-weight-bold text-center text-dark" style="line-height: normal; font-size: 15px !important;">EVOLVING</h3>
                                <input type="radio" name="marketstaging" class="ml-2"> <h3 class="text-primary font-weight-bold text-center text-dark" style="line-height: normal; font-size: 15px !important;">MATURE</h3>
                             </div>
                         </div>
                   </div>


                   <!----RANGE SLIDER FOR  1 TO 100 % AND < 1 %----->

                   <div class="row mx-0 mb-2">


                    <div class="w-100">
                        <div class="d-flex  align-items-center">

                         <h4 class="w-lg-10 w-xl-10 w-md-10 w-sm-20 font-weight-bold text-center">1-100%</h4>

                            <div class="extra-controls w-lg-5 w-xl-5 w-md-10 w-sm-15 text-center">
                                <input type="text" class="js-input1" value="0" />
                            </div>
                            <div class="range-slider w-lg-85 w-xl-85 w-md-80 w-sm-65 text-center"> 
                                 <input type="text" class="js-range-slider1" data-max="100" data-min="0" data-from="0" data-step="0.5" data-skin="big"  data-type="single" data-grid="true" data-grid-num="10" />
                            </div>
                        </div>
                        
                        <script>
                            var $range1 = $(".js-range-slider1"),
                                $input1 = $(".js-input1"),
                                instance,
                                min = 0,
                                max = 100;
                        
                            $range1.ionRangeSlider({
                                onStart: function (data) {
                                    $input.prop("value", data.from);
                                },
                                onChange: function (data) {
                                    $input1.prop("value", data.from);
                                }
                            });
                            instance = $range.data("ionRangeSlider");
                            $input1.on("change keyup", function () {
                                var val = $(this).prop("value");
                        
                                // validate
                                if (val < data-min.value) {
                                    val = min;
                                } else if (val > max) {
                                    val = max;
                                }
                        
                                instance.update({
                                    from: val
                                });
                            });
                        </script>

                     </div>


                     <div class="w-100">
                        <div class="d-flex  align-items-center">

                            <h4 class="w-lg-10 w-xl-10 w-md-10 w-sm-20 font-weight-bold text-center" >&#60 1%</h4>
                            <div class="extra-controls w-lg-5 w-xl-5 w-md-10 w-sm-15 text-center">
                                <input type="text" class="js-input2" value="0" />
                            </div>
                            <div class="range-slider w-lg-85 w-xl-85 w-md-80 w-sm-65 text-center">  
                                <input type="text" class="js-range-slider2" data-max="1" data-min="0" data-from="0" data-step="0.1" data-skin="big"  data-type="single" data-grid="true" data-grid-num="10" />
                                
                            </div>


                            <script>
                                var $range2 = $(".js-range-slider2"),
                                    $input2 = $(".js-input2"),
                                    instance,
                                    min = 0,
                                    max = 1;
                            
                                $range2.ionRangeSlider({
                                    onStart: function (data) {
                                        $input.prop("value", data.from);
                                    },
                                    onChange: function (data) {
                                        $input2.prop("value", data.from);
                                    }
                                });
                                instance = $range.data("ionRangeSlider");
                                $input2.on("change keyup", function () {
                                    var val = $(this).prop("value");
                            
                                    // validate
                                    if (val < data-min.value) {
                                        val = min;
                                    } else if (val > max) {
                                        val = max;
                                    }
                            
                                    instance.update({
                                        from: val
                                    });
                                });
                            </script>
                        </div>

                        
                     </div>


                   </div>

					<hr>
			
			<%
			set YearRs=Server.CreateObject("ADODB.Recordset")
				YearSql="SELECT  GIA_No, H_StartYear, H_EndYear, CF_StartYear, CF_EndYear FROM CreateHeaders WHERE   (GIA_No = '" & GIA_NO & "')"
				'response.write YearSql
				'response.end
				YearRs.Open YearSql, DataSource7
				If Not YearRs.EOF Then
					HStartYear=trim(YearRs("H_StartYear"))
					HEndYear=trim(YearRs("H_EndYear"))
					CF_StartYear=trim(YearRs("CF_StartYear"))
					CF_EndYear=trim(YearRs("CF_EndYear"))
					
				end if
				SET YearRs=nothing
				
				
				''response.write HStartYear &  " "  & HEndYear
				''"select right(segment_id,charindex('-',reverse(segment_id))-1),* from vw_Report_Countries_AnalytixConsolidate$_cust where (gia_no='MCP-1557' )"
				''Global Query
				''select a.gia_no,b.region,sum(a.[2012]) as [2012],sum(a.[2013]) as [2013],sum(a.[2014]) as [2014],sum(a.[2015]) as [2015],sum(a.[2016]) as [2016],sum(a.[2017]) as [2017],sum(a.[2018]) as [2018],sum(a.[2019]) as [2019],sum(a.[2020]) as [2020],sum(a.[2021]) as [2021],sum(a.[2022]) as [2022],sum(a.[2023]) as [2023],sum(a.[2024]) as [2024],sum(a.[2025]) as [2025],sum(a.[2026]) as [2026],sum(a.[2027]) as [2027] from vw_GlobalByCountry_GL_Cust a,GIA_REGIONS_COUNTRIES$ b  where a.country_name=b.country_name and  gia_no='MCP-1557'  group by a.gia_no,b.region ORDER BY CASE WHEN b.region = 'Global' THEN 0 WHEN b.region = 'United States' THEN 1 WHEN b.region = 'Canada' THEN 2 WHEN b.region = 'Japan' THEN 3 WHEN b.region = 'China' THEN 4 WHEN b.region = 'Europe' THEN 5 WHEN b.region = 'France' THEN 6 WHEN b.region = 'Germany' THEN 7 WHEN b.region = 'Italy' THEN 8 WHEN b.region = 'United Kingdom'  THEN 9 WHEN b.region = 'Spain' THEN 10 WHEN b.region = 'Russia' THEN 11 WHEN b.region = 'Rest of Europe' THEN 12 WHEN b.region = 'Asia-Pacific' THEN 13 WHEN b.region = 'Australia' THEN 14 WHEN b.region = 'India' THEN 15 WHEN b.region = 'South Korea' THEN 16 WHEN b.region = 'Rest of Asia-Pacific' THEN 17 WHEN b.region = 'Latin America' THEN 18 WHEN b.region = 'Argentina' THEN 19 WHEN b.region = 'Brazil' THEN 20 WHEN b.region = 'Mexico' THEN 21 WHEN b.region = 'Rest of Latin America' THEN 22 WHEN b.region = 'Middle East' THEN 23 WHEN b.region = 'Iran' THEN 24 WHEN b.region = 'Israel' THEN 25 WHEN b.region = 'Saudi Arabia' THEN 26 WHEN b.region = 'United Arab Emirates' THEN 27 WHEN b.region = 'Rest of Middle East' THEN 28 WHEN b.region = 'Africa' THEN 29 WHEN b.region = 'Rest of World' THEN 30 END
				''segment type
				''select gia_no,max(segment_id),segment_type,sum([2012]) as [2012],sum([2013]) as [2013],sum([2014]) as [2014],sum([2015]) as [2015],sum([2016]) as [2016],sum([2017]) as [2017],sum([2018]) as [2018],sum([2019]) as [2019],sum([2020]) as [2020],sum([2021]) as [2021],sum([2022]) as [2022],sum([2023]) as [2023],sum([2024]) as [2024],sum([2025]) as [2025],sum([2026]) as [2026],sum([2027]) as [2027] from vw_Report_Countries_AnalytixConsolidate$_Cust where gia_no='MCP-1557' group by gia_no,segment_type order by max(right(segment_id,charindex('-',reverse(segment_id))-1) )
				''Segment wise
				''select gia_no,Segment_name,sum([2012]) as [2012],sum([2013]) as [2013],sum([2014]) as [2014],sum([2015]) as [2015],sum([2016]) as [2016],sum([2017]) as [2017],sum([2018]) as [2018],sum([2019]) as [2019],sum([2020]) as [2020],sum([2021]) as [2021],sum([2022]) as [2022],sum([2023]) as [2023],sum([2024]) as [2024],sum([2025]) as [2025],sum([2026]) as [2026],sum([2027]) as [2027] from vw_Report_Countries_AnalytixConsolidate$_Cust where gia_no='MCP-1557' group by gia_no,segment_name order by max(right(segment_id,charindex('-',reverse(segment_id))-1) )"
			%>
			<div class="w-100">
                        <div class="row mb-2">
                            <h3 class="text-primary font-weight-bold text-center mt-2">DATA SIMULATOR - MODULE B</h3> 
                        </div>

                        <div class="row mb-2">
                            <div class=" d-flex justify-content-center">
                                <h3 class="text-primary font-weight-bold text-center text-dark mr-2 " style="color:#169FE6 !important">SEGMENT:</h3> 

                                <select id="selSegment" name="selSegment" class="custome_select_option">
                            <!--<option value="">-- ALL --</option>-->
                                <%	set segmentRs=Server.CreateObject("ADODB.Recordset")
                                    segmentsql="SELECT name,type,segmentid  from vwReports_GIA_Segments$ where GIA_no='" & GIA_NO & "'"
                                    segmentRs.Open segmentsql, DataSource7
                                    If Not segmentRs.EOF Then
                                        while not segmentRs.EOF %>                                            
                                                        
                                            <option value="<%=segmentRs("name")%>" ><%=segmentRs("name")%></option>
                                        <%  segmentRs.MoveNext
                                            Wend
                                    
                                    end if
                                    set segmentRs=nothing
                                    %></select>

                            </div>

						     <div class=" d-flex justify-content-center">

							<h3 class="text-primary font-weight-bold text-center text-dark mr-2" style="color:#169FE6 !important">REGION/COUNTRY:</h3>

							 <select id="selSegment" name="selSegment"  class="custome_select_option" > 
							<option value="">-- UNITED STATE--</option>
							</select>
                             </div>
                        </div>

                        <div class="row mb-2">
                            <div class="d-flex d-flex justify-content-center align-items-center mr-3 mb-1 pl-1">
                            <input type="radio" name="radio_button"> <h3 class="text-primary font-weight-bold text-center text-dark mb-0" style="line-height: normal; font-size: 15px !important;">List Segments by Region/Country</h3>
                        </div>
                        <div class="d-flex d-flex justify-content-center align-items-center">
                            <input type="radio" name="radio_button"> <h3 class="text-primary font-weight-bold text-center text-dark mb-0" style="line-height: normal; font-size: 15px !important;">List Regions/Countries by Segment</h3>
                            </div>
                        </div>


                        <!----table begin-->

                        <div class="w-100">
                            <table id="ranking_table_01" class=" m-0 p-0 mx-0">
                                <thead class="font-weight-bold">
                                    <tr class="m-0 p-0">
                                        <th>
                                            <h4 class="ml-1 text-left">PERIOD </h4>
                                        </th>
                                        <th class="third_column">
                                            <h4 class="ml-1 text-center">YEAR </h4>
                                        </th>
                                        <td class="third_column">
                                            <h4 class="ml-1 text-center">MARKET</h4>
                                        </th>
                                        <th>
                                            <h4 class="ml-1 text-left d-flex justify-content-start">
                                                <sapn class="percent_input_block text-center">% </sapn><span
                                                class="ranking_slide_block text-center">DATA SIMULATOR</span>
                                            </h4>
                                        </th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>
                                            <h4 class="ml-1 text-left">BASE YEAR</h4>
                                        </td>
                                        <td class="second_column">
                                            <div class="d-flex align-items-center justify-content-start">
                                                <input type="checkbox" data-toggle="collapse" checked
                                                    data-target="#rate_01" aria-expanded="true"
                                                    aria-controls="collapseOne" class="mr-2">
                                                <h4 class="ml-0 h-100 align-items-top d-flex">2019</h4>
                                            </div>
                                        </td>

                                        <td class="third_column">
                                            <div class="w-100">
                                                <input type="text" class="ml-2 w-100" id="text_box"
                                                    style="font-weight: 100;" placeholder="###.##">
                                            </div>
                                        </td>


                                        <td>
                                            <div class="w-100">

                                                <div id="rate_01" aria-expanded="false"
                                                    class="w-100 collapse show ">
                                                    <div class=" w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input3 rank_input" value="0" />
                                                            </div>
                                                            <div  class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider3"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range3 = $(".js-range-slider3"),
                                                                    $input3 = $(".js-input3"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range3.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input3.prop("value", data
                                                                        .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input3.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>

                                                </div>

                                            </div>



                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <h4 class="ml-1 text-left">PANDEMIC</h4>
                                        </td>
                                        <td class="second_column">
                                           
                                            <div class="d-flex align-items-center justify-content-start">
                                                <input type="checkbox" data-toggle="collapse" checked
                                                    data-target="#rate_02" aria-expanded="true"
                                                    aria-controls="collapseOne" class="mr-2">
                                                <h4 class="ml-0 h-100 align-items-top d-flex">2020</h4>
                                            </div>

                                            <div class="d-flex align-items-center justify-content-start">
                                                <input type="checkbox" data-toggle="collapse" checked
                                                    data-target="#rate_03" aria-expanded="true"
                                                    aria-controls="collapseOne" class="mr-2">
                                                <h4 class="ml-0 h-100 align-items-top d-flex">2021</h4>
                                            </div>
                                        
                                        </td>

                                        <td class="third_column">
                                            <div class="w-100">
                                                <input type="text" class="ml-2 w-100" id="text_box"
                                                    style="font-weight: 100;" placeholder="###.##">
                                            </div>
                                            <div class="w-100">
                                                <input type="text" class="ml-2 w-100" id="text_box"
                                                    style="font-weight: 100;" placeholder="###.##">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="w-100">

                                                <div id="rate_02" aria-expanded="false"
                                                    class="w-100 collapse show ">
                                                    <div class="row w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input4" value="0" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider4"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range4 = $(".js-range-slider4"),
                                                                    $input4 = $(".js-input4"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range4.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input4.prop("value", data
                                                                        .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input4.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>

                                                </div>

                                            </div>

                                            <div class="W-100">
                                                <div id="rate_03" aria-expanded="false"
                                                    class="w-100 collapse show ">
                                                    <div class="w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input5" value="0" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider5"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range5 = $(".js-range-slider5"),
                                                                    $input5 = $(".js-input5"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range5.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input5.prop("value", data
                                                                        .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input5.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>

                                                </div>
                                            </div>



                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <h4 class="ml-1 text-left">RECOVERY</h4>
                                        </td>
                                        <td class="second_column">
                                            <div class="d-flex align-items-center justify-content-start">
                                                <input type="checkbox" data-toggle="collapse" checked
                                                    data-target="#rate_04" aria-expanded="true"
                                                    aria-controls="collapseOne" class="mr-2">
                                                <h4 class="ml-0 h-100 align-items-top d-flex">2022</h4>
                                            </div>

                                            <div class="d-flex align-items-center justify-content-start">
                                                <input type="checkbox" data-toggle="collapse" checked
                                                    data-target="#rate_05" aria-expanded="true"
                                                    aria-controls="collapseOne" class="mr-2">
                                                <h4 class="ml-0 h-100 align-items-top d-flex">2023</h4>
                                            </div>
                                        </td>
                                        <td class="third_column">
                                            <div class="w-100">
                                                <input type="text" class="ml-2 w-100" id="text_box"
                                                    style="font-weight: 100;" placeholder="###.##">
                                            </div>
                                            <div class="w-100">
                                                <input type="text" class="ml-2 w-100" id="text_box"
                                                    style="font-weight: 100;" placeholder="###.##">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="w-100">
                                                <div id="rate_04" aria-expanded="false"
                                                    class="w-100 collapse show ">
                                                    <div class="row w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input6" value="0" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider6"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range6 = $(".js-range-slider6"),
                                                                    $input6 = $(".js-input6"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range6.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input6.prop("value", data
                                                                        .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input6.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>
                                                </div>
                                            </div>

                                            <div class="w-100">
                                                <div id="rate_05" aria-expanded="false"
                                                    class="w-100 collapse show ">
                                                    <div class="row w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input17" value="0" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider17"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range17 = $(".js-range-slider17"),
                                                                    $input17 = $(".js-input17"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range17.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input17.prop("value", data
                                                                            .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input17.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>

                                                </div>
                                            </div>


                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <h4 class="ml-1 text-left">NORMALIZATION</h4>
                                        </td>
                                        <td class="second_column">
                                            <div class="d-flex align-items-center justify-content-start">
                                                <input type="checkbox" data-toggle="collapse" checked
                                                    data-target="#rate_06" aria-expanded="true"
                                                    aria-controls="collapseOne" class="mr-2">
                                                <h4 class="ml-0 h-100 align-items-top d-flex">2024</h4>
                                            </div>

                                            <div class="d-flex align-items-center justify-content-start">
                                                <input type="checkbox" data-toggle="collapse" checked
                                                    data-target="#rate_07" aria-expanded="true"
                                                    aria-controls="collapseOne" class="mr-2">
                                                <h4 class="ml-0 h-100 align-items-top d-flex">2025</h4>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-start">
                                                <input type="checkbox" data-toggle="collapse" checked
                                                    data-target="#rate_08" aria-expanded="true"
                                                    aria-controls="collapseOne" class="mr-2">
                                                <h4 class="ml-0 h-100 align-items-top d-flex">2026</h4>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-start">
                                                <input type="checkbox" data-toggle="collapse" checked
                                                    data-target="#rate_09" aria-expanded="true"
                                                    aria-controls="collapseOne" class="mr-2">
                                                <h4 class="ml-0 h-100 align-items-top d-flex">2027</h4>
                                            </div>
                                        </td>
                                        <td class="third_column">
                                            <div class="w-100">
                                                <input type="text" class="ml-2 w-100" id="text_box"
                                                    style="font-weight: 100;" placeholder="###.##">
                                            </div>
                                            <div class="w-100">
                                                <input type="text" class="ml-2 w-100" id="text_box"
                                                    style="font-weight: 100;" placeholder="###.##">
                                            </div>
                                            <div class="w-100">
                                                <input type="text" class="ml-2 w-100" id="text_box"
                                                    style="font-weight: 100;" placeholder="###.##">
                                            </div>
                                            <div class="w-100">
                                                <input type="text" class="ml-2 w-100" id="text_box"
                                                    style="font-weight: 100;" placeholder="###.##">
                                            </div>
                                        </td>
                                        <td>

                                            <div class="w-100">
                                                <div id="rate_06" aria-expanded="false"
                                                    class="w-100 collapse show ">
                                                    <div class="row w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input7" value="0" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider7"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range7 = $(".js-range-slider7"),
                                                                    $input = $(".js-input7"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range7.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input7.prop("value", data
                                                                        .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input7.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>

                                                </div>

                                            </div>

                                            <div class="w-100">
                                                <div id="rate_07" aria-expanded="false" class="w-100 collapse show">
                                                    <div class="row w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input8" value="0" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider8"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range8 = $(".js-range-slider8"),
                                                                    $input8 = $(".js-input8"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range8.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input8.prop("value", data
                                                                        .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input8.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>
                                                </div>
                                            </div>


                                            <div class="w-100">

                                                <div id="rate_08" aria-expanded="false"
                                                    class="w-100 collapse show ">
                                                    <div class="w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input9" value="0" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider9"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range9 = $(".js-range-slider9"),
                                                                    $input9 = $(".js-input9"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range9.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input9.prop("value", data
                                                                        .from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input9.prop("value", data
                                                                        .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input9.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>

                                                </div>
                                            </div>

                                            <div class="w-100">
                                                <div id="rate_09" aria-expanded="false"
                                                    class="w-100 collapse show mt-4  ">
                                                    <div class="w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div 
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input11" value="0" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider11"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range11 = $(".js-range-slider11"),
                                                                    $input11 = $(".js-input11"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range11.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input11.prop("value", data
                                                                            .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input11.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>

                                                </div>
                                            </div>

                                        </td>
                                    </tr>


                                </tbody>

                            </table>
                        </div>

                        <hr/>
                        <BR/>

                        <div class="row mb-2">
                            <h3 class="text-primary font-weight-bold text-center">COMPETITIVE MARKET METRICS - MODULE C</h3>
                        </div>

                        <div class="w-100">
                            <div class="row w-100 pt-0 pb-2 mb-2 mt-0  ">
                                <!---COPY FROM HERE -->
                                <div class="mt-3 position-relative pb-3 d-flex flex-column">
        
                                    <table id="competitive_metrics_table">
                                        <!---TABLE HEADER-->
                                        <thead class="font-weight-bold">
                                            <tr class="m-0 p-0">
                                                <th>
                                                    <h4>COMPANY</h4>
                                                </th>
                                                <th>
                                                    <div class="d-flex flex-column my-0">
                                                        <!--h4 class="text-center border-bottom">WORLD RANK & SHARE</h4-->
                                                        <div class="d-flex w-100 justify-content-center mt-0">
                                                            <span class="short_text ">D
                                                                <!---a herf="javascript:void(0)"
                                                                    class="text-primary"><i
                                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                                        title="Dominant"></i></a--->
                                                            </span>
                                                            <span class="short_text">S
                                                                <!---a herf="javascript:void(0)"
                                                                    class="text-primary"><i
                                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                                        title="Strong"></i></a--->
                                                            </span>
                                                            <span class="short_text ">N
                                                                <!---a herf="javascript:void(0)"
                                                                    class="text-primary"><i
                                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                                        title="Niche"></i></a--->
                                                            </span>
                                                            <span class="short_text   ">T
                                                                <!--a herf="javascript:void(0)"
                                                                    class="text-primary"><i
                                                                        class="fa fa-info-circle  i5 message tooltippopup "
                                                                        title="Trivial"></i></a-->
                                                            </span>
        
                                                        </div>
                                                    </div>
        
                                                </th>
                                                <th>
        
                                                    <h4 class="text-left ml-3"> %</h4>
                                                </th>
                                            </tr>
                                        </thead>
        
                                        <!---TABLE BODY-->
        
                                        <tbody>
                                            <!---ROW BEGIN-->
                                            <tr>
                                                <td>
                                                    <div class="d-flex justify-content-start align-items-center">
                                                        <div class="img_block mr-2 ml-0">
                                                            <a href="#exCP-100005" rel="modal:open"> <img
                                                                    src="https://www.strategyr.com/uploads/images/CP-100005/images (1).png"
                                                                    style="background-color:#f1f1f1; width:100%;"
                                                                    class="img-fluid"></a>
                                                        </div>
                                                        <h4 title="" class="text-left">Flexitricity Limited</h4>
                                                    </div>
        
        
                                                </td>
                                                <td>
        
                                                    <div class="d-flex w-100 justify-content-center">
                                                        <span class="short_text ">
        
                                                            <input type="radio" name="RtypeCP-405967" id="RtypeCP-4059671"
                                                                value="Dominant" class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio" name="RtypeCP-4059671"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio" name="RtypeCP-4059671"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio" checked name="RtypeCP-4059671"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <!--div class="js-example-class w-100 pb-4">
                                                       
                                                    </div-->
        
        
                                                    <div class="w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div 
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input12" value="0" style="height: 25px;  padding: 0px ; text-align: center; margin-top:19px" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider12"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range12 = $(".js-range-slider12"),
                                                                    $input12 = $(".js-input12"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range12.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input12.prop("value", data
                                                                            .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input12.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>
        
        
                                                    </th>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <div class="d-flex justify-content-start align-items-center">
                                                        <div class="img_block mr-2 ml-0">
                                                            <a href="#exCP-100005" rel="modal:open"> <img
                                                                    src="https://marketglass.com/uploads/images/v/4/3/b/8/logo.png"
                                                                    style="background-color:#f1f1f1; width:100%;"
                                                                    class="img-fluid"></a>
                                                        </div>
                                                        <h4 title="" class="text-left">Alliance Medical Group</h4>
                                                    </div>
        
        
                                                </td>
                                                <td>
        
                                                    <div class="d-flex w-100 justify-content-center">
                                                        <span class="short_text ">
        
                                                            <input type="radio" name="RtypeCP-405967" id="RtypeCP-4059672"
                                                                value="Dominant" checked class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio" name="RtypeCP-4059672"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                        <sp2an class="short_text "><input type="radio" name="RtypeCP-4059672"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></sp2an>
                                                        <span class="short_text "><input type="radio"  name="RtypeCP-405967"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <!--div class="js-example-class w-100 pb-4">
                                                       
                                                    </div-->
        
        
                                                    <div class="w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div 
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input13" value="0" style="height: 25px;  padding: 0px ; text-align: center; margin-top:19px" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider13"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range13 = $(".js-range-slider13"),
                                                                    $input13 = $(".js-input13"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range13.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input13.prop("value", data
                                                                            .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input13.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>
        
        
                                                    </th>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <div class="d-flex justify-content-start align-items-center">
                                                        <div class="img_block mr-2 ml-0">
                                                            <a href="#exCP-100005" rel="modal:open"> <img
                                                                    src="https://www.strategyr.com/uploads/images/CP-482164/ABX%20advanced%20biochemical%20compounds.jpg"
                                                                    style="background-color:#f1f1f1; width:100%;"
                                                                    class="img-fluid"></a>
                                                        </div>
                                                        <h4 title="" class="text-left"> ABX advanced biochemical compounds GmbH</h4>
                                                    </div>
        
        
                                                </td>
                                                <td>
        
                                                    <div class="d-flex w-100 justify-content-center">
                                                        <span class="short_text ">
        
                                                            <input type="radio" name="RtypeCP-405967" id="RtypeCP-4059673"
                                                                value="Dominant" class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio" name="RtypeCP-4059673"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio" name="RtypeCP-4059673"
                                                                id="RtypeCP-405968" value="Dominant" checked  class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio"  name="RtypeCP-4059673"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <!--div class="js-example-class w-100 pb-4">
                                                       
                                                    </div-->
        
        
                                                    <div class="w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div 
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input14" value="0" style="height: 25px;  padding: 0px ; text-align: center; margin-top:19px" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider14"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range14 = $(".js-range-slider14"),
                                                                    $input14 = $(".js-input14"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range14.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input14.prop("value", data
                                                                            .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input14.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>
        
        
                                                    </th>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <div class="d-flex justify-content-start align-items-center">
                                                        <div class="img_block mr-2 ml-0">
                                                            <a href="#exCP-100005" rel="modal:open"> <img
                                                                    src="https://marketglass.com/uploads/images/j/n/z/v/d/o7r0klbq-400x400.jpeg"
                                                                    style="background-color:#f1f1f1; width:100%;"
                                                                    class="img-fluid"></a>
                                                        </div>
                                                        <h4 title="" class="text-left">Advanced Accelerator Applications SA</h4>
                                                    </div>
        
        
                                                </td>
                                                <td>
        
                                                    <div class="d-flex w-100 justify-content-center">
                                                        <span class="short_text ">
        
                                                            <input type="radio" name="RtypeCP-405967" id="RtypeCP-4059674"
                                                                value="Dominant" class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio" checked name="RtypeCP-4059674"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio" name="RtypeCP-4059674"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                        <span class="short_text "><input type="radio" name="RtypeCP-4059674"
                                                                id="RtypeCP-405968" value="Dominant" class="p-0 mr-1"></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <!--div class="js-example-class w-100 pb-4">
                                                       
                                                    </div-->
        
        
                                                    <div class="w-100">
                                                        <div class="d-flex  align-items-top">
                                                            <div 
                                                                class="extra-controls w-xl-10 w-lg-10 w-md-10 w-sm-100 text-center  percent_input_block  ">
                                                                <input type="text" class="js-input15" value="0" style="height: 25px;  padding: 0px ; text-align: center; margin-top:19px" />
                                                            </div>
                                                            <div
                                                                class="range-slider table_range_slider ranking_slide_block w-lg-90 w-xl-90 w-md-90 w-sm-80 text-center mt-0 pt-0">
                                                                <input type="text" class="js-range-slider15"
                                                                    data-max="100" data-min="0" data-from="0"
                                                                    data-step="0.5" data-skin="big"
                                                                    data-type="single" data-grid="true"
                                                                    data-grid-num="10" />

                                                            </div>
                                                            <script>
                                                                var $range15 = $(".js-range-slider15"),
                                                                    $input15 = $(".js-input15"),
                                                                    instance,
                                                                    min = 0,
                                                                    max = 100;

                                                                $range15.ionRangeSlider({
                                                                    onStart: function (data) {
                                                                        $input.prop("value", data.from);
                                                                    },
                                                                    onChange: function (data) {
                                                                        $input15.prop("value", data
                                                                            .from);
                                                                    }
                                                                });
                                                                instance = $range.data("ionRangeSlider");
                                                                $input15.on("change keyup", function () {
                                                                    var val = $(this).prop("value");

                                                                    // validate
                                                                    if (val < data - min.value) {
                                                                        val = min;
                                                                    } else if (val > max) {
                                                                        val = max;
                                                                    }

                                                                    instance.update({
                                                                        from: val
                                                                    });
                                                                });
                                                            </script>
                                                        </div>


                                                    </div>
        
        
                                                    </th>
                                                </td>
                                            </tr>
        
        
                                        </tbody>
                                    </table>
                                    <div class="border-0 font-weight-bold" id="competitive_metrics_table"
                                        style="font-size: 14px !important;font-style: color:#000; font-weight:500; margin-top:10px !important">
                                        <sapn class="text-danger">*</sapn> D = Dominant; S = Strong; N = Niche; T =
                                        Trivial (&#60 1%)
                                    </div>
        
                                    <div class="border-0 font-weight-bold" id="competitive_metrics_table"
                                        style="font-size: 12px !important;font-style: italic; margin-top:0px !important">
                                        <sapn class="text-danger">*</sapn> Validated participants will receive
                                        complimentary Cluster data by email
                                    </div>
                            </div>
                        </div>






                         </div>
                    <!---END: INFLUENCER AREA -->


                        <div class="w-100 text-center mt-3 mb-3">
                            <a href="#" target="new" class="btn rounded-0 p-2 shadow inf_btn  " data-toggle="collapse" data-target="" aria-expanded="true" aria-controls="collapseOne" type="button">
                                SUBMIT
                            </a>
                        </div>

                    </div>
        <!---END REPORT TITLE--->
       </div>
	  </main>
	  </div>
				
				
				
			
			
	   </div>
	</div>
	<!--#include file="ASPIncludes/BottomStrip.asp"-->
        <!---END:PAGE CONTENT--->
        <!-- Footer
================================================== -->
        <!-- Footer / Start -->
     
		
   <script src="https://code.jquery.com/jquery-3.5.1.js"  crossorigin="anonymous"></script>
    <script src="https://www.strategyr.com/scripts/bootstrap.bundle.js"></script>		
 


		<script src="js/al-range-slider.js"></script>
			<script>
			  $('.basic').alRangeSlider();
			  const options = {
			  range: { min: 0, max: 100, step:0.5 },
			 
			  grid: { minTicksStep: 1, marksStep: 5 },
			  theme: "dark",
			};
			$('.js-example-class').alRangeSlider(options);
			const options2 = {
			  orientation: "vertical"
			};
			$('.vertical').alRangeSlider(options2);
			</script>


</body>

</html>
