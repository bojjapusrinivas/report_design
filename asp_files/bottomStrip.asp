<!-- ADDED MULTI LANGUAGE --->


<!-- END MULTI LANGUAGE --->

<footer id="footer" style="background: #fff; border-top: #ccc solid 2px;">
    <!-- 960 Container -->
    <div class="container mt-2">

        <div class="four columns">
            <!-- Contact Details -->
            <ul class="w-100  d-flex justify-content-center social-icons Social_icons">
                <!--<li ><a href="https://medium.com/@strategyr" target="new"><img src="\images\social\medium.jpg" style="width:24px;height:auto;" title="Medium"/></a></li>-->
                <li>
                    <a href="https://www.linkedin.com/company/global-industry-analysts-inc./?trk=tyah" target="new"><img src="GIA_Images/images/social/linkedin.jpg" style="width:20px;height:auto;" title="Linkedin"></a>
                </li>
                <li>
                    <a href="https://twitter.com/MarketBytes" target="new"><img src="GIA_Images/images/social/twitter.jpg" style="width:20px;height:auto;" title="Twitter"></a>
                </li>
                <!--li><a href="https://www.facebook.com/GIAMarketResearch" target="new"><img src="GIA_Images/images/social/facebook.jpg" style="width:24px;height:auto;" title="Facebook"></a></li-->
                <!--<li ><a href="https://plus.google.com/+MarketBytesByGlobalIndustryAnalystsInc" target="new"><img src="\images\social\googleplus.jpg" style="width:24px;height:auto;" title="Google+"/></a></li>-->
                <!--li><a href="https://strategyr.blogspot.com/" target="new"><img src="GIA_Images/images/social/bloger.jpg" style="width:24px;height:auto;" title="Blogspot"></a></li-->
                <!--li><a href="https://in.pinterest.com/globalindustryanalystsinc/"  target="new"><img src="GIA_Images/images/social/pinterest.jpg" style="width:24px;height:auto;" title="Pinterest" target="new"></a></li-->
                <!--li><a href="https://marketbytes.tumblr.com/" target="new"><img src="\images\social\tumblr.jpg" style="width:24px;height:auto;" title="Tumblr"></a></li-->
            </ul>
            <% if ((trim(Request.ServerVariables("PATH_INFO")) ="/AddToCart.asp") or  (trim(Request.ServerVariables("PATH_INFO")) ="/Checkout.asp"))  then%>
                <div class="ten columns">
                    <img src="GIA_Images/images/payment_icons.jpg" style="width:350px;height:auto;" class="payment_services" style="">
                </div>
                <%end if%>
        </div>

        <div class="seven columns">
            <div class="footer_nav">
                <ul class="d-flex justify-content-center flex-wrap contact-details-alt" style="height:auto !important;margin-bottom:2px;margin-top:2px !important;">
                    <li><a href="#TM" rel="modal:open"> Trademarks</a></li>
                    <li><a href="javascript:OpenWin(1)"> Disclaimer</a></li>
                    <li><a href="javascript:OpenWin(2)"> Privacy Policy</a></li>
                    <li><a href="contact.asp"> Contact Us</a></li>
                    <li><a href="feedback.asp"> Feedback</a></li>
                    <li><a href="Copycats.asp"> Buyer Alert</a></li>
                    <!--li><a href="loginrepeat.asp"> Login</a></li-->
                    <!-- <li>|</li>
                <li><a href="careers.asp"> Careers</a></li>
				<li>|</li>
				<li><a href="clientlist.asp"> Clients</a></li>
				<li>|</li>
                <li><a href="blog/blog.asp"> Blog</a></li>-->
                    <!--<li>|</li>
				<li><script src='//platform.linkedin.com/in.js' type='text/javascript'>  lang: en_US </script><script type='IN/Share' data-url='https://www.StrategyR.com'></script></li>-->


                </ul>
                <style>
                    .blocker {
                        z-index: 9999 !important;
                    }

                </style>
                <div id="TM" class="modal">
                    <h3 class="text-dark text-center font-weight-bold font-size-20">TRADEMARKS</h3>
                    <p class=" p-2 mb-0">All product and company names are trademarks or registered trademarks of their respective holders. The written discussions of these products and/or companies in our research programs does not imply any affiliation with or their endorsement of our products or services.</p>
                    <p class=" p-2">StrategyR, MarketGlass, Influencer Driven, Influencer Powered, Peer Acumen, Enterprise Acumen, BizAcumen, Industry Acumen, are Trade Marks and Brands owned by Global Industry Analysts, Inc., A California Corporation. All Rights Reserved.</p>
                </div>
            </div>
        </div>
        <!-- Twitter -->
        <div class="five columns text-center pt-1">
            <div>
                <!--	<span style="color:black !important;"><strong>Privacy queries:</strong> Privacy@StrategyR.com</span><br> 
						<span style="color:black !important;"><strong>Sales queries:</strong> Sales@StrategyR.com</span><br>
						<span style="color:black !important;"><strong>General queries:</strong> Info411@StrategyR.com</span>-->
                <span style="color:black !important; ">General queries: Info411@StrategyR.com</span>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- 960 Container / End -->
    </div>
