<%@ page import="edu.umn.ncs.signup.StudyInterest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'studyInterest.label', default: 'StudyInterest')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
    </head>
    <body>
        <div class="content">
            <div id="pageTitle">
            	<p>Thanks for submitting your information!</p>
            </div>
            <div id="forMoreInfo">
            	<p>We will contact you shortly.</p>
            	<p>For additional information or questions please call 1-866-315-7126</p>
            </div>
        </div>
    </body>
</html>
