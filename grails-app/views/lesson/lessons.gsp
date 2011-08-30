<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <h1><g:message code="default.start.label" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        	<th>
                        		<g:message code="default.name.label"/>
                        	</th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${lessons}" status="i" var="lesson">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        	<td>
                        	<g:link action="start" id="${lesson.id}">${lesson.name}</g:link>
                        	</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
            </div>
        </div>
    </body>
</html>
