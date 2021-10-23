<!-- you have to add this important library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- add this for reading special characters-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es">
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="En madeparq encuentras artesanias super unicas e innovadoras,
              ademas cuenta con un amplio catalogo, en el cual puedes ecoger la piesa que mas te guste">
        <meta name="robots" content="index,follow">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Madeparq</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style><%@include file="resources/css/styles-index.css"%></style>
        <!-- Icon -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>

    <body>
        <!-- call the piece of page header -->
        <jsp:include page="parts/header.jsp" flush="true"/>
        
        <!-- carousel slide -->
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#hola" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="<c:out value="${pageContext.request.contextPath}/resources/img/Carrusel_1.jpg" />" class="dblock w-100" alt="Foto de carrucel uno">
                </div>
                <div class="carousel-item">
                    <img src="<c:out value="${pageContext.request.contextPath}/resources/img/Carrusel_2.jpg" />" class="d-block w-100" alt="Foto de carrucel dos">
                </div>
                <div class="carousel-item">
                    <img src="<c:out value="${pageContext.request.contextPath}/resources/img/Carrusel_3.jpg" />" class="d-block w-100" alt="Foto de carrucel tres">
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
        <br>
       <!-- <form action="suma" method="POST">
                <label>
                   <span>numero uno</span>
                   <input type="number" name="valorUno">  
                </label>
                <label>
                    <span>numero dos</span>
                    <input type="number" name="valorDos">
                </label>
                <input type="submit">
                    
            </form>
            <div>
                <span>la suma es: </span>
            </div> -->
        <!-- content of product -->
        <div class="content--product">
            <div class="content--product__box-title">
                <span class="content--product__span-title">
                    <strong class="content--product__title">Nuestros productos</strong>
                </span> 
            </div>
            <br>
            <c:forEach  var="dato" items="${lista}">
                <label class="cards card--modifier">
                    <div class="cards__title">
                        <span class="cards__span"><strong>${dato.proNombre}</strong></span>
                    </div>
                    <img class="card__imagen" src="${dato.proPrecio}">
                    <div class="cards__box-precio">
                        <h2 class="card__text-precio">Valor:</h2>
                        <h2 class="card__precio">${dato.proPrecio}</h2>
                    </div>
                    <label class="whatapp-enlase">
                        <a class="whatapp-enlase__enlase"><span class="material-icons-outlined">Ir a whatApp</span>
                        </a>
                    </label>
                </label>
            </c:forEach>
        </div>
        <hr>
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
                                <th>estado</th>
                                <th>Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach  var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.id}</td>
                                    <td>${dato.proNombre}</td>
                                    <td>${dato.proCantidad}</td>
                                    <td>${dato.proPrecio}</td>
                                    <td>${dato.proEstado}</td>
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
        <!-- call the piece of page fooder -->
        <jsp:include page="parts/footer.jsp" flush="true"/>

        <!-- javaScrpt of bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script>
            <%@include file="resources/js/funciones.js"%>
        </script>
    </body>
</html>
