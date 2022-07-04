<%@ Language=VBScript %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<!--#INCLUDE FILE="adovbs.asp"-->
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ASPIncludes/SiteFunctions.asp"-->
<head>
<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>Contact Us:: Global Industry Analysts Inc.</title>
<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


<script language="JavaScript">
// website
function validateWeb(obj)  //// already exists
{
	var str2=obj.value;
	var str=str2.toLowerCase();
	var len=str.length;
	var dot=obj.value.indexOf(".");
	var spchr = new Array("`","~","!","@","#","$","%","^","&","*","(",")","-","_","+","=","{","[","}","]","|","\\",";","'","\"","<",",",">","?"," ");
  	var l = spchr.length;  	
  	if(str!="")
  	{
   		if(str!=" ")
   		{
   			if((str.indexOf("ftp")!=str.lastIndexOf("ftp"))||(str.indexOf("http")!=str.lastIndexOf("http"))||(str.indexOf("https")!=str.lastIndexOf("https")))//(str.indexOf("www")!=str.lastIndexOf("www"))||
   			{
				alert("Web Site format should be like: www.SiteName.com");
				obj.value="";
				obj.focus();
				//obj.select();
				return false;						   			
   			}
   			if (str.substring(0,11)== "http://www.")
   			{
	   			var str1 = str.substring(11,len);
            }//if for substring(http://www.).
   			else if (str.substring(0,7)== "http://")
   			{
	   			var str1 = str.substring(7,len)
    		}//elseif for substring(http://).    		
   			else if(str.substring(0,10)== "ftp://www.")
			{
				var str1 = str.substring(10,len)
    		}//else if for substring(ftp://www.).
   			else if(str.substring(0,6)== "ftp://")
			{
				var str1 = str.substring(6,len)

    		}//else if for substring(ftp://).
   			else if(str.substring(0,12)== "https://www.")
			{
				var str1 = str.substring(12,len)
    		}//else if for substring(https://www.).    		 	    		 	
   			else if(str.substring(0,8)== "https://")
			{
				var str1 = str.substring(8,len)
    		}//else if for substring(https://).    	    		
   			else if(str.substring(0,4)== "www.")
   			{
				var str1 = str.substring(4,len)
    		}//else if for substring(www.).
			else if(dot>0)
   			{
   				if(str.substring(0,3)== "www")
   				{
   					alert("Web Site format should be like: www.SiteName.com");
   					obj.value="";
   					obj.focus();
					//obj.select();
					return false;
   				}
   				else if(str.substring(0,3)== "ftp")
   				{
   					alert("Web Site format should be like: www.SiteName.com");
   					obj.value="";
   					obj.focus();
					///obj.select();
					return false;   				
   				}
   				else if(str.substring(0,4)== "http")
   				{
   					alert("Web Site format should be like: www.SiteName.com");
   					obj.value="";
   					obj.focus();
					//obj.select();
					return false;   				
   				}
   				else if(str.substring(0,5)== "https")
   				{
   					alert("Web Site format should be like: www.SiteName.com");
   					obj.value="";
   					obj.focus();
					//obj.select();
					return false;   				
   				}   				   				
   				else
   				{
   					var str1 = obj.value;
   				}
    		}//end for elseif dot>0.    		 	
			else
			{
				alert("Web Site format should be like: www.SiteName.com");
				obj.value="";
				obj.focus();
				//obj.select();
				return false;
			}//end for else.
	   		var len1=str1.length;
	   		var dot=str1.indexOf(".");
			var ldot=str1.lastIndexOf(".");
			var colon=str1.indexOf(":");
			var lcolon=str1.lastIndexOf(":");
			var slash=str1.indexOf("/");
			var lslash=str1.lastIndexOf("/");			
	   		if ((len1<=ldot.valueOf()+1)||(len1<=lslash.valueOf()+1)||(dot.valueOf()<=0)||(slash.valueOf()==0)||(colon.valueOf()>=0)||(lslash.valueOf()+1>=ldot.valueOf()))//||(colon.valueOf()>ldot.valueOf())||(colon.valueOf()>lslash.valueOf())||(colon.valueOf()!=lcolon.valueOf())||(dot.valueOf()+1==ldot.valueOf())
			{
				alert("Web Site format should be like: www.SiteName.com");
				obj.value="";
				obj.focus();
				//obj.select();
				return false;						
			}
			if(dot>0)
    		{
				for(i=0;i<l;i++)
				{
					var spchk = obj.value.indexOf(spchr[i]);
					if (spchk >= 0)
					{
						alert("Web Site format should be like: www.SiteName.com");
						obj.value="";
						obj.focus();
						//obj.select();
						return false;
					}
				}
				for (i=0;i<l;i++)
				{
	 				if(((str1.charAt(i)==".")&&(str1.charAt(i+1)=="."))||((str1.charAt(i)==".")&&(str1.charAt(i+1)=="/"))||((str1.charAt(i)==".")&&(str1.charAt(i-1)=="/"))||((str1.charAt(i)=="/")&&(str1.charAt(i+1)=="/")))//((str1.charAt(i)=="/")&&(str1.charAt(i+1)==":"))||((str1.charAt(i)==".")&&(str1.charAt(i+1)==":"))||((str1.charAt(i)==".")&&(str1.charAt(i-1)==":"))||((str1.charAt(i)==".")&&(str1.charAt(i-1)=="."))||((str1.charAt(i)=="/")&&(str1.charAt(i-1)=="/"))
					{
						alert("Web Site format should be like: www.SiteName.com");
						obj.value="";
						obj.focus();
						//obj.select();
						return false;						
					}	 					
				}									
			}//if for dot>0.			
   		}//if for space.
	}//if for value == null.
	return true;
}
//end for function.   

