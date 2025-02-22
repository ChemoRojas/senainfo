<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ninos_HistoricoDiagnosticoPsicologico.aspx.cs" Inherits="mod_ninos_ninos_HistoricoDiagnosticoPsicologico" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<html lang="es">
<head id="Head1" runat="server">
    <title>Histórico Diagnóstico Psicológico</title>
    <link rel="stylesheet" href="../css/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Bootstrap theme -->
    <link href="../css/bootstrap-theme.min.css" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="../css/theme.css" rel="stylesheet"/> 
    <script src="../js/ie-emulation-modes-warning.js"></script>


    <script src="../js/jquery-1.10.2.js"></script>
    <script src="../js/jquery-ui.js"></script>
</head>
<body class="body-form">
    <form id="form1" runat="server">
        <div class="container">
             <h4 class="text-center"><asp:Label CssClass="subtitulo-form" ID="lblmsg" runat="server" Visible="false" Text="No se encontraron registros."></asp:Label></h4>

                <table >
                    <tr>
                        <td>                        
                        <asp:GridView ID="grdpsicologico" CssClass="table table table-bordered table-hover" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateColumns="False">
                            <HeaderStyle CssClass="titulo-tabla" /> 
                            <Columns>
                                <asp:BoundField AccessibleHeaderText="institucion" DataField="institucion" HeaderText="Institución">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField AccessibleHeaderText="codproyecto" DataField="codproyecto" HeaderText="Cod. Proyecto">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField AccessibleHeaderText="proyecto" DataField="proyecto" HeaderText="Proyecto">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField AccessibleHeaderText="instrumento" DataField="instrumento" HeaderText="Instrumento Diagnóstico">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField AccessibleHeaderText="medicion" DataField="medicion" HeaderText="Medición Diagnóstica">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField AccessibleHeaderText="fecha" DataField="fecha" DataFormatString="{0:DD/MM/YYYY}" HeaderText="Fecha Diagnóstico">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>           
                    <tr><td>
                    <asp:LinkButton ID="btn_exelPsicologico" runat="server" CssClass="btn btn-success btn-sm fixed-width-button pull-right" OnClick="btn_exelPsicologico_Click" >
                 <span class="glyphicon glyphicon-floppy-save"></span>&nbsp;Exportar
              </asp:LinkButton>   
                        </td></tr>  
            </table>
        </div>
    </form>
</body>
</html>
