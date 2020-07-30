<div class="row  mt-2 mb-0 ">
                    <div class="w-100">
                        <div id="main2">
                            <span class="d-flex flex-md-row flex-sm-column flex-wrap flex-md-wrap flex-lg-nowrap flex-xl-nowrap  justify-content-around">
                            <a https="www.strategyr.com/AddToCart.asp" class="btn btn-gia-secondary rounded-0 shadow-sm m-1  m-md-2  text-white font-weight-bold font-size-15 w-xl-25 w-lg-25 w-md-45 " >
                                BUY REPORT USD $5600
                            </a>
                             <button class="btn btn-gia-secondary rounded-0 shadow-sm m-1 m-md-2  text-white font-weight-bold font-size-15 w-xl-25 w-lg-25 w-md-45 " type="button" data-toggle="collapse" data-target="#collapseExample06" aria-expanded="flase" aria-controls="collapseExample">
                                REPORT INDEX
                            </button>
                            <button class="btn btn-gia-secondary rounded-0 shadow-sm m-1 m-md-2 w-sm-100   text-white font-weight-bold font-size-15 w-xl-25 w-lg-25 w-md-45 " type="button" data-toggle="collapse" data-target="#collapseExample07" aria-expanded="flase" aria-controls="collapseExample">
                                PROJECT COMPENDIUM <span class="text-danger">*</span>
                            </button>
                            <button class="btn btn-gia-secondary rounded-0 shadow-sm m-1 m-md-2 w-sm-100   text-white font-weight-bold font-size-15 w-xl-25 w-lg-25 w-md-45 " type="button" data-toggle="collapse" data-target="#collapseExample08" aria-expanded="flase" aria-controls="collapseExample">
                                EXPERT PANEL
                            </button>
                            </span>
                            
                            <div class="collapse  my-3 shadow" id="collapseExample06" data-parent="#main2">
                                <div class="card card-body rounded-0 p-2">
                                <%   
									Response.Buffer = True
									On Error Resume next
									urlname="http://128.242.110.24/7f2cf9c88724f1a869b5943f3c9776f9/readjson.php?reportcode="&giaNo&"&MCP=" & code & "&title=" & title & "&completed=" & completed & "&companies=" & companies & "&subcomp=" & subcomp
									Set objXML = Server.CreateObject("MSXML2.ServerXMLHTTP.6.0")
									''Set objXML = Server.CreateObject("MSXML2.ServerXMLHTTP")
									objXML.Open "GET", urlname, false 
									''objXML.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
									''response.write " Testing2"
									objXML.Send 
									''Response.ContentType = "text/xml"
									Response.Write objXML.responseText
									set objXML = Nothing
									response.Flush
									%>	
                                </div>
                            </div>
                            <div class="collapse  my-3 shadow" id="collapseExample07" data-parent="#main2">
                                <div class="card card-body rounded-0 p-2">
                                    <div class="w-100 text-center mb-2 ">
                                        <h4 class="font-weight-bold font-size-20 my-0 border-bottom">   INSIDER ACCESS TO </h4>
                                    </div>
                                    <div class="w-100 text-center mb-2">
                                        <i class="mx-3 fa fa-cog text-info">&nbsp;METHODOLOGY</i>
                                        <i class="mx-3 fa fa-cog text-info ">&nbsp;QUESTIONNAIRE</i>
                                        <i class="mx-3 fa fa-cog text-info">&nbsp;INFLUENCER NETWORK</i>
                                    </div>
                                    <div class="w-100 text-center">
                                        <a href="javascript:OpenWin(2)" class="text-danger">YOUR PRIVACY MATTERS!</a>
                                    </div>
									<div class="w-100 text-center">
									<%If Trim(session("EID"))="" Then%>
										  <button type="button" class="btn btn-labeled btn-secondary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 " name="btnlogin" onclick="location.href='GIA_Research_Program.asp?code=<%=code%>'" value="LOGIN" >
                                            <span class="btn-label  h-100 t-0">
                                             <i class="fa fa-sign-in" aria-hidden="true"></i>
                                         </span>LogIn</button>
										 <button type="button" class="btn btn-labeled btn-secondary mx-3 py-1 rounded-0  my-2 my-md-4 btn-125" name="btnregister"  onclick="location.href='https://strategyr.com/GIA_Register_NEW.asp'" value="REGISTER">
                                            <span class="btn-label h-100 t-0">
                                             <i  class="fa fa-user"  aria-hidden="true"></i>
                                         </span> &nbsp; &nbsp;Register</button>
										 
										<br/><font color='brown'>Registration is required to access our data stacks.</font><br/><div class="w-100">
                                        
                                    
										<%Else%>
											<%If Trim(session("userType"))="A" Then%>	
												<button type="button" class="btn btn-labeled btn-secondary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 " name="btnlogin" onclick="location.href='GIA_Research_Program.asp?code=<%=code%>'" value="LOGIN" >
                                            <span class="btn-label  h-100 t-0">
                                             <i class="fa fa-sign-in" aria-hidden="true"></i>
                                         </span>VIEW QUESTIONNAIRE</button>
												
											<%Else%>
												<a href="javascript:OpenWin(2)"><font color='red'>YOUR PRIVACY MATTERS!</font></a><br/>
												<button type="button" class="btn btn-labeled btn-secondary mx-3 rounded-0 py-1  my-2 my-md-4  btn-125 " name="btnlogin" onclick="location.href='GIA_Research_Program.asp?code=<%=code%>'" value="LOGIN" >
                                            <span class="btn-label  h-100 t-0">
                                             <i class="fa fa-sign-in" aria-hidden="true"></i>
                                         </span>LogIn</button>
										 <button type="button" class="btn btn-labeled btn-secondary mx-3 py-1 rounded-0  my-2 my-md-4 btn-125" name="btnregister"  onclick="location.href='https://strategyr.com/GIA_Register_NEW.asp'" value="REGISTER">
                                            <span class="btn-label h-100 t-0">
                                             <i  class="fa fa-user"  aria-hidden="true"></i>
                                         </span> &nbsp; &nbsp;Register</button>
												<font color='red'>Your account is not active yet to view this option. Please contact info411@strategyr.com for more details.</font><br/>
											<%End If%>
										<%End If%>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="collapse  my-3 shadow" id="collapseExample08" data-parent="#main2">
                                <div class="card card-body rounded-0 p-2">
                                    <div class="w-100">
                                        <h4 class="font-weight-bold font-size-20 my-0 border-bottom text-center">  RESEARCH PANEL
                                        </h4>
                                        <h3 class="text-dark-50">Panelists are carefully chosen based on their domain expertise and market influence.</h3>
                                        <p>Participation in our expert panels is only by invitation. Our project focused panels are constituted of senior executives in business strategy, marketing, sales, and product management at competitive companies worldwide. We also welcome individuals from leading management consulting, venture capital, private equity, investment management and related firms with domain expertise and are actively monitoring specific companies or industries. Our panelists bring unique market perspectives and unbiased intelligence to our ongoing research programs. </p>
                                        <p>
                                            Our panelists give 30-minutes a month or a one-time 30-minute participation based on their time and willingness.
                                            <br>
                                        </p>
                                        <ul class="list-group">
                                            <li class="list-group-item  d-flex">
                                                <span class="mx-3"><i class="fa fa-check"></i> </span>
                                                <span>Complimentary previews of full stack research data for participated</span>
                                            </li>
                                            <li class="list-group-item  d-flex">
                                                <span class="mx-3"><i class="fa fa-check"></i> </span>
                                                <span> Insider access to research programs including engagements and stats from other panelists</span></li>
                                            <li class="list-group-item  d-flex">
                                                <span class="mx-3"><i class="fa fa-check"></i> </span>
                                                <span>Unlimited research credits of $1000 per participated project</span></li>
                                            <li class="list-group-item  d-flex">
                                                <span class="mx-3"><i class="fa fa-check"></i> </span><span> Competitive Intelligence Alerts including engagements from other panelists and validated participants worldwide relevant to your company</span></li>
                                            <li class="list-group-item  d-flex">
                                                <span class="mx-3"><i class="fa fa-check"></i> </span><span> Interact with other panelists via our MarketGlass<sup style="font-size:xx-small; vertical-align:super;">TM</sup> Data Exchange Platform*</span></li>
                                            <li class="list-group-item  d-flex">
                                                <span class="mx-3"><i class="fa fa-check"></i> </span><span> BlogX - Panelists can use our blogging platform publish their viewpoints on news relevant to their domain expertise. Platform enables panelists to share their viewpoints on current news and events related to their areas domain expertise with timely and insightful blogs*</span></li>
                                        </ul>
                                        <br>
                                        <i><span class="text-danger"> *</span>
                                            <span>Complete details will be shared with panelists upon formal acceptance.</span></i>
                                        <div class="w-100 my-2 border">
                                            <!--#include file="IncRequestExpertPanel.asp"-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				<!---end:COMPANIES, WorldBrands,Executive, Differentiators Block --->
                <!--- BEGIN:YOUR PRIVACY MATTERS --->
                <div class="row my-2">
                    <div class="covid_placekeeper pt-2 w-100 ">
                        <p class="w-100 my-0 py-0">
                            <a class=" text-danger text-center w-100 d-block font-weight-bold" data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="true" aria-controls="collapseExample">
                            YOUR PRIVACY MATTERS!
                          </a>
                        </p>
                        <div class="collapse mt-3" id="collapseExample2">
                            <div class="card card-body border-0 my-0 py-0">
                                <p>
                                    Our robust permission-based engagement strategy requires a one-time double opt-in and/or re-consent for all users. We will re-establish consent once a year from date of last use. Both these practices exceed GDPR mandates.
                                    <br>
                                    <br>
                                    <strong class="mt-2">What we store:</strong> Primary coordinates such as email, company address and phone. In-house developed influencer rank.
                                    <br>
                                    <strong>How we store:</strong> Encrypted and additionally secured by firewalls.
                                    <br>
                                    <strong>How we use your data:</strong> Only to contact you directly. We never share your coordinates with any individual or entity outside our company for any reason.
                                    <br> Privacy queries: Privacy@StrategyR.com
                                    <br>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--- END:YOUR PRIVACY MATTERS --->
            </div>
            <!---CONTAINER END--->
        </div>