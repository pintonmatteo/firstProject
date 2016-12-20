<%-- 
    Document   : Elimina
    Created on : 16-dic-2016, 11.37.55
    Author     : FSEVERI\pinton3312
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Formatter"%>
<jsp:useBean id="lista" 
             class="pinton.matteo.com.Lista"
             scope="session" />
<%
    String pos = request.getParameter("posVoce") ;
    int posVoce = Integer.parseInt(pos) ;
    lista.elimina(posVoce);
%>
<jsp:forward page="ListaSpesa.jsp" />