<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>PAW 2026 - Mi Aplicación</title>
    <%-- No olvides vincular el CSS para que los componentes tengan estilo [cite: 80, 81] --%>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/components.css'/>">
</head>
<body>
<%-- Uso de c:out para mostrar texto de forma segura [cite: 93] --%>
<h2><c:out value="Hello World!" /></h2>

<div style="display: flex; flex-direction: column; align-items: center; gap: 20px; padding: 20px;">

    <%-- Card de Producto --%>
    <paw:card title="Tarjeta de Producto" footer="Stock disponible">
        <p>Este es un ejemplo de componente Card reutilizable.</p>
        <paw:button text="Comprar ahora" cssClass="btn-primary" />
    </paw:card>

    <%-- Card de Formulario --%>
    <paw:card title="Formulario de Registro">
        <form method="post">
                <%-- Componentes Input definidos con sus atributos obligatorios [cite: 28] --%>
            <paw:input name="username" label="Nombre de Usuario" required="true" placeholder="Ej: julia_2026" />
            <paw:input name="email" label="Correo Electrónico" type="email" placeholder="email@ejemplo.com" />

            <div style="margin-top: 15px;">
                <paw:button text="Registrarse" cssClass="btn-primary" />
            </div>
        </form>
    </paw:card>

</div>
</body>
</html>