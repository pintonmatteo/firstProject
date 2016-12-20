<%-- 
    Document   : ListaSpesa
    Created on : 13-dic-2016, 8.41.42
    Author     : FSEVERI\pinton3312
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Formatter"%>
<jsp:useBean id="lista" 
             class="pinton.matteo.com.Lista"
             scope="session" />
<%@page import="pinton.matteo.com.Lista" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista della spesa</title>
    </head>
    <body>
       
        <h1>Lista della spesa</h1>
       
        <table>
        <%
            int pos=0;
            ArrayList<String> a = lista.getLista();
            for(int i = 0; i < a.size(); i++)
            {
                %>
                <tr>
                    <td><%out.print(a.get(i));%></td>
                    <td><%out.print("<a href=\"Elimina.jsp?posVoce=" + pos + "\">Elimina</a> ");%></td>
                    
                </tr>
                <%
            }
        %>
        </table>
        
        <%-- GENERAZIONE / RIGENERAZIONE DEL FORM --%>
        <p>Inserisci gli elementi della lista:</p>
        <form action="Inserisci.jsp" method="get">
            <label>Nome:</label>
            <input type="text" name="nome"/>
            <input type="submit" value="Inserisci"/>
        </form>
        <br>
        <p><a href="Pulisci.jsp">Elimina tutto</a></p>
    </body>
</html>

