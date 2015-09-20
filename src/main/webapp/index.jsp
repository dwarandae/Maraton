<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>       
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bienvenido :: Maratón</title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.min.css">
</head>
<body>
    <nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
    
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="sr-only">Navegación</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Maratones de programación.</a>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="<s:url namespace='/' action='index'/>">Inicio</a></li>
                    <li><a href="<s:url namespace='/maraton' action='list'/>">Ver maratones activas</a></li>
                    <li><a href="<s:url namespace='/inscrito' action='create'/>">Inscribirse</a></li>
                    <li><a href="<s:url namespace='/admin' action='login'/>">Panel de administración</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="jumbotron">
        <div class="container-fluid">
            <h1>Sistema de Inscripción de Maratones</h1>
            <p></p>
            <p></p>
            <p><h3>¡Bienvenido!</h3>
            <p>¿Así que eres bueno programando? Demuestra tus conocimientos participando en maratones de programación. Resuelve problemas desafiantes usando Java, C, C++ o Python. :)</p>
            <p> <a href="<s:url namespace='/maraton' action='list'/>">Revisa aquí</a> las maratones a las que te puedes inscribir</p>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <footer>
                    <p>2014. v1.0 @dwarandae </p>
                </footer>
            </div>
        </div>
    </div>
</body>
</html>