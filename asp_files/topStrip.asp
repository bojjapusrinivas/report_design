<!--#include file="CheckSQLInc_Include.asp"-->

<%
Response.CodePage = 65001
Response.CharSet = "utf-8"
%>


    <!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width">
    <!----MOBILE SLIDE SHOW---------->
    <!--<script language="javascript" type="text/javascript" src="scripts/mobile_slide/scroller.js"></script>-->

    <!--include file="CheckSQLInc.asp"-->

    <!---MOBILE SLIDE SHOW END---->

    <!-- CSS
================================================== -->
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel='stylesheet' href="css/tri_page.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/wedges_effect.css" />
    <link rel="stylesheet" href="css/animate.css" async="">

    <link rel="stylesheet" href="css/style.css" async>
    <link rel="stylesheet" href="css/gia.css" async>


    <link rel="stylesheet" href="css/colors/blue.css" id="colors" async>
    <!--<link rel="shortcut icon" href="images/favicon.ico" async>-->
    <link rel='stylesheet' href="css/font-awesome.min.css" async>
    <link rel='stylesheet' href="css/theme-animate.css" async>
    <link rel='stylesheet' href="css/all-ie-only.css" async>
    <link rel='stylesheet' href="css/gia_switches.css" async>
    <link rel="stylesheet" href="css/header_footer.css" async>


    <!-------current page slide_show------>

    <link rel="stylesheet" href="css/slide/slideshow.css" type="text/css" media="screen" async>
    <!--[if lt IE 9]>
	<script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

    <!--[if IE]>
	<link rel="stylesheet" type="text/css" href="all-ie-only.css" />
<![endif]-->

    <!-- Java Script
