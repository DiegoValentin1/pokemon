<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Pokemons</title>
    <jsp:include page="../../templates/head.jsp"/>
</head>
<body>
<jsp:include page="../../templates/navbar.jsp"/>

    <div class="container">
        <div class="row">
            <div  class="col-12">
                <div class="card">
                    <div class="card-header">REGISTRO DE POKEMON
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <form action="add-pokemon" method="POST" class="needs-validation">
                                        <div class="form-group mb-3">
                                            <div class="row">
                                                <div class="col">
                                                    <label for="pokemon">Nombre</label>
                                                    <input name="name" id="pokemon" class="form-control"/>
                                                </div>
                                                <div class="col">
                                                    <label for="pokemon">Health</label>
                                                    <input health="health" id="pokemon" class="form-control"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3">
                                            <div class="row">
                                            <div class="col">
                                                <label for="pokemon">Power</label>
                                                <input power="power" id="pokemon" class="form-control"/>
                                            </div>
                                            <div class="col">
                                                <label for="pokemon">Weight</label>
                                                <input weight="weight" id="pokemon" class="form-control"/>
                                            </div>
                                                
                                        </div>
                                        </div>
                                        <div class="form-group mb-3">
                                            <div class="row">
                                            <div class="col">
                                                <label for="pokemon">Height</label>
                                                <input height="height" id="pokemon" class="form-control"/>
                                            </div>
                                            <div class="col">
                                                <label for="pokemon">Type</label>
                                                <input type="type" id="pokemon" class="form-control"/>
                                            </div>
                                        </div>
                                            </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>







<jsp:include page="../../templates/footer.jsp"/>
</body>
</html>
