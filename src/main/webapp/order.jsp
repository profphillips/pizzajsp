<%-- 
    Document   : order
    Created on : Feb 7, 2017, 3:13:05 PM
    Author     : John Phillips
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>John's JSP Pizza Order</title>
    </head>
    <body>
        <h1>Order Results</h1>

<!--    We could use <%= request.getParameter("email")%> here but the 
        JSP EL Expression Language has a nicer syntax
        -->
        <p>Email = ${param.email}</p>
        <p>Size = ${param.size}</p>

        <%
            // Checkboxes from a form may or may not be checked. We can use the
            // following code to get an array of the values that are checked.
            String toppings[] = request.getParameterValues("toppings");
            if (toppings != null && toppings.length != 0) {
                out.println("<p>Toppings: ");
                for (String myTopping : toppings) {
                    out.println(myTopping + ", ");
                }
                out.println("</p>");
            }
        %>
    </body>
</html>
