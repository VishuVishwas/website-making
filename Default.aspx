<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        #pricing-tables .pricing {
            background: #8E91C4 !important;
        }

        a {
            color: white !important;
        }
    </style>
    <header class="full-bg vertical-content">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row vertical-content">
                        <div class="col-sm-6 col-xs-12">
                            <!-- <h2>OzoneApp</h2> -->
                            <h1>Download Main Mumbai Starline Game App</h1>
                            <p class="margin-b-30">
                                Play Main Mumbai StarLine Game and Win Lot of Money Daily.
                            </p>
                            <a href="#" id="lnkIOSLink" runat="server">
                                <img src="images/appstore.png" alt="image" height="50" />
                            </a>
                            <a href="#" id="lnkAndroidLink" runat="server">
                                <img src="images/playstore.png" alt="image" height="50" />
                            </a>
                        </div>
                        <div class="col-sm-6 col-xs-12 text-center">
                            <div class="skew-img">
                                <div class="inner">
                                    <img src="images/2-iphone-right.png" width="325" alt="image" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section class="container iphone-img padding-tb-100" id="about-sec">
        <div class="row">
            <div class="col-sm-12">
                <div class="skew-img-small">
                    <div class="inner">
                        <img src="images/2-iphone-right.png" width="500" alt="image" />
                    </div>
                </div>
                <h2 class="text-center text-uppercase text-purple">About Our App</h2>
                <hr />
            </div>
            <div class="col-sm-8 col-sm-offset-2">
                <div class="row">
                    <div class="col-sm-7 col-sm-offset-5">
                        <h3><span class="text-purple">Main Mumbai Starline</span> <span class="text-gray">is the Best App for Earn Money</span></h3>
                        <%-- <p>
                            It is a Boostrap Responsive HTML5 Landing page. Optimized specially to look good and load fast on all mobile devices. It
                            has all the unique features that can lure visitors to download your app.
                        </p>--%>
                        <p>Our Mobile Application is available on both Google PlayStore and Apple AppStore</p>
                        <ul class="list-inline margin-t-30">
                            <li><a style="color: blue!important" href="#" id="lnkIOSLink1" runat="server" class="btn-purple"><i class="fa fa-android"></i>Download</a></li>
                            <li><a style="color: blue!important" href="#" id="lnkAndroidLink1" runat="server" class="btn-purple"><i class="fa fa-apple"></i>Download</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--<section class="container-fluid bg-blue padding-tb-100" id="aww_features">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="text-uppercase">Awesome Features</h2>
                <hr />
                <p class="margin-b-50">
                    Responsive &amp; optimized for mobile devices.<br />
                    Completely without coding skills!
                </p>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="feature-block">
                            <div class="icon-block pull-left">
                                <i class="fa fa-2x fa-gears"></i>
                            </div>
                            <div class="feature-text">
                                <h4>Great &amp; Fast Service</h4>
                                <p>
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.
                                </p>
                            </div>
                        </div>
                        <div class="feature-block">
                            <div class="icon-block pull-left">
                                <i class="fa fa-2x fa-gift"></i>
                            </div>
                            <div class="feature-text">
                                <h4>High Quality Product</h4>
                                <p>
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.
                                </p>
                            </div>
                        </div>
                        <div class="feature-block">
                            <div class="icon-block pull-left">
                                <i class="fa fa-2x fa-font-awesome"></i>
                            </div>
                            <div class="feature-text">
                                <h4>360+ Icons Choice</h4>
                                <p>
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 text-center">
                        <img src="images/single-iphone.png" width="250" alt="images">
                    </div>
                    <div class="col-sm-4">
                        <div class="feature-block">
                            <div class="icon-block pull-left">
                                <i class="fa fa-2x fa-television"></i>
                            </div>
                            <div class="feature-text">
                                <h4>Retina Graphics Display</h4>
                                <p>
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.
                                </p>
                            </div>
                        </div>
                        <div class="feature-block">
                            <div class="icon-block pull-left">
                                <i class="fa fa-2x fa-cloud-download"></i>
                            </div>
                            <div class="feature-text">
                                <h4>Download Focused</h4>
                                <p>
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.
                                </p>
                            </div>
                        </div>
                        <div class="feature-block">
                            <div class="icon-block pull-left">
                                <i class="fa fa-2x fa-snowflake-o"></i>
                            </div>
                            <div class="feature-text">
                                <h4>Daily New Update</h4>
                                <p>
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <section class="container-fluid bg-blue padding-tb-100" id="screenshots">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="text-uppercase">App Screenshots</h2>
                <hr />
                <p class="margin-b-50">
                    Responsive &amp; optimized for mobile devices.<br />
                    Completely without coding skills!
                </p>
                <!-- slider html -->
                <div class="owl-carousel owl-theme">
                    <div class="item">
                        <a href="images/slide1.jpg" data-toggle="lightbox" data-gallery="sdm-gallery">
                            <img src="images/slide1.jpg" alt="screenshots">
                        </a>
                    </div>
                    <div class="item">
                        <a href="images/slide2.jpg" data-toggle="lightbox" data-gallery="sdm-gallery">
                            <img src="images/slide2.jpg" alt="screenshots">
                        </a>
                    </div>
                    <div class="item">
                        <a href="images/slide3.jpg" data-toggle="lightbox" data-gallery="sdm-gallery">
                            <img src="images/slide3.jpg" alt="screenshots">
                        </a>
                    </div>
                    <div class="item">
                        <a href="images/slide4.jpg" data-toggle="lightbox" data-gallery="sdm-gallery">
                            <img src="images/slide4.jpg" alt="screenshots">
                        </a>
                    </div>
                    <div class="item">
                        <a href="images/slide3.jpg" data-toggle="lightbox" data-gallery="sdm-gallery">
                            <img src="images/slide3.jpg" alt="screenshots">
                        </a>
                    </div>
                    <div class="item">
                        <a href="images/slide2.jpg" data-toggle="lightbox" data-gallery="sdm-gallery">
                            <img src="images/slide2.jpg" alt="screenshots">
                        </a>
                    </div>
                    <div class="item">
                        <a href="images/slide1.jpg" data-toggle="lightbox" data-gallery="sdm-gallery">
                            <img src="images/slide1.jpg" alt="screenshots">
                        </a>
                    </div>
                    <div class="item">
                        <a href="images/slide4.jpg" data-toggle="lightbox" data-gallery="sdm-gallery">
                            <img src="images/slide4.jpg" alt="screenshots">
                        </a>
                    </div>
                </div>
                <!-- slider html end -->
            </div>
        </div>
    </section>
    <!-- reviews slide -->
    <%--<section id="carousel">
        <div class="container padding-tb-100">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 Down">
                    <div class="quote"><i class="fa fa-quote-left fa-4x"></i></div>
                    <div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
                        <!-- Carousel indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#fade-quote-carousel" data-slide-to="0"></li>
                            <li data-target="#fade-quote-carousel" data-slide-to="1"></li>
                            <li data-target="#fade-quote-carousel" data-slide-to="2" class="active"></li>
                            <li data-target="#fade-quote-carousel" data-slide-to="3"></li>
                        </ol>
                        <!-- Carousel items -->
                        <div class="carousel-inner">
                            <div class="item">
                                <img class="profile-circle" src="images/face1.jpg" alt="image">
                                <h3>John Doe</h3>
                                <blockquote>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque
                                    laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.
                                </blockquote>
                            </div>
                            <div class="item active">
                                <img class="profile-circle" src="images/face2.jpg" alt="image">
                                <h3>Danial Munsif</h3>
                                <blockquote>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque
                                    laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.
                                </blockquote>
                            </div>
                            <div class="item">
                                <img class="profile-circle" src="images/face3.jpg" alt="image">
                                <h3>Guppu Boss</h3>
                                <blockquote>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque
                                    laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.
                                </blockquote>
                            </div>
                            <div class="item">
                                <img class="profile-circle" src="images/face4.jpg" alt="image">
                                <h3>John Doe</h3>
                                <blockquote>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque
                                    laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>

    <section class="container padding-tb-50" runat="server" id="divLoading" style="padding-top: 100px!important;">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <h2 class="text-uppercase text-center">Live Result Loading</h2>
                    <hr />
                    <div class="row text-center">
                        <div class="col-sm-12">
                            <h3 id="txtGameName" runat="server">R.S. Mumbai </h3>
                            <p id="txtLoading" runat="server">Loading...</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
    </section>



    <section class="container padding-tb-50" id="services" style="padding-top: 100px!important;">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <h2 class="text-uppercase text-center">Live Result</h2>
                    <hr />
                    <div class="row text-center">
                        <asp:Repeater ID="rptLiveResult" runat="server">
                            <ItemTemplate>
                                <div style="border-bottom: 1px solid black; padding: 10px!important" class="row text-center">

                                    <div class="col-sm-12">
                                        <h3><%#Eval("Name") %></h3>
                                    </div>


                                    <div class="col-sm-12">
                                        <table style="width: 100%!important">
                                            <tr style="width: 100%">
                                                <td style="width: 33%!important">
                                                    <p style="color: red!important; font-size: 20px!important; font-weight: bold!important;"><%#Eval("OT") %></p>
                                                </td>
                                                <td style="width: 33%!important">
                                                    <p style="color: black!important; font-size: 20px!important; font-weight: bold!important;"><%#Eval("PannaNo1") %> - <%#Eval("DigitNo1") %> <%#Eval("DigitNo2") %> - <%#Eval("PannaNo2") %></p>
                                                </td>
                                                 <td style="width: 33%!important">
                                                     <p style="color: green!important; font-size: 20px!important; font-weight: bold!important;"><%#Eval("CT") %></p>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>

                                    <div class="col-sm-12">
                                        <table style="width: 100%!important">
                                            <tr style="width: 100%">
                                                <td style="width: 50%!important">
                                                    <a target="_blank" class="btn btn-danger" href="GameChartZone.aspx?Id=<%#Eval("Id") %>">Jodi Chart</a>
                                                </td>
                                                <td style="width: 50%!important">
                                                    <a target="_blank" class="btn btn-success" href="GameChart.aspx?Id=<%#Eval("Id") %>">Panel Chart</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>


                                    <%--<table class="table table-bordered table-responsive" style="background-color: lightgoldenrodyellow!important;">
                            <thead>
                                <tr>
                                    <th style="text-align: center;">Game</th>
                                    <th style="text-align: center;">Panna No. 1</th>
                                    <th style="text-align: center;">Jodi</th>
                                    <th style="text-align: center;">Panna No. 2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptLiveResult" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("Name") %> - <%#Eval("OT") %></td>
                                            <td><%#Eval("PannaNo1") %></td>
                                            <td><%#Eval("DigitNo1") %> <%#Eval("DigitNo2") %></td>
                                            <td><%#Eval("PannaNo2") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>--%>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <br />
    <br />
    <section class="container-fluid full-bg-image center-column" style="background-image: url('images/video-bg.jpg')" id="how_it_works">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3 col-xs-12 text-center ">
                <h2 class="text-uppercase margin-b-30">Get the Download Link on Your Phone</h2>
                <%--<a href="http://www.youtube.com/embed/b0jqPvpn3sY" data-toggle="lightbox" data-gallery="youtubevideos" class="text-center video-section">
                    <i class="fa fa-2x fa-play"></i>
                </a>--%>
                <ul class="social-networks spin-icon">
                    <li>
                        <div class="form-group">
                            <input type="text" class="form-control" id="txtMobileNumber" placeholder="Enter Your Mobile No" style="width: 350px; height: 45px;" />
                        </div>
                    </li>
                    <li>
                        <button type="button" onclick="SendSMSLink()" class="margin-b-15-768 btn-purple-white center-block">Send</button></li>
                </ul>
            </div>
        </div>
    </section>

    <br />
    <br />
    <header class="full-bg vertical-content" style="height: auto; background-color: #d56666!important">
        <div class="container">
            <div class="row" style="padding-top: 25px;">
                <div class="col-sm-10 col-sm-offset-1">
                    <h2 class="text-uppercase text-center">Main Mumbai Starline Todays Result</h2>
                    <hr />
                    <div class="row text-center">

                        <asp:Repeater ID="rptTodayResult" runat="server">
                            <ItemTemplate>
                                <div style="border-bottom: 1px solid black; padding: 10px!important" class="row text-center">

                                    <div class="col-sm-12">
                                        <h3><%#Eval("Name") %> - <%#Eval("OT") %></h3>
                                        <p style="color: black!important; font-size: 20px!important; font-weight: bold!important;">
                                            <%#Eval("PannaNo1") %> - <%#Eval("DigitNo1") %>
                                            <span><a target="_blank" class="btn btn-danger" href="starlineresult.aspx">Panel Chart</a> </span>
                                        </p>
                                    </div>

                                    <%--<table class="table table-bordered table-responsive" style="background-color: lightgoldenrodyellow!important;">
                            <thead>
                                <tr>
                                    <th style="text-align: center;">Game</th>
                                    <th style="text-align: center;">Panna No. 1</th>
                                    <th style="text-align: center;">Jodi</th>
                                    <th style="text-align: center;">Panna No. 2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptLiveResult" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("Name") %> - <%#Eval("OT") %></td>
                                            <td><%#Eval("PannaNo1") %></td>
                                            <td><%#Eval("DigitNo1") %> <%#Eval("DigitNo2") %></td>
                                            <td><%#Eval("PannaNo2") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>--%>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                        <%--<table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th style="text-align: center; font-weight: bold; font-size: 18px;">Game</th>
                                    <th style="text-align: center; font-weight: bold; font-size: 17px;">Panna No.</th>
                                    <th style="text-align: center; font-weight: bold; font-size: 17px;">Digit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptTodayResult" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td style="font-weight: bold; font-size: 18px;"><%#Eval("Name") %> - <%#Eval("OT") %></td>
                                            <td style="font-weight: bold; font-size: 17px;"><%#Eval("PannaNo1") %></td>
                                            <td style="font-weight: bold; font-size: 17px;"><%#Eval("DigitNo1") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>--%>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <br />
    <br />


    <header class="full-bg vertical-content" style="height: auto; background-color: #4a9b4a!important">
        <div class="container">
            <div class="row" style="padding-top: 25px;">
                <div class="col-sm-10 col-sm-offset-1">
                    <h2 class="text-uppercase text-center">Main Mumbai Starline YesterDay Result</h2>
                    <hr />
                    <div class="row text-center">
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th style="text-align: center; font-weight: bold; font-size: 18px;">Game</th>
                                    <th style="text-align: center; font-weight: bold; font-size: 17px;">Panna No.</th>
                                    <th style="text-align: center; font-weight: bold; font-size: 17px;">Digit</th>
                                    <%-- <th style="text-align: center;">Panna No. 2</th>
                                    <th style="text-align: center;">Digit 2</th>--%>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptYesterdayresult" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td style="font-weight: bold; font-size: 18px;"><%#Eval("Name") %> - <%#Eval("OT") %></td>
                                            <td style="font-weight: bold; font-size: 17px;"><%#Eval("PannaNo1") %></td>
                                            <td style="font-weight: bold; font-size: 17px;"><%#Eval("DigitNo1") %></td>
                                            <%--<td><%#Eval("PannaNo2") %></td>
                                            <td><%#Eval("DigitNo2") %></td>--%>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>


        </div>
    </header>

    <section class="container padding-tb-50" id="pricing-tables" style="margin-top: 30px!important;">
        <div class="row" style="padding-top: 25px;">
            <div class="col-sm-10 col-sm-offset-1">
                <h2 class="text-uppercase text-center">Matka Games Time Table</h2>
                <hr />
                <div class="row text-center">
                    <table class="table table-bordered table-responsive">
                        <thead>
                            <tr>
                                <th style="text-align: center; font-weight: bold; font-size: 18px;">Game</th>
                                <th style="text-align: center; font-weight: bold; font-size: 17px;">Open</th>
                                <th style="text-align: center; font-weight: bold; font-size: 17px;">Close</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptGlobalTimeTable" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td style="font-weight: bold; font-size: 18px;"><%#Eval("Name") %></td>
                                        <td style="font-weight: bold; font-size: 17px;"><%#Eval("OT") %></td>
                                        <td style="font-weight: bold; font-size: 17px;"><%#Eval("CT") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
        <br />
        <div class="row" style="padding-top: 25px;">
            <div class="col-sm-10 col-sm-offset-1">
                <h2 class="text-uppercase text-center">Main Mumbai Starline Time Table</h2>
                <hr />
                <div class="row text-center">
                    <table class="table table-bordered table-responsive">
                        <thead>
                            <tr>
                                <th style="text-align: center; font-weight: bold; font-size: 18px;">Game</th>
                                <th style="text-align: center; font-weight: bold; font-size: 17px;">Open</th>
                                <%--<th style="text-align: center;">Close</th>--%>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptmyGamesTimeTable" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td style="font-weight: bold; font-size: 18px;"><%#Eval("Name") %></td>
                                        <td style="font-weight: bold; font-size: 17px;"><%#Eval("OT") %></td>
                                        <%--<td><%#Eval("CT") %></td>--%>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

    <header class="full-bg vertical-content" style="height: auto; display: none">
        <div class="container">
            <div class="row" style="padding-top: 25px;">
                <div class="col-sm-10 col-sm-offset-1">
                    <h2 class="text-uppercase text-center">Main Mumbai Starline Panel Chart</h2>
                    <hr />
                    <div class="row text-center">
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th style="text-align: center;">Date</th>
                                    <th style="text-align: center;">Game</th>
                                    <th style="text-align: center;">Panna No.</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptpanelChart" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("RD") %></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("PannaNo1") %>
                                                <br />
                                                <%#Eval("DigitNo1") %>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>

        </div>
    </header>

    <section class="container padding-tb-50" id="pricing-tables" style="margin-top: 30px!important;">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="text-uppercase text-center">Jodi Chart Zone</h2>
                <hr />
                <div class="row text-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="pricing ">
                            <ul class="list-unstyled">
                                <asp:Repeater ID="rptChartZone" runat="server">
                                    <ItemTemplate>
                                        <li style="border: 1px solid #0d0b0b; padding: 10px;">
                                            <a style="font-size: 20px;" href="GameChartZone.aspx?Id=<%#Eval("Id") %>">
                                                <%#Eval("Name") %>
                                            </a>
                                            <a class="PBtn" href="MMumbai.apk">Play Now
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <br />
        <div class="row">
            <div class="col-sm-12">
                <h2 class="text-uppercase text-center">Panel Chart Zone</h2>
                <hr />
                <div class="row text-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="pricing ">
                            <ul class="list-unstyled">
                                <asp:Repeater ID="rptGames" runat="server">
                                    <ItemTemplate>
                                        <li style="border: 1px solid #0d0b0b; padding: 10px;">
                                            <a style="font-size: 20px;" href="GameChart.aspx?Id=<%#Eval("Id") %>"><%#Eval("Name") %> Panel</a>
                                            <a class="PBtn" href="MMumbai.apk">Play Now
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <br />
        <div class="row">
            <div class="col-sm-12">
                <h2 class="text-uppercase text-center">StarLine Panel Chart Zone</h2>
                <hr />
                <div class="row text-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="pricing ">
                            <ul class="list-unstyled">
                                <asp:Repeater ID="rptStarLinePanel" runat="server">
                                    <ItemTemplate>
                                        <li style="border: 1px solid #0d0b0b; padding: 10px;"><a style="font-size: 20px;" href="starlineresult.aspx"><%#Eval("Name") %> Panel</a>
                                            <a class="PBtn" href="MMumbai.apk">Play Now
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section class="container-fluid bg-blue padding-tb-100" id="downloads">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3 text-center ">
                <h2 class="text-uppercase">Over Million People using <span class="text-gold">Main Mumbai Starline</span></h2>
                <ul class="list-inline margin-b-0  ">
                    <li>
                        <a href="MMumbai.apk">
                            <img src="images/playstore.png" class="mar-386" alt="download" height="50" />
                        </a>
                    </li>
                    <li>
                        <a href="MMumbai.apk">
                            <img src="images/appstore.png" alt="download" height="50" />
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <section class="container-fluid bg-blue padding-tb-100" id="contact">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <h2 class="text-uppercase text-center">Contact With Us</h2>
                <hr />
                <div class="row ">
                    <div class="col-sm-12">
                        <div class="contact">
                            <ul class="list-unstyled">
                                <li>
                                    <i class="fa fa-globe contact-icons"></i>Mumbai, India
                                </li>
                                <li>
                                    <i class="fa fa-envelope contact-icons"></i>tradersmm1@gmail.com
                                </li>
                                <li>
                                    <i class="fa fa-phone contact-icons"></i>8923524159
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
        function SendSMSLink() {
            var Mobile = document.getElementById("txtMobileNumber").value;

            if (Mobile.trim().length == 0) {
                swal("warning", "Please Enter Mobile No", "warning");
                return;
            }
            PageMethods.SendLink(Mobile, LinkSuccess, null);
        }

        function LinkSuccess(response) {
            var A = response.toString().split('#');
            if (A[0] == 0) {
                swal("Error", A[1].toString(), "error").then((value) => {
                });
                return;
            }
            else if (A[0] == 1) {
                swal("Success", A[1].toString(), "success").then((value) => {
                });
                document.getElementById("txtMobileNumber").value = "";
            }
        }
    </script>

</asp:Content>

