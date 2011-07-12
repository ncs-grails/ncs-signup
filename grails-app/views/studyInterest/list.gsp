
<%@ page import="edu.umn.ncs.signup.StudyInterest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'studyInterest.label', default: 'StudyInterest')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'studyInterest.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="fullName" title="${message(code: 'studyInterest.fullName.label', default: 'Full Name')}" />
                        
                            <g:sortableColumn property="address" title="${message(code: 'studyInterest.address.label', default: 'Address')}" />
                        
                            <g:sortableColumn property="address2" title="${message(code: 'studyInterest.address2.label', default: 'Address2')}" />
                        
                            <g:sortableColumn property="city" title="${message(code: 'studyInterest.city.label', default: 'City')}" />
                        
                            <g:sortableColumn property="state" title="${message(code: 'studyInterest.state.label', default: 'State')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${studyInterestInstanceList}" status="i" var="studyInterestInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${studyInterestInstance.id}">${fieldValue(bean: studyInterestInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: studyInterestInstance, field: "fullName")}</td>
                        
                            <td>${fieldValue(bean: studyInterestInstance, field: "address")}</td>
                        
                            <td>${fieldValue(bean: studyInterestInstance, field: "address2")}</td>
                        
                            <td>${fieldValue(bean: studyInterestInstance, field: "city")}</td>
                        
                            <td>${fieldValue(bean: studyInterestInstance, field: "state")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${studyInterestInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
