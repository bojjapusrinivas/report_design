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
	  
      <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
	  <!---link rel="stylesheet" href="https://www.strategyr.com/css/MARKET_DATA_SIMULATOR_STYLES.css"/--->
      <link rel="stylesheet" href="https://www.strategyr.com/css/range_slider_tables.css"/>
      
	  
    <!-- Java Script
================================================== -->

    <script src="https://www.strategyr.com/scripts/jquery.easing.1.3.js"></script>
    <script src="https://www.strategyr.com/scripts/jquery.contact.js"></script>
    <script src="https://www.strategyr.com/scripts/jquery.isotope.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    
  
<!--- accordion2 script ---->
<script type="text/javascript">
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

<script type="text/javascript">
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
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>


                   <!----RANGE SLIDER FOR  1 TO 100 % AND < 1 %----->

                   <div class="row mx-0 mb-2">


                    <div class="row w-100">
                        <div class="d-flex  align-items-center">

                            <h4 class="w-lg-10 w-xl-10 w-md-10 w-sm-20 font-weight-bold text-center">1-100%</h4>

                            <div class="w-lg-5 w-xl-5 w-md-10 w-sm-15 text-center">
                                <div class="extra-controls">
                                    <input type="text" class="js-input rank_input"
                                        value="" id="example_permore_input" />
                                </div>
                            </div>
                            <div class=" w-lg-85 w-xl-85 w-md-80 w-sm-65 ml-3 text-center">
                                <div class="range-slider">
                                    <input type="text" class="js-range-slider"
                                        id="example_permore" />

                                </div>
                            </div>

                          
                        </div>
                        <script>
                            var $rangepermore = $("#example_permore");
                            var $inputpermore = $("#example_permore_input");
                            var instance;
                            var min = 0;
                            var max = 100;

                            $rangepermore.ionRangeSlider({
                                skin: "big",
                                type: "single",
                                min: min,
                                max: max,
                                from: 0,
                                grid: true,
                                step: 0.5,
                                grid_num: 10,

                                onStart: function (data) {
                                    $inputpermore.prop("value", data
                                        .from);
                                },
                                onChange: function (data) {
                                    $inputpermore.prop("value", data
                                        .from);
                                }
                            });

                            instance = $rangepermore.data("ionRangeSlider");

                            $inputpermore.on("input", function () {
                                var val = $(this).prop("value");

                                // validate
                                if (val < min) {
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


                    <div class="row w-100">
                        <div class="d-flex  align-items-center">

                            <h4 class="w-lg-10 w-xl-10 w-md-10 w-sm-20 font-weight-bold text-center">&#60 1%</h4>
                            <div class="w-lg-5 w-xl-5 w-md-10 w-sm-15 text-center">
                                <div class="extra-controls">
                                    <input type="text" class="js-input rank_input"
                                        value="" id="example_perless_input" />
                                </div>
                            </div>
                            <div class=" w-lg-85 w-xl-85 w-md-80 w-sm-65 ml-3 text-center">
                                <div class="range-slider">
                                    <input type="text" class="js-range-slider"
                                        id="example_perless" />

                                </div>
                            </div>

                            </div>


                            <script>
                                var $rangeperless = $("#example_perless");
                                var $inputperless = $("#example_perless_input");
                                var instance;
                                var min = 0;
                                var max = 100;

                                $rangeperless.ionRangeSlider({
                                    skin: "big",
                                    type: "single",
                                    min: min,
                                    max: max,
                                    from: 0,
                                    grid: true,
                                    step: 0.5,
                                    grid_num: 10,

                                    onStart: function (data) {
                                        $inputperless.prop("value", data
                                            .from);
                                    },
                                    onChange: function (data) {
                                        $inputperless.prop("value", data
                                            .from);
                                    }
                                });

                                instance = $rangeperless.data("ionRangeSlider");

                                $inputperless.on("input", function () {
                                    var val = $(this).prop("value");

                                    // validate
                                    if (val < min) {
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
                            <div id="data_simulator_table">
                                <table class="w-100">
                                    <thead>
                                        <tr>
                                            <th>
                                                <div class="col-01">
                                                    <h4>PERIOD</h4>
                                                </div>
                                            </th>
                                            <th>
                                                <div class="d-flex">
                                                    <div class="col-02">
                                                        <h4>YEAR</h4>
                                                    </div>
                                                    <div class="col-03">
                                                        <h4>MARKET</h4>
                                                    </div>
                                                    <div class="col-04">
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

                                        <!---row one-->

                                        <tr>
                                            <td>
                                                <h4 class="ml-1 text-left">BASE YEAR</h4>
                                            </td>
                                            <td>
                                                <div class="d-flex">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <input type="checkbox" data-toggle="collapse" checked=""
                                                            data-target="#rate_01" aria-expanded="true"
                                                            aria-controls="collapseOne" class="mr-2">
                                                        <h4 class="ml-0 h-100 align-items-top d-flex">2019</h4>
                                                    </div>
                                                    <!--THIRD COLUMN-->
                                                    <div class="col-03">
                                                        <input type="text" class="ml-2 " id="text_box"
                                                            style="font-weight:100;" placeholder="##.##" maxlength="5">
                                                    </div>

                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-04">
                                                        <div id="rate_01" aria-expanded="false"
                                                            class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <input type="text" class="js-input rank_input"
                                                                        value="" id="example_1_input" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_1" />

                                                                </div>
                                                                <script>
                                                                    var $range1 = $("#example_1");
                                                                    var $input1 = $("#example_1_input");
                                                                    var instance1;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range1.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 50,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input1.prop("value", data
                                                                            .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input1.prop("value", data
                                                                            .from);
                                                                        }
                                                                    });

                                                                    instance1= $range1.data("ionRangeSlider");

                                                                    $input1.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance1.update({
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

                                        <!---row two-->
                                        <tr>
                                            <td>
                                                <h4 class="ml-1 text-left">PANDEMIC</h4>
                                            </td>
                                            <td>
                                                <div class="d-flex">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <input type="checkbox" data-toggle="collapse" checked=""
                                                            data-target="#rate_02" aria-expanded="true"
                                                            aria-controls="collapseOne" class="mr-2">
                                                        <h4 class="ml-0 h-100 align-items-top d-flex">2020</h4>
                                                    </div>
                                                    <!--THIRD COLUMN-->
                                                    <div class="col-03">
                                                        <input type="text" class="ml-2 " id="text_box"
                                                            style="font-weight:100;" placeholder="##.##" maxlength="5">
                                                    </div>

                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-04">
                                                        <div id="rate_02" aria-expanded="false"
                                                            class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <input type="text" class="js-input rank_input"
                                                                        value="" id="example_2_input" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_2" />

                                                                </div>
                                                                <script>
                                                                    var $range2 = $("#example_2");
                                                                    var $input2 = $("#example_2_input");
                                                                    var instance2;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range2.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 75,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input2.prop("value", data
                                                                            .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input2.prop("value", data
                                                                            .from);
                                                                        }
                                                                    });

                                                                    instance2 = $range2.data("ionRangeSlider");

                                                                    $input2.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance2.update({
                                                                            from: val
                                                                        });
                                                                        $(this).prop("value", val);
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex mt-1">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <input type="checkbox" data-toggle="collapse" checked=""
                                                            data-target="#rate_03" aria-expanded="true"
                                                            aria-controls="collapseOne" class="mr-2">
                                                        <h4 class="ml-0 h-100 align-items-top d-flex">2021</h4>
                                                    </div>
                                                    <!--THIRD COLUMN-->
                                                    <div class="col-03">
                                                        <input type="text" class="ml-2 " id="text_box"
                                                            style="font-weight:100;" placeholder="##.##" maxlength="5">
                                                    </div>

                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-04">
                                                        <div id="rate_03" aria-expanded="false"
                                                            class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <input type="text" class="js-input4 rank_input"
                                                                        id="example_3_input" value="0" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_3" />

                                                                </div>
                                                                <script>
                                                                    var $range3 = $("#example_3");
                                                                    var $inpu3 = $("#example_3_input");
                                                                    var instance3;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range3.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 15,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $inpu3.prop("value", data.from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $inpu3.prop("value", data.from);
                                                                        }
                                                                    });

                                                                    instance3 = $range3.data("ionRangeSlider");

                                                                    $inpu3.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance3.update({
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

                                        <!--row three-->
                                        <tr>
                                            <td>
                                                <h4 class="ml-1 text-left">RECOVERY</h4>
                                            </td>
                                            <td>
                                                <div class="d-flex">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <input type="checkbox" data-toggle="collapse" checked=""
                                                            data-target="#rate_04" aria-expanded="true"
                                                            aria-controls="collapseOne" class="mr-2">
                                                        <h4 class="ml-0 h-100 align-items-top d-flex">2022</h4>
                                                    </div>
                                                    <!--THIRD COLUMN-->
                                                    <div class="col-03">
                                                        <input type="text" class="ml-2 " id="text_box"
                                                            style="font-weight:100;" placeholder="##.##" maxlength="5">
                                                    </div>

                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-04">
                                                        <div id="rate_04" aria-expanded="false"
                                                            class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <input type="text" class="js-input4 rank_input"
                                                                        id="example_4_input" value="0" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_4" />

                                                                </div>
                                                                <script>
                                                                    var $range4 = $("#example_4");
                                                                    var $input4 = $("#example_4_input");
                                                                    var instance4;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range4.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 20,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input4.prop("value", data
                                                                            .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input4.prop("value", data
                                                                            .from);
                                                                        }
                                                                    });

                                                                    instance4 = $range4.data("ionRangeSlider");

                                                                    $input4.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance4.update({
                                                                            from: val
                                                                        });
                                                                        $(this).prop("value", val);
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex mt-1">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <input type="checkbox" data-toggle="collapse" checked=""
                                                            data-target="#rate_05" aria-expanded="true"
                                                            aria-controls="collapseOne" class="mr-2">
                                                        <h4 class="ml-0 h-100 align-items-top d-flex">2023</h4>
                                                    </div>
                                                    <!--THIRD COLUMN-->
                                                    <div class="col-03">
                                                        <input type="text" class="ml-2 " id="text_box"
                                                            style="font-weight:100;" placeholder="##.##" maxlength="5">
                                                    </div>

                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-04">
                                                        <div id="rate_05" aria-expanded="false"
                                                            class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <input type="text" class="js-input4 rank_input"
                                                                        id="example_5_input" value="0" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_5" />

                                                                </div>
                                                                <script>
                                                                    var $range5 = $("#example_5");
                                                                    var $input5 = $("#example_5_input");
                                                                    var instance5;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range5.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 40,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input5.prop("value", data
                                                                            .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input5.prop("value", data
                                                                            .from);
                                                                        }
                                                                    });

                                                                    instance5 = $range5.data("ionRangeSlider");

                                                                    $input5.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance5.update({
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

                                        <!--row FOUR-->
                                        <tr>
                                            <td>
                                                <h4 class="ml-1 text-left">NORMALIZATION</h4>
                                            </td>
                                            <td>
                                                <div class="d-flex">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <input type="checkbox" data-toggle="collapse" checked=""
                                                            data-target="#rate_06" aria-expanded="true"
                                                            aria-controls="collapseOne" class="mr-2">
                                                        <h4 class="ml-0 h-100 align-items-top d-flex">2024</h4>
                                                    </div>
                                                    <!--THIRD COLUMN-->
                                                    <div class="col-03">
                                                        <input type="text" class="ml-2 " id="text_box"
                                                            style="font-weight:100;" placeholder="##.##" maxlength="5">
                                                    </div>

                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-04">
                                                        <div id="rate_06" aria-expanded="false"
                                                            class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <input type="text" class="js-input4 rank_input"
                                                                        id="example_6_input" value="0" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_6" />

                                                                </div>
                                                                <script>
                                                                    var $range6 = $("#example_6");
                                                                    var $input6 = $("#example_6_input");
                                                                    var instance6;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range6.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 23,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input6.prop("value", data
                                                                            .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input6.prop("value", data
                                                                            .from);
                                                                        }
                                                                    });

                                                                    instance6 = $range6.data("ionRangeSlider");

                                                                    $input6.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance6.update({
                                                                            from: val
                                                                        });
                                                                        $(this).prop("value", val);
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex mt-1">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <input type="checkbox" data-toggle="collapse" checked=""
                                                            data-target="#rate_07" aria-expanded="true"
                                                            aria-controls="collapseOne" class="mr-2">
                                                        <h4 class="ml-0 h-100 align-items-top d-flex">2005</h4>
                                                    </div>
                                                    <!--THIRD COLUMN-->
                                                    <div class="col-03">
                                                        <input type="text" class="ml-2 " id="text_box"
                                                            style="font-weight:100;" placeholder="##.##" maxlength="5">
                                                    </div>

                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-04">
                                                        <div id="rate_07" aria-expanded="false"
                                                            class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <input type="text" class="js-input4 rank_input"
                                                                        id="example_7_input" value="0" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_7" />

                                                                </div>
                                                                <script>
                                                                    var $range7 = $("#example_7");
                                                                    var $input7 = $("#example_7_input");
                                                                    var instance7;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range7.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 18,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input7.prop("value", data
                                                                            .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input7.prop("value", data
                                                                            .from);
                                                                        }
                                                                    });

                                                                    instance7 = $range7.data("ionRangeSlider");

                                                                    $input7.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance7.update({
                                                                            from: val
                                                                        });
                                                                        $(this).prop("value", val);
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex mt-1">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <input type="checkbox" data-toggle="collapse" checked=""
                                                            data-target="#rate_08" aria-expanded="true"
                                                            aria-controls="collapseOne" class="mr-2">
                                                        <h4 class="ml-0 h-100 align-items-top d-flex">2026</h4>
                                                    </div>
                                                    <!--THIRD COLUMN-->
                                                    <div class="col-03">
                                                        <input type="text" class="ml-2 " id="text_box"
                                                            style="font-weight:100;" placeholder="##.##" maxlength="5">
                                                    </div>

                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-04">
                                                        <div id="rate_08" aria-expanded="false"
                                                            class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <input type="text" class="js-input4 rank_input"
                                                                        id="example_8_input" value="0" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_8" />

                                                                </div>
                                                                <script>
                                                                    var $range8 = $("#example_8");
                                                                    var $input8 = $("#example_8_input");
                                                                    var instance8;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range8.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 10,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input8.prop("value", data
                                                                            .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input8.prop("value", data
                                                                            .from);
                                                                        }
                                                                    });

                                                                    instance8= $range8.data("ionRangeSlider");

                                                                    $input8.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance8.update({
                                                                            from: val
                                                                        });
                                                                        $(this).prop("value", val);
                                                                    });
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex mt-1">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <input type="checkbox" data-toggle="collapse" checked=""
                                                            data-target="#rate_09" aria-expanded="true"
                                                            aria-controls="collapseOne" class="mr-2">
                                                        <h4 class="ml-0 h-100 align-items-top d-flex">2027</h4>
                                                    </div>
                                                    <!--THIRD COLUMN-->
                                                    <div class="col-03">
                                                        <input type="text" class="ml-2 " id="text_box"
                                                            style="font-weight:100;" placeholder="##.##" maxlength="5">
                                                    </div>

                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-04">
                                                        <div id="rate_09" aria-expanded="false"
                                                            class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <input type="text" class="js-input4 rank_input"
                                                                        id="example_9_input" value="0" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_9" />

                                                                </div>
                                                                <script>
                                                                    var $range9 = $("#example_9");
                                                                    var $input9 = $("#example_9_input");
                                                                    var instance9;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range9.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 20,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input9.prop("value", data
                                                                            .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input9.prop("value", data
                                                                            .from);
                                                                        }
                                                                    });

                                                                    instance9 = $range9.data("ionRangeSlider");

                                                                    $input9.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance9.update({
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



                                    </tbody>


                                </table>
                            </div>
                        </div>

                        <hr/>
                        <BR/>

                        <div class="row mb-2">
                            <h3 class="text-primary font-weight-bold text-center">COMPETITIVE MARKET METRICS - MODULE C</h3>
                        </div>

                        <div class="row mb-2">


                            <div class="w-100">
                                <div class="chosen-wrapper" data-js="custom-scroll">
                                    <select class="chosen-select" data-placeholder="WORLD RANK & SHARE">
                                        <option></option>
                                        <option value="volvo" class="list_01">WORLD RANK & SHARE</option>
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
                            </div>
    
                        </div>


                        <div class="w-100">
                            <div id="competitive_table">

                                <table class="w-100">
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

                                                        <span>S</span>
                                                        <span>M</span>
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

                                        <tr>
                                            <td>
                                                <div class="col-01">
                                                    <div class="img_block">
                                                        <img src="https://marketglass.com/uploads/images/v/4/3/b/8/logo.png" class="img-fluid"/>
                                                    </div>  

                                                    <h4 class="ml-1 text-left">Alliance Medical Group</h4>
                                                </div>
                                              
                                            </td>
                                            <td>
                                                <div class="d-flex">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <span><i>S</i><input type="radio" name="ra_01" /></span>
                                                        <span><i>M</i><input type="radio" name="ra_01" /></span>
                                                        <span><i>N</i><input type="radio" name="ra_01"checked /></span>
                                                        <span><i>T</i><input type="radio" name="ra_01" /></span>
                                                    </div>
                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-03">
                                                        <div aria-expanded="false" class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <i class="percentage_icon">%</i>
                                                                    <input type="text" class="js-input rank_input"
                                                                        value="" id="example_10_input" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_10" />

                                                                </div>
                                                                <script>
                                                                    var $range10 = $("#example_10");
                                                                    var $input10 = $("#example_10_input");
                                                                    var instance10;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range10.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 4,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input10.prop("value", data
                                                                                .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input10.prop("value", data
                                                                                .from);
                                                                        }
                                                                    });

                                                                    instance10 = $range10.data("ionRangeSlider");

                                                                    $input10.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance10.update({
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

                                        <tr>
                                            <td>
                                                <div class="col-01">
                                                    <div class="img_block">
                                                        <img src="https://www.strategyr.com/uploads/images/CP-482164/ABX%20advanced%20biochemical%20compounds.jpg" class="img-fluid"/>
                                                    </div>  

                                                    <h4 class="ml-1 text-left">ABX advanced biochemical compounds GmbH</h4>
                                                </div>
                                              
                                            </td>
                                            <td>
                                                <div class="d-flex">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <span><i>S</i><input type="radio" name="ra_02" /></span>
                                                        <span><i>M</i><input type="radio" name="ra_02" checked/></span>
                                                        <span><i>N</i><input type="radio" name="ra_02" /></span>
                                                        <span><i>T</i><input type="radio" name="ra_02" /></span>
                                                    </div>
                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-03">
                                                        <div aria-expanded="false" class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <i class="percentage_icon">%</i>
                                                                    <input type="text" class="js-input rank_input"
                                                                        value="" id="example_11_input" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_11" />

                                                                </div>
                                                                <script>
                                                                    var $range11 = $("#example_11");
                                                                    var $input11 = $("#example_11_input");
                                                                    var instance11;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range11.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 19.5,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input11.prop("value", data
                                                                                .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input11.prop("value", data
                                                                                .from);
                                                                        }
                                                                    });

                                                                    instance11 = $range11.data("ionRangeSlider");

                                                                    $input11.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance11.update({
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
                                                <div class="col-01">
                                                    <div class="img_block">
                                                        <img src="https://www.strategyr.com/uploads/images/CP-100005/images%20(1).png" class="img-fluid"/>
                                                    </div>  

                                                    <h4 class="ml-1 text-left">3D Imaging, LLC-Drug Design</h4>
                                                </div>
                                              
                                            </td>
                                            <td>
                                                <div class="d-flex">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <span><i>S</i><input type="radio" name="ra_03" checked /></span>
                                                        <span><i>M</i><input type="radio" name="ra_03" /></span>
                                                        <span><i>N</i><input type="radio" name="ra_03" /></span>
                                                        <span><i>T</i><input type="radio" name="ra_03" /></span>
                                                    </div>
                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-03">
                                                        <div aria-expanded="false" class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <i class="percentage_icon">%</i>
                                                                    <input type="text" class="js-input rank_input"
                                                                        value="" id="example_12_input" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"S
                                                                        id="example_12" />

                                                                </div>
                                                                <script>
                                                                    var $range12 = $("#example_12");
                                                                    var $input12 = $("#example_12_input");
                                                                    var instance12;
                                                                    var min = 0;
                                                                    var max = 100;
                                                                    var input_put_value12 = $("#example_12_input").val

                                                                    $range12.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 29,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input12.prop("value", data
                                                                                .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input12.prop("value", data
                                                                                .from);
                                                                        }
                                                                    });

                                                                    instance12 = $range12.data("ionRangeSlider");

                                                                    $input10.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance12.update({
                                                                            from: input_put_value12
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

                                        <tr>
                                            <td>
                                                <div class="col-01">
                                                    <div class="img_block">
                                                        <img src="https://marketglass.com/uploads/images/j/n/z/v/d/o7r0klbq-400x400.jpeg" class="img-fluid"/>
                                                    </div>  

                                                    <h4 class="ml-1 text-left">Advanced Accelerator Applications SA</h4>
                                                </div>
                                              
                                            </td>
                                            <td>
                                                <div class="d-flex">
                                                    <!--SECOND COLUMN-->
                                                    <div class="col-02">
                                                        <span><i>S</i><input type="radio" name="ra_04"  /></span>
                                                        <span><i>M</i><input type="radio" name="ra_04" /></span>
                                                        <span><i>N</i><input type="radio" name="ra_04" /></span>
                                                        <span><i>T</i><input type="radio" name="ra_04" checked /></span>
                                                    </div>
                                                    <!--FOURTH COLUMN-->
                                                    <div class="col-03">
                                                        <div aria-expanded="false" class="w-100 collapse show ">
                                                            <div class="d-flex justify-content-start">
                                                                <div class="extra-controls percent_block">
                                                                    <i class="percentage_icon">%</i>
                                                                    <input type="text" class="js-input rank_input"
                                                                        value="" id="example_13_input" />
                                                                </div>
                                                                <div class="range-slider simulator_block">
                                                                    <input type="text" class="js-range-slider"
                                                                        id="example_13" />

                                                                </div>
                                                                <script>
                                                                    var $range13 = $("#example_13");
                                                                    var $input13 = $("#example_13_input");
                                                                    var instance13;
                                                                    var min = 0;
                                                                    var max = 100;

                                                                    $range13.ionRangeSlider({
                                                                        skin: "big",
                                                                        type: "single",
                                                                        min: min,
                                                                        max: max,
                                                                        from: 1,
                                                                        grid: true,
                                                                        step: 0.5,
                                                                        grid_num: 10,

                                                                        onStart: function (data) {
                                                                            $input13.prop("value", data
                                                                                .from);
                                                                        },
                                                                        onChange: function (data) {
                                                                            $input13.prop("value", data
                                                                                .from);
                                                                        }
                                                                    });

                                                                    instance = $range13.data("ionRangeSlider");

                                                                    $input13.on("input", function () {
                                                                        var val = $(this).prop("value");

                                                                        // validate
                                                                        if (val < min) {
                                                                            val = min;
                                                                        } else if (val > max) {
                                                                            val = max;
                                                                        }

                                                                        instance13.update({
                                                                            from: $input13.val
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
                        </div>
                    <!---END: INFLUENCER AREA -->

                    <div class="w-100 mt-2 text-left text-"  style="background-color:#ffffff;">
                            * MARKET PRESENCE
                            <br/>D = Dominant; M = Moderate; N = Niche; T = Trivial<br/>
                            Validated participants from company or it's competitos firm will receive complimentary cluster data, trend data and purchase credits.
                    </div>


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
			<script type="text/javascript">
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
