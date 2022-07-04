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
If Trim(request("code"))<>"" Then
	session("CP_Code")=Trim(request("code"))
End If
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
dim companyCODE
companyCODE = ""
	if trim(request("code"))<>"" then
		SET rscompany = SERVER.CREATEOBJECT("ADODB.RECORDSET")
		SQLcompany = "SELECT COMPANY,MCPCODES,Filename,filename_md5,Cmp_hidden_code,logo,logo_local,logo_background_color,website,Linkedin_url,Twitter_url,Facebook_url,You_Tube_url,Instagram_url,Google_Plus_url,profile,(select count(*) from stat_globind.dbo.mcpnewtopic where code in (select token from dbo.string_split(mcpcodes,';'))) as no_of_reports,cmp_competitors_count as competition_count,cmp_expert_pool_count as expert_pool_count FROM vw_InfluencersCompany_Variables where Filename_MD5='"&trim(request("code"))&"'"
		''response.write SQLcompany
		logo_background_color="white"
		'response.end
		rscompany.OPEN SQLcompany,Datasource4 
		If Not rscompany.EOF then
			COMPANYNAME = trim(rscompany("COMPANY"))
			session("Companyname") = trim(rscompany("COMPANY"))
			'COMPANYcountry = trim(rscompany("COUNTRY"))
			session("Company_CP_Code")=trim(rscompany("Filename"))
			COMPANYMCPs = trim(rscompany("MCPCODES"))
			companyid = trim(rscompany("Filename"))
			companyCODE = trim(rscompany("Filename"))
			session("companyid") = trim(rscompany("Filename"))
			companylogo = trim(rscompany("logo"))
			companylogo_local = trim(rscompany("logo_local"))
			logo_background_color = trim(rscompany("logo_background_color"))
			companyurl = trim(rscompany("website"))
			Ccode = trim(ucase(rscompany("filename_md5")))
			cmpID = Trim(rscompany("Cmp_hidden_code"))
			MCPCODES_lIST = COMPANYMCPs
			RsCount=trim(rscompany("no_of_reports"))
			'companyLOGO = trim(rscompany("logo"))
			companyLKDIN = trim(rscompany("Linkedin_url"))
			companyTwitter = trim(rscompany("Twitter_url"))
			companyFB =  trim(rscompany("Facebook_url"))
			companyYT = trim(rscompany("You_Tube_url"))
			companyIG = trim(rscompany("Instagram_url"))
			companyGPlus = trim(rscompany("Google_Plus_url"))
			profile = trim(rscompany("profile"))
			usercompanyimage = trim(rsCompany("logo_local")) ''https://marketglass.com/uploads/images/7/h/j/3/z/ibm.png
			Projects = trim(rsCompany("no_of_reports"))
			''usercompanyimage=rsCompany("image_url") ''https://marketglass.com/uploads/images/7/h/j/3/z/ibm.png
			Projects = trim(rsCompany("no_of_reports"))
			expert_pool_count = trim(rsCompany("expert_pool_count"))
			competition_count = trim(rsCompany("competition_count"))
			slug_CMP = Replace(trim(rsCompany("Company"))," ","-")
			''' REPLACE & WITH and
			slug_CMP = Replace(trim(slug_CMP),"&","and")
			''' REPLACE comma WITH nothing
			slug_CMP = Replace(trim(slug_CMP),",","")
			''' REPLACE dot WITH nothing
			slug_CMP = Replace(trim(slug_CMP),".","")
			''' REPLACE "(" WITH nothing
			slug_CMP = Replace(trim(slug_CMP),"(","")
			''' REPLACE ")" WITH nothing
			slug_CMP = Replace(trim(slug_CMP),")","")
			'session("companyid")=trim(rscompany("Filename"))
			'COMPANYMCPs=""
			'Set Conn = Server.CreateObject("ADODB.Connection")
			'Set RS = Server.CreateObject("ADODB.Recordset")
			'Conn.Open DataSource1
			'RS.CursorType = 3	
			'SQL="SELECT * FROM [PCI_Discount] WHERE discount_id='" & trim(COMPANYDISCOUNT) & "'"		
			'rs.open sql, conn
			'if not rs.eof then
			'	COMPANYDISCOUNT = trim(rs("discount_value"))
			'end if
			'Set RS = nothing
			'set conn=nothing
		END IF
		SET rscompany=nothing
	end If	

	If trim(companylogo_local)<>"" then
		companylogo = trim(companylogo_local)
	End If

%>
    <meta charset="utf-8">
    <title><%=COMPANYNAME%> - Market Share & Rank | strategyr.com</title>
	<meta name="description" content="<%=COMPANYNAME%> - Market Share & Rank"/>
    <!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS
================================================== -->
    <link rel='stylesheet' href="https://www.strategyr.com/css/tri_page.css" />
     
    <link rel="stylesheet" href="https://www.strategyr.com/css/font-awesome.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/wedges_effect.css" />
	
	
	<link rel="stylesheet" href="https://www.strategyr.com/css/responsive.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap" rel="stylesheet">
    <!-- Java Script
================================================== -->
    <script src="https://www.strategyr.com/scripts/jquery.easing.1.3.js"></script>
    <script src="https://www.strategyr.com/scripts/jquery.contact.js"></script>
    <script src="https://www.strategyr.com/scripts/jquery.isotope.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css"/>
    <link rel="stylesheet" href="https://www.strategyr.com/css/range_slider_tables.css"/>
	<link rel="stylesheet" href="https://www.strategyr.com/css/drop_down_style.css" />
  
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
function AddComp_metris(cpcode,mcpcode) {	 

  //alert("hi");
 // alert(cpcode+ ' MMM');
// alert(mcpcode+ ' KK');
 //alert(region);
	var mrank= $("#txtRank"+cpcode).val();
	//alert(mrank);
    var vcpCode =cpcode;  //  $("#hdnCPCode").val();
	var vMCPcode = mcpcode;
	// alert(vcpCode);
	//alert(mp);
	//get checked radio value
	var vmp=$('input:radio:checked').val();
	
	//var vmp=$('input[type="radio"][name="Rtype"+vcpCode]:checked').val();
	//alert(vmp);
	//alert($('#input[id="Rtype"+vcpCode]:checked').val());
	//alert($('#input[id="Rtype"+cpcode]:checked').val());
	 var ckhStatus;
	 /*if ($("#Rank"+vCPcode).is(":checked")) {
               ckhStatus = 'Y';
            }
			else
			{
			  ckhStatus = 'N';			
			}*/
		 ckhStatus = 'Y';
			
    //  var vtxtRval = $("#Rank"+vcpCode).val();
	// var vtxtRtype = "Rtype" + vCPcode;
	
	//var vartype=  $('input[id='Rtype'+cpcode]:checked').val(); 
	// alert (vartype);
   
   // var vtxtRtype=  $('input[id='+vtxtRtype+']:checked').val(); 
	
	//  alert($('#Rtype' + vCPcode).val());

	
		if ((vMCPcode != null && vMCPcode != '' ) || (vmp != null && vmp != '' ))
		  {  
			// alert(vMCPcode);		 
			  $.ajax({
				url: "Ajax_AddCMP_Report_MarketShareRank.asp",
				type: "POST",
				data:'mrank='+encodeURIComponent(mrank)+'&vmp='+encodeURIComponent(vmp)+'&vcpCode='+encodeURIComponent(vcpCode)+'&vMCPcode='+encodeURIComponent(vMCPcode)+'&ckhStatus='+encodeURIComponent(ckhStatus)+'', 				
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
				
		 

        
		}
</script>
<style>
	.vis1	{ visibility:"visible" }
	.vis2	{ visibility:"hidden" }

.head_title_block h3 {
	font-size: 18px;
}
.head_title_block h4 {
	font-size: 16px;
}
.head_title_block h2, .head_title_block h3, .head_title_block h4 {
	margin: 1px 0px !important;
}
.important_note h3, .important_note p {
	margin: 1px 0px !important;
	line-height: 18px !important;
}
#top_ang {
	margin-top: -32px;
	margin-left: 6px;
	fill: none;
	stroke: none;
}
.pannel {
	display: none;
}
.roundCornerBox{
	border-radius: 10px;
    -moz-border-radius: 10px;
    -webkit-border-radius: 2px;
    border: 2px solid RGBA(0,0,0,0.5);
    box-shadow: 5px 5px 4px RGBA(0,0,0,0.3);
    padding: 10px;
    box-sizing: border-box;
    width: 100%;
    height: auto;
    overflow: auto;
    overflow-x: hidden;
    align: center;
	}
.roundCornerBox div{
	margin-bottom:10px;
}


</style>
<style>
	
/*body {
    background-color: #f6f6f6;
    width: 400px;
    margin: 20px auto;
    font: normal 13px/100% sans-serif;
    color: #444;
}*/
span1 {
    display:none;
  /*  padding: 10px;
    border-width: 0 1px 1px 0;
    border-style: solid;
    border-color: #fff;
    box-shadow: 0 1px 1px #ccc;*/
    margin-bottom: 5px;
  /*  background-color: #f1f1f1;*/
}
.totop {
    position: fixed;
    bottom: 10px;
    right: 20px;
}
.totop a {
    display: none;
}
/*a, a:visited {
    color: #33739E;
    text-decoration: none;
    display: block;
    margin: 10px 0;
}*/
a:hover {
    text-decoration: none;
}
#loadMore {
    padding: 10px;
    text-align: center;
   /* background-color: #33739E;
	background: #255e91;*/
    color: #fff;
    border-width: 0 1px 1px 0;
    border-style: solid;
    border-color: #fff;
    box-shadow: 0 1px 1px #ccc;
    transition: all 600ms ease-in-out;
    -webkit-transition: all 600ms ease-in-out;
    -moz-transition: all 600ms ease-in-out;
    -o-transition: all 600ms ease-in-out;
}
#loadMore:hover {
   /* background-color: #fff;*/
    color: #33739E;
}

.company_cont_block:hover {
     box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3) !important;
    -webkit-box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3) !important;
    transition: all linear 0.5s !important;
    -webkit-transition: all linear 0.5s !important;
    min-height: 28px !important;
    border: rgb(255, 255, 255) solid 1px !important;
}
</style>
<style>
        @media only screen and (max-width:959px) and (min-width:768px) {
            .comp_col2 .company_col {
                width: 188px !important;
            }
            .comp_col2 .company_col .report_title_pan a {
                font-weight: 500 !important;
                font-size: 12px;
                line-height: 14px;
            }
            .company_cont_block {
                min-height: 35px;
                height: 35px;
            }
        }
        
        @media only screen and (max-width:767px) and (min-width:300px) {
            .comp_col2 .company_col {
                width: 100% !important;
            }
            .comp_col2 .company_col .report_title_pan a {
                font-weight: 500 !important;
                font-size: 12px;
                line-height: 11px;
            }
            .company_cont_block {
                min-height: 28px;
                height: 28px;
            }
        }

    </style>
	<style>

.different_hightlights span {
        font-size: 16px;
        color: #000;
        font-weight: bold;
        margin: 0px 0px !important;
        padding: 0px 20px;
        border-left: rgba(0, 0, 0, 0.2) solid 1px;
    }
    .different_hightlights span:nth-child(1) {
        border-left: rgba(0, 0, 0, 0.2) solid 0px;
    }
    .differentiatiors_list {
        margin: 0px;
        padding: 0px;
        list-style: square !important;
        position: relative;
    }
    .differentiatiors_list li {
        font-style: italic;
        font-size: 13px;
        margin-bottom: 10px !important;
    }
    @media only screen and (min-width: 320px) and (max-width: 479px) {
        .different_hightlights span{
            font-size: 12px;
            color: #000;
            padding: 0px 10px;
            border-left: rgba(0, 0, 0, 0.2) solid 1px;
        }
		.different_hightlights span:nth-child(1) {
        border-left: rgba(0, 0, 0, 0.2) solid 0px;
        }
    }
	#company_logo_display{
		margin:0 auto !important;
		display: block;
		max-width:135px !important;;
	}
	.btn_type_03 {
        border: none !important;
        background: #255E91 !important;
        font-size: 16px;
        font-family: arial !important;
        font-weight: 500 !important;
        color: #fff !important;
        width: 150px;
        height: 30px;
        margin: 2px !important;
        border: none;
        cursor: pointer !important;
        text-align: center;
        padding-top: 5px;
}

#report_page_title h2 {
        font-size: 21px !important;
        line-height: normal !important;
}


#report_page_title h3 {
        font-size: 18px !important;
        margin-bottom: 8px !important;
}


@media only screen and (max-width: 767px){
	#report_page_title h2 {
       	 	font-size: 19px !important;
       		 line-height: normal;
	}
	
	#report_page_title h3 {
       		 font-size: 16px !important;
        	line-height: normal;
	}
}
</style>
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

<link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />

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
		<%	
		Dim RsVCCount
		RsVCCount = 0
		if session("EID") <> "" then 
			uidsplit=split(session("EID"),"@")
			'response.write uidsplit(1)
			Set ConnVC = Server.CreateObject("ADODB.Connection")
			ConnVC.Open DataSource1
			Set RSValueClient = Server.CreateObject("ADODB.Recordset")
			RSValueClient.CursorType = 3	
			RSValueClient.activeconnection = ConnVC
			SQLValueClientQuery="OPEN SYMMETRIC KEY SKEY_GI1_DB_1 DECRYPTION BY CERTIFICATE CERT_GI1_DB_1; SELECT count(*) as vccount FROM [Globind1].[dbo].[vw_UserMaster_UserTransaction] Where CONVERT(varchar(500), DecryptByKey(EmailID)) like ('%"&uidsplit(1)&"') and trans_date>='1/1/2012';CLOSE SYMMETRIC KEY SKEY_GI1_DB_1;"
		'	response.write SQLValueClientQuery
		'	response.end
			RSValueClient.open SQLValueClientQuery 
			
			RsVCCount = RSValueClient("vccount")
			''RsVCCount = RSValueClient.RecordCount
			set RSValueClient=nothing
			
		
		end if%>
		
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
	code=Trim(RS55("code"))
End If
Set RS55 = Nothing
Set Conn55 = Nothing

If Ucase(trim(Display_flag))="N" then
	response.redirect "default.asp"
	response.end
End If
%>
        <div class="container" id="compan_landing_page">
		
            <div class="row w-100 py-2 mb-2  text-center" id="title_block">
              <div class="w-100 ">
			  <h2 class="font-weight-bolder mb-1" style="color:#900;"><%=COMPANYNAME%> World Share & Rank in <%=(title)%></h2>
					<% If Trim(companylogo) <> "" then%> <img src="<%=companylogo%>" id="company_logo_display" class=" mx-2 mx-auto;" style="margin:0 auto !important; display: block;background:<%=logo_background_color%>;" title="<%=COMPANYNAME%>" alt="<%=COMPANYNAME%>"/>
								<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
								<script>
										$(document).ready(function(){
										
										 var img = new Image();
										img.src = "<%=companylogo%>";
										img.onload = function() {
										//	document.getElementById("company_logo_display");
										var currWidth = this.width ;//img.clientWidth;
										var currHeight =this.height; //img.clientHeight;
										//alert("Current width=" + currWidth + ", " + "Original height=" + currHeight);


										if(currWidth > 110 && currWidth <= 300){
											$('#company_logo_display').css({'width' : '80px', 'height': 'auto'});
											
										}

										if(currWidth > 301){

											$('#company_logo_display').css({'width' : '135px', 'height': 'auto'});
											
										}
										}
									 })	
									</script>
					<%End if%> 
                
                </div>
				
                <h3 class="text-black font-weight-bold my-1 line-height-normal font-size-25"><%=COMPANYNAME%><input type="hidden" id="hdnCPCode" value="<%=session("Company_CP_Code")%>" name="hdnCPCode"></h3>
                <div class="w-100 position-relative mt-0">
                    <ul class="d-flex  w-xl-20 w-lg-20 w-md-30 w-sm-70 w-40 my-0 mx-auto justify-content-center">
						<%IF Trim(companyLKDIN)<>"" THEN%>
							<li class="px-1  my-2"><a href="<%=companyLKDIN%>" target="new"><img src="\images\social\linkedin.jpg" style="width:18px;height:auto;" title="Linkedin"/></a></li>
						<%END IF%>
						<%IF Trim(companyTwitter)<>"" THEN%>
							<li class="px-1  my-2"><a href="<%=companyTwitter%>" target="new"><img src="\images\social\twitter.jpg" style="width:18px;height:auto;" title="Twitter"/></a></li>
						<%END IF%>
						<%
						If instr(Trim(companyFB),"facebook.com")>0 then
						IF Trim(companyFB)<>"" THEN%>
							<li class="px-1  my-2"><a href="<%=companyFB%>" target="new"><img src="\images\social\facebook.jpg" style="width:18px;height:auto;" title="Facebook"/></a></li>
						<%
						End If
						END IF%>
						<%IF Trim(companyYT)<>"" THEN%>
							<li class="px-1  my-2"><a href="<%=companyYT%>" target="new"><img src="\images\social\youtube.png" style="width:18px;height:auto;" title="YouTube"/></a></li>
						<%END IF%>
						<%IF Trim(companyIG)<>"" THEN%>
							<li class="px-1  my-2"><a href="<%=companyIG%>" target="new"><img src="\images\social\Instagram.png" style="width:18px;height:auto;" title="Instagram"/></a></li>
						<%END IF%>
						<%IF Trim(companyGPlus)<>"" THEN%>
							<li class="px-1  my-2"><a href="<%=companyGPlus%>" target="new"><img src="\images\social\googleplus.jpg" style="width:18px;height:auto;" title="GPlus"/></a></li>
						<%END IF%>                        
                    </ul>					
                </div>				
				<hr>		
				
				<div class="w-100  mb-2 ">
				<h3 class="text-primary text_orange font-weight-bold m-0 line-height-'normal mt-2 text-center mb-3" style="font-size:18px;">COMPETITIVE METRICS</h3><input type="hidden" value="<%=session("EID")%>" id="txtsession">
				<div class="row mb-2">
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
				</div>
				<script src="https://code.jquery.com/jquery-3.5.1.js"  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>

				<div class="row">					
				<div class=" mt-0 position-relative">
				<div class="w-100 position-relative">	
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
												
				<%
				
				sql1 = "SELECT  top 10  company,filename, MCPCODES,logo_local, Logo_background_color FROM gia_mc_program.dbo.InfluencersCompanies WHERE  Filename_MD5='"&trim(request("code"))&"'  and company_status='Y' order by company" 
				
				
				
				Set RSInfluncer = Server.CreateObject("ADODB.Recordset")						
				Set Conn1 = Server.CreateObject("ADODB.Connection")
				Conn1.Open DataSource4
				'' after Login data auto updated 
				if trim(session("EID")) <>"" then
					chkCompMetSql="update tbl_Company_Report_MarketShareRank set email='" & trim(session("EID")) & "' where mcp_code='"& code &"' and session_id='"& session.SessionID &"'  and email =''"
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
							SqlMetrics="select * from tbl_Company_Report_MarketShareRank where CP_code in ('"&RSInfluncer("Filename")&"') and MCP_code='" & code & "' and (Session_id='" & session.SessionID & "' or email='" & session("eid") & "')"
							''response.write(SqlMetrics)
							rsMetrics.Open SqlMetrics,DataSource4
							if not rsMetrics.EOF Then
								''	RanK_Type=rsMetrics("RanK_Type")
								''	Rank=rsMetrics("Market_rank")
									highlight="highlight"
									if trim(Rank)="0" then
										Rank = ""
									end if
							else
									RanK_Type=""
									Rank=""
									highlight=""
							end if
							set rsMetrics=nothing
							if trim(RSInfluncer("Logo_background_color"))<>"" then
							backcolor="" '"background-color:" & RSInfluncer("Logo_background_color") & ";"
							else
							backcolor=""   '"background-color:#f1f1f1;"
							end if						
							
					 %>
					  <!---ROW BEGIN (THIS ROW TO BE REPEATED) -->
							<tr class="<%=highlight%>">


								<div class="col-01">
									<div class="img_block">
										<a href="#ex<%=RSInfluncer("filename")%>" rel="modal:open"> <img src="<%=RSInfluncer("logo_local")%>" class="img-fluid"/>
									</div>  

									<h4 title="<%=RSInfluncer("company")%>"> <%=RSInfluncer("company")%> </h4>
								</div>

								<td>
									<div class="d-flex">

										<div class="col-02">
											<span><i>S</i><input type="radio" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')"  name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Dominant" <%=checked("Dominant",RanK_Type)%> class="p-0 mr-1" ></span>
											<span><i>M</i><input type="radio" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Strong" <%=checked("Strong",RanK_Type)%> class="p-0 mr-1" ></span>
											<span><i>N</i><input type="radio" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Niche" <%=checked("Niche",RanK_Type)%> class="p-0 mr-1" ></span>
											<span><i>T</i><input type="radio"  onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" name="Rtype<%=RSInfluncer("filename")%>" id="Rtype<%=RSInfluncer("filename")%>" value="Trivial" <%=checked("Trivial",RanK_Type)%> class="p-0 mr-1" > </span>
											<%if session("EID") ="" then%>  <!--<p class="input_popup_msg"> Login Required</p>--><%end if%>
										</div>

										<div class="col-03">
											<div aria-expanded="false" class="w-100 collapse show ">
												<div class="d-flex justify-content-start">
													<div class="extra-controls percent_block">
														<i class="percentage_icon">%</i>
														<input type="text" class="js-input rank_input" value="" type="text" id="txtRank<%=RSInfluncer("filename")%>" name="txtRank<%=RSInfluncer("filename")%>" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" />
													</div>
													<div class="range-slider simulator_block">
														<input type="text" class="js-range-slider" id="slRank<%=RSInfluncer("filename")%>" name="slRank<%=RSInfluncer("filename")%>" onchange="AddComp_metris('<%=RSInfluncer("filename")%>','<%=code%>')" />

													</div>
													<script>
														var $range = $("#slRank<%=RSInfluncer("filename")%>");
														var $input = $("txtRank<%=RSInfluncer("filename")%>");
														var instance;
														var min = 0;
														var max = 100;

														$range.ionRangeSlider({
															skin: "big",
															type: "single",
															min: min,
															max: max,
															from: 4,
															grid: true,
															step: 0.5,
															grid_num: 10,

															onStart: function (data) {
																$input.prop("value", data
																	.from);
															},
															onChange: function (data) {
																$input10.prop("value", data
																	.from);
															}
														});

														instance = $range.data("ionRangeSlider");

														$input.on("input", function () {
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
					<div class="d-flex left-content-between mt-2" style="text-align:left;background-color:#ffffff;">
					 * MARKET PRESENCE
					 <br/>D = Dominant; M = Moderate; N = Niche; T = Trivial<br/>
					 Validated participants from company or it's competitos firm will receive complimentary cluster data, trend data and purchase credits.
					</div>
					<table id="competitive_metrics_table" class="border-0" width="100%">
						<tr class="border-0">
							<td class="comp_sub">
							<%if session("EID") <>"" then%>
								<a href="#" onclick="AddAllComp_metris('<%=code%>')" class="submit-button my-2  float-right" type="button" > SUBMIT </a>
							<%else%>
								<a href="LoginRepeat.asp?login=compMetrics"  class="submit-button my-2  float-right" type="button" > SUBMIT </a>
							<%end if%>

							</td>
						</tr>
					</table>
											 
				</div>
            </div>
		</div>			
		<div id="content">
		<main>
		<!----Begin:Container---->
		<div class="container">					
			<!---BEGIN: LABEL BLOCK ---->				
			<!---END LABEL BLOCK 
			<!---BEGIN: TITLE BLOCK---->
			<div class="row text-primary  w-100 pb-2 my-0  text-center mt-0" id="report_page_title">
			<!--MARKET ANALYSIS, TRENDS AND FORECASTS-->				
				<!--h3 class="text-primary font-weight-bold"><%'=UCase(trim(request("pcode")))%></h3--> 
			<!---END : BEGIN----->
			 <span class="d-flex flex-md-row flex-sm-row  justify-content-center mt-2 mb-4">
				<a href="https://www.strategyr.com/<%=filename%>" style=" font-weight:600;font-size:16px !important;" class="rounded-0   btn_type_03 "  type="submit"  name="btnsubmit" value="OK" style="background: #23B14D !important;">REPORT</a>   &nbsp;<a href="https://www.strategyr.com/company.asp?CompanyName=<%=slug_CMP%>&code=<%=Ccode%>&cmpID=<%=cmpID%>" style=" font-weight:600;font-size:16px !important;" class="rounded-0   btn_type_03 " type="button">COMPANY</a>    &nbsp;
				
				<%if session("EID") <>"" then%>
				<button type="submit" id="btnsubmit" name="btnsubmit" class=" rounded-0   btn_type_03" data-toggle="collapse" data-target="buy_report" aria-expanded="false" aria-controls="collapseExample" onclick="return submittocart1();" value="ADD TO CART" style="font-size: 16px !important;">CLUSTER DATA</BUTTON>
					<form name="frmshop1" id="frmshop1" method="post">
								<input onclick="deSelectReport();" style="display:none" type="checkbox" name="R-<%=UCase(trim(request("pcode")))%>" id="R-<%=UCase(trim(request("pcode")))%>" checked="">&nbsp;&nbsp;<b><span class="mr-2 mr-md-4"> </span></b>
							</form>
				<%ELSE%>
					 <a href="LoginRepeat.asp?login=compMetrics" style=" font-weight:600;font-size:16px !important;" class="rounded-0   btn_type_03 " type="button">CLUSTER DATA</a>    &nbsp;
				<%end if%>
			 </span>				
			</div>			 
        <!---END REPORT TITLE--->
       </div>
	  </main>
	  </div>
	   </div>
	</div>
	</div>
	<!--#include file="ASPIncludes/BottomStrip.asp"-->
        <!---END:PAGE CONTENT--->
        <!-- Footer
================================================== -->
	<!-- Footer / Start -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<script src="https://www.strategyr.com/scripts/bootstrap.bundle.js"></script>
	<script src="js/numscroller-1.0.js"></script>
	<script src="js/limit.text.js"></script>
		<script src="https://www.strategyr.com/js/drop_down.js"></script>

<!-- SCRIPT added to change the scroll Bars style on Oct 27, 2021-->


</body>
</html>