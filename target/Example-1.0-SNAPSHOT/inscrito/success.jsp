<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Maratones vigentes</title>
<link rel="stylesheet" type="text/css"
	href="/Maraton/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/Maraton/bootstrap/css/bootstrap-theme.min.css">
</head>
<body>
	<nav id="myNavbar"
		class="navbar navbar-default navbar-inverse navbar-fixed-top"
		role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbarCollapse">
					<span class="sr-only">Navegación</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Maratones de programación.</a>
			</div>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="nav navbar-nav">
					<li><a href="<s:url namespace='/' action='index'/>">Inicio</a></li>
					<li><a href="<s:url namespace='/maraton' action='list'/>">Ver
							maratones activas</a></li>
					<li class="active"><a
						href="<s:url namespace='/inscrito' action='create'/>">Inscribirse</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron text-center">
		<p class="lead">
			<br> <br>
		<div class="alert alert-success" role="alert">
			¡Has quedado inscrito a la maratón!. Estos son los datos de
			confirmación.
		</div>
		</p>
	<div class="container-fluid">
	<div class="col-xs-3">
	</div>
	<div class="col-xs-6">
	<table class="table table-striped"> 
        	<tr >
        		<td>Documento</td>
        		<td><s:property value="inscrito.documento" /></td>
   			</tr>
   			<tr>
        		<td>Nombre</td>
        		<td><s:property value="inscrito.nombre" /></td>
   			</tr>
   			<tr>
        		<td>Dirección</td>
        		<td><s:property value="inscrito.direccion" /></td>
   			</tr>
   			<tr>
        		<td>Teléfono</td>
        		<td><s:property value="inscrito.telefono" /></td>
   			</tr>
   			<tr>
        		<td>Maratón inscrita</td>
        		<td><s:property value="inscrito.maraton.nombre" /></td>
   			</tr>
   			<tr>
        		<td>Código de inscripción</td>
        		<td><b><s:property value="inscrito.codigo" /></b></td>
   			</tr>
   	</table>
   	
   	</div>
   	<div class="col-xs-3">
	</div>
	</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12">
				<footer>
					<p>2014. @dwarandae</p>
				</footer>
			</div>
		</div>
	</div>
</body>
</html>