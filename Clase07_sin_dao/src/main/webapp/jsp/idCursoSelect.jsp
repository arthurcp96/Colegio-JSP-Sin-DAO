<%@page import="java.sql.ResultSet"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String elementos ="";

try (ResultSet rs = Connector.getConnection()
                             .createStatement()
		                     .executeQuery("select * from cursos where activo = 's'")) {
	while (rs.next()) {		
		out.print("<option value='"+rs.getInt("id")+"'>"+
				rs.getInt("id")+" - "
                +rs.getString("titulo")+" - "
                +rs.getString("profesor")+" - "
                +rs.getString("dia")+" - "+
                rs.getString("turno")+
                "</option>");
		}
	
	
} catch (Exception e) {
	System.out.println(e);
}
%>