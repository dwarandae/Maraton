<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="/Maraton/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/Maraton/bootstrap/css/bootstrap-theme.min.css">
<title>Inscripción a maratón</title>
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
                    <li><a href="<s:url namespace='/maraton' action='list'/>">Ver maratones activas</a></li>
                    <li class="active"><a href="<s:url namespace='/inscrito' action='create'/>">Inscribirse</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container-fluid">
			<h1>Inscripción</h1>
			<br>
			<br>
			<br>
			<div class="col-xs-2">
			</div>
			<div class="col-xs-8">
			<form action="maraton/action/inscrito/createInscrito.action" class="form-horizontal" method="post">
				<div class="form-group">
					<label for="nombre" class="col-sm-2 control-label">Nombre</label>
					<div class="col-sm-10">
					<s:textfield name="inscrito.nombre" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="documento" class="col-sm-2 control-label">Documento</label>
					<div class="col-sm-10">
					<s:textfield name="inscrito.documento" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="direccion" class="col-sm-2 control-label">Dirección</label>
					<div class="col-sm-10">
					<s:textfield name="inscrito.direccion" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="telefono" class="col-sm-2 control-label">Teléfono</label>
					<div class="col-sm-10">
					<s:textfield name="inscrito.telefono" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="maraton" class="col-sm-2 control-label">Maratón</label>
					<div class="col-sm-10">
					<s:select name="inscrito.maraton.id" list="available" listKey="id" listValue="nombre" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<s:submit value="Inscribirme" cssClass="btn btn-default"/>
					</div>
				</div>
			</form>	
			</div>
			<div class="col-xs-2">
			</div>
			
		</div>
	</div>
</body>
</html>