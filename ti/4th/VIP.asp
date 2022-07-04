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
    <title>Domain Executive Curated Market Intelligence</title>
    <!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS
================================================== -->
    <link rel="stylesheet" href="https://www.strategyr.com/css/style.css">
    <link rel="stylesheet" href="https://www.strategyr.com/css/gia.css">
    <link rel="stylesheet" href="https://www.strategyr.com/css/colors/blue.css" id="colors">
    <link rel="shortcut icon" href="https://www.strategyr.com/images/favicon.ico" />
    <link rel='stylesheet' href="https://www.strategyr.com/css/all-ie-only.css" />
    <link rel='stylesheet' href="https://www.strategyr.com/css/tri_page.css" />
    <link rel='stylesheet' href="https://www.strategyr.com/css/gia_switches.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/font-awesome.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/wedges_effect.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/simulator_styles2.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/input_style1.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/example-styles.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/labels.css" />
    <link rel="stylesheet" href="https://www.strategyr.com/css/tieevent.css"/>    
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
VIPCODE = trim(request("VIPCODE"))

Set ConnComp = Server.CreateObject("ADODB.Connection")
Set RSTieVIP = Server.CreateObject("ADODB.Recordset")
ConnComp.Open Datasource9
RSTieVIP.ActiveConnection = ConnComp
sqlTieVIP="select * from TiECon_2022_Registries where MD5_Display_Code='" & VIPCode & "'"
RSTieVIP.OPEN sqlTieVIP
%>
<script>
function Data_Check(KeyID,KeyType)
		{
			var vKey_Value;
			if (KeyType == 'VIP')
			{
				vKey_Value = $("input[name='VIPList"+KeyID+"']:checked").val();
			}
			else if (KeyType == 'SPEAKER')
			{
				vKey_Value = $("input[name='SpeakingOpp"+KeyID+"']:checked").val();				
			}
			KeySegName = 'on';
			if (vKey_Value == KeySegName)
			{
				
				if (vKey_Value != null && vKey_Value != 'undefined' )		 
				 {	
					//alert (vKey_Value);
					$.ajax({
							url: "https://www.strategyr.com/UpdateTiE2022_pref.asp",
							type: "POST",
							data:'vGIANO='+encodeURIComponent(KeyID)+'&vType='+encodeURIComponent(KeyType)+'&vStatus='+encodeURIComponent(vKey_Value)+'',
							success: function(data){
							//alert(data);
							//GetSegTypePrimaryAppdata_B(vGIANO);
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});				
				  }
			}
			else
			{
				alert ('FUTURE ENGAGEMENTS option has been checked already. Thank you');
				//$("#rdB2B").prop("checked", true);
				if (KeyType == 'VIP')
				{
					$("#VIPList"+KeyID).prop("checked", true);
				}
				else if (KeyType == 'SPEAKER')
				{
					$("#SpeakingOpp"+KeyID).prop("checked", true);			
				}
			}
		}
</script>
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
							<img src="https://www.strategyr.com/images/strategyr_logo.svg" class="strategyrR_logo text-center mx-auto" style="width:210px !important;">							
                         </div>
						</div>               
                <!---- END : HEADER SECTION ---->
                </header>
                <!---- END : HEADER SECTION ---->
                <!---Begin: Main Content--->
				<div class="container">
                <main >
                    <div id="tieevent">
					<%If not RSTieVIP.EOF Then
								First_Name = trim(RSTieVIP("first_name"))
								if trim(request("VIPCODE")) <> "" then
									Set ConnComp = Server.CreateObject("ADODB.Connection")
									ConnComp.Open Datasource9
									updateqry="insert into GIA_BECO.dbo.TiECon_2022_Registries_confirm (TiEcon_Code,TiEcon_firstName,Date_Added) values ('"&VIPCODE&"','"&First_Name&"',getdate());"
									ConnComp.execute updateqry									
								end if					
                                    
								Dim CheckVIP_Status, CheckSpeaker_Status
								Dim CheckVIP_Status_on, CheckSpeaker_Status_on
								CheckVIP_Status = trim(RSTieVIP("VIP_Check"))
								CheckSpeaker_Status = trim(RSTieVIP("Speaker_Check"))
								
								If lcase(trim(CheckVIP_Status))="on" then
									CheckVIP_Status_on = " Checked" 
								Else
									CheckVIP_Status_on = "" 
								End If
								
								If lcase(trim(CheckSpeaker_Status))="on" then
									CheckSpeaker_Status_on = " Checked" 
								Else
									CheckSpeaker_Status_on = "" 
								End If
									%>
                        <div class="w-100 py-2 my-2">
							<h1 class="font-weight-bolder">TiECon 2022 - A StrategyR <span>TM</span> Event-Partner </h1>
							<div class="d-flex justify-content-center flex-wrap my-3"><h2>VIP Guest Confirmation - </h2><h2>&nbsp;<%=RSTieVIP("first_name")%>&nbsp; <%=RSTieVIP("last_name")%></h2></div>
						</div>
                        <div class="tieevent-content">
                            <form> 
								<div class="w-100  mb-2">
                                   <!-- <h3><b>VIP:</b><%=RSTieVIP("first_name")%>&nbsp; <%=RSTieVIP("last_name")%> </h3>-->
                                    <h3><b>ACCESS LINK:</b><a href="https://tiecon2022.framez.sg/"> https://tiecon2022.framez.sg/ </a> </h3>
                                    <h3><b>CODE:</b>  <%=RSTieVIP("TiE_Code")%> <i>(use in place of email)</i></h3>
									<h3 class="mb-2"><b>FUTURE ENGAGEMENTS</b> </h3>
									<div class="domanexpert pb-3 border-bottom mb-3">
										<div class="form-group form-check ">
											<input type="checkbox" class="form-check-input" <%=CheckVIP_Status_on%> id="VIPList<%=RSTieVIP("sno")%>" name="VIPList<%=RSTieVIP("sno")%>" onclick="Data_Check('<%=RSTieVIP("sno")%>','VIP')">
											<label class="form-check-label" for="VIPList<%=RSTieVIP("sno")%>">VIP @ 40+ World Conferences</label>
										  </div>
										<div class="form-group form-check">
											<input type="checkbox" class="form-check-input" <%=CheckSpeaker_Status_on%> id="SpeakingOpp<%=RSTieVIP("sno")%>" name="SpeakingOpp<%=RSTieVIP("sno")%>" onclick="Data_Check('<%=RSTieVIP("sno")%>','SPEAKER')">
											<label class="form-check-label" for="SpeakingOpp<%=RSTieVIP("sno")%>">Speaking Opportunities</label>
										  </div>
									</div>
                                </div>                                        
                                <div class="w-100 text-left mb-2">
                                    <p> TiEcon 2022, May 5-7, is the world's largest technology-anchored entrepreneurship conference, showcasing thought leaders and bringing together innovators, venture capitalists, and technology firms to inspire and advance entrepreneurship. TiEcon 2022 virtual conference will focus on the hottest areas of innovation including artificial intelligence and machine learning, cloud technologies, crypto, cybersecurity, health, supply chain, sustainability, and <a href="https://www.tiecon.org">more...</a></p>
                                </div>                                
                                <!--div class="w-100 text-right">
                                    <p><a href="https://www.tiecon.org">www.tiecon.org</a></p> 
                                 </div-->
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
                                    <h2>SPEAKERS</h2>
                                </div>    
                                <div class="speaker-pg-grid d-flex flex-wrap justify-content-between">


                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3199" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/63f9e77a20868b71569c9856896df922.jpg" alt="Dr. Albert Bourla"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3199" >Dr. Albert Bourla</a></div> <div class="speaker-position">Chairman and CEO</div> <div class="speaker-company">Pfizer</div> </div>
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3259" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/99ad44388cfd7d4b2bef27079c7d0a68.jpg" alt="Cristiano Amon"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3259" >Cristiano Amon</a></div> <div class="speaker-position">President and CEO</div> <div class="speaker-company">Qualcomm </div> </div>
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3253" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/89b53143cf344547bc638777f813057e.jpg" alt="Arianna Huffington"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3253" >Arianna Huffington</a></div> <div class="speaker-position">Founder and CEO</div> <div class="speaker-company">Thrive</div> </div>
                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3335" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/291a14a12c63e82b0326f35c97cc0644.jpg" alt="Dr. Bratin Saha"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3335" data-uk-toggle="">Dr. Bratin Saha</a></div> <div class="speaker-position">Vice President of Machine Learning and AI services</div> <div class="speaker-company">Amazon AI</div> </div>     
                                    
                                    
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
                                                                    
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3258" > <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/35eaeade8eec1c5fd7dcaa109b7bb00d.jpg" alt="Vivek Ranadive"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3258" >Vivek Ranadive</a></div> <div class="speaker-position">Chairman, CEO and Governor</div> <div class="speaker-company">Sacramento Kings</div> </div>
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3255" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/3b4fc04ab2dc7013cfc3d35919bbb8b5.jpg" alt="Navin Chaddha"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3255" data-uk-toggle="">Navin Chaddha</a></div> <div class="speaker-position">Managing Director</div> <div class="speaker-company">Mayfield Fund</div> </div>
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3323" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/8653b12cab6214b501fca9fe53900b53.jpg" alt="Nandan Nilekani"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3323" data-uk-toggle="">Nandan Nilekani</a></div> <div class="speaker-position">Co-Founder and Chairman</div> <div class="speaker-company">Infosys Technologies</div> </div>
                                    
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3187" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/21660c127d910ed0de9a6e11b18a610e.jpg" alt="George Kurian"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3187" data-uk-toggle="">George Kurian</a></div> <div class="speaker-position">CEO</div> <div class="speaker-company">NetApp</div> </div>
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3320" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/6acc69d85376a8fa7e4984b90c665007.jpg" alt="Girish Mathrubootham"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3320" data-uk-toggle="">Girish Mathrubootham</a></div> <div class="speaker-position">CEO and Founder</div> <div class="speaker-company">Freshworks</div> </div>
                                    
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3377" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/c3b46068aa9c33925963036ad4546b98.jpg" alt="Bipul Sinha"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3377" data-uk-toggle="">Bipul Sinha</a></div> <div class="speaker-position">Co-Founder, Chair and CEO</div> <div class="speaker-company">Rubrik</div> </div>
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3386" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/d072458bd098504c4f57a1839c6f168e.jpg" alt="Laela Sturdy"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3386" data-uk-toggle="">Laela Sturdy</a></div> <div class="speaker-position">General Partner</div> <div class="speaker-company">CapitalG</div> </div>
                                    
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3401" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/8e9cef938006b85ddd5729a378fbb24f.jpg" alt="Todd Yellin"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3401" data-uk-toggle="">Todd Yellin</a></div> <div class="speaker-position">VP of Product</div> <div class="speaker-company">Netflix</div> </div>
                                    
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3458" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/5820ab03adb8c11f206c157022b5c3f4.jpg" alt="Mercedes Bent"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3458" data-uk-toggle="">Mercedes Bent</a></div> <div class="speaker-position">Partner</div> <div class="speaker-company">Lightspeed Venture Partners</div> </div>
                                                                    <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3358" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/47936a5e5d545230a0c0ec08f53f955b.png" alt="Kay Firth Butterfield"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3358" data-uk-toggle="">Kay Firth Butterfield</a></div> <div class="speaker-position">Head of AI / ML</div> <div class="speaker-company">World Economic Forum</div> </div>
                                                                     <div class="speaker-visible-node"> <div class="speaker-pg-img"> <a href="https://www.tiecon.org/speakers#speaker3478" data-uk-toggle=""> <img width="150" height="150" src="https://blog.tiecon.org/form/speaker/cache/d509b416ccd130ab6471acbc0144e57b.jpg" alt="William Quigley"> </a> </div> <div class="home-speaker-name"><a href="https://www.tiecon.org/speakers#speaker3478" data-uk-toggle="">William Quigley</a></div> <div class="speaker-position">Co-Founder</div> <div class="speaker-company">WAX</div> </div>
                                    
                                                                </div>
                                    
                                                                
                                                                <a href="https://www.tiecon.org/speakers" class="text-center d-block  mb-5 mt-3 more-link"> MORE</a>                           
                            </div>
                            <%else%>
								  <div class="w-100 py-2 my-2">
										<h1 class="font-weight-bolder">ACCESS CODE CANNOT BE VERIFIED</h1>
									</div>
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
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->       
    </body>
</html>
