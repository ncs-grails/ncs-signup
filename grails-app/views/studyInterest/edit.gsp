

<%@ page import="edu.umn.ncs.signup.StudyInterest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'studyInterest.label', default: 'StudyInterest')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${studyInterestInstance}">
            <div class="errors">
                <g:renderErrors bean="${studyInterestInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${studyInterestInstance?.id}" />
                <g:hiddenField name="version" value="${studyInterestInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fullName"><g:message code="studyInterest.fullName.label" default="Full Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'fullName', 'errors')}">
                                    <g:textField name="fullName" value="${studyInterestInstance?.fullName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="address"><g:message code="studyInterest.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${studyInterestInstance?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="address2"><g:message code="studyInterest.address2.label" default="Address2" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'address2', 'errors')}">
                                    <g:textField name="address2" value="${studyInterestInstance?.address2}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="city"><g:message code="studyInterest.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${studyInterestInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="state"><g:message code="studyInterest.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'state', 'errors')}">
                                    <g:textField name="state" maxlength="2" value="${studyInterestInstance?.state}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="zipCode"><g:message code="studyInterest.zipCode.label" default="Zip Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'zipCode', 'errors')}">
                                    <g:textField name="zipCode" value="${studyInterestInstance?.zipCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="homePhone"><g:message code="studyInterest.homePhone.label" default="Home Phone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'homePhone', 'errors')}">
                                    <g:textField name="homePhone" value="${studyInterestInstance?.homePhone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mobilePhone"><g:message code="studyInterest.mobilePhone.label" default="Mobile Phone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'mobilePhone', 'errors')}">
                                    <g:textField name="mobilePhone" value="${studyInterestInstance?.mobilePhone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="workPhone"><g:message code="studyInterest.workPhone.label" default="Work Phone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'workPhone', 'errors')}">
                                    <g:textField name="workPhone" value="${studyInterestInstance?.workPhone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="emailAddress"><g:message code="studyInterest.emailAddress.label" default="Email Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'emailAddress', 'errors')}">
                                    <g:textField name="emailAddress" value="${studyInterestInstance?.emailAddress}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="contactMethod"><g:message code="studyInterest.contactMethod.label" default="Contact Method" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'contactMethod', 'errors')}">
                                    <g:select name="contactMethod.id" from="${edu.umn.ncs.signup.StudyInterestContactMethod.list()}" optionKey="id" value="${studyInterestInstance?.contactMethod?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="clientIpAddress"><g:message code="studyInterest.clientIpAddress.label" default="Client Ip Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: studyInterestInstance, field: 'clientIpAddress', 'errors')}">
                                    <g:textField name="clientIpAddress" value="${studyInterestInstance?.clientIpAddress}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
