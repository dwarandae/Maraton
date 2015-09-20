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
<title>Editar inscripción a la maratón</title>
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
					<li><a href="<s:url namespace='/admin' action='index'/>">Inicio</a></li>
					<li><a
						href="<s:url namespace='/maraton' action='create'/>">Crear maratón</a></li>
					<li><a
						href="<s:url namespace='/admin' action='listMaraton'/>">Administrar maratones</a></li>
					<li class="active"><a
						href="<s:url namespace='/inscrito' action='list'/>">Administrar inscritos</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container-fluid">
			<h1>Editar inscripción a la maratón</h1>
			<br>
			<br>
			<br>
			<form action="maraton/action/inscrito/updateInscrito.action" class="form-horizontal" method="post">
				<s:hidden name="inscrito.id" id="idInscrito"/>
				<s:hidden name="inscrito.codigo" id="codigo"/>
				<s:hidden name="inscrito.maraton.id" id="maraton"/>
				<div class="form-group">
					<label for="nombre" class="col-sm-2 control-label">Nombre</label>
					<div class="col-sm-10">
					<s:textfield name="inscrito.nombre" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="nombre" class="col-sm-2 control-label">Documento</label>
					<div class="col-sm-10">
					<s:textfield name="inscrito.documento" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="nombre" class="col-sm-2 control-label">Dirección</label>
					<div class="col-sm-10">
					<s:textfield name="inscrito.direccion" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="nombre" class="col-sm-2 control-label">Teléfono</label>
					<div class="col-sm-10">
					<s:textfield name="inscrito.telefono" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<s:submit value="Actualizar" cssClass="btn btn-default"/>
					</div>
				</div>
			</form>	
		</div>
	</div>
</body>
</html>