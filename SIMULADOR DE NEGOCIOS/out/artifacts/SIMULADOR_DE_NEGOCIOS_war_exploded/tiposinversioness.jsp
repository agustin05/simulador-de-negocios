<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.tiposinversiones" %>
<%@ page import="controller.controladortiposinversiones" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>tiposinversiones</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_tiposinversiones.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>idtiposInversiones</th>
                    <th>concepto</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controladortiposinversiones cc = new controladortiposinversiones();
                    int contador = 0;
                    ArrayList<tiposinversiones> tiposinversioness = new ArrayList<tiposinversiones>();
                    tiposinversioness = cc.obtenertiposinversioness();
                    if(tiposinversioness.size() > 0){
                        for(int a=0; a<tiposinversioness.size();a++){
                            htmlcode += "<tr><td>" + tiposinversioness.get(a).getIdtiposInversiones()
                                    + "</td><td>" + tiposinversioness.get(a).getConcepto()
                                    + "<td><a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"m_tiposinversiones.jsp?idtiposInversiones="+tiposinversioness.get(a).getIdtiposInversiones()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" onclick=\"delete_tiposinversiones('"+ tiposinversioness.get(a).getIdtiposInversiones()+"')\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen los tipos inversiones</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>