<%@ include file="/include.jsp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<title>Welcome to Festival Registration System</title>
<script> 
function validateForm()                                  
{ 
    var FIRSTNAME = document.forms["RegForm"]["FIRSTNAME"];               
    var LASTNAME= document.forms["RegForm"]["LASTNAME"];    
    var USERNAME = document.forms["RegForm"]["USERNAME"];  
    var PASSWORD =  document.forms["RegForm"]["PASSWORD"];  
    var EMAIL = document.forms["RegForm"]["EMAIL"];  
    var PHONENO = document.forms["RegForm"]["PHONENO"];  
    var ADDRESS = document.forms["RegForm"]["ADDRESS"];  
   
    if (FIRSTNAME.value == "")                                  
    { 
        window.alert("Please enter your name."); 
        name.focus(); 
        return false; 
    } 
   
    if (LASTNAME.value == "")                               
    { 
        window.alert("Please enter your address."); 
        address.focus(); 
        return false; 
    } 
       
    if (USERNAME.value == "")                                   
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
   
    if (PASSWORD.value == "")                           
    { 
        window.alert("Please enter your password."); 
        phone.focus(); 
        return false; 
    } 
   
    if (EMAIL.value == "")                        
    { 
        window.alert("Please enter your password"); 
        password.focus(); 
        return false; 
    } 

    if (PHONENO.value == "")                        
    { 
        window.alert("Please enter your password"); 
        password.focus(); 
        return false; 
    } 
   
    if (ADDRESS.value == "")                        
    { 
        window.alert("Please enter your password"); 
        password.focus(); 
        return false; 
    } 
   
   
   
   
    return true; 
}</script> 
  

<style>
.error {
	color: red;
	font-weight: bold;
	font-size: 20px;
}
</style>
</head>

<body>
	<br />
	<br />
	<form:form action="save.html" name="RegForm"
		modelAttribute="registrationAttribute" method="post"
		onsubmit="return validateForm()">
		<table width="80%" align="center" border="2">
			<tbody>
				<tr>
					<td>
						<div id="header">
							&nbsp;
							<div align="center">Festival Registration System</div>
						</div>

						<table>
							<tbody>
								<tr>
									<td width="100%">
										<table align="right" cellpadding="2" bgcolor="pink">
											<tbody>
												<tr>
													<td width="90">
														<div id="menu" align="center">
															<a href="<jstlcore:url value="/index.jsp"/>">
																Login_Page </a>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td width="900">
										<div id="content">

											<table align="center" border="0">

												<tbody>
													<tr>
														<td align="center" colspan="2">
															<h3>New Visitor Registration Page</h3>
														</td>
													</tr>
													<tr>
														<td align="center" colspan="2" style="font-style: italic;">Fields
															marked (<span
															style="font-weight: bold; color: red; font-size: 15px;">*</span>)
															are Mandatory
														</td>
													</tr>
													<tr>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<td></td>
														<td></td>
													</tr>
													<%-- <tr><td><form:hidden path="id" /></td></tr> --%>
													<tr>

														<td><span
															style="font-weight: bold; color: red; font-size: 15px;">*</span>
															First Name:</td>
														<td><form:input type="text" path="firstName"
																name="FIRSTNAME" /></td>

													</tr>
													<tr>
														<td><span
															style="font-weight: bold; color: red; font-size: 15px;">*</span>
															Last Name:</td>
														<td><form:input type="text" path="lastName"
																name="LASTNAME" /></td>

													</tr>
													<tr>
														<td><span
															style="font-weight: bold; color: red; font-size: 15px;">*</span>
															User Name:</td>
														<td><form:input type="text" path="userName"
																name="USERNAME" /></td>

													</tr>
													<tr>
														<td><span
															style="font-weight: bold; color: red; font-size: 15px;">*</span>
															Password:</td>
														<td><form:input type="password" path="passWord"
																name="PASSWORD" /></td>

													</tr>
													<tr>
														<td><span
															style="font-weight: bold; color: red; font-size: 15px;">*</span>
															Email:</td>
														<td><form:input type="email" path="email"
																name="EMAIL" /></td>

													</tr>
													<tr>
														<td><span
															style="font-weight: bold; color: red; font-size: 15px;">*</span>
															Phone Number:</td>
														<td><form:input type="number" path="phoneNumber"
																name="PHONENO" /></td>

													</tr>
													<tr>
														<td>Address:</td>
														<td><form:input type="text" path="address"
																name="ADDRESS" /></td>

													</tr>
													<tr>
														<td colspan="2" align="right"><input value="Register"
															type="submit"> <input value="Clear" type="reset"></td>
													</tr>
													<tr>

													</tr>
												</tbody>
											</table>
										</div>
									</td>
									<!-- content end -->
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="center"><div
							style="font-size: 15px; color: red; font-weight: bold;">${REGISTRATIONSTATUSMESSAGE}</div></td>
				</tr>
			</tbody>
		</table>

	</form:form>
</body>

</html>
