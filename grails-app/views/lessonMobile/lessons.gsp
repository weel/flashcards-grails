<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="mainMobile" />
    </head>
    <body>
	   <content tag="buttons">
	    	<a href="${createLink(uri: '/')}" data-icon="back" data-direction="reverse" data-theme="d"><g:message code="default.home.label"/></a>
	   </content>
	   
       <ul data-role="listview" data-theme="d">
       		<g:if test="${lessons.size == 0}">
     			<p><strong><g:message code="default.lessons.empty"/></strong></p>
			</g:if>
       		<g:each in="${lessons}" status="i" var="lesson">
          		<li><a href="<g:createLink action="start" id="${lesson.id}" />" data-ajax='false'>${lesson.name}</a>  <span class="ui-li-count">${lesson.cards.size()}</span></li>
       		</g:each>
       </ul>
    </body>
</html>
