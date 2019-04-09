<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Agropet.website.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Agropet</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="Content/bootstrap.min.css"/>
        <link rel="stylesheet" href="Content/style.css"/>
</head>
<body>
    <form id="frmIndex" runat="server" data-spy="scroll" data-target=".navbar" data-offset="50">
      <div class="contaier-fluid">
      <nav class="navbar navbar-default navbar-fixed-top">
          <div class="container">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span> 
              </button>
              <a class="navbar-brand logo" href="#"></a>
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav">
              <% GetMenuWeb();  %>
              </ul>
              <ul class="nav navbar-nav navbar-right">
              <li><a href="#contact"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
              <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="<%=HttpContext.Current.Request.Url.AbsolutePath %>"><span class="glyphicon glyphicon-search"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">
                            <div class="navbar-form navbar-left" role="search">
                              <div class="form-group">
                                <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server" placeholder="Buscar"/>
                                <asp:Button CssClass="btn btn-default" runat="server" Text="Buscar"/>
                              </div>
                            </div>
                        </a>
                    </li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user" title="<%= Session["user_id"]!=null? Session["user_id"] : "Iniciar sesión" %>"></span></a>
                  <ul class="dropdown-menu">
                  <li><a href="#">
                          <% if (Session["user_id"]==null) { %>
                              <div class="navbar-form navbar-left" action="<%=HttpContext.Current.Request.Url.AbsolutePath %>" role="login" method="post">
                                <div class="form-group">
                                  <asp:Label CssClass="glyphicon glyphicon-user" runat="server" />
                                  <asp:TextBox runat="server" ID="txtUser" CssClass="form-control" placeholder="Usuario"/>
                                </div>
                                <div class="form-group">
                                    <asp:Label CssClass="glyphicon glyphicon-lock" runat="server" />
                                    <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" placeholder="Contrase&ntilde;a"/>
                                </div>
                                <asp:Button runat="server" ID="btnIngresa" CssClass="btn btn-default" Text="Ingresar" />
                              </div>
                          <% }else{ %>
                              <li class="dropdown-header"><a href="#"><%= Session["user_id"]%></a></li>
                              <li><a href="#">Mi perfil</a></li>
                              <li><a href="#">Pedidos</a></li>
                          <% }%>
                      </a>
                  </li>
                  <li class="divider"></li>
                  </ul>
              </li>
              <% if (Session["user_id"]!=null) { %>
                <li><a href="index.php?action=registro"><span class="glyphicon glyphicon-plus-sign"></span></a></li>
              <% }  %>
              <li><a href="Security/logout.aspx" title="Salir"><span class="glyphicon glyphicon-log-out"></span></a></li>
              </ul>
          </div>
          </div>
      </nav>
      </div>

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="imagenes/Web_Maqueta-11.png" alt="Accesorios">
                    <div class="carousel-caption">
                        <h3>Accesorios</h3>
                        <p>Todo tipo de accesorios para mascota</p>
                    </div> 
                </div>

                <div class="item">
                    <img src="imagenes/Web_Maqueta-12.png" alt="Mascotas">
                    <div class="carousel-caption">
                        <h3>Mascotas</h3>
                        <p>Todo tipo de Mascotas</p>
                    </div> 
                </div>

                <div class="item">
                    <img src="imagenes/Web_Maqueta-13.png" alt="Alimento">
                    <div class="carousel-caption">
                        <h3>Alimento</h3>
                        <p>Lo Men en alimentos para mascota</p>
                    </div> 
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="container-fluid bgwhite">
            <div class="container">
                <h3 class="text-center">Contacto</h3>
                <p class="text-center"><em>Nos gusta estar en contacto con nuestros clientes!</em></p>
                <div class="row test">
                    <div class="col-md-4">
                        <p>Contactanos.</p>
                        <p><span class="glyphicon glyphicon-map-marker"></span> Asunción 202,Barrio de San Marcos,20070 Aguascalientes, Ags.</p>
                        <p><span class="glyphicon glyphicon-phone"></span> Telefono: 01 (449) 1944741</p>
                        <p><span class="glyphicon glyphicon-envelope"></span> Email: mail@mail.com</p> 
                    </div>
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <asp:TextBox ID="txtName" CssClass="form-control" runat="server" placeholder="Nombre"/>
                            </div>
                            <div class="col-sm-6 form-group">
                                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"  placeholder="Correo electr&oacute;nio"/>
                            </div>
                        </div>

                        <textarea class="form-control" id="comments" name="comments" placeholder="Comentario" rows="5"></textarea>
                        <div class="row">
                            <br>
                            <div class="col-md-12 form-group">
                                <asp:Button runat="server" ID="btnSend" CssClass="btn pull-right" Text="Enviar" />
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
            <div id="googleMap"></div>
        </div>

        <footer class="text-center">
            <a class="up-arrow" href="#frmIndex" data-toggle="tooltip" title="IR ARRIBA">
            <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p>Grupo Agropet <a href="http://www.petcetera.com" data-toggle="tooltip" title="Visita Petcetera">www.petcetera.com</a></p> 
        </footer>
        <!--linck javascript-->        
        <script src="Scripts/jquery-1.10.2.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js"></script>
        <script src="Scripts/main.js"></script>
        <script type="text/javascript" src="Scripts/simplegallery.min.js"></script>
    </form>
</body>
</html>
