<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en-US">
<!--<![endif]-->
<!--#INCLUDE FILE="adovbs.asp"-->
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--include file="ASPIncludes/SiteFunctions.asp"-->

<head>
    <!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8">
    <title>Methodology:: Global Industry Analysts Inc.</title>
    <!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <style>
        <style> .block_section {
            width: 100%;
        }
        
        .image_responisive {
            width: 70%;
            margin: 0 auto;
        }
        
        .desktop {
            display: block;
        }
        
        .tab {
            display: none;
        }
        
        .mobile {
            display: none;
        }
        /*-----tab----*/
        
        @media only screen and (max-width: 768px) {
            .desktop {
                display: none !important;
            }
            .tab {
                display: block;
            }
            .mobile {
                display: none !important;
            }
        }
        /*-----mobile----*/
        
        @media only screen and (max-width: 500px) {
            .image_responisive {
                width: 100%;
                margin: 0 auto;
            }
            .desktop {
                display: none !important;
            }
            .tab {
                display: none !important;
            }
            .mobile {
                display: block !important;
            }
        }

    </style>

    </style>
	<!--form name="frmlang">
        <select id="targetLanguage">
            <option value="ZH">Chinese (Mandarin)</option>
            <option value="CS">Czech</option>
            <option value="DA">Danish</option>
            <option value="NL">Dutch</option>
            <option value="EN" selected = "selected">English</option>
            <option value="ET">Estonian</option>
            <option value="FR">French</option>
        </select>

        <input type="button" id="translateButton1" name="translateButton1" value="Translate" />
    </form-->

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("#translateButton1").click(function () {
			var getlang = $("#targetLanguage").val();
			alert (getlang);
            var url = "https://translation.googleapis.com/language/translate/v2";
            //Strings requiring translation
            url += "?q=" + escape($("#content").text());
           // url += "&q=" + escape($("#title").text());
            //Target language
            url += "&target=" + $("#targetLanguage").val();
            //Replace with your API key
            url += "&key=b946154b8e299eb6342d0ed27aca5564d3d3b39f";
            $.get(url, function (data, status) {
                //Results are returned in an array following the order they were passed. 
                $("#content").text(data.data.translations[0].translatedText);
                //$("#title").text(data.data.translations[1].translatedText);
            });       
        });
    </script> 

<link rel="stylesheet" href="css/mg_flow_chart2.css">
	
</head>

<body leftmargin=0 rightmargin=0 topmargin=0 bottommargin=0 onBeforePrint="document.body.style.display='none'" onAfterPrint="document.body.style.display=''" onContextmenu="return false" onSelectstart="return false" onDragstart="return false">
    <!-- Wrapper  Start -->
	

    <div id="wrapper" class="bor-radius">
        <!-----TOP START----->
        <!--#include file="ASPIncludes/TopStrip.asp"-->
        <!-----TOP START END----->
	

        <!-- Body Start here -->
        <div id="content" name="content">
            <!---PAGE TITLE BLOCK START--->
            <!-- <div class="container floated">
		    <div class="sixteen floated page-title">
			    <!-<h2>Methodology</h2><br>->
            </div>
        </div>-->
            <!---PAGE TITLE BLOCK ENDS--->
            <!-- Page Content -->
            <div class="page-content">
                <!--Page content inner start--->
                <div class="container">
                    <!-- sixteen column start -->
					
		
                    <div class="sixteen columns">
                        <div class="row text-center cx-title gia_page_title text-center">
                            <h1 class="mb-0">The MarketGlass<sup><small class="trade_mark">TM</small></sup> Platform</h1>
                            <h2 class="my-0">Intelligence Amplified to the Power of YOU!</h2>

                        </div>
                        <!--<h2 align="center" style="line-height: 20px; !important"><strong style="font-weight: 800; !important">The MarketGlass&#8482; Platform</strong></h2>
