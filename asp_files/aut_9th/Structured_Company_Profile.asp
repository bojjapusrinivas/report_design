<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="Payment Interface">
    <title>Resx eContractors </title>
    <!---css---->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/jquery.range.css"/>
 <style>

 p{
     font-size: 15px !important

 }

 h4{

    font-size: 18px !important;
 }

 h5{

font-size: 16px !important;
}


                  .profile_img_block {
                                width: 100%;
                                height: 150px;
                                background-color: #e2e2e2;
                                position: relative;
                            }                           

                            .profile_img_block h6 {
                                font-size: 17px;
                                color: #000;
                            }                           

  .profile_img_block .arrow_icon_img {
                                width: 40px;
                                height: auto;
                                position: absolute;
                                bottom: 10px;
                                left: calc(100% - 57%);
                            }  
                            .profile_img_block p {} 

                        </style>


						<script>
        

function allnumeric(inputtxt)
   {
      var numbers = /^[0-9]+$/;
      if(inputtxt.value.match(numbers))
      {
      alert('Your Registration number has accepted....');
      document.form1.text1.focus();
      return true;
      }
      else
      {
      alert('Please input numeric characters only');
      document.form1.text1.focus();
      return false;
      }
   } 

		function Search_Engine_Enrichment(){               
		    
					
			var vemail = $("#email").val();
			var vname = $("#name").val();
			var vmobile = $("#mobile").val();	
			var vAddress = $("#Address").val();
			var vEducation = $("#Education").val();
			var vAge = $("#age").val();
			var vWorking = $("input:radio[name=Working]:checked").val();
				


         /* alert(vemail);
		    alert(vname);
			 alert(vmobile);
			  alert(vAddress);
			   alert(vEducation);
                alert(vWorking);*/

		// alert(vdocumenCheck);
		 
		 if (vemail != null && vemail != '' && vname != '' && vname != null && vAddress != '' && vAddress != null && vWorking != '' && vEducation != null && vEducation != '' && vWorking != null)	
			 {			
			// alert("Entered");
			  $.ajax({
						url: "Ajax_AddSearch_Engine_Enrichment.asp",
						type: "POST",
						data:'vemail='+encodeURIComponent(vemail)+'&vname='+encodeURIComponent(vname)+'&vmobile='+encodeURIComponent(vmobile)+'&vAddress='+encodeURIComponent(vAddress)+'&vEducation='+encodeURIComponent(vEducation)+'&vWorking='+encodeURIComponent(vWorking)+'&vAge='+encodeURIComponent(vAge)+'',
						success: function(data){
						//alert(data);
						if (parseInt(data) <= 4)
						{
						  alert("Updated Sucessfully");
						 // return false;
						}
						else
						{
						   alert("Either this email ID has been already registered or you have exceeded your referral quota.");
						 
						}
						
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				  // modal.style.display = "none";
				//window.opener.location.reload(false);
				//window.opener.location.reload()
				
				
			  } 
			  else
			  {
			    
				alert("Please Fill all required fields !");
			  
			  }
        


			}
			</script>
</head>

<body>
    <!--#include file="ASPIncludes/TopStrip.asp"-->	
    <!--#include file="adovbs.asp"-->
    <main role="main" class="container main">
        <!---BEGIN:INPUT SECTION--->
        <div class="row">
            <div class="col-xs-12 col-sm-10  mx-auto shadow bg-white p-3">
                <form role="form">
                    <!--h5 class="mb-3 font-weight-bold"><a href="SOP.asp" target='New'>Standard Operating Procedures (SOPs)</a></h5-->
					 <!--h5 class="mb-4 font-weight-bold"><a href="Guidelines/2.html" target='New'>Frequently Asked Questions (FAQs)</a></h5-->
				 <div class=" row mx-0 bg-light">
                    <h4 class="mb-0 font-weight-bold py-2 w-100 text-center mb-2"><u>Standard Operating Procedure</u></h4><br>
                    <h3 class="mb-0 py-2 w-100 text-center "  style="font-size: 24px; font-weight: bold;margin-top: -11px; ">Structured Company Profile</h3>
                </div>	 
				
				 <div class="px-3 py-1 mb-3 bg-light">			
				 <br><!----COPY FROM HERE---->
					<p>This project is about Building the Structured Company Profile.  Please watch the video tutorial given below.</p>		
					<p>Structured Company Profile means, a profile of the given Company in a Standard Format. There are set of rules that we must follow without any deviation when we build the Company Profile.  Company Profile will have following 3 Important Parts:
					<br>
					1. The Address Part<br>
					2. The Business Profile Part<br>
					3. The Products / Services / Solutions / Platform Part<br>	
					</p>
					<p>Once you are logged in to the tool in Firefox browser, you will be able to see the screen that has your name, User ID, Activity button, Logout button and below that you must notice the given Company Name on the left side and company's website URL on the left and an icon on the right side, that looks like a hook. This icon looking like a hook is very important to start the work.</p>
					<p>You have the Curated Content Box below, which is empty, and the formatting tool bar with the Header formatting icons H1, H2, H3, etc. We need to use this tool bar to format the content to build the Structured Company Profile.</p>
					<p>We need to fetch the content of the given Company by clicking on this hook icon. Once you click on this hook icon, you will get the given Company's content available in an unstructured form. The unstructured content of the given company will open on the right side pane. We shall call this unstructured content as Source Content of the given company. We need to bring (copy) the necessary content from source content pane (on the Right side) and put it (paste) into the Curated content pane (on the Left side). After you build the Content in a Structured form, you need to click on the Save button
					  
					   <h4 class="font-weight-bold">The Address Part:</h4>
					    <h5 class="font-weight-bold">A complete Structured Address part would have the following elements:</h5>
						<h5 ><b>Address of the Company</b> (Head Quarter, in case of multiple branches)</h5>
					    <h5 ><b>Country Name </b>(Head Quarter location, in case of multiple branches)</h5>
						<h5 class="font-weight-bold"></h5>Phone:</h5>
						<h5 class="font-weight-bold">Fax:</h5>
						<h5 class="font-weight-bold">Email:</h5>
						<h5 class="font-weight-bold">Website:</h5>
					</p>
					<p>In some cases, all the mentioned elements in the address part may not be available in the unstructured content (Source Content). However, all those elements that are available in the source content should be taken.</p>
					<p>You must make sure the given Company name matches with the company name in the Source Content. They must be the same.</p>
					<p>The Address need not have a header. The word Address should NOT be there. Only the address lines of the given company should be brought from the source content and pasted in the Curated Content box.</p>
					<p>The Country also need not have a header. The word Country should NOT be there. Just the name of the country in which the company is situated should be mentioned. If the country name is not available in the source content, please search the Internet with the given company name and address and identify the country from authentic source such as the company's website or Company's social media pages such as the Company's LinkedIn page or Company's Twitter page or Company's Facebook page or from Wikipedia and mention the country. If the company is located in various countries, please take the HQ location only.</p>
					<p>The word Phone should be mentioned. If the source content has words such as Telephone, or Tel, or Mobile, you must replace them with the word 'Phone' only. There should be a colon mark immediately after the alphabet e without giving space after e. Then give only one space after the colon and mention the given phone number. Please DO NOT give space before the colon. The first letter P only should be in capital and hone should be in small case and a colon after alphabet e.</p>
					<p>Just like Phone, the Fax should be in the same format. Capital F and the a and x in small case, followed by colon without space in between x and colon and a space after the colon.</p>
					<p>Just like Phone and the Fax, the Email also should be in the same format only.</p>
					<p>Just like Phone, Fax and Email, the format of Website should also be same. If the website URL in in bold, or hyper linked, please remove the bold and hyper link. We can select the text and convert the content to simple text.</p>
					<p>If the Phone, or Fax or Email ID is not available in the source content, we need not worry, but The country name and the Company website URL are compulsory. Please ensure that you search for the country where the company is situated in, and copy paste the country name. Also if the URL is not available in the source content, you can copy the URL given below the company name and paste it.</p>
                    
                   <hr/>


					 <h4 class="font-weight-bold">The Business Profile Part:</h4>
					<p>Business Profile part is the second part of the Structured Company Profile. We have to give the Header in H1 format as follows: <b>Business profile</b></p>
					<p>Please make sure that there are no spelling mistakes. The first letter B in business should be in capital case and the first letter P in the word profile should be in capital case and rest of the characters should be in small case only. There should NOT be colon in the end, it is not required.</p>
					<p>Business Profile deals with the description about the business of the given Company. In the source content, under the About Us part, we can find the information that the given company published about itself. We need to take this information and save it under the Business Profile Part.</p>
					<p>You need to understand what type of content we should take from the source content and what type of content we should not take from the explanation below:</p>
					<p>Our understanding skills and presentation skills becomes very useful and are very important to be applied. When we read the About Us part in the Source content, we should be able to comprehend the text and pick those lines, that describes the business and nature of the given company such as Introduction, Who We Are, What We Do, etc.,</p>
					
					<p></p>
					<p></p>
					
					
					
					
					<br>
				</div>

                <div class="video_block mt-3 text-center">
                    <!-- Button trigger modal -->

                    <div class="row text-center">


                       <div class="col-12 col-sm-6 col-md-6 col-lg-3 px-3 my-2 text-center mx-auto text-center" >
                            <div class="card shadow text-center">
                                <!--img class="card-img-top" src="http://205.234.30.74/resx_eContractors/Guidelines/Videos/video_thumbnile_01.jpg" alt="videothumbnile"-->
								<div class="row mx-0">
                                    <div class="profile_img_block p-4 text-center">
                                        <h6 class="font-weight-bold">Search Engine Enrichment</h6>
                                        <div class="arrow_icon_img">
                                            <img src="img/arrow_icon.png" class="img-fluid" />
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body p-0 mt-1 text-center"><!--a class="btn bg-dark text-white video-btn rounded-0 w-100" href="http://205.234.30.74/resx_eContractors/Guidelines/Vedio1.html" target='New'>Play Firefox Installation</a-->
                                    <button type="button" class="btn bg-dark text-white video-btn rounded-0 w-100" data-toggle="modal" data-src="http://205.234.30.74/resx_eContractors/Guidelines/Videos/Search Engine Enrichment.webm" data-target="#myModal">
                                        Play
                                    </button>
                                </div>
                            </div>
                        </div> 

                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 px-3 my-2 text-center mx-auto text-center" >
                            <div class="card shadow text-center">
                                <!--img class="card-img-top" src="http://205.234.30.74/resx_eContractors/Guidelines/Videos/video_thumbnile_01.jpg" alt="videothumbnile"-->
								<div class="row mx-0">
                                    <div class="profile_img_block p-4 text-center">
                                        <h6 class="font-weight-bold">Search Engine Enrichment</h6>
                                        <div class="arrow_icon_img">
                                            <img src="img/arrow_icon.png" class="img-fluid" />
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body p-0 mt-1 text-center"><!--a class="btn bg-dark text-white video-btn rounded-0 w-100" href="http://205.234.30.74/resx_eContractors/Guidelines/Vedio1.html" target='New'>Play Firefox Installation</a-->
                                    <button type="button" class="btn bg-dark text-white video-btn rounded-0 w-100" data-toggle="modal" data-src="http://205.234.30.74/resx_eContractors/Guidelines/Videos/Search Engine Enrichment.webm" data-target="#myModal">
                                        Play
                                    </button>
                                </div>
                            </div>
                        </div> 

                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 px-3 my-2 text-center mx-auto text-center" >
                            <div class="card shadow text-center">
                                <!--img class="card-img-top" src="http://205.234.30.74/resx_eContractors/Guidelines/Videos/video_thumbnile_01.jpg" alt="videothumbnile"-->
								<div class="row mx-0">
                                    <div class="profile_img_block p-4 text-center">
                                        <h6 class="font-weight-bold">Search Engine Enrichment</h6>
                                        <div class="arrow_icon_img">
                                            <img src="img/arrow_icon.png" class="img-fluid" />
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body p-0 mt-1 text-center"><!--a class="btn bg-dark text-white video-btn rounded-0 w-100" href="http://205.234.30.74/resx_eContractors/Guidelines/Vedio1.html" target='New'>Play Firefox Installation</a-->
                                    <button type="button" class="btn bg-dark text-white video-btn rounded-0 w-100" data-toggle="modal" data-src="http://205.234.30.74/resx_eContractors/Guidelines/Videos/Search Engine Enrichment.webm" data-target="#myModal">
                                        Play
                                    </button>
                                </div>
                            </div>
                        </div> 

                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 px-3 my-2 text-center mx-auto text-center" >
                            <div class="card shadow text-center">
                                <!--img class="card-img-top" src="http://205.234.30.74/resx_eContractors/Guidelines/Videos/video_thumbnile_01.jpg" alt="videothumbnile"-->
								<div class="row mx-0">
                                    <div class="profile_img_block p-4 text-center">
                                        <h6 class="font-weight-bold">Search Engine Enrichment</h6>
                                        <div class="arrow_icon_img">
                                            <img src="img/arrow_icon.png" class="img-fluid" />
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body p-0 mt-1 text-center"><!--a class="btn bg-dark text-white video-btn rounded-0 w-100" href="http://205.234.30.74/resx_eContractors/Guidelines/Vedio1.html" target='New'>Play Firefox Installation</a-->
                                    <button type="button" class="btn bg-dark text-white video-btn rounded-0 w-100" data-toggle="modal" data-src="http://205.234.30.74/resx_eContractors/Guidelines/Videos/Search Engine Enrichment.webm" data-target="#myModal">
                                        Play
                                    </button>
                                </div>
                            </div>
                        </div> 

                       
                    </div>

                </div>
				

                 <!-- Modal -->
				 <div class="modal fade fade bd-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-xl text-center" style="max-width:100% !important" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <!-- 16:9 aspect ratio -->
                                <div class="embed-responsive embed-responsive-21by9">
                                    <iframe class="embed-responsive-item" src="" id="video" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>></iframe>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
                <!----COPY UP TO HERE HERE---->

                  <div class="row mx-0 bg-light">
                    <div class="col-md-12 col-lg-12 mx-auto mt-3">
                        <h4 class="mb-0 py-2 w-100 text-left mb-2 border-bottom " style="color:#5218fa"><b>Now please note what kind of information is NOT important that need not be taken:</b></h4>

                        
                        <div class=" mt-1 mb-2">
                            <div class="card-body py-2">
                                <!--h6 class="card-title py-2 mb-0" style="color:#ff00ff"><b>Q: Should I stop working on the task that I am working at present and shift to this Search Engine Enrichment task?</b></h6-->
                                <p class="card-text "><b style="color:#5218fa; font-size:17px;">1.&nbsp;</b> Please do not pick any generalized content. If you feel that the content is not Company Specific, please leave it.</p>
                            </div>
                        </div>

                        <div class=" mb-2">
                            <div class="card-body py-2">
                               <p class="card-text "><b style="color:#5218fa; font-size:17px;">2.&nbsp;</b>The History: We only need the information when the company is incorporated. A detailed history is not important. The current and update information is only important</p>
                            </div>
                        </div>
						<div class=" mb-2">
                            <div class="card-body py-2">
                               <p class="card-text "><b style="color:#5218fa; font-size:17px;">3.&nbsp;</b>The Key Executives names, Titles are NOT important. Please leave any such personnel information and personnel's contact details.</p>
                            </div>
                        </div>
						<div class=" mb-2">
                            <div class="card-body py-2">
                               <p class="card-text "><b style="color:#5218fa; font-size:17px;">4.&nbsp;</b>Company Investors and the investor's relationship information is NOT important and we should leave it.</p>
                            </div>
                        </div>
						<div class=" mb-2">
                            <div class="card-body py-2">
                               <p class="card-text "><b style="color:#5218fa; font-size:17px;">5.&nbsp;</b>Corporate social responsibility. Apart from company's regular business, some companies also does charity and other social initiative programs for the society. The focus should be on the company's main business only, the social responsibility information is not important and we should leave it.</p>
                            </div>
                        </div>
						<div class=" mb-2">
                            <div class="card-body py-2">
                               <p class="card-text "><b style="color:#5218fa; font-size:17px;">6.&nbsp;</b>Mission, Vision, and Values of the company are not important but if there is no much information available, we can consider it but we should give less importance for that.</p>
                            </div>
                        </div>

						
						 <div class=" mb-2">
                            <div class=" py-2">
                                <h3 class="card-title py-2 mb-0" ><b>The Products / Services Part:</b></h3>

                               <p class="card-text ">

							   <!--a  data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">  
                               You can fill the referral form and click on register below to submit the form here.</a> We will get in touch with the person whom you referred, and we will onboard him/her.</p-->
                              
                              <!--div class="w-100">
                              <div class="collapse p-3" id="collapseExample">
                              <div class="card card-body">
                              <div class="form-body mx-auto py-1 col-lg-8 col-md-10 col-sm-12">
                              <div class="row">
                              <div class="form-holder mx-auto w-100">
                              <div class="form-content">
                              <div class="form-items">
                              <h3 class="text-center border-bottom py-2">Referral Form</h3>
                              <form class="requires-validation" novalidate>
        <div class="col-md-12 my-1 p-0">
                                  <input class="form-control rounded-0" type="text" id="name" name="name" placeholder="Full Name" required>
                                </div>
								<div class="col-md-12 my-1 p-0">
                                  <input class="form-control rounded-0" type="text" id="age" name="age" placeholder="Age"  onkeyup="this.value=this.value.replace(/[^\d]/,'')" required maxlength=3>
                                </div>
        <div class="col-md-12 my-1 p-0">
                                  <input class="form-control rounded-0" type="email" id="email" name="email" placeholder="E-mail Address" required>
                                  <div class="valid-feedback">Email field is valid!</div>
                                  <div class="invalid-feedback">Email field cannot be blank!</div>
                                </div>
								
        <div class="col-md-12 my-1 p-0">
                                  <input class="form-control rounded-0" onkeyup="this.value=this.value.replace(/[^\d]/,'')" maxlength=12 type="text" id="mobile" name="mobile" placeholder="Mobile" required>
                                </div>
        <div class="col-md-12 my-1 p-0">
                                  <input class="form-control rounded-0" type="text" id="Address" name="Address" placeholder="Address" required>
                                </div>
        <div class="col-md-12 my-1 p-0 ">
                                  <input class="form-control rounded-0" type="text" id="Education" name="Education" placeholder="Education" required>
                                </div>
        <div class="col-md-12 mt-3">
                                  <label class="mb-3 mr-2" for="working">Currently working anywhere? </label>
                                  
								  <input  class="btn-check" type="radio" value="Y" id="Working" name="Working">
                                  <label class="btn btn-sm " for="yes">YES</label>
                                  <input  class="btn-check" type="radio" value="N" id="Working" name="Working">
                                  <label class="btn btn-sm " for="no">NO</label>
                                </div>
        <div class="form-button mt-3 mx-auto d-flex justify-content-center">
                                 
								  <input type="button" value="Register" onClick="Search_Engine_Enrichment();" class="btn bg-dark text-white mx-auto btn-lg mb-1 rounded-0 shadow" tabindex="37">
                                </div>
      </form>
                            </div>
  </div>
                          </div>
                          </div>
                          </div>
                          </div>
                          </div>
                          </div>
										-->
							   <p class="card-text ">In the Products and Services part, the Headers H2 and H3 would become useful. We have to give the Header in H1 format as follows: </p>
							   <h3 class="card-title py-2 mb-0"><b>Products</b></h3>
							   <p class="card-text ">There are some headers that would come in place of Products and Services, they are Solutions or Platforms or Brands or Markets or Industries.</p>
							    <p class="card-text ">So these are the only words that uses header H1 format. For all other sub headers that come under these headers, we would use H2, H3 as per the required format such as the first sub header under products / services would be in H2 and the sub header under H2 header would be H3, as required.</p>
								<p class="card-text ">In few cases in the Products/Services there could be sub header such as 'How it works', 'Working process'. For these type of sentence header, we should convert it into simple text and make it Bold. We should NOT use H1, H2, H3, H4, H5 for these kind of heading sentence.</p>								
								<p class="card-text ">In some cases, parts of text in the source content could be in Caps, in such case, Please convert the text into small case for running text. </p>
								<p class="card-text ">Please note that if any header or sub header comes in Capitals, you should convert it into title case, that is, only the first letter of the Word should be in caps only and the rest of the characters in small case. We will NEVER use any word in ALL Caps. So please do not use All caps for any word anywhere.</p>
								<p class="card-text ">In some scenarios, we might come across sub headings such as 'Features', 'Benefits', 'Applications' etc. In this case the headings Features, Benefits should be in simple text with Bold but do not use not with H1, H2, H3, H4, H5 formatting. These words are listing words, which means, there would be list of features or list of benefits. In such case please use bullets for listing.</p>
								<p class="card-text ">If the data in the source content is given with bullets format, we can use the bullets but please check if the data has any other formatting such as H1, H2, H3, H4, H5 headings or bold. If it has any formatting, please convert it into simple text only but with bullets.</p>
								<p class="card-text "></p>
								<p class="card-text "></p>
								
                            </div>
                        </div>
						
                    </div>
                </div>

					<br/>
					<br/>
					<br/>
					<br/>
					<br/>	





                   
                </form>
            </div>
        </div>

    </main>
   <!--#include file="ASPIncludes/BottomStrip.htm"-->	
</body>
<!---script--->
<script src="https://code.jquery.com/jquery-3.5.1.js "></script>
<script src="js/bootstrap.bundle.js "></script>
<script>
    $(document).ready(function() {
        $('#example').DataTable({
            "footerCallback": function(row, data, start, end, display) {
                var api = this.api(),
                    data;
                // Remove the formatting to get integer data for summation
                var intVal = function(i) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '') * 1 :
                        typeof i === 'number' ?
                        i : 0;
                };
                // Total over all pages
                total = api
                    .column(4)
                    .data()
                    .reduce(function(a, b) {
                        return intVal(a) + intVal(b);
                    }, 0);
                // Total over this page
                pageTotal = api
                    .column(4, {
                        page: 'current'
                    })
                    .data()
                    .reduce(function(a, b) {
                        return intVal(a) + intVal(b);
                    }, 0);
                // Update footer
                $(api.column(4).footer()).html(
                    '$' + pageTotal + ' ( $' + total + ' total)'
                );
            }
        });
    });

</script>
<script>
    $(document).ready(function() {
        // Gets the video src from the data-src on each button
        var $videoSrc;
        $(".video-btn").click(function() {
            $videoSrc = $(this).attr("data-src");
            console.log("button clicked" + $videoSrc);
        });

        // when the modal is opened autoplay it
        $("#myModal").on("shown.bs.modal", function(e) {
            console.log("modal opened" + $videoSrc);
            // set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get
            $("#video").attr(
                "src",
                $videoSrc + "?amp;showinfo=0&amp;modestbranding=1&amp;autoplay=1"
            );
        });

        // stop playing the youtube video when I close the modal
        $("#myModal").on("hide.bs.modal", function(e) {
            // a poor man's stop video
            $("#video").attr("src", $videoSrc);
        });

        // document ready
    });

</script>

</html>
