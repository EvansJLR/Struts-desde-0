<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Hola <s:property value="datos.nombre"/></title>
    </head>
<body>
    <hr/>
    <h1>Datos</h1>
    <table border="1">
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.fname" /></strong>
            <s:property value="datos.nombre" />
        </td>
    </tr>
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.lname" /></strong>
            <s:property value="datos.apellidos" />
        </td>
    </tr>
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.id" /></strong>
            <s:property value="datos.dni" />
        </td>
    </tr>
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.direccion" /></strong>
            <s:property value="datos.direccion" />
        </td>
    </tr>
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.poblacion" /></strong>
            <s:property value="datos.poblacion" />
        </td>
    </tr>
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.edad" /></strong>
            <s:property value="datos.edad" />
        </td>
    </tr>
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.email" /></strong>
            <s:iterator value="datos.email">
                [<s:property/>]
            </s:iterator>
        </td>
    </tr>
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.curso" /></strong>
            <s:property value="datos.curso" />
        </td>
    </tr>
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.FechaInicio" /></strong>
            <s:property value="datos.fechaInicio" />
        </td>
    </tr>
    <tr>
        <td class="evenRow">
            <strong><s:text name="form.message.FechaFin" /></strong>
            <s:property value="datos.fechaFin" />
        </td>
    </tr>
    </table>
</body>
</html>