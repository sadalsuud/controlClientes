<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_CO"/>

<section>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de clientes</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="table-dark">
                            <tr>
                                <td>#</td>
                                <td>Nombre</td>
                                <td>Saldo</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <!--Iteramos cada elemento de la lista clientes-->
                            <c:forEach var="cliente" items="${clientes}" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${cliente.nombres} ${cliente.apellidos}</td>
                                    <td><fmt:formatNumber value="${cliente.saldo}" type="currency" minFractionDigits="0"/></td> 
                                    <td>
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&id=${cliente.id}" class="btn btn-secondary">
                                            <i class="bi bi-pencil"></i> Editar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <!--Tarjetas para los totales-->
            <div class="col-md-3">
                <div class="text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Saldo total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"minFractionDigits="0"/>
                        </h4>
                    </div>
                </div>
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total clientes</h3>
                        <h4 class="display-4">
                            <i class="bi bi-people-fill"></i>${totalClientes}
                        </h4>
                    </div>
                </div>
            </div>
            <!--Fin de las tarjetas totales-->
        </div>
    </div>
</section>
                        
<!--agregar cliente modal-->
<jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>

