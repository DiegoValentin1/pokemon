<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <div class="col-12">
            <div class="card">
                <div class="card-header">REGISTRO DE POKEMON
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <form action="add-pokemon" method="post" novalidate class="needs-validation">
                                    <div class="form-group mb-3">
                                        <div class="row">
                                            <div class="col">
                                                <label for="name">Nombre</label>
                                                <input type="text" id="name" name="name" class="form-control" required/>
                                                <div class="invalid-feedback">

                                                </div>
                                            </div>
                                            <div class="col">
                                                <label for="health">Health</label>
                                                <input type="number" id="health" name="health" class="form-control"
                                                       required/>
                                                <div class="invalid-feedback">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <div class="row">
                                            <div class="col">
                                                <label for="power">Power</label>
                                                <input type="number" id="power" name="power" class="form-control"
                                                       required/>
                                                <div class="invalid-feedback">

                                                </div>
                                            </div>
                                            <div class="col">
                                                <label for="weight">Weight</label>
                                                <input type="number" id="weight" name="weight" class="form-control"
                                                       required/>
                                                <div class="invalid-feedback">

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <div class="row">
                                            <div class="col">
                                                <label for="height">Height</label>
                                                <input type="number" id="height" name="height" class="form-control"
                                                       required/>
                                                <div class="invalid-feedback">

                                                </div>
                                            </div>
                                            <div class="col">
                                                <label for="pokemonType">Type</label>
                                                <input type="text" id="pokemonType" name="pokemonType"
                                                       class="form-control" required/>
                                                <div class="invalid-feedback">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-3 text-end">
                                        <button type="submit" class="btn btn-danger btn-sm">
                                            Cancelar
                                        </button>
                                        <button type="submit" class="btn btn-success btn-sm">
                                            Guardar
                                        </button>
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


<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>
<jsp:include page="../../templates/footer.jsp"/>
</body>
</html>
