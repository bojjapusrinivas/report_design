				<% 
				if (trim(fCPcodes)="" OR trim(fCPcodes)="NULL") then
					fCPcodes = CPcodes
				End If
				
				if isnull(fCPcodes) then
					fCPcodes = CPcodes
				End If
				
				cpcodesSTR="'" & Replace(fCPcodes,"; ","','") & "'"
				sql1="SELECT top 2000 * FROM InfluencersCompanies WHERE (Filename like ('%" & Replace(fCPcodes,"; ","%') or Filename like ('%")  & "%')) and company_status<>'N'"
				
				''Filename like ('%" & Replace(cpcodes,"; ","%') or Filename like ('%")  & "%')" 
				'response.write sql1
				''DIM CMPList1
				CMPList1 = ""
				Set RSInfluncer = Server.CreateObject("ADODB.Recordset")						
				Set Conn1 = Server.CreateObject("ADODB.Connection")
				Conn1.Open DataSource4
				RSInfluncer.ActiveConnection = conn1
				'RSInfluncer.CursorType = 3
				'response.write sql1
				RSInfluncer.OPEN sql1
				MCPCODES_lIST = ""
				If not RSInfluncer.EOF Then
					While not RSInfluncer.EOF
						If Len(CMPList1) > 10 Then	
						CMPList1 = CMPList1 &"; <a href=""CompanyDetails.asp?CODE="&RSInfluncer("Filename_MD5")&"&cmpID="&RSInfluncer("CMP_Hidden_Code")&""" target=""_new"">"& RSInfluncer("company") &"</a>"
						Else
							CMPList1 = "<a href=""CompanyDetails.asp?CODE="&RSInfluncer("Filename_MD5")&"&cmpID="&RSInfluncer("CMP_Hidden_Code")&""" target=""_new"">"& RSInfluncer("company") &"</a>"
						End if 
					RSInfluncer.movenext
					Wend
				End If
				Set RSInfluncer = Nothing
				Set Conn1 = nothing
				
						'''Market Segmentation & Geographic Coverage
							''''Application (Food, Beverage, Healthcare, Personal Care, Other Applications); Technology (Active Packaging, Intelligent Packaging)
							''''World; USA; Canada; Japan; China; Europe (France; Germany; Italy; UK; and Rest of Europe); Asia-Pacific; Rest of World.
							'Dim LSSegCovered, LSRegionsCovered
							'Dim LSSegSplit, LSRegionsSplit
							LSSegCovered = Trim(Segments_Covered)
							'response.write LSSegCovered
							LSRegionsCovered = Trim(Regions_Covered)%>
                <div class="row mb-0 py-0 ">
                    <div class="mx-3 mx-sm-0">
                        <!-- Tabs Navigation -->
                        <ul class="tabs-nav players_tab">
                            <li class="active w-sm-100"><a href="#tab1" class=" font-weight-bold font-size-15 text-dark">SELECT PLAYERS</a></li>
                            <li class="w-sm-100"><a href="#tab2" class="font-weight-bold font-size-15 text-dark ">SEGMENTS</a></li>
                            <li class="w-sm-100"><a href="#tab3" class="font-weight-bold font-size-15 text-dark">GEOGRAPHIES</a></li>
                            <li class="w-sm-100"><a href="#tab4" class="font-weight-bold font-size-15 text-dark ">INSIDER ACCESS </a></li>
                        </ul>
                        <!-- Tabs Content -->
                        <div class="tabs-container players_tab_content   mb-0 p-2 p-lg-0">


                            <button class="tab_accordion border mt-0 ui-accordion ui-widget ui-helper-reset">SELECT PLAYERS</button>

                            <div class="tab-content pt-2 panel4" id="tab1">
							<%'If trim(giatext)<>"" then%>
								<%'If trim(giatext3)<>"" then%>
									
									<!--We launched an impact survey to update this project with timely insights during 2020. Update frequency will depend upon evolving market conditions and executive opinions. Our participants are executives driving strategy, marketing, sales and product management at competitive companies worldwide. All updates during the rest of the year are complimentary to clients! Please <a style="font-weight:bold;" style="padding:0px 5px;" href="GIA_Research_Program.asp?code=<%=code%>" target="_new">sign-up</a> to participate in our ongoing online survey.-->
									
									
									
								
								 <div class="box "  style="width:100% !important">

								
									  <%  'If giatext4 <> "" Then
										 ''response.write cpcodes & ""
										response.write "<div class=""panel ""> " & trim(Companynames)+"</div>"
									   'End if%>
								 </span>
								 </div>

								<%'END IF%>
							 <%'END IF%></div>

                            <button class="tab_accordion border mt-0 ui-accordion ui-widget ui-helper-reset">SEGMENTS</button>

                            <div class="tab-content pt-2 w-100 panel4" id="tab2"> <%LSSegSplit = Split(LSSegCovered,";")
										for each x in LSSegSplit
											response.write(" &raquo; " & x & " ")
										next%></div>


                            <button class="tab_accordion border mt-0 ui-accordion ui-widget ui-helper-reset">GEOGRAPHIES</button>

                            <div class="tab-content pt-2 panel4 " id="tab3"><%LSRegionsSplit = Split(LSRegionsCovered,";")
										for each GeoName in LSRegionsSplit
											GeoName = Replace(GeoName,"("," &raquo; ")
											GeoName = Replace(GeoName,")","")
											response.write(" &raquo; "&Replace(GeoName,".","") & " ")
										next%>	</div>


                            <button class="tab_accordion border mt-0 ui-accordion ui-widget ui-helper-reset">INSIDER ACCESS</button>

                            <div class="tab-content pt-2 insider panel4" id="tab4">
                                <div class="w-100 mb-2 ">
                                    <h4 class="font-weight-bold font-size-15 text-black line-height-normal my-2">  INSIDER ACCESS PRIVILEGES </h4>
                                </div>
                                <div class="w-100 mb-2 ">
                                    <i>Users of our portal have insider access to our data stacks based on project relevance and engagement status. Tiered access is offered to data stacks, managed based on user status - Opt-in, Active Panelist, Inactive Panelist, Active Client or Inactive Client. </i>
                                </div>
                                <div class="w-100  d-flex flex-wrap">
                                    <div class="w-xl-20 w-lg-20 w-md-50 w-sm-100 p-1  ">
                                        <div class="offer offer-secondary text-center insider my-0">
                                            <div class="offer-content">
                                                <h3 class="lead">
                                                    ACTIVE CLIENT  
                                                </h3>
                                                <div class="insider_star_ranking">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <a herf="javascript:void(0)"><i class="fa fa-info-circle info"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w-xl-20 w-lg-20  w-md-50 w-sm-100 p-1">
                                        <div class="offer offer-secondary text-center insider my-0">
                                            <div class="offer-content">
                                                <h3 class="lead">
                                                    INACTIVE CLIENT 
                                                </h3>
                                                <div class="insider_star_ranking">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <a herf="javascript:void(0)"><i class="fa fa-info-circle info"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w-xl-20 w-lg-20  w-md-50 w-sm-100  p-1">
                                        <div class="offer offer-secondary text-center insider my-0">
                                            <div class="offer-content">
                                                <h3 class="lead">
                                                    ACTIVE PANELIST 
                                                </h3>
                                                <div class="insider_star_ranking">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <a herf="javascript:void(0)"><i class="fa fa-info-circle info"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w-xl-20 w-lg-20  w-md-50 w-sm-100  p-1">
                                        <div class="offer offer-secondary text-center insider my-0">
                                            <div class="offer-content">
                                                <h3 class="lead">
                                                    INACTIVE PANELIST   
                                                </h3>
                                                <div class="insider_star_ranking">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <a herf="javascript:void(0)"><i class="fa fa-info-circle info"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w-xl-20 w-lg-20  w-md-50 w-sm-100  p-1">
                                        <div class="offer offer-secondary text-center insider my-0">
                                            <div class="offer-content">
                                                <h3 class="lead">
                                                    OPT-INS 
                                                </h3>
                                                <div class="insider_star_ranking">
                                                    <i class="fa fa-star"></i>
                                                    <a herf="javascript:void(0)"><i class="fa fa-info-circle info"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               