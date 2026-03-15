<%@ tag language="java" pageEncoding="UTF-8" %>
<%-- Definimos los parámetros de la card [cite: 28] --%>
<%@ attribute name="title" required="true" %>
<%@ attribute name="imageUrl" required="false" %>
<%@ attribute name="footer" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card" style="width: 18rem; border: 1px solid #ccc; border-radius: 8px; overflow: hidden; margin: 10px;">
    <c:if test="${not empty imageUrl}">
        <img src="${imageUrl}" alt="Card image" style="width: 100%;">
    </c:if>

    <div class="card-body" style="padding: 15px;">
        <h5 class="card-title" style="margin-bottom: 10px;">
            <c:out value="${title}" /> <%-- Escapado por seguridad [cite: 93] --%>
        </h5>
        <div class="card-text">
            <%-- El tag 'jsp:doBody' permite insertar contenido dentro de la card --%>
            <jsp:doBody />
        </div>
    </div>

    <c:if test="${not empty footer}">
        <div class="card-footer" style="padding: 10px; background: #f8f9fa; border-top: 1px solid #ccc;">
            <c:out value="${footer}" />
        </div>
    </c:if>
</div>