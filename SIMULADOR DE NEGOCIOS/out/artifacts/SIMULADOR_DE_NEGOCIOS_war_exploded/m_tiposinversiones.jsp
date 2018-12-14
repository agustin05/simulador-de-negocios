<%@ page import="controller.controladortiposinversiones" %>
<%@ page import="include.tiposinversiones" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%
  int idtiposInversiones = 0;


  try {
    idtiposInversiones = Integer.parseInt(request.getParameter("idtiposInversiones"));

  }catch (NumberFormatException e){

  }

  controladortiposinversiones cc = new controladortiposinversiones();
  ArrayList<tiposinversiones> tiposinversioness = new ArrayList<tiposinversiones>();
  tiposinversioness = cc.obtenertiposinversiones(idtiposInversiones);
%>

<div class="container">
  <form class="col s12" action="/modificartiposinversiones" method="post">

    <div class="row">
      <div class="input-field col s12 center">
        <p class="center login-form-text">modificar tiposinversiones</p>
      </div>
    </div>

    <div class="row margin">
      <div class="col s2"></div>
      <div class="input-field col s8 center">
        <input id="idtiposInversiones" name="idtiposInversiones" type="text" readonly="readonly" value="<% out.print(tiposinversioness.get(0).getIdtiposInversiones()); %>">
        <label for="idtiposInversiones" class="center-align">Tipo inversion</label>
      </div>

      <div class="col s2"></div>
    </div>

    <div class="row margin">
      <div class="col s2"></div>
      <div class="input-field col s8">
        <input id="concepto" name="concepto" type="text" value="<% out.print(tiposinversioness.get(0).getConcepto()); %>">
        <label for="concepto" class="center-align">Concepto</label>
      </div>
      <div class="col s2"></div>
    </div>

    <div class="row margin">
      <div class="col s2"></div>
        <div class="input-field col s8">
          <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s6">
          <a class="btn col s6" href="tiposinversioness.jsp">Regresar</a>
        </div>
      <div class="col s2"></div>
    </div>

  </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>