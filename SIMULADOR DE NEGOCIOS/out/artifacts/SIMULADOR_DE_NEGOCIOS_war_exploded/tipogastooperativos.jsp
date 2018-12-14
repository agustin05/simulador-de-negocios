<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.tipogastooperativo" %>
<%@ page import="controller.controladortipogastooperativo" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>tipos</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_tipogastooperativo.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>idtipoGasto</th>
                    <th>concepto</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controladortipogastooperativo cc = new controladortipogastooperativo();
                    int contador = 0;
                    ArrayList<tipogastooperativo> tipogastooperativos = new ArrayList<tipogastooperativo>();
                    tipogastooperativos = cc.obtenertipogastooperativo();
                    if(tipogastooperativos.size() > 0){
                        for(int a=0; a<tipogastooperativos.size();a++){
                            htmlcode += "<tr><td>" + tipogastooperativos.get(a).getIdtipoGasto()
                                    + "</td><td>" + tipogastooperativos.get(a).getConcepto()
                                    + "<td><a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"m_tipogastooperativo.jsp?idtipoGasto="+tipogastooperativos.get(a).getIdtipoGasto()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" onclick=\"delete_tipogastooperativo('"+ tipogastooperativos.get(a).getIdtipoGasto()+"')\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen rols</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>