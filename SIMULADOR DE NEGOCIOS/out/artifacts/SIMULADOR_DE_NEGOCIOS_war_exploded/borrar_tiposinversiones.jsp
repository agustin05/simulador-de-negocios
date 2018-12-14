
<%@ page import=" controller.controladortiposinversiones" %>

<%
int idtiposInversiones = 0 ;

try {
    idtiposInversiones = Integer.parseInt(request.getParameter("idtiposInversiones"));

}catch (NumberFormatException e){

}

controladortiposinversiones cc = new controladortiposinversiones();
if (cc.eliminartiposinversiones(idtiposInversiones)){
    response.sendRedirect("tiposinversioness.jsp");
}else {
    response.sendRedirect("index.jsp");
}
%>