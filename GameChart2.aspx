<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GameChart2.aspx.cs" Inherits="GameChart2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .col-New {
            border: 1px solid black;
            float: left !important;
            display: inline !important;
        }
    </style>

    <section class="container-fluid bg-blue padding-tb-100" id="downloads">
        <div class="row">
            <div class="col-sm-12 text-center ">
                <h1 id="txtName" runat="server"></h1>

               
                <div class="row" style="text-align: center!important; width: 100%!important; margin: 0px!important">
                    <asp:Repeater ID="rptData" runat="server">
                        <ItemTemplate>
                            <div class="col-New" style='width: <%#Eval("W")%>'>
                                <div class="" style="padding: 2px; background-color: white; color: black; font-weight: bold;">
                                    <p><%#Eval("DT") %></p>
                                    <p><span><%#Eval("PannaNo1") %></span> |  <span><%#Eval("DigitNo1") %></span></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

               <%-- <table class="table table-bordered table-responsive">
                    <thead>
                        <tr>
                            <th style="text-align: center;">Date</th>
                            <th style="text-align: center;">Panna No.</th>
                            <th style="text-align: center;">Digit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptData" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("DT") %></td>
                                    <td><%#Eval("PannaNo1") %></td>
                                    <td><%#Eval("DigitNo1") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>--%>
            </div>
        </div>
    </section>

</asp:Content>

