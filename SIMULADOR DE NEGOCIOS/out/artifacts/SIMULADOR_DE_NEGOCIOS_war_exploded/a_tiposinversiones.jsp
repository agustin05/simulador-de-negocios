
<jsp:include page='views/header.jsp'></jsp:include>

<div class="container">
    <form class="col s12" action="/creartiposinversiones" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Insertar un nuevo tipo de inversion</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="idtiposInversiones" name = "idtiposInversiones" type="text" value="">
                <label for="idtiposInversiones" class="center-align">Tipos Inversiones</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="concepto" name="concepto" type="text" value="">
                <label for="concepto" class="center-align">concepto</label>
            </div>
            <div class="col s2">

            </div>

            <div class="row margin">
                <div class="col s2">

            </div>
            <div class="input-field col s8">

            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Insertar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="tiposinversioness.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>

</div>


<jsp:include page='views/footer.jsp'></jsp:include>