================================================== -->
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/jquery.flexslider.js"></script>
    <script src="scripts/jquery.selectnav.js"></script>
    <script src="scripts/jquery.modernizr.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="scripts/custom.js"></script>
    <script src="js/respond.js"></script>
    <script src="js/respond.proxy.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script language="JavaScript" src="AspIncludes/ScriptFunctions.js"></script>
    <script language="Javascript">
        function returnvalsearch() {
            var searchval, searchlen;
            searchval = mytrimval(document.frmsearch.search.value);
            if ((searchval == "") || (searchval == " ")) {
                alert("Please give a keyword to search");
                document.frmsearch.search.focus();
                return false;
            }
            if (searchval.length <= 1) {
                alert("Please give a keyword to search");
                document.frmsearch.search.focus();
                return false;
            }
        }

        function OpenWin(num) {
            var val = num;
            if (val == 4) {
                myWin = open("Privilegedaccess.htm", "Globind", "width=750,height=500,status=no, top=20,toolbar=no,menubar=no,scrollbars=yes");
            }
        }

    </script>



    <!-- top welcome blue line start---->

    <div id="top-line" class="py-2">

        <div class="guest" class="py-3"><strong><%if trim(session("FirstName"))<>"" then%>User: <a  href='Edituserdetails.asp?type=user'><%=session("FirstName")%>&nbsp;<%=session("LastName")%></a> <%if session("PCI")<>"" then%> [PCI] <%end if%><%if session("CPXYPT")<>"" then%> [<%=session("CPXYPT")%>] <%end if%><%if session("FlatFeeUser")<>"" then%><!-- <a  href='FlatFeedetails.asp'  style="color:#F00000;">[Flat Fee User]</a>--> <%end if%>  <%else%><!--User: <a href='LoginRepeat.asp' >Guest</a>--><%end if%></strong></div>

        <ul class="log_reg">
            <%if trim(session("FirstName"))<>"" then%>
                <li><a href="Logout.asp"><i class="icon-signout fa-lg ico" title="Logout"></i><span class="mobile_text_hide">Logout</a></span>
                </li>

                <%
							if replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/EditUserDetails.asp" then%>
                    <li><a href="EditUserDetails.asp?type=user"><i class="icon-user fa-lg ico top_active" title="My Account"></i><span class="mobile_text_hide top_active"> My Account</a></li>
                    <%else%>
                        <li><a href="EditUserDetails.asp?type=user"><i class="icon-user fa-lg ico" title="My Account"></i><span class="mobile_text_hide"> My Account</a></li>
                        <%End if%>
                            <%else%>
                                <%if replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/registerd.asp" then%>
                                    <!--	<li><a href="GIA_Register_NEW.asp" ><i class="icon-user fa-lg ico top_active" title="Register"></i><span class="mobile_text_hide top_active"> Register</a></span></li>-->
                                    <%else%>
                                        <!--<li><a href="GIA_Register_NEW.asp" ><i class="icon-user fa-lg ico" title="Register"></i><span class="mobile_text_hide"> Register</a></span></li>-->
                                        <%End if%>
                                            <%if replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/LoginRepeat.asp" then%>
                                                <!--	<li><a href="LoginRepeat.asp" ><i class="icon-signin fa-lg ico top_active" title="Login"></i><span class="mobile_text_hide top_active">Login</span></a></li>-->
                                                <%else%>
                                                    <!--	<li><a href="LoginRepeat.asp" ><i class="icon-signin fa-lg ico" title="Login"></i><span class="mobile_text_hide">Login</span></a></li>-->
                                                    <%End if%>
                                                        <%End if%>
                                                            <!--	<li><a href="subscribe.asp" >Subscribe</a></li> <li><a href="Contact.asp" >Contact</a></li>-->
                                                            <%if replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/AddToCart.asp" then%>
                                                                <!--  <li><a href="AddToCart.asp" ><i class="icon-shopping-cart fa-lg ico top_active" title="Shoping Cart"></i> <span style="font-size:12px;">&nbsp;</span></a></li>-->
                                                                <%else%>
                                                                    <!--<li><a href="AddToCart.asp" ><i class="icon-shopping-cart fa-lg ico" title="Shoping Cart"></i><span style="font-size:12px;">&nbsp;</span></a></li>-->
                                                                    <%End if%>

        </ul>


    </div>
    <!-- top welcome blue line end---->
    <!-- Search with logo block start -->
    <div class="container flo">

        <!-- Header -->
        <header id="header">
            <!-- Logo -->
            <div class="logo_block w-xl-90 w-lg-90 w-md-90 w-100 mx-auto">
                <div>
                    <!--div class="log_img">
                         <a href="https://www.strategyr.com/default.asp"><img src="GIA_Images/images/log_icon.png" class="log_ico"/></a>
                         </div-->
                    <div class="logo_text px-4">

                        <img src="images/strategyr_logo.svg" class="strategyrR_logo" />
                        <!--img src="GIA_Images/images/gia_banner.png" /-->
                        <!--h4>A Worldwide Business Strategy & Market Intelligence Source</h4-->
                        <!--h4>AI-Powered Market Intelligence Curated by Domain Experts</h4-->
                        <!--<h4>Influencer Driven AI Powered Real-Time Market Intelligence</h4>-->
                    </div>
                </div>
            </div>
            <div class="row site_tag_line mx-4 mb-2 d-md-none d-sm-none">
                StrategyR is a trade mark of Global Industry Analysts, Inc. USA
            </div>
            <div class="row site_tag_line mx-4 mb-2 d-lg-none d-xl-none">
                A trade mark of Global Industry Analysts, Inc.
            </div>
        </header>
        <!-- Header / End -->

    </div>

    <!-- for Check box Check option  click on Table row  code start -->
    <style>
        .record_table {
            width: 98%;
            margin-left: auto;
            margin-right: auto;
            border-collapse: collapse;
        }
        
        .record_table tr:hover {
            background: #eee;
        }
        
        .record_table td {
            /*border: 1px solid #eee;*/
        }

    </style>

    <!--<script src="https://code.jquery.com/jquery-1.9.0.js"></script>
						<script>
							$(document).ready(function() {
								$('.record_table tr td table tr').click(function(event) {
									if (event.target.type !== 'checkbox') {
										$(':checkbox', this).trigger('click');
									}
								});
							});

						</script>-->
    <!-- for Check box Check option click on Table row code End -->

    <!-- MENU START -->
    <div class="container floated">
        <div class="sixteen floated page-title">

            <!--<h2> Privileged Research Program Insights(RPI)</h2><br>-->
        </div>
    </div>
    <div id="gia_nav_new">
        <nav id="navigation" class="style-1">

            <ul class="menu pt-3" id="responsive">

                <!--	<li><a href="index.html" id="current"><i class="halflings white home"></i> Home</a></li>
		<li><a href="about.html">Company Profile</a></li>
		<li><a href="privileged_acc.html">Privileged Access</a></li>
		<li><a href="research.html">Our Research</a></li>	
		<li><a href="clients.html">Clients</a></li>
		<li><a href="why_gia.html">Why GIA</a></li>
	   	<li><a href="subscribe.html">Subscribe</a></li>    -->

                <%if replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/default.asp" then %>
                    <li class="insider_desktop"><a href="default.asp" id="current"><i style="padding-left:10px;"></i>HOME</a></li>
                    <li class="search_on_mobile homeicon"><a href="default.asp" id="current"><i class="fa fa-home" aria-hidden="true"></i></a></li>

                    <%else%>
                        <li class="insider_desktop"><a href="default.asp"><i style="padding-left:10px;"></i>HOME</a></li>
                        <li class="search_on_mobile homeicon"><a href="default.asp"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                        <%end if
		
		if replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/Company_Profile.asp"  or replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/our_team.asp"  or replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/our_research.asp"  or replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/multilingual.asp" or replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/comprehensive_portfolio.asp" or replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/global_coverage.asp" or replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/our_clientele.asp"  then %>
                            <li class="insider_desktop"><a href="Company_Profile.asp" id="current"> PROFILE</a></li>
                            <li class="search_on_mobile"><a href="Company_Profile.asp" id="current">WE</a></li>
                            <%else%>
                                <li class="insider_desktop"><a href="Company_Profile.asp">PROFILE</a></li>
                                <li class="search_on_mobile"><a href="Company_Profile.asp">WE</a></li>
                                <%end If
		'''OurResearch_List.asp
		'''showsearchNew.asp
		if (Request.ServerVariables("PATH_INFO") = "/OurResearch_List.asp") Or  (Request.ServerVariables("PATH_INFO") = "/showCompanyReports.asp") then %>
                                    <!--li><a href="OurResearch_List.asp" id="current"> Our Research</a></li-->
                                    <%else%>
                                        <!--li><a href="OurResearch_List.asp">Our Research</a></li-->
                                        <%end If

		if  Request.ServerVariables("PATH_INFO") = "/Methodology.asp"   then %>
                                            <li class="insider_desktop"><a href="Methodology.asp" id="current">MARKETGLASS<sup><small class="trade_mark">TM</small></sup></a></li>
                                            <li class="search_on_mobile"><a href="Methodology.asp" id="current">HOW</a></li>
                                            <%else%>
                                                <li class="insider_desktop"><a href="Methodology.asp">MARKETGLASS<sup><small class="trade_mark">TM</small></sup></a></li>
                                                <li class="search_on_mobile"><a href="Methodology.asp">HOW</a></li>
                                                <%end If

		
		%>
                                                    <!-- Second Level / Start 
		<ul>
			<li><a href="blog-large-image.html">Large Image</a></li>
			<li><a href="blog-medium-image.html">Medium Image</a></li>
			<li><a href="blog-post.html">Single Post</a></li>
		</ul>
		 Second Level / End-->


                                                    <%if  Request.ServerVariables("PATH_INFO") = "/CX.asp"   then %>
                                                        <li><a href="CX.asp" id="current"> CX</a></li>
                                                        <%else%>
                                                            <li><a href="CX.asp">CX</a></li>
                                                            <%end If

		if  Request.ServerVariables("PATH_INFO") = "/Panelist.asp"   then %>
                                                                <li><a href="Panelist.asp" id="current">PANELS</a></li>
                                                                <%else%>
                                                                    <li><a href="Panelist.asp">PANELS</a></li>
                                                                    <%end If


		if replace(Request.ServerVariables("PATH_INFO"),"strategyrnew22/","") = "/RPIprivilegedaccess.asp" then %>
                                                                        <li><a href="https://www.strategyr.com/GetResearchAccess" id="current">INSIDER</a></li>

                                                                        <%else%>
                                                                            <li><a href="CompanyAccess.asp">INSIDER</a></li>
                                                                            <!--li><a href="privilegedaccess.asp">Privileged Access</a></li-->
                                                                            <!--ul>
			<li><a href="elements.html">Elements</a></li>
			<li><a href="icons.html">Icons</a></li>
			<li><a href="pricing-tables.html">Pricing Tables</a></li>
			<li><a href="typography.html">Typography</a></li>
		</ul-->
                                                                            <%end If

         
	     ''if  Request.ServerVariables("PATH_INFO") = "/Copycats.asp"   then %>
                                                                                <li><a href="loginrepeat.asp?login=cart">LOGIN</a></li>

                                                                                <!--li><a href="Copycats.asp" id="current"> COPYCATS</a></li-->
                                                                                <%''else%>
                                                                                    <!--li><a href="Copycats.asp"> COPYCATS</a></li-->
                                                                                    <%''end If

		if (Request.ServerVariables("PATH_INFO") = "/Search.asp") Or (Request.ServerVariables("PATH_INFO") = "/showgsbr.asp")Or (Request.ServerVariables("PATH_INFO") = "/showsearchNew.asp")then %>
                                                                                        <li class="search_desktop"><a href="https://www.strategyr.com/Search.asp" id="current">SEARCH</a></li>
                                                                                        <!--li class="search_on_mobile">
                        <a data-toggle="collapse" href="https://www.strategyr.com/Search.asp" aria-expanded="false" aria-controls="collapseExample" id="current"><i class="fa fa-search" aria-hidden="true"></i>
                        </a>
                    </li-->
                                                                                        <li class="search_on_mobile">
                                                                                            <a data-toggle="collapse" href="#searchmobile" role="button" aria-expanded="false" aria-controls="collapseExample"><i class="fa fa-search" aria-hidden="true"></i>
                               </a>
                                                                                        </li>


                                                                                        <%else%>
                                                                                            <li class="search_desktop"><a href="https://www.strategyr.com/Search.asp">SEARCH</a></li>
                                                                                            <!--li class="search_on_mobile">
                        <a data-toggle="collapse" href="https://www.strategyr.com/Search.asp" aria-expanded="false" aria-controls="collapseExample" ><i class="fa fa-search" aria-hidden="true"></i>
                        </a>
                    </li-->
                                                                                            <li class="search_on_mobile">
                                                                                                <a data-toggle="collapse" href="#searchmobile" role="button" aria-expanded="false" aria-controls="collapseExample"><i class="fa fa-search" aria-hidden="true"></i>
                        </a>
                                                                                            </li>
                                                                                            <%end If

		
		   
		 If Trim(session("CMI_User_Access")) <> "" Then
			if (Request.ServerVariables("PATH_INFO") = "/self_managmentNew.asp")Or (Request.ServerVariables("PATH_INFO") = "/PrePaidType.asp") then%>
                                                                                                <li><a href="https://www.strategyr.com/companyinsider.asp?code=<%=session(" filename_md5 ")%>" id="current">MY PAGE</a></li>
                                                                                                <%else%>
                                                                                                    <li><a href="https://www.strategyr.com/companyinsider.asp?code=<%=session(" filename_md5 ")%>">GO TO MY PAGE</a></li>
                                                                                                    <!--https://www.strategyr.com/companyinsider.asp?code=1F1A5C0505250FA3916791D7FB7E96D5&cmpID=C0BDF46-->
                                                                                                    <%   End if
		End if
		%>
                                                                                                        <li class=" d-md-none d-sm-none" id="google_translate">
                                                                                                            <div id="google_translate_element"></div>
                                                                                                        </li>

                                                                                                        <li class="search_on_mobile"><a data-toggle="collapse" href="#translator" role="button" aria-expanded="false" aria-controls="collapseExample" class="collapsed"><i class="fa fa-language" aria-hidden="true"></i></a>
                                                                                                        </li>

            </ul>



        </nav>
        <div class="mr-3 ind_life_logo">
            <img src="https://www.strategyr.com/GIA_Images/images/31years.png" class="logo2">
        </div>

        <!--div class="collapse" id="searchmobile">
	<div class="card card-body">
		<div class="row m-0 p-1 shadow border d-flex">
			<input class="search-field w-100 p-3" type="text" id="tags1" x-webkit-speech="true" name="search" value="Search Titles" placeholder="search titles" onfocus="if(this.value=='Search Titles')this.value='';" onblur="unblank(this)" onselect="Redirect();">
			<button type="submit" value="search" name="btnsubmit" class="button1 w-20 mt-0 p-2" style="margin-left:10px !important;width:50px;"><small>Search</small></button>
		</div>

		<div class="row m-0 p-1 shadow border d-flex mt-1">
			<input class="search-field w-100 p-3" type="text" id="tags1" x-webkit-speech="true" name="search" value="Insider Code" placeholder="Insider Code" onfocus="if(this.value=='Search Titles')this.value='';" onblur="unblank(this)" onselect="Redirect();">
			<button type="submit" value="search" name="btnsubmit" class="button1 w-20 mt-0 p-2" style="margin-left:10px !important;width:50px;"><small>Go</small></button>

		</div>
	</div>
