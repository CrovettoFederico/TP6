<%@page import="DaoImpl.TipoSeguroDaoImpl"%>
<%@page import="Negocio.TipoSeguroNegocio"%>
<%@page import="Entidad.TipoSeguro"%>
<%@page import="Entidad.Seguro"%>
<%@page import="DaoImpl.SeguroDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "NegocioImpl.TipoSeguroNegocioImpl" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>

<form action= "servletSeguros" method="get">

&nbsp; <a id="Inicio" href="Inicio.jsp"> Inicio </a>  &nbsp; 
<a id="AgregarSeguro" href="AgregarSeguro.jsp"> Agregar Seguro </a>  &nbsp; 
<a id="Listar seguros" href="ListarSeguros.jsp">Listar Seguros</a>  

<p>

 <H1> <b>Agregar Seguro: </b> </H1> 
 
 <p>

 Id Seguro: <%= new SeguroDaoImpl().CantidadRegistros() %> <p>
 Descripci�n: <input type="text" name="txtDescripcion" style="width: 180px; height: 30px; " required>  <p>
 Tipo de 	Seguro:  <select name="ddlTiposSeguros" style="width: 140px; "> 
 						<%
 						ArrayList<TipoSeguro> ListaTiposSeguros = new TipoSeguroDaoImpl().LeerTodosLosTiposDeSeguro();
 							for(TipoSeguro tipo:ListaTiposSeguros){ %>
 						
 						<option value=<%=tipo.getIdTipo()%>><%=tipo.getDescripcion() %></option>
 						<%}%>
					 </select> <p> 
					
 Costo contrataci�n: <input type="number" name="txtCostoContratacion" style="width: 180px; height: 30px; " required> <p>
 Costo m�ximo asegurado: <input type="number" name="txtCostoMax" style="width: 180px; height: 30px; " required><p>
 
 &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  
 
<input  type="submit" name="btnAceptar" value="Aceptar">



</form>
</body>
</html>