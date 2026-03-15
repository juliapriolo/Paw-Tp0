<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="type" required="false" %>
<%@ attribute name="placeholder" required="false" %>
<%@ attribute name="required" required="false" type="java.lang.Boolean" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="inputType" value="${not empty type ? type : 'text'}" />

<div class="form-group">
    <label for="${name}">
        <c:out value="${label}" />
        <c:if test="${required}"><span class="text-danger">*</span></c:if>
    </label>

    <input type="${inputType}"
           name="${name}"
           id="${name}"
           class="form-control"
           placeholder="${placeholder}"
           <c:if test="${required}">required</c:if>
    />
</div>