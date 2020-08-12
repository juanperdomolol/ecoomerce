
<%@ page
	import="org.software.product.*,org.software.util.DataBase,java.sql.Connection,java.sql.ResultSet,java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%
	String id = request.getParameter("id");

	ArrayList<Product> descripcionList = new ArrayList<Product>();
	DataBase database = new DataBase();
	Connection connection1 = null;
	Statement statement1 = null;
	ResultSet rs1 = null;
	String sql = "";
	try {
		connection1 = database.getConnection("admin");
		statement1 = connection1.createStatement();
		sql = "select * from products where id = " + id;

		rs1 = statement1.executeQuery(sql);
		while (rs1.next()) {
			long idi = rs1.getLong("id");
			int category_id = rs1.getInt("category_id");
			int published = rs1.getInt("published");
			String name = rs1.getString("name");
			double pricing = rs1.getDouble("pricing");
			String icon = rs1.getString("icon");
			String short_description = rs1.getString("short_description");
			String long_description = rs1.getString("long_description");
			Product product = new Product();
			product.setId(idi);
			product.setCategory_id(category_id);
			product.setPublished(published);
			product.setName(name);
			product.setPricing(pricing);
			product.setIcon(icon);
			product.setShort_description(short_description);
			product.setLong_description(long_description);
			descripcionList.add(product);
		}
	} catch (Exception e) {
		System.out.println("Error: " + e.toString());
	} finally {
		database.closeObject(rs1);
		database.closeObject(statement1);
		database.closeObject(connection1);
	}

	Iterator<Product> it = descripcionList.iterator();
	
	while (it.hasNext()) {
		Product item = it.next();

		out.println("<div class='card-header'>"+item.getName()+"</div>");
		out.println("<p><img src='../fotos/"+item.getIcon()+"' align='left' width='200px' height='150px'>"+item.getLong_description()+"</p>");
		
		
		
	}
%>