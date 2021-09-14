<section id="actions" class="py-4 mb-4 bg-ligth">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="index.jsp" class="btn btn-ligth btn-block">
                    <i class="bi bi-arrow-left"></i> Regresar al inicio
                </a>
            </div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-success btn-block">
                    <i class="bi bi-check-circle"></i> Guardar cliente
                </button>
            </div>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&id=${cliente.id}" class="btn btn-danger btn-block">
                    <i class="bi bi-trash"></i> Eliminar cliente
                </a>
            </div>
        </div>
    </div>
</section>