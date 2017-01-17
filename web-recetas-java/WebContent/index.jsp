<!DOCTYPE html>
<%@page import="com.ipartek.formacion.hola.pojo.Ingrediente"%>
<%@page import="com.ipartek.formacion.hola.pojo.Receta"%>
<%@page import="java.util.ArrayList"%>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Web Recetas</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/freelancer.min.css" rel="stylesheet">
    
    <!-- Custom -->
    <link href="css/custom.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Web Recetas</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Recetas</a>
                    </li>
                    <li class="page-scroll">
                        <a href="menu-del-dia.jsp">Menu del Dia</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive logo-home" src="img/profile.png" alt="logotipo de Web Recetas">
                    <div class="intro-text">
                        <span class="name">Komilones App</span>
                        <hr class="star-light">
                        <span class="skills">Sencillo, fácil y para toda la familia</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Recetas Destacadas Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Recetas Destacadas</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
            
            <%
            Receta recetaMarmitako = new Receta();
    		recetaMarmitako.setTitulo("Marmitako de bonito");
    		recetaMarmitako.setTiempo(50);
    		recetaMarmitako.setDificultad("Media");
    		recetaMarmitako.setComensales(4);
    		recetaMarmitako.setDescripcion("El marmitako de bonito es un plato de marmitako que consiste de bonito");
    		recetaMarmitako.setImagen("http://www.marmitako.net/ImagenesMarmitako/ImagenesMarmitako/Marmitakodesalmon.jpg");

    		ArrayList<Ingrediente> ingredMarmitako = new ArrayList<Ingrediente>();
    		ingredMarmitako.add(new Ingrediente(4, "Patatas", false));
    		ingredMarmitako.add(new Ingrediente(500, "Bonito", false));
    		ingredMarmitako.add(new Ingrediente(2, "Pimientos Verdes", false));
    		ingredMarmitako.add(new Ingrediente(0.5f, "Pimientos Rojos", false));
    		ingredMarmitako.add(new Ingrediente(1, "Cabeza de ajo", false));
    		ingredMarmitako.add(new Ingrediente(4, "Pimientos choriceros", false));
    		ingredMarmitako.add(new Ingrediente(40, "Pan de sopa", true));
    		ingredMarmitako.add(new Ingrediente(150, "Salsa de tomate", false));
    		
    		recetaMarmitako.setIngredientes(ingredMarmitako);	
    		
    		
    		Receta recetaTortillaPatata = new Receta();
    		recetaTortillaPatata.setTitulo("Tortilla de patata");
    		recetaTortillaPatata.setTiempo(30);
    		recetaTortillaPatata.setDificultad("Fácil");
    		recetaTortillaPatata.setComensales(4);
    		recetaTortillaPatata.setDescripcion("La tortilla de patatas consiste en una mezcla consistente de huevo y patata");
    		recetaTortillaPatata.setImagen("http://static.hogarmania.com/archivos/201108/tortilla-patata-xl-668x400x80xX.jpg");

    		ArrayList<Ingrediente> ingredTortPatata = new ArrayList<Ingrediente>();
    		ingredTortPatata.add(new Ingrediente(4, "Patatas", false));
    		ingredTortPatata.add(new Ingrediente(8, "Huevos", false));
    		ingredTortPatata.add(new Ingrediente(200, "Aceite y amor", false));
    		ingredTortPatata.add(new Ingrediente(2, "Pimientos Verdes", false));
    		
    		recetaMarmitako.setIngredientes(ingredTortPatata);
    		
    		
    		Receta recetaSolomillo = new Receta();
    		recetaSolomillo.setTitulo("Solomillo");
    		recetaSolomillo.setTiempo(30);
    		recetaSolomillo.setDificultad("Media");
    		recetaSolomillo.setComensales(1);
    		recetaSolomillo.setDescripcion("El solomillo, una vez cocinado a la brase o en sartén, puede comerse");
    		recetaSolomillo.setImagen("http://www.cocinadetodo.com/wp-content/uploads/2010/01/solomillo_con_colmenillas_01.jpg");

    		ArrayList<Ingrediente> ingredSolomillo = new ArrayList<Ingrediente>();
    		ingredSolomillo.add(new Ingrediente(100, "Reducción de patata", false));
    		ingredSolomillo.add(new Ingrediente(1, "Cacho carne", false));
    		ingredSolomillo.add(new Ingrediente(200, "Aceite", false));
    		ingredSolomillo.add(new Ingrediente(2, "Pimientos Rojos", false));
    		
    		recetaMarmitako.setIngredientes(ingredSolomillo);
    		
            
    		Receta recetaTxipirones = new Receta();
    		recetaTxipirones.setTitulo("Txipirones en su tinta");
    		recetaTxipirones.setTiempo(30);
    		recetaTxipirones.setDificultad("Difícil");
    		recetaTxipirones.setComensales(5);
    		recetaTxipirones.setDescripcion("Los txipirones no son necesarios, siempre que tengas tinta y rabas de bote");
    		recetaTxipirones.setImagen("http://blogs.elcorreo.com/oso-goxo/files/zz-gastro-f.jpg");

    		ArrayList<Ingrediente> ingredTxipirones = new ArrayList<Ingrediente>();
    		ingredTxipirones.add(new Ingrediente(25, "Txipirones", false));
    		ingredTxipirones.add(new Ingrediente(100, "La tinta de idem", false));
    		ingredTxipirones.add(new Ingrediente(200, "Aceite", false));
    		ingredTxipirones.add(new Ingrediente(2, "Rama de perejil", false));
    		
    		recetaMarmitako.setIngredientes(ingredTxipirones);
    		
    		
    		Receta recetaBakalao = new Receta();
    		recetaBakalao.setTitulo("Bakalao al pil-pil");
    		recetaBakalao.setTiempo(300);
    		recetaBakalao.setDificultad("Difícil");
    		recetaBakalao.setComensales(4);
    		recetaBakalao.setDescripcion("El bakalao es algo muy rico, sobre todo al pil pil");
    		recetaBakalao.setImagen("http://www.tapas2punto0.es/wp-content/uploads/2013/05/pilpil-e1369207812500.jpg");

    		ArrayList<Ingrediente> ingredBakalao = new ArrayList<Ingrediente>();
    		ingredBakalao.add(new Ingrediente(250, "Bakalao", false));
    		ingredBakalao.add(new Ingrediente(4, "Patatas", false));
    		ingredBakalao.add(new Ingrediente(200, "Aceite", false));
    		ingredBakalao.add(new Ingrediente(1, "Rama de perejil", false));
    		
    		recetaMarmitako.setIngredientes(ingredBakalao);
    		
    		
    		Receta recetaMejillones = new Receta();
    		recetaMejillones.setTitulo("Mejillones al vapor");
    		recetaMejillones.setTiempo(25);
    		recetaMejillones.setDificultad("Media");
    		recetaMejillones.setComensales(2);
    		recetaMejillones.setDescripcion("Los mejillanos, cuando al vapor, echan un jugo muy gustoso");
    		recetaMejillones.setImagen("http://www.recetasderechupete.com/wp-content/uploads/2014/04/mejillones_marinera-525x360.jpg");

    		ArrayList<Ingrediente> ingredMejillones = new ArrayList<Ingrediente>();
    		ingredMejillones.add(new Ingrediente(250, "Bakalao", false));
    		ingredMejillones.add(new Ingrediente(4, "Patatas", false));
    		ingredMejillones.add(new Ingrediente(200, "Aceite", false));
    		ingredMejillones.add(new Ingrediente(1, "Rama de perejil", false));
    		
    		recetaMarmitako.setIngredientes(ingredMejillones);
    		
    		
            	ArrayList<Receta> recetas = new ArrayList<Receta>();
            	recetas.add(recetaMarmitako);
           		recetas.add(recetaTortillaPatata);
           		recetas.add(recetaSolomillo);
           		recetas.add(recetaTxipirones);
           		recetas.add(recetaBakalao);
           		recetas.add(recetaMejillones);
            		
           		Receta receta = null;
           		for (int i=0; i< recetas.size(); i++ ) {
           			receta = recetas.get(i);
            %>
            	<!-- receta -->
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal<%=i%>" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<%=receta.getImagen()%>" class="img-responsive" alt="<%=receta.getTitulo()%>">
                    </a>
                </div>
                <!-- end:receta -->
            <%
           		} // end for recetas            
            %>    
                
            </div>
            <!-- <div class="row"> -->
        </div>
        <!-- <div class="container"> -->
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>About</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional LESS stylesheets for easy customization.</p>
                </div>
                <div class="col-lg-4">
                    <p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p>
                </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="#" class="btn btn-lg btn-outline">
                        <i class="fa fa-download"></i> Download Theme
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Me</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <input type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Email Address</label>
                                <input type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Phone Number</label>
                                <input type="tel" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Message</label>
                                <textarea rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>3481 Melrose Place
                            <br>Beverly Hills, CA 90210</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Freelancer</h3>
                        <p>Freelance is a free to use, open source Bootstrap theme created by <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Your Website 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

	<%
		ArrayList<Ingrediente> ingredientes = new ArrayList<Ingrediente>();
		receta = null;
        for (int i=0; i< recetas.size(); i++ ) {
        	receta = recetas.get(i);
    %>

    <!-- ventana Modal -->
    <div class="portfolio-modal modal fade" id="portfolioModal<%=i%>" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2><%=receta.getTitulo()%></h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/cabin.png" class="img-responsive img-centered" alt="">
                            <h4>Descripción:</h4>
                            <p><%=receta.getDescripcion()%></p><br>
                            <h4>Ingredientes:</h4>
                            <%
                            ingredientes = receta.getIngredientes();
                            Ingrediente ingrediente = null;
                            for (int j = 0; j < ingredientes.size(); j++) {
                            	ingrediente = ingredientes.get(j);     	
                            %>	
                            
                           		 <p>Ingrediente <%=j+1%>: <%=ingrediente.getNombre()%> Cantidad: <%=ingrediente.getCantidad()%> gramos/piezas</p>
                            		
                    		<%
                            } //end for                 
                            
                    		%>
                    		<br><h4>Duración:</h4>
                            <p><%=receta.getTiempo()%> minutos</p><br>
                            <h4>Dificultad:</h4>
                            <p><%=receta.getDificultad()%></p><br>
                            <h4>Comensales:</h4>
                            <p><%=receta.getComensales()%> persona(s)</p><br>
                    		
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  End:ventana Modal -->
    <%
        } //end for recetas
    %>
    
    
    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/freelancer.min.js"></script>

</body>

</html>