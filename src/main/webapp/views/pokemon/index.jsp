<%--
  Created by IntelliJ IDEA.
  User: CA2-PC-
  Date: 29/06/2022
  Time: 02:28 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Pokemons</title>
    <jsp:include page="../../templates/head.jsp"/>
</head>
<body>


<jsp:include page="../../templates/navbar.jsp"/>
<div class="row mt-5">
    <div class="col-12">
        <c:if test="${param['result']}">
            <p><c:out value="${param['message']}"/></p>
        </c:if>
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        POKEMONS
                    </div>
                    <div class="col-6 text-end">
                        <a href="create-pokemon" class="btn btn-outLine-success btn-sm">
                            Registrar pokemon
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-sm table-hover">
                    <thead>
                    <th>#</th>
                    <th>Pokemon</th>
                    <th>Health</th>
                    <th>Power</th>
                    <th>Weight</th>
                    <th>Height</th>
                    <th>Type</th>
                    </thead>
                    <tbody>
                    <c:forEach var="pokemon" items="${pokemons}" varStatus="status">
                        <tr>
                            <td>
                                <c:out value="${status.count}"/>
                            </td>
                            <td>
                                <c:out value="${pokemon.name}"/>
                            </td>
                            <td>
                                <c:out value="${pokemon.health}"/>
                            </td>
                            <td>
                                <c:out value="${pokemon.power}"/>
                            </td>
                            <td>
                                <c:out value="${pokemon.weight}"/>
                            </td>
                            <td>
                                <c:out value="${pokemon.height}"/>
                            </td>
                            <td>
                                <c:out value="${pokemon.pokemonType}"/>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../templates/footer.jsp"/>
</body>
</html>