</footer>
<!-------- SLIDE SHOW ONLY FOR HOME PAGE  START--->

<script src="scripts/slideshow/jquery.flexslider.js"></script>
<script src="scripts/slideshow/column-height.js"></script>
<script src="scripts/slideshow/custom.js"></script>
<script src="scripts/jquery.min.js"></script>
<script src="scripts/jquery.flexslider.js"></script>
<script src="scripts/jquery.selectnav.js"></script>
<script src="scripts/jquery.modernizr.js"></script>
<script src="js/bootstrap.bundle.js"></script>
<script src="scripts/custom.js"></script>
<script src="js/respond.js"></script>
<script src="js/respond.proxy.js"></script>
<!-------- SLIDE SHOW ONLY FOR HOME PAGE  START--->
<!---footer_end-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script language="Javascript">
    function OpenWin(num) {
        var val = num;
        if (val == 0) {
            myWin = open("trademark.htm", "Globind", "width=360,height=220,status=no,toolbar=no,menubar=no,scrollbars=no");
        }
        if (val == 1) {
            myWin = open("disclaimer.htm", "Globind", "width=800,height=700,status=no,toolbar=no,menubar=no,scrollbars=yes");
        }
        if (val == 2) {
            myWin = open("privacy.htm", "Globind", "width=350,height=218,status=no,toolbar=no,menubar=no,scrollbars=no");
        }
        if (val == 3) {
            myWin = open("copyrights.htm", "Globind", "width=350,height=330,status=no,toolbar=no,menubar=no,scrollbars=yes");
        }
        if (val == 4) {
            myWin = open("Privilegedaccess.htm", "Globind", "width=750,height=500,status=no,top=20,toolbar=no,menubar=no,scrollbars=no");
        }
    }

</script>
<!--footer id="footer">	
	<div class="container">
		<div class="eleven columns">
			<ul class="contact-details-alt">
				<li><a href="javascript:OpenWin(1)" > Disclaimer</a></li>
                <li><a href="javascript:OpenWin(2)"> Privacy policy</a></li>
                <li><a href="contact.asp"> Contact Us</a></li>
                <li><a href="feedback.asp"> Feedback</a></li>
                <li><a href="careers.asp"> Careers</a></li>
			</ul>
		</div>
		<--div class="four columns">
       		 <img src="images/gia/pay_pal.png"/>
			 <div class="clearfix"></div>
		</div->
	</div>
</footer-->
<style>
    .contact-details-alt li a {
        font-size: 11px;
    }

</style>
<footer id="footer-bottom ">

    <div id="wrapper" class="border-top py-2">
        <!-- 960 Container -->
        <div class="container ">
            <!-- Copyrights -->
            <div class="sixteen columns ">
                <div class="copyright text-center  text-dark"><small>
				&copy; <script language="JavaScript">document.write(new Date().getFullYear());</script> Global Industry Analysts, Inc., USA. All Rights Reserved.</small>
                </div>
            </div>
        </div>
    </div>
    <!-- 960 Container / End -->
</footer>



<!-------- SLIDE SHOW ONLY FOR HOME PAGE  START--->
<script src="scripts/slideshow/jquery.flexslider.js"></script>
<script src="scripts/slideshow/column-height.js"></script>
<script src="scripts/slideshow/custom.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="js/bootstrap.bundle.js"></script>
<!-------- SLIDE SHOW ONLY FOR HOME PAGE  START--->


<script>
    jQuery(document).ready(function($) {
        var alterClass = function() {
            var ww = document.body.clientWidth;
            if (ww < 959) {
                $('#collapse_element').append($('#google_translate_element'));
            } else if (ww >= 960) {
                $('#google_translate').append($('#google_translate_element'));
            };
        };
        $(window).resize(function() {
            alterClass();
        });
        //Fire it when the page first loads:
        alterClass();
    });

</script>

<!---OBILI SIR COPYED SCRIPT TOP STRIP--->
<script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({
            pageLanguage: 'en',
            includedLanguages: 'en,es,zh-CN,de,ja,nl,fr'
        }, 'google_translate_element');
    }

</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
