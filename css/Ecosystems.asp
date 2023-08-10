<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en"> <!--<![endif]-->

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
    <title>Industries - Global Industry Analysts, Inc. - Official Website</title>
    <meta name="description"
        content="Official Website - Global Industry Analysts, Inc. (GIA) is a reputed publisher of off-the-shelf market research. Recognized as one of the most consistently accurate forecasting company in the world, GIA currently serves more than 9,500 companies from 36 countries worldwide. The company was founded in 1987, initially recognized globally as a research boutique specializing in the medical industry. Over the past 25 years, the company expanded its coverage and now publishes extensively upon more than 180 major industries." />
    <meta name="keywords"
        content="Market Research, Market Research Reports, Global Strategic Business Reports, multi-client research programs, Market Trend Reports, Global Industry Outlooks" />
    <meta name="p:domain_verify" content="e373fc05e5338589a9a20fa7eb8cbeea" />
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
    <meta name="p:domain_verify" content="2d36e07dec67d2a8d0bea712d690fe78" />
    <meta name="google-site-verification" content="Bde3xUPGs4PkgWyVdVlJ_fHl_VITc2uZv5niZBQb4Pw" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
    <!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</head>

<body leftmargin=0 rightmargin=0 topmargin=0 bottommargin=0>
    <!-- onBeforePrint="document.body.style.display='none'" onAfterPrint="document.body.style.display=''" onContextmenu="return false" onSelectstart="return false" onDragstart="return false" -->
    <link rel="stylesheet" href="css/giaslider_css.css">
    <link rel="stylesheet" href="css/owl/owl.carousel.css">
    <link rel="stylesheet" href="css/owl/owl.theme.green.css">
    <link rel="stylesheet" href="css/owl/owl.theme.default.css">
    <link rel='stylesheet' href="css/eco_systems.css" async>

    <div id="wrapper" class="bor-radius">

        <script type="text/javascript">

            function Redirect() {
<%
		
		
		
			if (((trim(Request("chksearch")) = "Title & Keywords") or(trim(Request("chksearch")) = "Only Report Title")) and(Request("search") <> "") and(Request("search") <> " ")) then
                Response.Redirect("showsearchNew.asp?search=" & Request("search"))
			End if 

			if ((trim(Request("chksearch")) = "Company Names") and(Request("search") <> "") and(Request("search") <> " ")) then
                Response.Redirect("ShowCompaniesList.asp?search=" & Request("search") & "&PageView=Show")
				
			End if 
		
	%>
}

        </script>
        <!-- Wrapper  Start -->

        <!-----TOP START----->
        <!--#include file="ASPIncludes/TopStrip.asp"-->
        <!-----TOP START END----->
        <script src="scripts/owl/owl.carousel.js"></script>
        <!-- Body Start here -->

        <!-- jQuery UI library -->
        <link rel="stylesheet"
            href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
        <style>
            .ui-autocomplete {
                max-height: 200px;
                /* height:300px !important;
 overflow:hidden;*/
                overflow-x: scroll;
            }
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>


        <script type="text/javascript">
            function Redirect() {
	<%
		
		if (((trim(Request("chksearch")) = "Search by keyword or Company") or(trim(Request("chksearch")) = "Only Report Title")) and(Request("search") <> "") and(Request("search") <> " ")) then
                Response.Redirect("showsearchNew.asp?search=" & Request("search"))
		End if 

		if ((trim(Request("chksearch")) = "Company Names") and(Request("search") <> "") and(Request("search") <> " ")) then
                Response.Redirect("ShowCompaniesList.asp?search=" & Request("search") & "&PageView=Show")
			
		End if
		
	%>
	}
        </script>



        <!-- Categories for home page Start -->
        <link rel="stylesheet" href="css/home_page_dash_board2.css" />
        <div class="container floated">

            <h2 class="latest_report">PROJECTS & INDUSTRIES</h2>

            <div class="row mb-2 w-100 mb-2 mt-2  py-2 datastact_block1 opacity_animation ">

                <div class="row tracking w-100" data-wow-delay="13.5s" id="tracking"
                    style="visibility: visible; animation-delay: 13.5s; animation-name: fadeInUp;">
                    <h6 class=" my-0 py-0 text-center">TRACKING</h6>
                </div>

                <div class="w-xl-80 w-lg-80 w-md-95 w-sm-95 w-100 mx-auto justify-content-around d-flex mb-2   ">
                    <div class=" text-center p-2  mx-1  data_stacks ">
                        <h4 class=" my-1 text-uppercase text-black">Projects</h4>
                        <h2 class="mb-0"><span class="count text-primary font-weight-bold count_4 "><a
                                    href="ecosystems.asp" target='new'>10266</a></span></h2>

                    </div>

                    <div class=" text-center p-2   mx-1  data_stacks ">
                        <h4 class=" my-1 text-uppercase text-black">Companies</h4>
                        <h2 class="mb-0"><span class="count text-primary font-weight-bold count_6"><a
                                    href="https://www.strategyr.com/Show_Ecosystem_Companies.asp?GTcountry=&ShowType=&CHKType=&StupType=&SRCWord=%F6c%9A%B3%0F"
                                    target='new'>1729341</a></span></h2>

                    </div>

                    <div class=" text-center p-2  mx-1  data_stacks ">
                        <h4 class=" my-1 text-uppercase text-black">Executives</h4>
                        <h2 class="mb-0"><span class="count text-primary font-weight-bold count_7"><a
                                    href="Show_Ecosystem_Executives.asp" target='new'>4736512</a></span></h2>

                    </div>



                    <div class="text-center p-2  mx-1 data_stacks ">
                        <h4 class=" my-1 text-uppercase text-black">Brands</h4>
                        <h2 class="mb-0"><span class="count text-primary font-weight-bold count_7">1208518</span></h2>

                    </div>


                    <div class="text-center p-2  mx-1 data_stacks ">
                        <h4 class=" my-1 text-uppercase text-black">INSIGHTS</h4>
                        <h2 class="mb-0"><span class="count text-primary font-weight-bold count_7">482318</span></h2>

                    </div>

                    <div class=" text-center p-2  data_stacks ">
                        <h4 class=" my-1 text-uppercase text-black">Clients</h4>
                        <h2 class="mb-0"><span class="count text-primary font-weight-bold count_5">42354</span></h2>
                    </div>
                </div>
            </div>

            <div class="row mb-0 mx-3">
                <%Set Conn=Server.CreateObject("ADODB.Connection") Conn.Open DataSource Set
                    RSEco=Server.CreateObject("ADODB.Recordset") RSEco.CursorType=3
                    SQLnt="SELECT * FROM Industrycode where code_status='A' AND (Code NOT IN ('APPA', 'ADTG', 'INSU', 'MOTI', 'PETR')) ORDER BY industry " ''
                    display_order" '' response.write SQLnt RSEco.open sqlnt, conn RsCount=RSEco.RecordCount
                    RecordCNT1=RSEco.RecordCount if not RSEco.eof Then%>
                    <ul class=" d-flex flex-wrap justify-content-center items-center industry-list-block ">
                        <%While not RSEco.EOF %>
                            <li> <a class=" d-block  " href="ecosystemsInsider.asp?ind=<%=RSEco("
                                    code")%>&Pageview=Show"><%=RSEco("industry")%></a></li>


                            <% RSEco.movenext wend%>
                    </ul>
                    <!-- <div class="buttonToogle text-center mt-4 mb-2" style="display: none;"><a href="javascript:;" class="showMore">+ View More</a></div>
                        <p class="lead">Displayed <b class="shownLength"></b> Of <b class="listLength"></b> Results.</p>-->
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

    <script>
        $(' .owl-one').owlCarousel({
            loop: true,
            margin: 5,
            nav: true,
            autoplay: true,
            autoplayTimeout: 15000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 1
                },
                1000: {
                    items: 1
                }
            }
        })


        $('.owl-two').owlCarousel({
            loop: true,
            margin: 15,
            nav: true,
            slideBy: 10,
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 2
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 7
                }
            }
        })
    </script>

</body>

</html>