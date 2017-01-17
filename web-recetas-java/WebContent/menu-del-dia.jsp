<%-- 
<%@page import="com.ipartek.formacion.hola.pojo.Receta"%>
<h1> Un JSP es una página web con Java </h1>
<%
 //esto es un scriplet y sirve para escribir java
 for (int i = 1; i <= 6; i++) {
	 out.print("<h" + i + ">Cabecera H" + i + "</h" + i + ">");
 }
String saludo = "Ongi etorri";
%>
<p>Saludo: <%=saludo%></p>
<%
Receta marmitako = new Receta("marmitako");
//TODO meter ingredientes y resto de atributos
marmitako.setImagen("http://www.clubcampos.com/upload/recetas/gourmet_elaboradas/MarmitakodeAtunCampos.jpg");
%>
<h2><%=marmitako.getTitulo()%></h2>
<img src="<%=marmitako.getImagen()%>"/>
 --%>
<%@page import="com.ipartek.formacion.hola.pojo.Receta"%>

<% 
Receta marmitako = new Receta("marmitako");
marmitako.setImagen("http://www.clubcampos.com/upload/recetas/gourmet_elaboradas/MarmitakodeAtunCampos.jpg");

Receta solomillo = new Receta("solomillo");
solomillo.setImagen("http://www.recetasderechupete.com/wp-content/uploads/2015/05/solomillo_cerdo_whisky-525x360.jpg");

Receta goxua = new Receta("goxua");
goxua.setImagen("http://www.artepan.com/datos/subcategorias/foto_grande16/goxua.jpg");
%>



<h1> Menu del día --- 10 E</h1>
<ol>
	<li>Plato - Marmitako</li>
	<img src="<%=marmitako.getImagen()%>"/>
	<p></p>
	<li>Plato - Solomillo</li>
	<img src="<%=solomillo.getImagen()%>"/>
	<p></p>
	<li>Postre - Goxua</li>
	<img src="<%=goxua.getImagen()%>"/>
	<p></p>
</ol>
<p>Pan y vino incluidos</p>
