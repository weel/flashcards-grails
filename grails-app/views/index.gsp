<html>
    <head>
        <title>Welcome to Grails</title>
        <meta name="layout" content="main" />
        <style type="text/css" media="screen">

        #nav {
            margin-top:20px;
            margin-left:30px;
            width:228px;
            float:left;

        }
        .homePagePanel * {
            margin:0px;
        }
        .homePagePanel .panelBody ul {
            list-style-type:none;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody h1 {
            text-transform:uppercase;
            font-size:1.1em;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody {
            background: url(images/leftnav_midstretch.png) repeat-y top;
            margin:0px;
            padding:15px;
        }
        .homePagePanel .panelBtm {
            background: url(images/leftnav_btm.png) no-repeat top;
            height:20px;
            margin:0px;
        }

        .homePagePanel .panelTop {
            background: url(images/leftnav_top.png) no-repeat top;
            height:11px;
            margin:0px;
        }
        h2 {
            margin-top:15px;
            margin-bottom:15px;
            font-size:1.2em;
        }
        #pageBody {
            margin-left:20px;
            margin-right:20px;
        }
        </style>
    </head>
    <body>
    	<div class="nav">
            <span class="menuButton"><g:link controller="lesson" action="lessons" class="list"><g:message code="index.flahCard.lesson" /></g:link></span>
            <sec:access expression="hasRole('ROLE_ADMIN')">
	            <span class="menuButton"><g:link controller="card" class="list"><g:message code="button.card.label" /></g:link></span>
    	        <span class="menuButton"><g:link controller="lesson" class="list"><g:message code="button.lesson.label" /></g:link></span>
    	        <span class="menuButton"><g:link mapping="exportlessons" class="export"><g:message code="button.exporLesson.label" /></g:link></span>
    	        <span class="menuButton"><g:link controller="lesson" action="upload" class="import"><g:message code="button.importLesson.label" /></g:link></span>
            </sec:access>
            
            <sec:ifLoggedIn>
				<span class="menuButton"><g:link controller='logout'><g:message code="button.logout.label"/></g:link></span>
			</sec:ifLoggedIn>
			
			<sec:ifNotLoggedIn>
				<span class="menuButton"><g:link controller='login' action='auth'><g:message code="button.login.label"/></g:link></span>
			</sec:ifNotLoggedIn>
        </div>
        <div id="pageBody">
            <h1><g:message code="index.welcome" /></h1>
        </div>
    </body>
</html>
