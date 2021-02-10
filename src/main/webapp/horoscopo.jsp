<%-- 
    Document   : horoscopo
    Created on : 9 feb. 2021, 15:42:59
    Author     : David
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <body>
        <h1>Horóscopo</h1>
        <form action="horoscopo" method="post">
              <% ArrayList<String> meses = (ArrayList<String>)request.getAttribute("meses"); 
              ArrayList<String> dias = (ArrayList<String>)request.getAttribute("dias");
              String dia = (String) request.getAttribute("dia");
              String mes = (String) request.getAttribute("mes");
              String nombre = (String) request.getAttribute("nombre");
              String signo = (String) request.getAttribute("signo");
              if ( dia==null ) { dia="1";}              
              if ( mes==null ) { mes="1";}              
              if ( nombre==null ) { nombre=""; }
              
            %>
            <label for="nombre">Nombre:</label><input type="text" 
               id="nombre" value="<%=nombre%>" name="nombre"/>
            
            <br><label for="mes">Mes de nacimiento:</label>
            <select name="mes" id="mes">
            <% for( int i=0; i<meses.size(); i++){%>
            <option value="<%=meses.get(i)%>"><%=meses.get(i)%> </option>
            <% } %>

            </select>
           
            
            <br><label for="dia">Dia de nacimiento:</label><select name="dia" id="dia">
            <% for( int d=0; d<dias.size(); d++){%>
                <option value="<%=dias.get(d)%>"><%=dias.get(d)%> </option>   
             <% } %>
            </select>
            <input type="submit" value="Enviar">
        </form>
             <%if ( signo!=null ) {
              if(signo=="Error de fecha"){ %>
                <h1><%=signo%></h1>
                <%}else{%>
                <h1> <%=nombre%> eres del signo: <%=signo%></h1>
                <%}%>
             <% } %> 
    </body>
</html>
