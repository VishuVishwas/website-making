﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GameChartZone.aspx.cs" Inherits="GameChartZone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .col-New {
            /*width: 14% !important;*/
            border: 1px solid black;
            float:left!important;
            display:inline!important;
        }
    </style>
    <section class="container-fluid bg-blue padding-tb-100" id="downloads">
        <div class="row" style="padding: 40px;">
            <div class="col-sm-8 col-lg-offset-2 text-center ">
                <h1 id="txtName" runat="server"></h1>
                <div class="row">
                    <asp:Repeater ID="rptData" runat="server">
                        <ItemTemplate>
                            <div class="col-New" style='width: <%#Eval("W")%>'>
                                <div class="" style="padding: 2px; background-color: white; color: black; font-weight: bold;">
                                    <span><%#Eval("DigitNo1") %><%#Eval("DigitNo2") %></span>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <%--<table class="table table-bordered table-responsive">
                    <thead>
                        <tr>
                            <th style="text-align: center;">Date</th>
                            <th style="text-align: center;">Panna No. 1</th>
                            <th style="text-align: center;">Jodi</th>
                            <th style="text-align: center;">Panna No. 2</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptData" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("DT") %></td>
                                    <td><%#Eval("PannaNo1") %></td>
                                    <td><%#Eval("DigitNo1") %> <%#Eval("DigitNo2") %></td>
                                    <td><%#Eval("PannaNo2") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>--%>
            </div>
        </div>
    </section>


</asp:Content>