</script>
<script language="JavaScript">

function trim(str)
{
    var len;
    len = str.length;
    for(i=0;i<=len;i++)
    {
        if (str.indexOf(" ")== 0)
        {
                str = str.substr(1,len);        
        }
    }
  return str;  
}


function Validate(theForm)
{
  
  if (theForm.Title.value == "")
  {
    alert("Please enter your Salutation in the \" Salutation \" field.");
    theForm.Title.focus();
    return (false);
  }

  if (theForm.Name.value == "")
  {
    alert("Please enter your Name in the \"Name\" field.");
    theForm.Name.focus();
    return (false);
  }

  if (theForm.Company.value == "")
  {
    alert("Please enter your Company Name in the \"Company \" field.");
    theForm.Company.focus();
    return (false);
  }

  if (theForm.City.value == "")
  {
    alert("Please enter your city in the \"City\" field.");
    theForm.City.focus();
    return (false);
  }

  if (theForm.State.value == "")
  {
    alert("Please enter your State in the \"State\" field.");
    theForm.State.focus();
    return (false);
  }

  if (theForm.Zip.value == "")
  {
    alert("Please enter your Zip in the \"Zip\" field.");
    theForm.Zip.value=="";
    theForm.Zip.focus();
    return (false);
  }

 if (theForm.Country.value == "")
  {
    alert("Please enter your Country in the \"Country\" field.");
    theForm.Country.focus();
    return (false);
  }
	if (theForm.Telephone.value == "")
  {
    alert("Please enter your Telephone in the \"Telephone\" field.");
    theForm.Telephone.focus();
    return (false);
  }

 // if (theForm.Fax.value == "")
 // {
 //   alert("Please enter your Fax in the \"Fax\" field.");
 //   theForm.Fax.focus();
 //   return (false);
//  }

  if (theForm.Email.value == "")
  {
    alert("Please enter Your E-Mail in the \"Email\" field.");
    theForm.Email.focus();
    return (false);
  }

 if (theForm.Email.value !="")
  {
    str1 = theForm.Email.value;
    b= trim(str1);
    if (b =="")
   {
    alert ("Do Not Enter Spaces!!");
    theForm.Email.focus();
    str1="";
    return false;
   }
  }   
            
  if (theForm.Email.value != "") 
  { 
   apos=theForm.Email.value.indexOf("@"); 
   dotpos=theForm.Email.value.lastIndexOf(".");
   lastpos=theForm.Email.value.length-1;
   if (apos<1 || dotpos-apos<2 || lastpos-dotpos>3) 
   {
    alert("Please fill in a valid E-Mail Address in the \"Email \" Field !!");                                       
    theForm.Email.focus();
    return (false);
   }                               
  }

  if (theForm.position.value == "")
  {
    alert("Please enter Your Executive Position in the \"Executive Position\" field.");
    theForm.position.focus();
    return (false);
  }

  if (theForm.uwebsite.value == "")
  {
    alert("Please enter Your Website in the \"Website\" field.");
    theForm.uwebsite.focus();
    return (false);
  }
  

  if (theForm.Interest.value == "")
  {
    alert("Please enter your Interests in the \"Area of Interest\" field.");
    theForm.Interest.focus();
    return (false);
  }
return (true);
}

