<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <g:javascript library="application" />
    </head>
<body>

 	<input id="ws_path" type="hidden" name="lesson_id" value="<g:createLink mapping="lesson" params="[id:'1']"/>"/>
    
    <div id="cardsapp" class="front"> 
    	<div id="card_container"></div>
    </div> 
    
	<g:javascript library="underscore-min" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
	<g:javascript library="backbone-min" />
	<script src="${resource(dir:'js',file:'test.js')}"></script>
	<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'cards.css')}"></link>
	
	<script language="JavaScript" type="text/template" id="card_template">
		<a href="<g:createLink controller="lesson" action="lessons" />" class="back_button"><g:message code="card.button.back"/></a>
		<div id="status"></div>
		<div class="group">
 			<div class="previous"><img src="${resource(dir:'images',file:'arrow_left.png')}" /></div>
		<div class="flip" id="text"></div>
 			<div class="next"><img src="${resource(dir:'images',file:'arrow_right.png')}" /></div>
		</div>
	</script>
	
</body>
</html>