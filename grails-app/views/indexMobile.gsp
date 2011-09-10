<html>
    <head>
        <title>Welcome to Flash Cards</title>
        <meta name="layout" content="mainMobile" />
    </head>
    <body>
    	<ul data-role="listview" data-theme="d">
    		<li data-role="list-divider"><g:message code="default.menu.header" /></li> 
			<li><g:link controller="lessonMobile" action="lessons" class="list"><g:message code="default.button.lessons.label" /></g:link></li>
		</ul>
		
		<content tag="footer">
			<div data-role="footer" data-position="fixed" data-theme="c">
				<h6><a href="http://bit.ly/gh-fc">GitHub</a></h6>
			</div>
		</content>
    </body>
</html>
