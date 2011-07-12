<%@ page import="edu.umn.ncs.signup.StudyInterest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'studyInterest.label', default: 'StudyInterest')}" />
        <title>Request Contact - National Children's Study - Ramsey County</title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <g:javascript src="signup.js"/>
    </head>
    <body>
        <div class="content">
            <div id="pageTitle">
            <p>
            	<span class="thicker">
	            	Fill in this form
            	</span>
            	and someone from
            </p>
            <p class="indented">
            	the
            	<span class="thicker">
            		National Children's Study Ramsey County
            	</span>
            </p>
            <p>
            	<span class="thicker">
            		Study Center
            	</span>
            	will contact you
            </p>
            </div>
            
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${studyInterestInstance}">
            <div class="errors">
                <g:renderErrors bean="${studyInterestInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
					<p class="required">
						Asterisks (*) indicate a required field
					</p>
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="fullName"><g:message code="studyInterest.fullName.label" />*</label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'fullName', 'errors')}">
                                    <g:textField name="fullName" value="${studyInterestInstance?.fullName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="address"><g:message code="studyInterest.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${studyInterestInstance?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="address2"><g:message code="studyInterest.address2.label" default="Address2" /></label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'address2', 'errors')}">
                                    <g:textField name="address2" value="${studyInterestInstance?.address2}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="city"><g:message code="studyInterest.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${studyInterestInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="state"><g:message code="studyInterest.state.label" /></label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'state', 'errors')}">
                                    <g:textField name="state" maxlength="2" value="${studyInterestInstance?.state}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="zipCode"><g:message code="studyInterest.zipCode.label" /></label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'zipCode', 'errors')}">
                                    <g:textField name="zipCode" value="${studyInterestInstance?.zipCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="homePhone"><g:message code="studyInterest.homePhone.label"/>*</label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'homePhone', 'errors')}">
                                    <g:textField name="homePhone" value="${studyInterestInstance?.homePhone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="mobilePhone"><g:message code="studyInterest.mobilePhone.label" /></label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'mobilePhone', 'errors')}">
                                    <g:textField name="mobilePhone" value="${studyInterestInstance?.mobilePhone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="workPhone"><g:message code="studyInterest.workPhone.label" /></label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'workPhone', 'errors')}">
                                    <g:textField name="workPhone" value="${studyInterestInstance?.workPhone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="inputLabel">
                                    <label for="emailAddress"><g:message code="studyInterest.emailAddress.label" /></label>
                                </td>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'emailAddress', 'errors')}">
                                    <g:textField name="emailAddress" value="${studyInterestInstance?.emailAddress}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                            	<td/>
                                <td valign="top" class="inputLabel">
                                    <label for="contactMethod"><g:message code="studyInterest.contactMethod.label" /></label>
                                </td>
                            </tr>

                            <tr class="prop">
                            	<td/>
                                <td valign="top" class="inputValue ${hasErrors(bean: studyInterestInstance, field: 'contactMethod', 'errors')}">
                                    <g:select name="contactMethod.id" from="${edu.umn.ncs.signup.StudyInterestContactMethod.list()}" optionKey="id" value="${studyInterestInstance?.contactMethod?.id}"  />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <p class="finishUp">
                    <a id="showConfidentialityStatement" href="#confidentialityStatement">
                    	<g:message code="studyInterest.confidentialityStatement.label"/>
                    </a>
   					<g:submitButton name="create" value="${message(code: 'studyInterest.submit.label', default: 'Submit')}" />
                </p>
                
                <h2 id="confidentialityTitle"></h2>
                <div id="confidentialityStatement" title="${message(code:'studyInterest.confidentialityStatement.title')}">
                	<g:message code="studyInterest.confidentialityStatement.text" />
                </div>
            </g:form>
        </div>
    </body>
</html>
