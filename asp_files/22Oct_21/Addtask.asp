<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="Payment Interface">
    <title>Survey Questioner </title>
    <!---css---->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
	<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
     <!---DATEPICKER LINKS--->
    <!--formden.js communicates with FormDen server to validate fields and submit via AJAX -->
    <script type="text/javascript" src="js/formden.js"></script>

    <!-- Special version of Bootstrap that is isolated to content wrapped in .bootstrap-iso -->
    <link rel="stylesheet" href="css/bootstrap-iso.css" />

    <!--Font Awesome (added because you use icons in your prepend/append)-->
    <link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />

    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet" />

	
  <style> 
#example_length, #example_filter {
 display: block;
} 
.dt-button {
    background: #007bff;
    color: #fff;
    border-color: #007bff;
    padding: 5px 10px;
    font-size: 17px;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.2) !important;
    border: 0px;
    border-radius: 3px;
    float: right;
}
</style>
<style>
.dataTables_paginate {
    margin: 2px 0;
    white-space: nowrap;
    justify-content: flex-end;
    display: flex;
    padding-left: 0;
    list-style: none;
    border-radius: 0.25rem;
}
.dataTables_paginate span{
     justify-content: flex-end;
    display: flex;   
    list-style: none;
   
}

.paginate_button {
    position: relative;
    display: block;
    padding: 0.5rem 0.75rem;
    margin-left: -1px;
    line-height: 1.25;
    color: #656565;
    background-color: #fff;
    border: 1px solid #dee2e6;
	cursor:pointer;
	text-decoration:none !important;
}

.dataTables_paginate .paginate_button.current{
    z-index: 3;
    color: #fff;
    background-color: #007bff;
    border-color: #007bff;
}

</style>

	<script type="text/javascript">
	
      