<h3 align="center"  style="font-weight:bold;color:#0080C2;font-size:14px;">Intelligence Amplified to the Power of YOU!</h3><br>-->


                        <h3 class="mb-0">What’s MarketGlass™ ?</h3>
                        <p class="mb-2">MarketGlass™ is our proprietary decentralized enterprise-level AI-driven B2B platform designed ground-up to offer the best UX to executives who contribute byte sized insights geographically or a comprehensive global perspective based upon their executive roles and domain expertise.</p>

                        <p class="mb-2">
                            In addition to being a global executive intelligence exchange platform, MarketGlass™ is a powerful knowledge center that transforms into an everyday business executive intelligence tool!
                        </p>

                        <h3 class="mb-0">How Does It Work?</h3>
                        <p class="mb-2">
                            Our platform enables participation across enterprises worldwide. Our peer collaborative and interactive research methodologies deliver the best curated intelligence at the enterprise level. These insights are cross-pollinated across the players in the domain through our dynamic data cluster displays. Providing insights while gaining insights from other domain expert contributions is a significant ROI for participation.
                        </p>


                        <p class="mb-2">Only one of its kind, the platform delivers a unique experience, unlocking creativity and domain knowledge in cohesive and collaborative manner for each project in a globally decentralized market ecosystem. Executive engagements within participating enterprises for every project are cross pollinated across competitive outfits worldwide.
                        </p>


                        <h3 class="mb-0">Knowledge Center</h3>
                        <p class="mb-2">
                            Participants and clients have full-stack data access for projects they support or purchase. Insider access privileges vary by level of commitment as described in the “PANELS” link on our home page. Privileges include real-time news, world events in your domain, trending market data, project update alerts, tracking competitive activity, world brands in your domain, publish blogs from premium content, produce podcasts using a choice of voice libraries or your own recorded voice, convenient usage of our curated content to edit and build your own insights form direct social media posting on LinkedIn or Twitter or FaceBook.
                        </p>



                        <h3 class="mb-0">Innovation Is A Journey</h3>
                        <p class="mb-2">Our platform has constantly evolved with improved algorithms and user experiences. Our second generation release has been tested and used by more than 37,400 domain experts during 2020.
                        </p>




                        <h3 class="mb-0">AI-Curated Secondary Research</h3>
                        <p class="mb-2">
                            Our proprietary search sequencing technology allows multi-modality deep searches 7000 times faster than the human ability to process. Each search goes beyond keywords, filtering out self-serving fictitious data sources that push biased content through press releases, social and other conventional channels. Third-party sources such as legacy websites, blogs, social posts, rewrites, press releases, etc., make claims and publish bold facts that are disingenuous marketing content that is often biased. Our multi-tiered adaptive learning algorithms dig deep into the content and set level-2 tags to eliminate fictitious content. Once tagged, our embedded AI filters will automatically recognize all future repetitive patterns from the same source. All clean heterogenous content is collated into homogeneous structured intelligence.
                        </p>

                        <p class="mb-2">
                            Over the past three years, our platform curated 141 million original links, tagged 1.7 million sources as clean, and permanently invalidated 6+ million sources!
                        </p>

                        <!--- IMAGE ---->

                        <h3 class="mb-0">The Global Market Influencer</h3>
                        <p class="mb-2">
                            Market influencers driving decisions at competitive firms worldwide enrich our projects with current actionable intelligence. We're currently tracking 2.4 million market influencers across 240,000 companies worldwide that are profiled and prepped for our ongoing research projects. By the end of 2020 our primary research outreach contacted more than 853,000 influencers for ongoing projects. We're currently tracking 430,000+ engagements from 67,000+ domain experts.
                        </p>

                        <h3 class="mb-0">Primary Outreach</h3>
                        <p class="mb-2">
                            Our outreach initiatives offer the best UIUX regardless of the device or operating systems. They’re fully mobile device enabled. Participants may get engaged on on their desktops, laptops, tablets, mobile devices or even through our newly launched MarketGlass™ Mobile App! Download the app on iOS or Android platforms.

                        </p>


                        <h3 class="mb-0">Collaborate with Peers</h3>
                        <p class="mb-2">
                            Our primary research platform encourages collaborative participations across your enterprise. When the host participant chooses to purchase a license, we offer complimentary copies to all participating colleagues (max 10). This has been a great motivator for drawing participants. Collaborative team efforts encourage creative energy and always yield the best results.
                        </p>



                        <h3 class="mb-0">Cross Enterprise Insights</h3>
                        <p class="mb-2">
                            Our platform masterfully navigates multi-dimensional multi-modality cross-pollination of ideas. In a winner-take-all enterprise-level market mindset, influencers tend not to share critical data about their companies and less likely to publicly comment on primary competitors. Our innovative platform successfully overcomes this hurdle by protecting participant identity of individuals and companies while secure fully validated interactions.
                        </p>


                        <h3 class="mb-0">Cluster of Clusters</h3>
                        <p class="mb-2">
                            Data clusters for every data point and every research module such as Geographically focused Analytics in multiple research modules are displayed real-time for the benefit of the participant to see where they fit within the cluster with % deviations +/- for Market Trajectories, Market Shares, Pricing Trends, fir every product/service segment, year, and geography.
                        </p>


                        <h3 class="mb-0">Domain Expertise Rankings</h3>
                        <p class="mb-2">
                            Our primary research platform allows curation of domain expertise of peers or competitive company executives. Participants can view every influencer tracked in every competitive firm and rank them for project fit and expertise.
                        </p>

                        <h3 class="mb-0">Leveraging 33-Year Historic Data</h3>
                        <p class="mb-2">
                            As a 33-year market research powerhouse, we constantly build upon a strong layer of preexisting original data. More than 92% of our current ongoing projects offer a 10-year historic review. Average of 7 Editions and decades of research and analysis.
                        </p>


                        <h3 class="mb-0">Dynamic Project Alerts & Updates</h3>
                        <p class="mb-2">
                            Market analytics are recomputed whenever the validated data variances exceed a 5% (+/-) tolerance. Internalized alerts help our experienced senior industry analysts to monitor and administer changes.
                        </p>






                        <div class="container">
                            <div class="row  mt-4">

 

                                <h3 class="text_brown font-weight-bold text-center">The Best ROI For Your Time - Guaranteed!</h3>

 

                                <div class="w-xl-95 w-lg-95  w-md-45 w-sm-80 mt-3 mx-auto">

                                    <div class="d-flex justify-content-center flex-xl-row flex-lg-row flex-md-column flex-sm-column">

                                        <ul class="five columns text-left gia_list_display mb-0">

                                            <li>Domain Expert Panels</li>

                                            <li>Powerful Knowledge Center</li>

                                            <li>Influencer Validated</li>

                                            <li>Peer Collaborations</li>

                                            <li>Enterprise Cluster Views</li>

                                            <li>Interactive Questionnaires</li>

 

                                        </ul>

 

                                        <ul class="five columns text-left gia_list_display mb-0">

                                            <li>Bespoke Report Generation</li>

                                            <li>AI-Driven B2B Research</li>

                                            <li>Audit Enabled Programs</li>

                                            <li>Trending Market Intelligence</li>

                                            <li>Custom Configured Newsfeeds</li>

                                            <li>Track Competitive Brands</li>

                                        </ul>

 

                                        <ul class="five columns text-left gia_list_display mb-0">

                                            <li>Create &amp; Publish Blogs</li>

                                            <li>Create &amp; Publish Podcasts</li>

                                            <li>Track Domain Events</li>

                                            <li>LinkedIn &amp; Twitter Sharing</li>

                                            <li>Research Program Previews</li>

 

                                        </ul>

                                    </div>

 

 

 

                                </div>

 

 

                            </div>

                        </div>

                        <div class="w-100">
                            <div id="mg_flow_chart mt-4">
            
                                <!--- FLOW CHART 1 --->
                                <div id="flow_chart_block" class="my-3">
            
                                    <h3 class="text-center title">Primary  Research</h3>
            
                                    <div id="flow_chart_content">
                                        
                                    
                                            <!----BEGIN FIRST BLOCK-->
                                            <div id="flow_chart_block_01" class="blue_border" >
                                                <div class="first_block ">
                                                <h4 class="text-center my-0"><strong>TARGETED OUTREACH</strong></h4>
                                                </div>
            
                                                <div class="second_block d-flex flex-row justify-content-center my-1">
                                                        <span class="mx-2 blue_border p-1">Eamil</span>
                                                        <span class="mx-2 blue_border p-1">Snail</span>
                                                        <span class="mx-2 blue_border p-1">Phone</span>
                                                </div>
                
                                            </div>
                                            <!----END FIRST BLOCK-->
            
                                            <div class="flow_01">
                                                <i class="fa fa-arrow-down right float-right" aria-hidden="true"></i>
                                                <i class="fa fa-arrow-down left float-left" aria-hidden="true"></i>
                                            </div>
            
                                       
            
                                             <!----BEGIN SECOND BLOCK-->
                                             <div id="flow_chart_block_02" class="d-flex flex-row justify-content-around my-2 " >
                                                <div class="left_block px-3 py-0 blue_border mx-1 ">
                                                <p class="text-center my-1 "><strong>240,000+  Companies</strong></p>
                                                </div>
            
                                                <div class="right_block px-3 py-0 blue_border mx-1">
                                                <p class="text-center my-1  "><strong>3.2 Million Expert Pool</strong></p>
                                                </div>
                                            </div>
                                            <!----END SECOND BLOCK-->
            
                                            
                                            <div class="flow_02"></div>
            
            
                                             <!----BEGIN THIRD BLOCK-->
                                             <div id="flow_chart_block_03" class="my-2 " >
                                                <div class="first_block px-3 py-0 blue_border squre_box d-flex flex-column justify-content-center align-items-center mx-auto transform_rotate_45">
                                                    <div class="text-center d-flex flex-column justify-content-center align-items-center transform_rotate_45_opposite">
                                                    <span class="mx-2 ">800,000+</span>
                                                    <span class="mx-2 ">Market</span>
                                                    <span class="mx-2 ">Influencers</span>
                                                    <span class="mx-2 ">Engaged</span>
                                                    <span class="mx-2 ">Annually</span>
                                                </div>
                                                </div>
                                            </div>
                                            <!----END THIRD BLOCK-->
            
                                            <div class="flow_03">
                                                <i class="fa fa-arrow-down right float-right" aria-hidden="true"></i>
                                                <i class="fa fa-arrow-down left float-left" aria-hidden="true"></i>
                                            </div>
            
            
            
                                            <!----BEGIN FOURTH BLOCK-->
                                            <div id="flow_chart_block_04" class="d-flex flex-row justify-content-around my-2 " >
                                                <div class="left_block px-3 py-0 blue_border mx-1">
                                                <p class="text-center my-1 "><strong>Across Enterprises Eco Connect</strong></p>
                                                </div>
            
                                                <div class="right_block px-3 py-0 blue_border mx-1">
                                                <p class="text-center my-1 "><strong>Intra-Enterprise Pree-to-Pree</strong></p>
                                                </div>
                                            </div>
                                            <!----END FOURTH BLOCK-->
            
            
                                            <div class="flow_04">
                                                <i class="fa fa-arrow-down right float-right" aria-hidden="true"></i>
                                                <i class="fa fa-arrow-down left float-left" aria-hidden="true"></i>
                                            </div>
            
                                            <!----BEGIN FIFTH BLOCK-->
                                            <div id="flow_chart_block_05" class="d-flex flex-row justify-content-between my-2 " >
            
            
                                            <div class="left_block py-0 d-flex flex-column justify-content-center mr-2 mr-md-3 mr-lg-3 mr-xl-3 ">
                                                <p class="text-center my-1 blue_border px-1 py-2 bottom_arrow"><strong>Cross-Pollinated Insights</strong></p>
                                                
                                                <p class="text-center my-1 blue_border px-1 py-2 mt-4"><strong>Blockchain Validated & Secured Identities</strong></p>
                                            </div>
            
                                            <div class="right_block   py-0  d-flex flex-row justify-content-between ml-2 ml-md-3 ml-lg-3 ml-xl-3">
                                                <div class="left_block d-flex flex-column justify-content-center mr-2 mr-md-3 mr-lg-3 mr-xl-3">
                                                    <p class="text-center my-1 blue_border px-1 py-2 right_arrows"><strong>Business Unit</strong></p>
                                                    <p class="text-center my-1 blue_border px-1 py-2 right_arrows"><strong>Localized Teams</strong></p>
                                                </div>
            
                                                <div class="right_block blue_border d-flex justify-content-center align-items-center ml-2 ml-md-3 ml-lg-3 ml-xl-3">
                                                    <p class="text-center my-1 p-2"><strong>Marketing Strategy Business Development Product Management Sales</strong></p>
                                                </div>
            
                                            
                                            </div>
                                            </div>
                                            <!----END FIFTH BLOCK-->
                                            <div class="flow_05"></div>
            
                                                 
                                            <!----BEGIN SIXTH BLOCK-->
                                             <div id="flow_chart_block_06" class="mt-1" >
                                                <div class="first_block px-3 py-0 blue_border d-flex flex-column justify-content-center align-items-center mx-auto">
                                                    <div class="text-center d-flex flex-column justify-content-center align-items-center">
                                                       <h4 class="text-center">CLUSTER OF CLUSTERS</h4>
                                                       <p>Enriched Global Perspectives</p>
                                                       <ul>
                                                           <li class="text-left">Enterprise Dominance</li>
                                                           <li class="text-left">Influencer Ranks</li>
                                                           <li class="text-left"> Geographies</li>
                                                       </ul>
                                                   
                                                </div>
                                                </div>
                                            </div>
                                            <!----END SIXTH BLOCK-->
            
                                    </div>
            
                                </div>
                            </div>
            
                        </div>







                        <!--div class="block_section">
                            <div class="desktop">
                                <img src="images/Chart-22.jpg" class="image_responisive" />
                            </div>
                            <div class="tab">
		<img src="Chart-780-3.jpg" class="image_responisive"/>
	</div>
                            <div class="mobile">
                                <img src="images/Chart-780-2.jpg" class="image_responisive" />
                                <br>
                            </div>

                        </div--->

                        <div class="block_section">
                            <div class="desktop">
                                <img src="images/Chart-11.jpg" class="image_responisive" />
                            </div>
                            <!--div class="tab">
		<img src="Chart-780-3.jpg" class="image_responisive"/>
	</div-->
                            <div class="mobile">
                                <img src="images/Chart-780-1.jpg" class="image_responisive" />
                                <br>
                            </div>

                        </div>



                        <!--div class="block_section">
	<div class="desktop">
		<img src="images/Chart-33.jpg" class="image_responisive"/>
	</div>
	
	<div class="mobile">
		<img src="images/Chart-780-3.jpg" class="image_responisive"/><br>
	</div>
	
</div-->



                    </div>
                </div>
                <!-- sixteen column start -->
            </div>
            <!--Page content inner end--->
        </div>
        <!-- Page Content / End -->
    


</div>
    <!-- Body End here -->
    </div>
	
    <!-- Wrapper / End -->
    <!-- Footer start-->
    <!--#include file="ASPIncludes/BottomStrip.asp"-->
    <!---footer_end-->
	
</body>

</html>
