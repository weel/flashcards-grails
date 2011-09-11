<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="mainMobile" />
        <g:javascript library="application" />
    </head>
<body>

	<content tag="buttons">
		<a href="<g:createLink action="lessons" />" data-icon="back" data-direction="reverse" data-theme="d"><g:message code="default.back.label"/></a>
	</content>
	
	<content tag="style">padding: 0px</content>

 	<input id="ws_path" type="hidden" name="lesson_id" value="<g:createLink mapping="lesson" params="[id:params.id]"/>"/>
    
    <div id="cardsapp" class="front"> 
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
 			<div class="previous"><img src="${resource(dir:'images',file:'arrow_left_small.png')}" /></div>
		<div class="flip" id="text"></div>
 			<div class="next"><img src="${resource(dir:'images',file:'arrow_right_small.png')}" /></div>
		</div>
	</script>
	
</body>
</html>