<%@ page import="controller.controladortipogastooperativo" %>
<%@ page import="include.tipogastooperativo" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%
    int idtipoGasto = 0;


    try {
        idtipoGasto = Integer.parseInt(request.getParameter("idtipoGasto"));

    }catch (NumberFormatException e){

    }

    controladortipogastooperativo cc = new controladortipogastooperativo();
    ArrayList<tipogastooperativo> tipogastooperativos = new ArrayList<tipogastooperativo>();
    tipogastooperativos = cc.obtenertipogastooperativo(idtipoGasto);
%>

<div class="container">
    <form class="col s12" action="/modificartipogastooperativo" method="post">

        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">modificar tipogastooperativo</p>
            </div>
        </div>

        <div class="row margin">
            <div class="col s2"></div>
            <div class="input-field col s8 center">
                <input id="idtipoGasto" name="idtipoGasto" type="text" readonly="readonly" value="<% out.print(tipogastooperativos.get(0).getIdtipoGasto()); %>">
                <label for="idtipoGasto" class="center-align">Tipo gasto</label>
            </div>
            <div class="col s2"></div>
        </div>

        <div class="row margin">
            <div class="col s2"></div>
            <div class="input-field col s8">
                <input id="concepto" name="concepto" type="text" value="<% out.print(tipogastooperativos.get(0).getConcepto()); %>">
                <label for="concepto" class="center-align">concepto</label>
            </div>
            <div class="col s2"></div>

        </div>
            <div class="row margin">
            <div class="col s2"></div>
            <div class="input-field col s8">
                <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="tipogastooperativos.jsp">Regresar</a>
        <div class="col s2"></div>
            </div>
            </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>