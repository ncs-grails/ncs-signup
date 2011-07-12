
<%@ page import="edu.umn.ncs.signup.StudyInterest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'studyInterest.label', default: 'StudyInterest')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.fullName.label" default="Full Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "fullName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.address.label" default="Address" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "address")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.address2.label" default="Address2" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "address2")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.city.label" default="City" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "city")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.state.label" default="State" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "state")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.zipCode.label" default="Zip Code" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "zipCode")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.homePhone.label" default="Home Phone" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "homePhone")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.mobilePhone.label" default="Mobile Phone" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "mobilePhone")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.workPhone.label" default="Work Phone" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "workPhone")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.emailAddress.label" default="Email Address" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "emailAddress")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.contactMethod.label" default="Contact Method" /></td>
                            
                            <td valign="top" class="value"><g:link controller="studyInterestContactMethod" action="show" id="${studyInterestInstance?.contactMethod?.id}">${studyInterestInstance?.contactMethod?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.dateCreated.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${studyInterestInstance?.dateCreated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="studyInterest.clientIpAddress.label" default="Client Ip Address" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: studyInterestInstance, field: "clientIpAddress")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${studyInterestInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