</div-->
    </div>

    <div class="collapse" id="searchmobile">
        <div class="card card-body">
            <form name="frm121" method="post" action="showsearchNew.asp">
                <div class="row m-0 p-1 shadow border d-flex">
                    <input class="search-field w-100 p-3" type="text" id="tags1" x-webkit-speech="true" name="search" placeholder="search titles" onfocus="if(this.value=='Search Titles')this.value='';" onblur="unblank(this)" onselect="Redirect();">

                    <button type="submit" value="search" name="btnsubmit" class="button1 w-sm-25 w-md-15 mt-0 p-2 rounded-0" style="margin-left:10px !important;width:50px;"><small>SEARCH</small></button>

                </div>
            </form>
            <!--form name="frm131" method="post" action="INFcheckaccess.asp?btnsubmit=GO">
		<div class="row m-0 p-1 shadow border d-flex mt-1">
			<input class="search-field w-100 p-3" type="text" id="tags1" x-webkit-speech="true" name="Code" placeholder="Insider Code" onfocus="if(this.value=='Search Titles')this.value='';" onblur="unblank(this)" onselect="Redirect();">

			<button type="submit" value="GO" name="btnsubmit" class="button1 w-sm-25 w-md-15 mt-0 p-2 rounded-0" style="margin-left:10px !important;width:50px;"><small>INSIDER</small></button>

		</div>
	</form-->
        </div>
    </div>
    <div class="collapse" id="translator" style="">
        <div class="card card-body" id="collapse_element">

        </div>
    </div>
    <hr>

    <!--<div class="container floated">
		    <div class="sixteen floated page-title">
			
			    <!-<h2> Privileged Research Program Insights(RPI)</h2><br>->
            </div>
        </div>-->
    <!-- MENU END -->

    <div class="clearfix"></div>

    <!-- Google Code for Remarketing tag -->
    <!-- Remarketing tags may not be associated with personally identifiable information or placed on pages related to sensitive categories. For instructions on adding this tag and more information on the above requirements, read the setup guide: google.com/ads/remarketingsetup -->
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-19897524-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();

    </script>

    <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 1005991486;
        var google_conversion_label = "S7ckCKLG5wQQvuzY3wM";
        var google_custom_params = window.google_tag_params;
        var google_remarketing_only = true;
        /* ]]> */

    </script>

    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>

    <noscript>
        <div style="display:inline;">
            <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1005991486/?value=0&amp;label=S7ckCKLG5wQQvuzY3wM&amp;guid=ON&amp;script=0" />
        </div>
    </noscript>

    <!-- Start Alexa Certify Javascript -->
    <script type="text/javascript">
        _atrk_opts = {
            atrk_acct: "7ILQu1Fx9f207i",
            domain: "strategyr.com",
            dynamic: true
        };
        (function() {
            var as = document.createElement('script');
            as.type = 'text/javascript';
            as.async = true;
            as.src = "https://certify-js.alexametrics.com/atrk.js";
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(as, s);
        })();

    </script>
    <noscript><img src="https://certify.alexametrics.com/atrk.gif?account=7ILQu1Fx9f207i" style="display:none" height="1" width="1" alt="" /></noscript>
    <!-- End Alexa Certify Javascript -->






    <!---OBILI SIR COPYED SCRIPT TOP STRIP--->

    <!---script type="text/javascript">
	function googleTranslateElementInit() {
	  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
	}
</script>


    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script--->