function FunDeleteTask(a){  
//alert(a);

  var str = a;
    var array = str.split("##");  

            var vEmail = array[0]; //$("#selUser").val();			
			var vCompletedTasks = array[1]; //$("#CompletedTasks").val();	
			var vTime_Consumed= array[2]; //$("#Time_Consumed").val();	
			var vselTask = array[3];//$("#selTask").val();
			var vCompleted_date = array[4];//$("#Completed_date").val();


/*alert("email"+vEmail);
alert("vselTask"+vselTask);
alert("vCompletedTasks"+vCompletedTasks);
alert("vTime_Consumed"+vTime_Consumed);
alert("vCompleted_date"+vCompleted_date);*/

if (vEmail != null && vEmail != '' && vselTask != '' && vTime_Consumed != null && vTime_Consumed != '' && vselTask != null && vCompletedTasks != '' && vCompletedTasks != null  && vCompleted_date != '' && vCompleted_date != null)
			 {			
			//alert(vselTask);
			 $.ajax({
						async:false,
						url: "Ajax_Delete_TaskDetails.asp",
						type: "POST",
						data:'vEmail='+encodeURIComponent(vEmail)+'&vTime_Consumed='+encodeURIComponent(vTime_Consumed)+'&vselTask='+encodeURIComponent(vselTask)+'&vCompletedTasks='+encodeURIComponent(vCompletedTasks)+'&vCompleted_date='+encodeURIComponent(vCompleted_date)+'',
						success: function(data){	
						//alert("User Added Sucessfully");
						//alert(data);
												 
						 alert("Task Deleted Sucessfully");
						location.reload();
						//alert("User Added Sucessfully");
						//alert('Industry Update Successfully!');						
						// $("#lbl"+iSno).show();
						// $("#txt"+iSno).hide();
						 //$("#lbl"+iSno).text(vReportName);			   
						//$('#divajax').append(data);

						 
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				  // modal.style.display = "none";
				//window.opener.location.reload(false);
			    		
				
			  } 

}
		

		function FunAddTask(){               
		    
					
			var vEmail = $("#selUser").val();
			var vselTask = $("#selTask").val();
			var vCompletedTasks 	= $("#CompletedTasks").val();	
			var vTime_Consumed= $("#Time_Consumed").val();	
			var vCompleted_date = $("#Completed_date").val();
			var vremarks = $("#remarks").val();
         
		
		
		 if (vEmail != null && vEmail != '' && vselTask != '' && vTime_Consumed != null && vTime_Consumed != '' && vselTask != null && vCompletedTasks != '' && vCompletedTasks != null  && vCompleted_date != '' && vCompleted_date != null)
			 {			
			// alert(vselTask);
			 $.ajax({
						async:false,
						url: "Ajax_Add_TaskDetails.asp",
						type: "POST",
						data:'vEmail='+encodeURIComponent(vEmail)+'&vTime_Consumed='+encodeURIComponent(vTime_Consumed)+'&vselTask='+encodeURIComponent(vselTask)+'&vCompletedTasks='+encodeURIComponent(vCompletedTasks)+'&vCompleted_date='+encodeURIComponent(vCompleted_date)+'&vremarks='+encodeURIComponent(vremarks)+'',
						success: function(data){	
						//alert("User Added Sucessfully");
						//alert(data);
						if (data == "2")
						{
						   alert("Task Already Exists");
						
						}
						else
						{
						 
						  alert("Task Added Sucessfully");
						 location.reload(true);
						}

						//alert("User Added Sucessfully");
						//alert('Industry Update Successfully!');						
						// $("#lbl"+iSno).show();
						// $("#txt"+iSno).hide();
						 //$("#lbl"+iSno).text(vReportName);			   
						//$('#divajax').append(data);

						 
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
    <main role="main" class="container-fulid main">
        <!---BEGIN:INPUT SECTION--->
        <div class="row mx-0">
            <div class="col-xs-12 col-xl-6 col-lg-7 col-md-11  mx-auto shadow bg-white p-3 mb-2>
                <form role="form" method="post" id="form1" class="pure-form">

				<% 
				Function SelectRadio(val1,val2)
					IF trim(val1) = trim(val2) then
						SelectRadio = " Checked"
					else
						SelectRadio = ""
					End IF
			    END Function


				Function Selected(val1,val2)
					IF trim(val1) = trim(val2) then
						Selected = " Selected"
					else
						Selected = ""
					End IF
				END Function		
					
					%>

				<div id="divajax"></div>

                            
                            <!----BEGIN:ADDRESS AND  BANK DETAILS---->
                            <!---BEGIN:ROW-4--->
                            <div class="row mx-0">
                                
                                     
                                          
                                                <!---BEGIN:ROW--->
                                                <div class="row">
    

											  
												<!---label for="staticEmail" class="col-sm-4 col-form-label">Select Topic :</label--->
												<div class="col-sm-8 mb-1">
												 

											     <select id="selTopic" name="selTopic" class="form-control form-control-sm font-weight-bold">
												
													<option value="">Select Topic</option>
													<%dim rsuser,sql
													   
														Set Conn = Server.CreateObject("ADODB.Connection")
														Set rsuser = Server.CreateObject("ADODB.Recordset")
														Conn.Open DataSource9
																	
														
														
														  sql="select * from Survey_Topics where status='Y'"	
														
														
														rsuser.Open sql, Conn
														If not rsuser.EOF then
															while not rsuser.EOF %>															
															<option value="<%=rsuser("Survey_Id")%>">&nbsp;<%=UCase(rsuser("Survey_Id"))%>&nbsp;-&nbsp;&nbsp;<%=rsuser("Survey_shortName")%></option>
															<% 
															rsuser.MoveNext
															wend 
														end if
														Set rsuser = nothing

														%>
													
												</select>
												</div>
											 
											 
												<!---label for="inputPassword" class="col-sm-4 col-form-label">Select Question Number :</label--->
												<div class="col-sm-4">
												<select id="selQsno" name="selQsno" class="form-control form-control-sm font-weight-bold">
												
													<option value="">Select Question Number</option>
													<%dim rstask,tasksql
													   
														Set Conn = Server.CreateObject("ADODB.Connection")
														Set rstask = Server.CreateObject("ADODB.Recordset")
														Conn.Open DataSource9																	
														
														tasksql="select distinct Qsno from  Survey_Questions where   Servey_ID=1 and Qstatus='Y'"		  
														rstask.Open tasksql, Conn
														If not rstask.EOF then
															while not rstask.EOF %>
															
															<option value="<%=rstask("Qsno")%>"><%=rstask("Qsno")%></option>
															<% 
															rstask.MoveNext
															wend 
														end if
														Set rstask = nothing

														%>

											   </select>
												</div>
											

												
												
										 	   </div>


                                            
                                        
                                    </div>
									        

                                   

                            <!---BEGIN:ROW-4--->
                            <div class="row mx-0">
                                <div class="col-12  text-center">
                                   <input type="submit" class="btn bg-dark text-white rounded-0 mx-auto px-2 py-1" name='btnview' value='View'>
                                </div>

                            </div>

                            <!---END:ROW--->
                </form>
            </div>
        </div>
      <!---END:INPUT SECTION--->
        <div class="row pb-5 mx-3">
            <div class="col-xl-11 col-lg-11 col-md-12 col-sm-12 col- shadow  mx-auto bg-white px-0 mt-3 pb-3">
                <div class="bg-secondary text-white px-3  py-1 rounded-0 mb-3 font-weight-bold">
                    <!-- <div class="user_icon bg-white float-left mr-3">
                       <img src="img/2.jpg" class="img-fluid" />
                    </div>-->
                    <h4 class="mb-0 font-weight-bold">Survey Questioner Details</h4>
                </div>
				
				<div class="w-100 py-1 px-3">
					<h5 class="mb-2 font-weight-bold">Add Survey Questioner</h5>
				</div>

				 <div class="w-100  py-1 px-3">                
					  
                                    <div class="row m-0 d-flex flex-column">
                                        <!---label for="staticEmail" class="col-sm-1 col-form-label"></label--->
										<div class="d-flex mb-1">  
										 <select id="selTopic1" name="selTopic1" class="form-control form-control-sm mr-2" style="height: 30px; width: 300px;">
												
													<option value="" class="font-weight-bold">Select Topic</option>
													<%dim rsuser1,sql1
													   
														Set Conn = Server.CreateObject("ADODB.Connection")
														Set rsuser1 = Server.CreateObject("ADODB.Recordset")
														Conn.Open DataSource9														
														  sql1="select * from Survey_Topics where status='Y'"
														rsuser1.Open sql1, Conn
														If not rsuser1.EOF then
															while not rsuser1.EOF %>															
															<option value="<%=rsuser1("Survey_Id")%>">&nbsp;<%=UCase(rsuser1("Survey_Id"))%>&nbsp;-&nbsp;&nbsp;<%=rsuser1("Survey_shortName")%></option>
															<% 
															rsuser1.MoveNext
															wend 
														end if
														Set rsuser1 = nothing

														%>
													
												</select>
											<input type="text"  value="" name="Qsno" id="Qsno" placeholder="Question Number" class="mr-2 border px-2 mb-2" style="height: 30px; width: 126px;">
                                            <input type="text"  value="" name="Qsequence_ID" id="Qsequence_ID" placeholder="Question Sequence Number" class="mr-2 border px-2 mb-2" style="height: 30px;">
										</div>
										<div class="d-flex">
											<textarea name="Qtext" id="Qtext" placeholder="Question Text" class="mr-2 border px-2 mb-2 w-10"></textarea>
										</div>

										<div class="row mx-0">
											<div class="col-12  text-center">
											   <input type="submit" class="btn bg-dark text-white rounded-0 mx-auto px-2 py-1" name="btnview" value="View">
											</div>
			
										</div>

										<div class="d-flex flex-wrap"> 
											<div class="d-flex mx-2 align-items-center mb-2"> isComment<input type="checkbox" id="isComment" class="mx-2" name="isComment"/></div>
											<div class="d-flex mx-2 align-items-center mb-2"> isRank<input type="checkbox" id="isRank" class="mx-2 " name="isRank"/></div>
											<div class="d-flex mx-2 align-items-center mb-2">isCheck<input type="checkbox" id="isCheck" class="mx-2" name="isCheck"/></div>
											<div class="d-flex mx-2 align-items-center mb-2">isRadio<input type="checkbox" id="isRadio" class="mx-2" name="isRadio"/></div>
											<div class="d-flex mx-2 align-items-center mb-2">isOtherSpecify<input type="checkbox"  class="mx-2" id="isOtherSpecify" name="isOtherSpecify"/></div>
											<div class="d-flex mx-2 align-items-center mb-2">isWrap<input type="checkbox" id="isWrap" class="mx-2" name="isWrap"/></div>
											<div class="d-flex mx-2 align-items-center mb-2">isSub<input type="checkbox" id="isSub" class="mx-2" name="isSub"/></div>
											<div class="d-flex mx-2 align-items-center mb-2">Status<input type="checkbox" id="Status" class="mx-2" name="Status"/></div>
										</div>
                                      
                                    </div>
                       
					   
				  </div>
				  <hr>
                <div class="w-100  py-1 px-3">
                    <%Set Conn = Server.CreateObject("ADODB.Connection")
					Set rsUsercur = Server.CreateObject("ADODB.Recordset")
					Conn.Open DataSource9
					sqlSelect="Select top 500 * from Survey_Questions where 1=1 "
					
					If Trim(request("selTopic")) <> "" Then
					   sqlqry= " and  Servey_ID="&Trim(request("selTopic"))&" "					
					end if
					
					If Trim(request("selQsno")) <> "" Then
					  sqlqry1= sqlqry & " and Qsno="&Trim(request("selQsno"))&" "
					end if
					
				
					sqlSelect= sqlSelect & sqlqry & sqlqry1 & " order by QSno, QSequenceID"
					
					'response.write sqlselect
					'response.end
					rsUsercur.Open sqlSelect, Conn
					
					%>
<div class="table-responsive">
                    <table id="example" class="table table-striped table-bordered  " data-page-length="500">
                        <thead>
                            <tr>
                                <th>Sno</th>
                                <th>Seq&nbsp;ID</th>
                                <th>Title</th>
                                <th>IsComment</th>
                                <th>IsRank</th>
                                <th>IsCheck</th>
                                <th>IsRadio</th>
                                <th>IsOther<br>Specify</th>
                                <!--th>Servey_ID</th-->
                                
								<th>IsWrap</th>
								<th>IsSub</th>
								<th>Status</th>
								<th>Options</th>
								
                            </tr>
                        </thead>
						
                        <tbody>
						<%If not rsUsercur.EOF Then
						Dim TotalCNT, TotalCMPs, TotalTime,Sno
						TotalCNT = 0
						TotalCMPs = 0
						TotalTime = 0
						Sno = 0
						 while not rsUsercur.EOF 
						 %>
                            <tr>
                                <td align="center"><%=rsUsercur("QSno")%></td>
                                <td align="center"><%=rsUsercur("QSequenceID")%><br><input type="hidden" value="<%=rsUsercur("QSequenceID")%>" id="QSequenceID<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" name="QSequenceID<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" ></td>
                                <td><%=rsUsercur("QTitle")%><!--br><textarea  style=" min-width:250px; max-width:100%;min-height:60px;height:100%;width:100%;" id="QTitle<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" name="QTitle<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" ><%=rsUsercur("QTitle")%></textarea--></td>
								<td align="center"><input type="checkbox"  <%=SelectRadio("Y",rsUsercur("IsQComment")) %> name="IsQComment<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" id="IsQComment<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" /></td>
                                <td align="center"><input type="checkbox"  <%=SelectRadio("Y",rsUsercur("IsQRank")) %> name="IsQRank<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" id="IsQRank<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" /></td>
                                <td align="center"><input type="checkbox"  <%=SelectRadio("Y",rsUsercur("IsCheckBox")) %> name="IsCheckBox<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" id="IsCheckBox<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" /></td>
                                <td align="center"><input type="checkbox"  <%=SelectRadio("Y",rsUsercur("IsRadioButton")) %> name="IsRadioButton<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" id="IsRadioButton<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" /></td>
								 <td align="center"><input type="checkbox"  <%=SelectRadio("Y",rsUsercur("IsOtherSpecify")) %> name="IsOtherSpecify<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" id="IsOtherSpecify<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" /></td>
                                <!--td><%=rsUsercur("Servey_ID")%></td-->
								
								  <td align="center"><input type="checkbox"  <%=SelectRadio("Y",rsUsercur("IsWrap")) %> name="IsWrap<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" id="IsWrap<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" /></td>
								   <td align="center"><input type="checkbox"  <%=SelectRadio("Y",rsUsercur("IsSub")) %> name="IsSub<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" id="IsSub<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" /></td>
								    <td align="center"><input type="checkbox"  <%=SelectRadio("Y",rsUsercur("QStatus")) %> name="QStatus<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" id="QStatus<%=rsUsercur("QSno")%>_<%=rsUsercur("QSequenceID")%>" /></td>
								  <% 'if (rsUsercur("mydatediff") >=0) then %>
								   <td><a href="#" onClick="FunDeleteTask('<%=rsUsercur("QSno")%>##<%=rsUsercur("QSequenceID")%>##<%=rsUsercur("Servey_ID")%>');">Delete</a></td>
                                                                    <%'else%>
<!--td>&nbsp;&nbsp;&nbsp;</td-->
                                                                  <%'end if%>
                             
                            </tr>
						<%
							
							rsUsercur.movenext
							Wend
							End If
							Set rsUsercur=nothing%>
						</tbody>
				
                    </table>

 			</div>
                </div>
            </div>


        </div>
        <!---BEGIN:INPUT SECTION--->
    </main>
   <!--#include file="ASPIncludes/BottomStrip.htm"-->	
</body>
<!---script--->
<script> 
    function onlyNumberKey(evt) { 
          
        // Only ASCII charactar in that range allowed 
        var ASCIICode = (evt.which) ? evt.which : evt.keyCode 
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57)) 
            return false; 
        return true; 
    } 
</script> 
<script src="https://code.jquery.com/jquery-3.5.1.js "></script>
<script src="js/bootstrap.bundle.js "></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js "></script>

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
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<script>
    $(document).ready(function() {
        var date_input = $('input[name="Completed_date"]'); //our date input has the name "date"
        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'dd/mm/yyyy',
            container: container,
            todayHighlight: true,
        })
    })

	 $(document).ready(function() {
        var date_input = $('input[name="DOJ"]'); //our date input has the name "date"
        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'dd/mm/yyyy',
            container: container,
            todayHighlight: true,
        })
    })


</script>
</html>
