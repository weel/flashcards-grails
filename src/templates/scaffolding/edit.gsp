<% import grails.persistence.Event %>
<% import org.codehaus.groovy.grails.plugins.PluginManagerHolder %>
<%=packageName%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        
    <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
    <g:if test="\${flash.message}">
    <div class="message">\${flash.message}</div>
    </g:if>
    <g:hasErrors bean="\${${propertyName}}">
    <div class="errors">
        <g:renderErrors bean="\${${propertyName}}" as="list" />
    </div>
    </g:hasErrors>
    
    <g:form method="post" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
    	<fieldset>
			<legend><g:message code="form.edit.legend" args="[entityName]" /></legend>
	        <g:hiddenField name="id" value="\${${propertyName}?.id}" />
	        <g:hiddenField name="version" value="\${${propertyName}?.version}" />
            <%  excludedProps = Event.allEvents.toList() << 'version' << 'id' << 'dateCreated' << 'lastUpdated'
                persistentPropNames = domainClass.persistentProperties*.name
                props = domainClass.properties.findAll { persistentPropNames.contains(it.name) && !excludedProps.contains(it.name) }
                Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
                display = true
                boolean hasHibernate = PluginManagerHolder.pluginManager.hasGrailsPlugin('hibernate')
                props.each { p ->
                    if (hasHibernate) {
                        cp = domainClass.constrainedProperties[p.name]
                        display = (cp?.display ?: true)
                    }
                    if (display) { %>
                <div class="clearfix">
                    <label for="${p.name}"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></label>
                    <div class="input value \${hasErrors(bean: ${propertyName}, field: '${p.name}', 'errors')}">
                        ${renderEditor(p)}
                    </div>
                </div>
            <%  }   } %>
		</fieldset>
        <div class="actions">
            <g:actionSubmit class="btn primary" action="update" value="\${message(code: 'default.button.update.label', default: 'Update')}" />
            <g:actionSubmit class="btn danger" action="delete" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </div>
    </g:form>
</body>
</html>
