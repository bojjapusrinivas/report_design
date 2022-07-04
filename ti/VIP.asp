<%@ LANGUAGE="VBScript" %>

<!--#include file="ASPIncludes/CheckSQLSearchInc.asp"-->
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]>
<!-->
<html lang="en">
<!--<![endif]-->

<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8">
    <title>Market Research Report Collections - Leading Market Research Reports Firm</title>
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
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/wedges_effect.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <link rel="stylesheet" href="css/simulator_styles2.css" />
    <link rel="stylesheet" href="css/input_style.css" />
    <link rel="stylesheet" href="css/example-styles.css" />
    <link rel="stylesheet" href="css/labels.css" />
    <link rel="stylesheet" href="css/tieevent.css"/>
    


   
   
</head>
<%Server.ScriptTimeout=2000%>
<!--#include file="adovbs.asp"-->
<!--#INCLUDE FILE="aspincludes/dbopen.asp" -->

<%	

Response.CodePage = 65001
Response.CharSet = "utf-8"
''Response.Buffer = True
Response.ExpiresAbsolute = 0

dim First_Name, VIPCODE
VIPCODE=trim(request("VIPCODE"))
First_Name = trim(request("firstname"))

Set RSTieVIP = Server.CreateObject("ADODB.Recordset")						
			Set ConnComp = Server.CreateObject("ADODB.Connection")
			ConnComp.Open Datasource9
			RSTieVIP.ActiveConnection = ConnComp
			''RSCompBrands.CursorType = 3
			''response.write sqlCompBrands
			sqlTieVIP="select * from TiECon_2022_Registries where MD5_Display_Code='" & VIPCode & "'"
			''response.write sqlTieVIP
			RSTieVIP.OPEN sqlTieVIP
			%>


<body id="simulator_page" >
    <!-- Wrapper / Start -->
    <div id="wrapper" class="bor-radius">
        <div id="top-line" style="box-shadow:none; height:5px;"> </div>
        <!-- Content
