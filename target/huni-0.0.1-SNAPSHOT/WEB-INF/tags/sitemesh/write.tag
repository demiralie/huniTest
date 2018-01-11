<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="property"  %>

<%
   out.println("<sitemesh:write property=\"" + property + "\"/>");
%>