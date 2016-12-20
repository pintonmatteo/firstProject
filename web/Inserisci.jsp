<%-- 
    Document   : Inserisci
    Created on : 13-dic-2016, 8.53.36
    Author     : FSEVERI\pinton3312
--%>

<jsp:useBean id="lista" 
             class="pinton.matteo.com.Lista"
             scope="session" />

<%
    lista.addElemento(request.getParameter("nome"));
%>

<jsp:forward page="ListaSpesa.jsp"/>