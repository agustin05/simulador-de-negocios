
<%@ page import=" controller.controladortipogastooperativo" %>

<%
    int idtipoGasto = 0 ;

    try {
        idtipoGasto = Integer.parseInt(request.getParameter("idtipoGasto"));

    }catch (NumberFormatException e){

    }

    controladortipogastooperativo cc = new controladortipogastooperativo();
    if (cc.eliminartipogastooperaivo(idtipoGasto)){
        response.sendRedirect("tipogastooperativos.jsp");
    }else {
        response.sendRedirect("index.jsp");
    }
%>