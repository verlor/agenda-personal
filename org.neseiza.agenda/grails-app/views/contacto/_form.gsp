<%@ page import="org.neseiza.agenda.domain.Contacto" %>



<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="contacto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${contactoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="contacto.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${contactoInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="contacto.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${contactoInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="contacto.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${contactoInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="contacto.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" value="${contactoInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'facebook', 'error')} ">
	<label for="facebook">
		<g:message code="contacto.facebook.label" default="Facebook" />
		
	</label>
	<g:textField name="facebook" value="${contactoInstance?.facebook}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'twitter', 'error')} ">
	<label for="twitter">
		<g:message code="contacto.twitter.label" default="Twitter" />
		
	</label>
	<g:textField name="twitter" value="${contactoInstance?.twitter}"/>
</div>