================================================== -->
        <!---BEGN REPORT TITLE--->
        <!---END REPORT TITLE--->
        <!---BEGIN:PAGE CONTENT--->
        <div class="page-content">
            <div class="container">
                <!---- BEGIN : HEADER SECTION ---->
                <header>
                    <div class="logo_block w-xl-90 w-lg-90 w-md-90 w-100 mx-auto border-bottom" style="margin-bottom:0px;">
                         <!---- BEGIN : HEADER SECTION ---->
               
                       <div class="logo_text px-4">
                            
							<img src="images/strategyr_logo.svg" class="strategyrR_logo text-center mx-auto" style="width:210px !important;">
							
                         </div>
						
						
                       
						
						</div>
               
                <!---- END : HEADER SECTION ---->
                </header>
                <!---- END : HEADER SECTION ---->
                <!---Begin: Main Content--->
				
				
				<div class="container">
                <main >
                    <div id="tieevent">

                        <div class="w-100 py-2 my-2">
							<h1 class="font-weight-bolder">TiECon 2022 - A StrategyR Partner Event</h1>
							<h2>VIP Guest Confirmation</h2>
						</div>


                        <div class="tieevent-content">
                            <form>
                            <%If not RSTieVIP.EOF Then
								if trim(request("VIPCODE")) <> "" then									
									''Set ConnComp = Server.CreateObject("ADODB.Connection")
									''ConnComp.Open Datasource9
									''updateqry="insert into GIA_BECO.dbo.TiECon_2022_Registries_confirm (TiEcon_Code,TiEcon_firstName,Date_Added) values ('"&VIPCODE&"','"&First_Name&"',getdate());"
									''ConnComp.execute updateqry
									
								end if							
                                    %>
                                
								<div class="w-100  mb-2">
                                    <h3><b>VIP:</b><%=RSTieVIP("first_name")%>&nbsp; <%=RSTieVIP("last_name")%> </h3>
                                    <h3><b>ACCESS LINK:</b><a href="https://tiecon2022.framez.sg/"> https://tiecon2022.framez.sg/ </a> </h3>
                                    <h3><b>CODE:</b>  <%=RSTieVIP("TiE_Code")%> <i>(use in place of email)</i></h3>
                                </div>
                                        
                                <div class="w-100 text-left mb-2">
                                    <p> TiEcon 2022, May 5-7, is the world's largest technology-anchored entrepreneurship conference, showcasing thought leaders and bringing together innovators, venture capitalists, and technology firms to inspire and advance entrepreneurship. TiEcon 2022 virtual conference will focus on the hottest areas of innovation including artificial intelligence and machine learning, cloud technologies, crypto, cybersecurity, health, supply chain, sustainability, and more.</p>
                                </div>
                                
                                <div class="w-100 text-right">
                                    <p><a href="https://www.tiecon.org">www.tiecon.org</a></p> 
                                 </div>

                                <div class="d-flex w-100  border-bottom border-top my-3 py-2 justify-content-center flex-wrap">
								
                                    <div class="keybox">
                                        <h4>18</h4>
                                        <h5>Keynotes</h5>
                                    </div>
                                    <div class="keybox">
                                        <h4>13</h4>
                                        <h5>Tech Tracks</h5>
                                    </div>
                                    <div class="keybox">
                                        <h4>252</h4>
                                        <h5>Sessions</h5>
                                    </div>
                                    <div class="keybox">
                                        <h4> 225+</h4>
                                        <h5>Speakers</h5>
                                    </div>
    
                                </div>


                                <div class="w-100 py-2 my-2">
                                    <h2>Speakers</h2>
                                </div>
    
                                <div class="speaker-pg-grid d-flex flex-wrap justify-content-between">
    
                                    <div class="speaker-visible-node">
                                        <div class="speaker-pg-img"> <a href="#speaker3374" data-uk-toggle=""> <img
                                                    width="150" height="150"
                                                    src="https://blog.tiecon.org/form/speaker/cache/3005c0f3c10b395b90df2117f305f75c.jpg"
                                                    alt="Lynn Martin"> </a> </div>
                                        <div class="home-speaker-name"><a href="#speaker3374" data-uk-toggle="">Lynn
                                                Martin</a></div>
                                        <div class="speaker-position">President</div>
                                        <div class="speaker-company">NYSE Group</div>
                                    </div>
    
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="javascript:void(0)" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/89b53143cf344547bc638777f813057e.jpg" alt="Arianna Huffington"> </a> </div> <div class="home-speaker-name"><a href="#speaker3253" >Arianna Huffington</a></div> <div class="speaker-position">Founder and CEO</div> <div class="speaker-company">Thrive</div> </div>
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="javascript:void(0)" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/35eaeade8eec1c5fd7dcaa109b7bb00d.jpg" alt="Vivek Ranadive"> </a> </div> <div class="home-speaker-name"><a href="#speaker3258" >Vivek Ranadive</a></div> <div class="speaker-position">Chairman, CEO and Governor</div> <div class="speaker-company">Sacramento Kings</div> </div>
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="javascript:void(0)" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/63f9e77a20868b71569c9856896df922.jpg" alt="Dr. Albert Bourla"> </a> </div> <div class="home-speaker-name"><a href="#speaker3199" >Dr. Albert Bourla</a></div> <div class="speaker-position">Chairman and Chief Executive Officer</div> <div class="speaker-company">Pfizer</div> </div>
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="javascript:void(0)" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/99ad44388cfd7d4b2bef27079c7d0a68.jpg" alt="Cristiano Amon"> </a> </div> <div class="home-speaker-name"><a href="#speaker3259" >Cristiano Amon</a></div> <div class="speaker-position">President and Chief Executive Officer</div> <div class="speaker-company">Qualcomm </div> </div>
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="javascript:void(0)" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/e8429c914d34958bbc315e397d37a838.jpg" alt="Martin Giles"> </a> </div> <div class="home-speaker-name"><a href="#speaker3370" >Martin Giles</a></div> <div class="speaker-position">Senior Editor</div> <div class="speaker-company">Forbes</div> </div>
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="javascript:void(0)" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/2d3233a9401f5d89e5b63b08d7f9d273.png" alt="Scott Thurm"> </a> </div> <div class="home-speaker-name"><a href="#speaker3464" >Scott Thurm</a></div> <div class="speaker-position">Senior Editor</div> <div class="speaker-company">The Information</div> </div>
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="javascript:void(0)" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/a7d4a636c07fd912c8e9b6f182950fe0.jpg" alt="Aneel Ranadive"> </a> </div> <div class="home-speaker-name"><a href="#speaker3369" data-uk-toggle="">Aneel Ranadive</a></div> <div class="speaker-position">Managing Director</div> <div class="speaker-company">Soma Capital</div> </div>
                                    
                                </div>
    
                                <a href="https://www.tiecon.org/speakers" class="text-center d-block  mb-5 mt-3 more-link"> More Speakers</a>
    

                              
                            </div>
                            <%else%>
                            
                            <%end if%>
                            </form>
                    </div>
                </div>
                </main>
				</div>
                <!---End: Main Content--->
                <!---- END : CONTENT SSECTION ---->
            </div>
            <!---CONTAINER END--->
        </div>   
    <!-- Footer
================================================== -->
    <!-- Footer / Start -->
    <!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip_module.asp"-->
<!---footer_end-->       
    </body>
</html>
