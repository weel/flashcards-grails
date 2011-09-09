<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="default.upload.file" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
        	<g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            Upload Form: <br />
			<g:form action="uploadFile" method="post" enctype="multipart/form-data">
				<input type="file" name="jsonData" />
				<input type="submit" />
			</g:form>
        </div>
    </body>
</html>
