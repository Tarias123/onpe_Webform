<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Onpe.Master" AutoEventWireup="true" CodeBehind="Actas_Numero.aspx.cs" Inherits="onpe_Webform.Pages.Actas_Numero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     <div class="container">
      <img src="../content/images/f-actas.jpg" width="1170" height="248" class="img-responsive mg30top">

      <section class="menu navbar-default menu05">
        <div class="navbar-header">
          <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <a name="posicion"></a>
        <nav class="navbar-collapse bs-navbar-collapse collapse" aria-expanded="false">
          <ul class="nav navbar-nav">
            <li class="bt-azul">
              <a href="Presidenciales.aspx">PRESIDENCIAL</a>
            </li>
            <li class="bt-amarillo act-amarillo">
              <a href="Actas_Ubigeo.aspx">ACTAS</a>
            </li>
            <li class="bt-rojo">
              <a href="Participacion.aspx">PARTICIPACIÓN CIUDADANA</a>
            </li>
          </ul>
        </nav>
      </section>
      <br/><br/><br/><br/>

      <section class="contenedor">
        <div class="row">

          <div class="col-xs-12 col-md-3">
            <div class="menu-interna">
              <ul>
                <li><a href="Actas_Ubigeo.aspx">Actas por ubigeo</a></li>
                <li><a href="Actas_Numero.aspx" class="act-izq">Actas por número</a></li>
              </ul>
            </div>
          </div>

          <div class="col-xs-12 col-md-9" id="impreso">
            <div class="contenido-interna">

              <div class="titulos col-xs-12">
                <div class="col-xs-11">
                  <h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCIÓN PRESIDENCIAL 2016: ACTAS POR NÚMERO</h3>
                </div>

                <div class="col-xs-1 oculto-boton-print">
                  <button onclick="printContent('impreso');"><i class="fa fa-print ico-print"></i></button>
                </div>
              </div>

              <div class="col-xs-12">
                <div class="col-lg-7 centered">
                  <div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
                    <div class="col-xs-3 col-md-1">
                      <span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
                    </div>

                    <div class="col-xs-9 col-md-11">
                      <ul>
                        <li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h </li>
                      </ul>
                    </div>
                  </div>
                </div>

                <div id="page-wrap">
                  <br>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>
                 <!-- <form id="myform" name="myform" class="horizontal-form" method="post" action="javascript:actas_bscarPrNmroMesa(document.getElementById('myform'));">-->
                    <div class="col-md-3">
                      INGRESE EL NÚMERO DE ACTA:
                    </div>

                    <div class="col-md-4">
                      <div class="form-group">
                        <span id="spanNroMesa">
                        <!--  <input id="nroMesa" name="nroMesa" type="text" onkeypress="return validText(this, event, 4)" maxlength="6" class="form-control" value=""> -->
                            <asp:TextBox ID="nroMesa" CssClass="form-control" MaxLength="6" runat="server" />
                        </span>
                      </div>
                    </div>

                    <div class="col-md-2">
                    <!--  <button type="button" onclick="javascript:actas_bscarPrNmroMesa(document.getElementById('myform'));" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> BUSCAR</button> -->
                        <asp:Button ID="btnBuscar" Text="Buscar" CssClass="btn btn-primary" runat="server" OnClick="btnBuscar_Click" />
                    </div>
                 <!-- </form> -->
                </div>

                <div id="divDetalle" class="ptop20">
                  <div class="contenido-resultados">
                    <p>&nbsp;</p>
                    <div class="row"> 

                      <div class="tab-info"><asp:Label ID="lblMensaje" runat="server" text="NÚMERO DE MESA QUE HA INGRESADO NO EXISTE" /></div>

                        <asp:FormView ID="fvActa" runat="server">
                            <ItemTemplate>
                      <div class="tab-content">
                        <div id="detMesa">
                          <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="presidencial">
                              <div class="tab-info-desc">

                                <div class="row">

                                  <div class="col-xs-3 col-md-4">
                                    <div class="mesap01">
                                        <img src="../content/images/mp-sin.jpg" class="img-responsive">
                                        Si requiere la imagen del acta, solicítela a través del procedimiento de acceso a la información pública.
                                    </div>
                                  </div>

                                  <div class="col-xs-9 col-md-8">
                                    <div class="row">

                                      <div class="col-xs-12">
                                        <p class="subtitle1">ACTA ELECTORAL</p>
                                        <div id="page-wrap">
                                          <table class="table13" cellspacing="0">
                                            <thead>
                                              <tr>
                                                <th>Mesa N°</th>
                                                <th>N° Copia</th>
                                              </tr>
                                            </thead>
                                            <tbody>
                                              <tr>
                                                <td><%#Eval("idGrupoVotacion") %></td>
                                                <td><%#Eval("nCopia") %></td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>

                                      <div class="col-xs-12">
                                        <p class="subtitle1">INFORMACIÓN UBIGEO</p>
                                        <div id="page-wrap">
                                          <table class="table14" cellspacing="0">
                                            <tbody>
                                              <tr class="titulo_tabla">
                                                <td>Departamento</td>
                                                <td>Provincia</td>
                                                <td>Distrito</td>
                                                <td>Local de votación</td>
                                                <td>Dirección</td>
                                              </tr>
                                              <tr>
                                                <td><%#Eval("Departamento") %></td>
                                                <td><%#Eval("Provincia") %></td>
                                                <td><%#Eval("Distrito") %></td>
                                                <td><%#Eval("RazonSocial") %></td>
                                                <td><%#Eval("Direccion") %></td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>

                                      <div class="col-xs-12">
                                        <p class="subtitle1">INFORMACIÓN MESA</p>
                                        <div id="page-wrap">
                                          <table class="table15" cellspacing="0">
                                            <tbody>
                                              <tr class="titulo_tabla">
                                                <td>Electores hábiles</td>
                                                <td>Total votantes</td> 
                                                <td>Estado del acta</td>
                                              </tr>
                                              <tr>
                                                <td><%#Eval("ElectoresHabiles") %></td>
                                                <td><%#Eval("TotalVotantes") %></td>
                                                <td>ACTA ELECTORAL NORMAL</td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>

                                    </div>

                                  </div>
                                </div>

                                <div>
                                  <div class="col-xs-12 pbot30_acta">
                                    <p class="subtitle1">LISTA DE RESOLUCIONES</p>
                                    <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> No hay resoluciones para el acta seleccionada
                                    <div id="page-wrap">
                                        <div class="col-md-12 resolu"></div>
                                    </div>
                                    <!-- <p class="centro"># : El valor consignado en el acta presenta ilegibilidad.</p> -->
                                  </div>
                                </div>

                                <div>
                                  <div class="col-xs-12">
                                    <p class="subtitle1">INFORMACIÓN DEL ACTA ELECTORAL</p>
                                    <div id="page-wrap" class="cont-tabla1">
                                      <table class="table06">
                                        <tbody>
                                          <tr class="titulo_tabla">
                                            <td colspan="2">Organización política</td>
                                            <td>Total de Votos</td>
                                          </tr>
                                          <tr>
                                            <td>PERUANOS POR EL KAMBIO</td>
                                            <td><img width="40px" height="40px" src="../Content/images/simbolo_pkk.jpg"></td>
                                            <td><%#Eval("P1") %></td>
                                          </tr>
                                          <tr>
                                            <td>FUERZA POPULAR</td>
                                            <td><img width="40px" height="40px" src="../Content/images/simbolo_keyko.jpg"></td>
                                            <td><%#Eval("P2") %></td>
                                          </tr>
                                          <tr>
                                            <td colspan="2">VOTOS EN BLANCO</td>
                                            <td><%#Eval("VotosBlancos") %></td>
                                          </tr>
                                          <tr>
                                            <td colspan="2">VOTOS NULOS</td>
                                            <td><%#Eval("VotosNulos") %></td>
                                          </tr>
                                          <tr>
                                            <td colspan="2">VOTOS IMPUGNADOS</td>
                                            <td><%#Eval("VotosImpugnados") %></td>
                                          </tr>
                                          <tr>
                                            <td colspan="2">TOTAL DE  VOTOS EMITIDOS</td>
                                            <td><%#Eval("TotalVotantes") %></td>
                                          </tr>
                                        </tbody>
                                      </table>
                                        </div>
                                      </div>

                                    </div>

                                  </div>
                                </div>

                                <div>
                                  <div class="col-xs-12 pbot30_acta">
                                    <p class="subtitle1">LISTA DE RESOLUCIONES</p>
                                    <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> No hay resoluciones para el acta seleccionada
                                    <div id="page-wrap">
                                        <div class="col-md-12 resolu"></div>
                                    </div>
                                    <!-- <p class="centro"># : El valor consignado en el acta presenta ilegibilidad.</p> -->
                                  </div>
                                </div>

                                <div>
                                  <div class="col-xs-12">
                                    <p class="subtitle1">INFORMACIÓN DEL ACTA ELECTORAL</p>
                                    <div id="page-wrap" class="cont-tabla1">
                                      <table class="table06">
                                        <tbody>
                                          <tr class="titulo_tabla">
                                            <td colspan="2">Organización política</td>
                                            <td>Total de Votos</td>
                                          </tr>
                                          <tr>
                                               <td>PERUANOS POR EL KAMBIO</td>
                                            <td><img width="40px" height="40px" src="../Content/images/simbolo_pkk.jpg"></td>
                                            <td><%#Eval("P1") %></td>
                                          </tr>
                                          <tr>
                                            <td>FUERZA POPULAR</td>
                                            <td><img width="40px" height="40px" src="../Content/images/simbolo_keyko.jpg"></td>
                                            <td><%#Eval("P2") %></td>
                                          </tr>
                                          <tr>
                                            <td colspan="2">VOTOS EN BLANCO</td>
                                            <td><%#Eval("VotosBlancos") %></td>
                                          </tr>
                                          <tr>
                                            <td colspan="2">VOTOS NULOS</td>
                                            <td><%#Eval("VotosNulos") %></td>
                                          </tr>
                                          <tr>
                                            <td colspan="2">VOTOS IMPUGNADOS</td>
                                            <td><%#Eval("VotosImpugnados") %></td>
                                          </tr>
                                          <tr>
                                            <td colspan="2">TOTAL DE  VOTOS EMITIDOS</td>
                                            <td><%#Eval("TotalVotantes") %></td>
                                          </tr>
                                        </tbody>
                                      </table>
                                    </div>
                                  </div>

                                </div>

                              </div>
                            </div>
                          </div>

                        </div>
                      </div>
                                </ItemTemplate>
                            </asp:FormView>
                    </div>

                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </section>
    </div>
    <br/><br/>
</asp:Content>
