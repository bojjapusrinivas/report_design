<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]>
<!-->
<html lang="en">
<!--<![endif]-->

<head>
    <!-- Basic Page Needs
================================================== -->
    <title>Beer - Market Study by Global Industry Analysts, Inc.</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Beer Market Study by Global Industry Analysts, Inc.">
    <meta name="keywords" content="Beer, Market Research, Market Research Reports, Global Strategic Business Reports, multi-client research programs">
    <meta name="robots" content="index, follow" />
    <meta name="classification" content="Market Research reports" />
    <meta name="revisit-after" content="30 days" />
    <meta name="author" content="strategyr.com" />
    <meta name="identifier-url" content="www.strategyr.com" />
    <meta name="distribution" content="Global" />
    <meta name="coverage" content="Worldwide" />
    <meta name="rating" content="General" />
    <meta name="language" content="English" />


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
    <link rel="stylesheet" href="css/report_page.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/wedges_effect.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
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
    <script src="scripts/bootstrap.bundle.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
</head>


<!--#INCLUDE FILE="adovbs.asp" -->
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ASPIncludes/SiteFunctions.asp"-->
<!--#include file="aspincludes/CheckSQLInc.asp"-->
<!--INCLUDE FILE="registeradd.asp" -->

<%'On Error Resume Next'%>
    <%
Server.ScriptTimeout = 680
%>

        <% if loadedval=1 then
	server.transfer "requestreportdetails.asp"
END IF

If trim(request("Send"))="Please click here for an insider access request" then
 	server.transfer "requestreportdetails.asp"
end if

Dim Conn
Dim RS
Dim SQL

Set Conn = Server.CreateObject("ADODB.Connection")
Set RS = Server.CreateObject("ADODB.Recordset")

Conn.Open DataSource
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''check to see if the SQL injection code is present here'''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

if instr(trim(Request("code")),"'")>0 then
	response.write ("Invalid data")
	response.end
end if
if instr(trim(Request("code")),"=")>0 then
	response.write ("Invalid data")
	response.end
end if
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''Code end'''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
code ="MCP-2204"

SQL="SELECT *,dbo.ReturnSegnames(newcode) as segments,gia_analytix.dbo.GetTotTablesbygiano(newcode) as TablesCount FROM MCPNewTopic WHERE CODE='" & code & "'"
'(SELECT     COUNT(*) AS DominExperts FROM MultiClientProgram.dbo.InfluencersCompanies  WHERE (MCPCODES LIKE %newcode%)) as dominexperts
''response.write sql
RS.Open SQL, conn,1,2
If Not RS.EOF Then
	title = Trim(RS("title"))
	code = Trim(RS("code"))
	giaNo = Trim(RS("newcode"))
	abstract = Trim(RS("mcp_abstracts"))
	companies = Trim(RS("companies"))
	datatables=RS("market_data_tables")
	segments = Replace(Trim(RS("segments"))," ;",", ")
	pages= Trim(RS("pages"))
	If Trim(RS("CompanyNames")) <> "" then
		companies = ubound(split(Trim(RS("CompanyNames")),"; "))+1
		datatables = RS("TablesCount")
		'dominexperts = RS("dominexperts")
		'OUTREACH = Round(Cdbl(dominexperts)*4.4,0)
		'INTERACTIONS = Round(Cdbl(dominexperts)*(30/100),0)
		'PARTICIPANTS = Round(Cdbl(dominexperts)*(6/100),0)
		'VALIDATIONS = Round(PARTICIPANTS*(80/100),0)
		pages = (Cdbl(companies)+Cdbl(datatables)+30)
	End If
	'response.write companiescount
End If
%>

            <!--#include file="NewTopicJSCSS.asp"-->

            <body>
                <!-- Wrapper / Start -->
                <div id="wrapper" class="bor-radius">

                    <!-----TOP START----->
                    <!--#include file="ASPIncludes/TopStrip.asp"-->
                    <!-----TOP START END----->

                    <!---BEGN REPORT TITLE--->
                    <!--#INCLUDE FILE="newReportTitle1.asp" -->
                    <!---END REPORT TITLE--->


                    <!---BEGIN:PAGE CONTENT--->
                    <div class="page-content">
                        <div class="container">

                            <!---BEGIN:POOLED DATA & INFOGRAPHIC--->
                            <!--#INCLUDE FILE="MCPNewTopicAbstract_new.asp" -->

                            <!---Begin:SELECT PLAYERS,SEGMENTS,GEOGRAPHIES --->

                            <!---End:SELECT PLAYERS,SEGMENTS,GEOGRAPHIES --->

                            <!---Begin:COMPANIES, WorldBrands,Executive, Differentiators Block --->
                            <!--#include file="FeaturedCompanies1.asp" -->

                            <!---End:COMPANIES, WorldBrands,Executive, Differentiators Block --->
                            <!---Begin:Buy, WorldBrands,Executive, Differentiators Block --->

                        </div>
                    </div>
                    <div class="row  mt-2 mb-0 ">

                        <div class="w-100">

                            <div id="main2">
                                <!--#include file="MCPNewTopicTOC_new.asp" -->

                            </div>
                        </div>
                    </div>
                    <!---end:COMPANIES, WorldBrands,Executive, Differentiators Block --->
                    <!--- BEGIN:YOUR PRIVACY MATTERS --->


                    <!--- END:YOUR PRIVACY MATTERS --->
                    <footer id="footer " class="bg-white py-1">
                        <!-- Footer start-->

                        <!---footer_end-->
                    </footer>
                </div>
                <!---CONTAINER END--->

                </div>
                <!--#include file="ASPIncludes/BottomStrip.asp"-->
                <!---END:PAGE CONTENT--->
                <!-- Footer
