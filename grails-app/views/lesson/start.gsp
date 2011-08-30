<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>

<body>

 	<input id="ws_path" type="hidden" name="lesson_id" value="/lessons" />
 	<input id="lesson_id" type="hidden" name="lesson_id" value="${lessonID}" />
    
    <div id="cardsapp" class="front"> 
    	<div id="card_container"></div>
    </div> 
    
	<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.1.7/underscore-min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/backbone.js/0.5.3/backbone-min.js"></script>
	<script src="${resource(dir:'js',file:'test.js')}"></script>
	<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'cards.css')}"></link>
	
	<script language="JavaScript" type="text/template" id="card_template">
		<a href="#" class="back_button"><spring:message code="button_back" htmlEscape="false"/></a>
		<div id="status"><%= counter %></div>
		<div class="group">
 			<div class="previous"><img src="/resources/images/arrow_left.png" /></div>
		<div class="flip" id="text"><%= text %></div>
 			<div class="next"><img src="/resources/images/arrow_right.png" /></div>
		</div>
	</script>
	
</body>
</html>