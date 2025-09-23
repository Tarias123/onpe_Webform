<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Onpe.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="onpe_Webform.Pages.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     <section class="container space02 nosub">
      <div class="pull-left pd02 ancho-ie">
          <a href="Presidenciales.aspx">
            <div class="grow pic btn01"><img src="../content/images/presidenciales.jpg" ></div>
            <div class="tit02"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span><p>PRESIDENCIALES</p></div>
          </a>
      </div>
      <div class="pull-left pd02 oculto2 ancho-ie">
        <a href="Actas_Ubigeo.aspx">
          <div class="grow pic btn04"><img src="../content/images/actas.jpg" ></div>
          <div class="tit02"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span><p>ACTAS</p></div>
        </a>
      </div>
      <div class="pull-left pd01 ancho-ie">
        <a href="Participacion.aspx">
          <div class="grow pic btn05"><img src="../content/images/participacion.jpg" ></div>
        <div class="tit01"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span><p>PARTICIPACIÓN <br> CIUDADANA</p></div>
        </a>
      </div>
    </section>
</asp:Content>