================================================== -->

                <!=======================================================
                     MODEL
======================================================>
                <!---INFOGRAPHIC MODEL---->
                <!--      <div id="ex1" class="modal">
            <img src="images/CHARTS/CHART_LARG.jpg" class="img-fluid" />
        </div>-->
                <!---PAGE LOAD MODEL--->
                <!--div class="pageload_popup vh-100 vw-100 bg-dark-50 t-0 l-0 justify-center ">
            <div class="d-flex justify-content-center align-items-center vh-100">
                <div class="card card-body rounded-0 p-1 w-lg-50 w-xl-30 flex-grow-0 shadow  offer offer-primary">
                    <div class="w-100">
                        <button type="button" class="ml-2 mb-1 close w-5 h-5  r-0 t-0 rounded-circle p-0 bg-dark text-white" data-dismiss="toast" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="w-100 text-center p-3">
                        <h2 class="border-bottom line-height-normal text-dark font-size-20 text-uppercase"> To Access our Data Stacks </h2>
                        <button type="button" class="btn btn-labeled btn-primary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 ">
                            <span class="btn-label  h-100 t-0">
                                             <i class="fa fa-sign-in" aria-hidden="true"></i>
                                         </span>LogIn</button>
                        <button type="button" class="btn btn-labeled btn-success mx-3 py-1 rounded-0  my-2 my-md-4 btn-125">
                            <span class="btn-label h-100 t-0">
                                             <i  class="fa fa-user"  aria-hidden="true"></i>
                                         </span> &nbsp; &nbsp;Register</button>
                    </div>
                </div>
            </div>
        </div-->



                <!-- Footer / Start -->

                <!----Js Scripts ------>
                <!----Js Scripts ------>
                <script type="text/javascript">
                    $(document).ready(function() {
                        $('#iframe1').on('load', function() {
                            $('#loader_01').hide();
                        });
                    });

                </script>
                <script>
                    //--- LOADING PAGE FROM TOP X AXES---//
                    $(document).ready(function() {
                        $(window).scrollTop(0);
                    });

                </script>

                <script>
                    //----ACCORDION----//
                    var acc = $(".released_abstract .accordion_rel");
                    var i;
                    for (i = 0; i < acc.length; i++) {
                        acc[i].addEventListener("click", function() {
                            this.classList.toggle("active");
                            var panel2 = this.nextElementSibling;
                            if (panel2.style.maxHeight) {
                                panel2.style.maxHeight = null;
                            } else {
                                panel2.style.maxHeight = panel2.scrollHeight + "px";
                            }
                        });
                    }


                    //----ACCORDION----//
                    var acc = document.getElementsByClassName("accordion_key");
                    var i;
                    for (i = 0; i < acc.length; i++) {
                        acc[i].addEventListener("click", function() {
                            this.classList.toggle("active");
                            var panel3 = this.nextElementSibling;
                            if (panel3.style.maxHeight) {
                                panel3.style.maxHeight = null;
                            } else {
                                panel3.style.maxHeight = panel3.scrollHeight + "px";
                            }
                        });
                    }

                    //-----NUMBER COUNT----//
                    $('.count').each(function() {
                        $(this).prop('Counter', 0).animate({
                            Counter: $(this).text()
                        }, {
                            duration: 15000,
                            easing: 'linear',
                            step: function(now) {
                                $(this).text(Math.ceil(now));
                            }
                        });
                    });
                    //---COLLAPSE DIRACTION--//
                    $("#myCollapsible").collapse({
                        toggle: true,
                        direction: "up"
                    });

                    //---pageloadpop---//
                    $(window).scroll(function() {
                        if ($(this).scrollTop() > 100) {
                            $('.pageload_popup').addClass('pop_active');
                            // $("body").addClass('page_block');
                        } else {
                            $('.pageload_popup').removeClass('pop_active');
                            //$("body").removeClass('page_block');
                        }
                    });

                </script>

                <script>
                    $(document).ready(function() {
                        var ivalue = 767;
                        var screenwidth = window.innerWidth;
                        if (ivalue >= screenwidth) {
                            $('.players_tab li:nth-child(1)').removeClass('active');
                            document.getElementById("tab1").style.display = "none";
                            $('.tabs-container .tab-content ').removeClass("tab-content");
                            document.getElementById("tab1").style.display = "block";
                            document.getElementById("tab2").style.display = "block";
                            document.getElementById("tab3").style.display = "block";
                            document.getElementById("tab4").style.display = "block";


                        } else {
                            $('.players_tab li:nth-child(1)').addClass('active');
                            // document.getElementById("tab1").style.display = "block";
                        }

                    })

                </script>

                <script>
                    //----TAB ACCORDION----//
                    var acc = document.getElementsByClassName("tab_accordion");
                    var i;
                    for (i = 0; i < acc.length; i++) {
                        acc[i].addEventListener("click", function() {
                            this.classList.toggle("active");
                            var panel4 = this.nextElementSibling;
                            if (panel4.style.maxHeight) {
                                panel4.style.maxHeight = null;
                            } else {
                                panel4.style.maxHeight = panel4.scrollHeight + "px";
                            }
                        });
                    }

                </script>

            </body>

</html>
