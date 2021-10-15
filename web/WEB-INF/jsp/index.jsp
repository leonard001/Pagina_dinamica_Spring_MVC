<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- hay que agregar esta libreria-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Madeparq</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet"  href="<c:url value="/lib/css/styles-boton.css" />">
    </head>

    <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Madeparq</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="<c:url value="/WEB-INF/jsp/index.jsp" />">Inicio</a>
                    <a class="nav-link" href="categorias.jsp">Categorias</a>
                    <a class="nav-link" href="index.jsp">Quienes somos</a>
                    <a class="nav-link" href="#" tabindex="-1" aria-disabled="true">Contactanos</a>
                </div>
            </div>
        </div>
    </nav>
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#hola" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<c:out value="${pageContext.request.contextPath}/lib/img/Carrusel_1.jpg" />" class="dblock w-100" alt="Foto de carrucel uno">
            </div>
            <div class="carousel-item">
                <img src="<c:out value="${pageContext.request.contextPath}/lib/img/Carrusel_2.jpg" />" class="d-block w-100" alt="Foto de carrucel dos">
            </div>
            <div class="carousel-item">
                <img src="<c:out value="${pageContext.request.contextPath}/lib/img/Carrusel_3.jpg" />" class="d-block w-100" alt="Foto de carrucel tres">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="container mt-4">
        <br>
        <div><h5>Productos</h5></div>
        <hr/>
        <c:forEach var="dato" items="${lista}">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card">
                    <img src="<c:out value="${pageContext.request.contextPath}/lib/img/shop01.png" />" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">${dato.proNombre}</h5>
                        <p class="card-text">${dato.proPrecio}</p>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
    <div class="container mt-4">
        <div class="card border-info">
            <div class="card-header bg-info text-white">
                <a class="btn btn-primary" href="...">Nuevo registro</a>
            </div> 
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Cantidad</th>
                            <th>Precio</th>
                            <th>Accion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="dato" items="${lista}">
                        <tr>
                            <td>${dato.id}</td>
                            <td>${dato.proNombre}</td>
                            <td>${dato.proCantidad}</td>
                            <td>${dato.proPrecio}</td>
                            <td>
                                <a class="btn btn-warning">Delete</a>
                                <a class="btn btn-danger">Edit</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>            
            </div>
        </div>
    </div>
    <br>
    <div class="container-xxl">
        <!-- Content here -->
        <div class="container-sm">
            <h4>SUSCRIBETE</h4>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Ingresa tu E-mail" aria-label="Recipient's username" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">Suscribir</button>
            </div>
        </div>
        <div class="container-sm">
            <h4>CONTACTO</h4>
            info@carana.com.co
            <br>
            3052392881
            <br>
            Medellín, Colombia
        </div>
        <div class="container-sm">
            <h4>INFORMACIÓN</h4>
            <div>
                <ul>
                    <li><a href="/pages/preguntas-frecuentes">Preguntas Frecuentes</a></li>
                    <li><a href="/policies/shipping-policy">Envíos</a></li>
                    <li><a href="/policies/terms-of-service">Términos del servicio</a></li>
                    <li><a href="/policies/refund-policy">Política de reembolso</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container-xxl">
        
    </div>
    <!-- ejemplo de javascritp 
    <hr/>
   <a href="javascript:void(0);" onclick="saludo();">hola</a>
   <!-- Option 1: Bootstrap Bundle with Popper --> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="<c:url value="/lib/js/funciones.js" />"></script>
</body>
</html>
