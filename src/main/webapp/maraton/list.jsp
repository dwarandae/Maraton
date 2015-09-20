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
	<nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
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
                    <li class="active"><a href="<s:url namespace='/maraton' action='list'/>">Ver maratones activas</a></li>
                    <li><a href="<s:url namespace='/inscrito' action='create'/>">Inscribirse</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container-fluid">
            <h1>Maratones</h1>
            <p></p>
            <p></p>
            <p>Estas son las maratones disponibles. ¡Anímate e inscríbete!</p>
        </div>
		<div class="container-fluid">
			<table class="table table-striped">
				<tr>
					<th class="text-center">Id</th>
					<th class="text-center">Nombre</th>
					<th class="text-center">Inicio de inscripción</th>
					<th class="text-center">Fin de inscripción</th>
					<th class="text-center">Lenguaje</th>
					<th class="text-center">Fecha</th>
					<th class="text-center">Acciones</th>
				</tr>
				<s:iterator value="%{available}" id="maraton">
					<tr class="text-center">
						<td ><s:property value="#maraton.id" /></td>
						<td><s:property value="#maraton.nombre" /></td>
						<td><s:date name="#maraton.fechaInicio" format="EEEE dd' de ' MMMM' de 'yyyy"/></td>
						<td><s:date name="#maraton.fechaFin" format="EEEE dd' de ' MMMM' de 'yyyy"/></td>
						<td><s:property value="#maraton.lenguaje" /></td>
						<td><s:date name="#maraton.fecha" format="EEEE dd' de ' MMMM' de 'yyyy"/></td>
						<td><s:url id="inscribir" namespace='/inscrito' action='create'><s:param name="inscrito.maraton.id" value="%{#maraton.id}"></s:param></s:url>
					    	<s:a href="%{inscribir}"><button type="button" class="btn btn-primary">Inscribirme</button></s:a></td>
					</tr>
				</s:iterator>
			</table>
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