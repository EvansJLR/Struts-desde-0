<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
   <head>
       <title><s:text name="hello.message"/></title>
   </head>

<body>
  <hr>
  <h1><s:text name="access.message"/></h1>
  <p><s:text name="access.message2"/></p>
  <s:form theme="simple" action= "acceder" method="post">
     <table>
     <tr>
        <td class="evenRow">
           <s:fielderror fieldName ="id"/>
           <s:text name="form.DNI.message"/>
           <s:textfield name="id"/>
        </td>
     </tr>
     <p><s:actionerror/>
     <tr>
        <td class="evenRow">
           <s:submit align="left" value="Acceder"/>
        </td>
     </tr>
  </table>
  </s:form>
  <div>
     <p><s:text name="access.message3" /><a href="<s:url action="registro" />">registrarse?</a>
  </div>
<hr>
</body>
</html>