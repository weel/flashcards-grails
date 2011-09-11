<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="mainLogo"><a href="${createLink(uri: '/')}">Flash Cards</a></div>
        <g:layoutBody />
        
	  	<script>
	    	var _gaq=[["_setAccount","UA-1387377-19"],["_trackPageview"]];
	    	(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
	    	g.src=("https:"==location.protocol?"//ssl":"//www")+".google-analytics.com/ga.js";
	    	s.parentNode.insertBefore(g,s)}(document,"script"));
	  	</script>
    </body>
</html>