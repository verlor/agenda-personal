
<%@ page import="org.neseiza.agenda.domain.Contacto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contacto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                                <li>
                                  <g:form action="findContacto">                                    
                                    <g:textField name="busqueda"/>                                                                     
                                    <g:submitButton name="create" class="save" value="Buscar" />
                                  </g:form>
                                </li>
			</ul>
		</div>
		<div id="list-contacto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'contacto.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'contacto.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'contacto.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'contacto.direccion.label', default: 'Direccion')}" />
					
						<g:sortableColumn property="correo" title="${message(code: 'contacto.correo.label', default: 'Correo')}" />
					
						<g:sortableColumn property="facebook" title="${message(code: 'contacto.facebook.label', default: 'Facebook')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contactoInstanceList}" status="i" var="contactoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contactoInstance.id}">${fieldValue(bean: contactoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: contactoInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: contactoInstance, field: "telefono")}</td>
					
						<td>${fieldValue(bean: contactoInstance, field: "direccion")}</td>
					
						<td>${fieldValue(bean: contactoInstance, field: "correo")}</td>
					
						<td>${fieldValue(bean: contactoInstance, field: "facebook")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contactoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
