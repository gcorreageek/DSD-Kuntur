<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Persona"%>
<%@page import="java.util.List"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Consulta DNI</title>

<script type="text/javascript">

	function buscar()
	{
	
		document.formularioPersona.accion.value = 'buscar';
		document.formularioPersona.submit();
		
	}
	
</script>

</head>





<body>


<form name="formularioPersona" method="get" action="<%=request.getContextPath()%>/buscarPersona.do">

<input type="hidden" name="accion" value=""/>
<table>
<tr><td>Ingresar DNI</td><td><input type="text" name="txtDNI" /></td></tr>
<tr><td colspan="2"><input type="submit" name="btnConsultar" value="Validar DNI" onclick="javascript:buscar();"  /></td>
<td>
<a href="<%=request.getContextPath() %>/buscarPersona.do"><span class="">Consulta DNI</span></a>
</td>
</table>
<table>
 <tr>
                    <th class="Estilo27" scope="row">${model.persona.dni}</th>
                    <td class="Estilo27">${model.persona.nombres}</td>
                    <td class="Estilo27">${model.persona.apellidoPaterno}</td>
                    <td class="Estilo27">${model.persona.apellidoMaterno}</td>
                  </tr>                  	
 </table>


</form>
</body>
</html>