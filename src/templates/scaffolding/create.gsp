<% import grails.persistence.Event %>
<% import org.codehaus.groovy.grails.plugins.PluginManagerHolder %>
<%=packageName%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <ul class="pills">
            <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
            </li>
		</ul>
		
        <h1><g:message code="default.create.label" args="[entityName]" /></h1>
        <g:if test="\${flash.message}">
        	<div class="alert-message block-message warning">\${flash.message}</div>
        </g:if>
        <g:hasErrors bean="\${${propertyName}}">
        <div class="alert-message block-message error">
            <g:renderErrors bean="\${${propertyName}}" as="list" />
        </div>
        </g:hasErrors>
        
        <g:form action="save" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
	        <table>
	            <tbody>
	            <%  excludedProps = Event.allEvents.toList() << 'version' << 'id' << 'dateCreated' << 'lastUpdated'
	                persistentPropNames = domainClass.persistentProperties*.name
	                props = domainClass.properties.findAll { persistentPropNames.contains(it.name) && !excludedProps.contains(it.name) }
	                Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
	                display = true
	                boolean hasHibernate = PluginManagerHolder.pluginManager.hasGrailsPlugin('hibernate')
	                props.each { p ->
	                    if (!Collection.class.isAssignableFrom(p.type)) {
	                        if (hasHibernate) {
	                            cp = domainClass.constrainedProperties[p.name]
	                            display = (cp ? cp.display : true)
	                        }
	                        if (display) { %>
	                <tr class="prop">
	                    <td valign="top" class="name">
	                        <label for="${p.name}"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></label>
	                    </td>
	                    <td valign="top" class="value \${hasErrors(bean: ${propertyName}, field: '${p.name}', 'errors')}">
	                        ${renderEditor(p)}
	                    </td>
	                </tr>
	            <%  }   }   } %>
	            </tbody>
	        </table>
            <div class="actions">
            	<g:submitButton name="create" class="btn primary" value="\${message(code: 'default.button.create.label', default: 'Create')}" />
          	</div>
        </g:form>
    </body>
</html>
