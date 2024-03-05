<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
   <head>
       <title><s:text name="registro.message"/></title>
   </head>
<body>
   <hr>
   <h1><s:text name= "signup.message"/></h1>
   <p><s:text name= "signup.message2"/></p>

   <s:form theme = "simple" action="registrar" method="post">
      <table>
      <tr>
          <td class="evenRow">
            <s:fielderror fieldName ="alumno.nombre"/>
            <s:text name = "form.message.fname"/>
            <s:textfield name ="alumno.nombre"/>
          </td>
      </tr>
      <tr>
          <td class="evenRow">
            <s:fielderror fieldName = "alumno.apellidos"/>
            <s:text name = "form.message.lname"/>
            <s:textfield name = "alumno.apellidos"/>
          </td>
      </tr>
      <tr>
          <td class= "evenRow">
            <s:fielderror fieldName = "alumno.dni"/>
            <s:text name = "form.message.id"/>
            <s:textfield name = "alumno.dni"/>
          </td>
      </tr>
      <tr>
          <td class = "evenRow">
            <s:fielderror fieldName = "alumno.direccion"/>
            <s:text name = "form.message.direccion"/>
            <s:textfield name = "alumno.direccion"/>
          </td>
      </tr>
      <tr>
          <td class = "evenRow">
            <s:fielderror fieldName = "alumno.poblacion"/>
            <s:text name = "form.message.poblacion"/>
            <s:textfield name = "alumno.poblacion"/>
          </td>
      </tr>
      <tr>
          <td class = "evenRow">
            <s:fielderror fieldName = "alumno.email"/>
            <s:text name = "form.message.email"/>
            <s:textfield type ="email" name ="alumno.email"/>
          </td>
      </tr>
      <tr>
          <td class = "evenRow">
            <s:fielderror fieldName = "alumno.edad"/>
            <s:text name = "form.message.edad"/>
            <s:textfield type = "number" name = "alumno.edad" min="18"/>
          </td>
      </tr>
      <tr>
          <td class = "evenRow">
            <s:fielderror fieldName = "alumno.curso"/>
            <s:text name = "form.message.curso"/>
            <s:select list = "listaCursos" name ="alumno.curso" headerKey="" headerValue="--Selecciona--"/>
          </td>
      </tr>
      <tr>
          <td class = "evenRow">
            <s:fielderror fieldName = "alumno.FechaInicio"/>
            <s:text name = "form.message.FechaInicio"/>
            <s:textfield type="date" name = "alumno.FechaInicio" min="2022-02-25" max="2024-01-01"/>
          </td>
      </tr>
      <tr>
          <td class = "evenRow">
            <s:fielderror fieldName = "alumno.FechaFin"/>
            <s:text name = "form.message.FechaFin"/>
            <s:textfield type ="date" name = "alumno.FechaFin" min="2022-02-25" max="2023-01-01"/>
          </td>
      </tr>

      <tr>
          <td class="evenRow">
            <s:submit align="left" value="Enviar"/>
          </td>
      </tr>
      </table>
   </s:form>
   <hr>


</body>
</html>