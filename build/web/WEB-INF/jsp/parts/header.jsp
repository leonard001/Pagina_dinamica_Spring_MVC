<!-- you have to add this important library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light mod-nav">
        <div class="container-fluid">
            <img src="<c:url value="resources/img/logo.png"/>" class="logo-nav" alt="Logo de la empresa">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="index.htm" />Inicio</a>
                <a class="nav-link" href="categorias" >Categorias</a>
                    <a class="nav-link" href="quienesSomos" >Quienes somos</a>
                    <a class="nav-link" href="contactanos" tabindex="-1" aria-disabled="true" >Contactanos</a>
                </div>
            </div>
        </div>
    </nav>
</header>
            