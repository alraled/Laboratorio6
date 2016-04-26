<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Buzón de Sugerencias
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div id="new-item-form">
        Nueva Sugerencia:
        <div class="new-item-form-line">
            <span class="new-item-form-label">Asunto:</span>
            <span class="new-item-form-field">
                <input id="asunto-input" class="new-item-form-control" type="text" />
            </span>
        </div>
        <div class="new-item-form-line">
            <span class="new-item-form-label">Sugerencia:</span>
            <span class="new-item-form-field">
                <textarea rows="5" cols="50" class="new-item-form-control" id="sugerencia-input"></textarea>
            </span>
        </div>
    </div>
    <div>
        <input type="button" onclick="crearSugerencia();" value="Enviar"/>
    </div>
    <p>Sugerencias actuales</p>
    <div id="sugerencias-list"></div>
    <div id="item-display">
        <div class="item-display-line">
            <span class="item-display-label">Asunto:</span>
            <span id="item-display-asunto" class="item-display-field"></span>
            <span class="item-votos-controls">
            <a onclick="getSugerencias.SugerenciasApp.guardar_voto(true);">Si</a>
                <a onclick="getSugerencias.SugerenciasApp.guardar_voto(false);">No</a>
            </span>
        </div>
        <div class="item-display-line">
            <span class="item-display-label">Sugerencia:</span>
            <span id="item-display-sugerencia" class="item-display-field"></span>
            <span class="votos-display">
            <span>Votos:</span>
                <span id="votos-count"></span>
            </span>
        </div>
    </div>
    <div class="clear-floats"></div>




</asp:Content>
