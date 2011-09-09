<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="mainMobile" />
        <g:javascript library="application" />
    </head>
<body>

	<content tag="buttons">
		<a href="${createLink(uri: '/')}" data-icon="back" data-direction="reverse" data-theme="d"><g:message code="default.home.label"/></a>
		<a href="<g:createLink controller="lessonMobile"  action="lessons"/>" data-icon="delete" data-direction="reverse" data-theme="d"><g:message code="default.button.lessons.label"/></a>
	</content>

 	<input id="ws_path" type="hidden" name="lesson_id" value="<g:createLink mapping="lesson" params="[id:params.id]"/>"/>
    
    <div id="cardsapp" class="front ui-page ui-page-active"> 
    	<div id="card_container"></div>
    </div>
    
    <content tag="customScripts">
    	<g:javascript library="underscore-min" />
		<g:javascript library="backbone-min" />
		<script src="${resource(dir:'js',file:'cardsBackbone.js')}"></script>
		<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'cardsMobile.css')}"></link>
	</content>
	
	<script language="JavaScript" type="text/template" id="card_template">
		<div id="status"></div>
		<div class="group">
 			<div class="previous"><img src="${resource(dir:'images',file:'arrow_left.png')}" /></div>
		<div class="flip" id="text"></div>
 			<div class="next"><img src="${resource(dir:'images',file:'arrow_right.png')}" /></div>
		</div>
	</script>
	
</body>
</html>