</script>
</head>
<body leftmargin=0 rightmargin=0 topmargin=0 bottommargin=0 onBeforePrint="document.body.style.display='none'" onAfterPrint="document.body.style.display=''" onContextmenu="return false" onSelectstart="return false" onDragstart="return false" >
<!-- Wrapper  Start -->
<div id="wrapper" class="bor-radius"> 
<!-----TOP START----->
	<!--#include file="ASPIncludes/TopStrip.asp"-->
<!-----TOP START END----->
	
	
	<!-- Body Start here -->
	<div id="content">
	    <!---PAGE TITLE BLOCK START--->
        <div class="container floated">
		<div class="row text-center cx-title gia_page_title text-center">
                            <h1 class="mb-0">Contact Us</h1>
                            

                        </div>
		  
        </div>
        <!---PAGE TITLE BLOCK ENDS--->
		<!-- Page Content -->
        <div class="page-content">
		<!--Page content inner start--->
			<div class="container">
				<!-- sixteen column start -->
                <div class="d-flex flex-xl-nowrap flex-lg-nowrap flex-md-wrap flex-sm-wrap">
					<!--<p>Please complete the following sections. All items marked <span class="red_color">* are mandatory.</span> </p>-->
						<!---div class="w-xl-60 w-lg-60 shadow w-md-100 w-sm-100 p-3">
                            <div style="width: 100%">
                                <iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=%20%206150%20Hellyer%20Ave.,%20San%20Jose,%20CA%2095138,%20USA%20%20+(Global%20Industry%20Analysts,%20Inc.)&amp;t=p&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe></div>
                        </div--->
					 <div class="w-xl-60 w-lg-60 w-md-100 w-sm-100 mx-auto p-0">
						 <div class="form_div_01">
							<div class="form_table_top_strip table_title_bg">
							<h3><!--<font color="white"><b>&nbsp;User Details</b></font></h3>--> </div>

                          <!--    <form method="POST" action="submitservicesform.asp" onSubmit="return Validate(this)" id=form1 name=form1>
                                      <input type="hidden" name="_recipients" value="sales@StrategyR.com">
									  <input type="hidden" name="_subject" value="Regarding Feedback Information offered by GIA">
									  <input type="hidden" name="_replyToField" value="Email">
									  <input type="hidden" name="_requiredFields" value="Name, Title, Company, City, State, Zip, Country, Email">
									  <input type="hidden" name="_redirect" value="contact.asp?sent=yes">
                                      

                                  <table>
										<tbody>
										<%If Trim(request("sent"))="yes" then%>
										  <tr align="center">
											<td colspan="3" align="center" class="td3"><span class="red_color">Your contact us request has been submitted</span></td>
										  </tr>
										 <%End If%>
										  <tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> Salutation</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="Title" class="txtbox140" maxlength="40" placeholder="Company"></td>
										  </tr>   
										  <tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> Full Name</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="Name" placeholder="First Name" class="txtbox140" maxlength="40"></td>
										  </tr>
										                                        
                                          <tr align="center">
												<td height="40" align="right" class="td1"><span class="red_color">*</span> Company</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="Company" class="txtbox140" maxlength="40" placeholder="Company">
										  </tr>
										  <tr align="center">
												<td height="40" align="right" class="td1"><span class="red_color">*</span> Address 1</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="Address" class="txtbox140" maxlength="40" placeholder="Address 1">
										  </tr>
										   <tr>
												<td height="40" align="right" class="td1"> Address 2</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="Address1" class="txtbox140" maxlength="40" placeholder="Address2 (Not Mandatory)"></td>
										  </tr>
										  <tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> City</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" placeholder="City" size="40" name="City" class="txtbox140" maxlength="40"></td>
										  </tr>

										   <tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> State</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="State" class="txtbox140" maxlength="40" placeholder="State/Province"></td>
											</tr>
                                            
											<tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> Zip / Postal Code</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" placeholder="Zip / Postal Code" size="40" name="Zip" class="txtbox140" maxlength="40"></td>
											</tr>

											<tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> Country</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="Country" placeholder="Country" class="txtbox140" maxlength="40"></td>
											</tr>

											<tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> Telephone</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="Telephone" class="txtbox140"  placeholder="Telephone" maxlength="40"></td>
											</tr>

											<tr>
												<td height="40" align="right" class="td1"><span class="red_color"></span> Fax</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="Fax" class="txtbox140" maxlength="40"  placeholder="Fax"></td>
											</tr>

											<tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> EMail</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" size="40" name="Email" class="txtbox140" maxlength="40"  placeholder="EMail"></td>
											</tr>

											<tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> Executive Position</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" name="position" size="25"  value="<%=upos%>" maxlength="100" placeholder="Executive Position"> </td>
											</tr>

											<tr>
												<td height="40" align="right" class="td1"><span class="red_color">*</span> Website</td>
												<td height="40" align="center" class="td2">:</td>
												<td height="40" align="left" class="td3"><input type="text" class="txtbox140" name="uwebsite" size="25"  value="<%=uweb%>" maxlength="100"  onblur="validateWeb(this);" placeholder="Website"> </td>
											</tr>

											<tr>
												<td valign="top" height="40" align="right" class="td1" ><span class="red_color">*</span> Area of Interest</td>
												<td height="40" align="center" class="td2" valign="top">:</td>
												<td height="40"  class="td3" valign="top"><textarea NAME="Interest" ROWS="8"  class="txtarea txtarea2"  placeholder="Area of Interest"></textarea> </td>
											</tr>
											<tr>
												<td height="10" align="right" valign="bottom" class="td1">&nbsp;</td>
												<td height="10" align="center" class="td2">&nbsp;</td>
												<td height="10" class="td3">&nbsp;</td>
										   </tr>
                                         </tbody>
                                    </table>

                              

                         </div>
					 </div> <div class="submit_button_block ">
										  <input type="submit" value="Click here to Submit" name="B1">
			                              <!-input type="reset" class="reset" value="Click here to Reset" name="B2"->
									 </div>	<br/>

                       <h4 style="clear:both"><strong>&nbsp;You can also contact us by phone or mail:</strong> </h4>
					   <p>Global Industry Analysts, Inc. <br/>
					   6150 Hellyer Ave., San Jose, CA 95138, USA    <br/>   
					   Phone: 408-528-9966 </p>
					  
				</div>
				</form>-->
                <!-- sixteen column start -->
						<p class="font-size-15" style="font-weight: 500; line-height: 23px;"><span class="font-weight-bold">Global Industry Analysts, Inc.</span> <br/>
					   6150 Hellyer Ave., San Jose, CA 95138, USA    <br/>   
					   Phone: 408-528-9966 <br>
					   info411@StrategyR.com
					   </p>
            </div>
			
        <!--Page content inner end--->
       </div>
	  <!-- Page Content / End -->
</div>
<!-- Body End here -->



<br/>
</div><!-- Wrapper / End -->
<!-- Footer start-->
<!--#include file="ASPIncludes/BottomStrip.asp"-->
<!---footer_end-->
</body>
</html>