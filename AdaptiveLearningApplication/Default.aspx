<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdaptiveLearningApplication.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home-sec" id="home">
        <div class="overlay">
            <div class="container">
                <div class="row text-center ">

                    <div class="col-lg-12  col-md-12 col-sm-12">

                        <div class="flexslider set-flexi" id="main-section">
                            <ul class="slides move-me">

                                <!-- Slider 01 -->

                                <li>
                                    <h3>Delivering Quality Learning</h3>
                                    <h1>THE UNIQUE METHOD</h1>
                                    <a href="#faculty-sec" class="btn btn-info btn-lg">GET LOGIN 
                                    </a>
                                </li>
                                <!-- End Slider 01 -->

                                <!-- Slider 02 -->
                                <li>
                                    <h3>Delivering Quality Education</h3>
                                    <h1>UNMATCHED APPROACH</h1>
                                    <a href="#features-sec" class="btn btn-primary btn-lg">GET APPROACH 
                                    </a>
                                    <a href="#course-sec" class="btn btn-danger btn-lg">GET STARTED 
                                    </a>
                                </li>
                                <!-- End Slider 02 -->

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--HOME SECTION END-->

    <div class="tag-line">
        <div class="container">
            <div class="row  text-center">

                <div class="col-lg-12  col-md-12 col-sm-12">

                    <h2 data-scroll-reveal="enter from the bottom after 0.1s"><i class="fa fa-circle-o-notch"></i>WELCOME TO THE ADAPTIVE LEARNING CENTER <i class="fa fa-circle-o-notch"></i></h2>
                </div>
            </div>
        </div>
    </div>

    <!--HOME SECTION TAG LINE END-->

    <div id="features-sec" class="container set-pad">
        <div class="row text-center">
            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">

                <h1 data-scroll-reveal="enter from the bottom after 0.2s" class="header-line">FEATURE LIST </h1>
                <p data-scroll-reveal="enter from the bottom after 0.3s">Here are the feature of the Adaptive Learning Assesment application.</p>
            </div>
        </div>
        <!--/.HEADER LINE END-->


        <div class="row">
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s">
                <div class="about-div">
                    <i class="fa fa-paper-plane-o fa-4x icon-round-border"></i>
                    <h3>Quality Quiz</h3>
                    <hr />
                    <hr />
                    <p>Why we called it Quality quiz? </p>
                    <a href="#" class="btn btn-info btn-set">Details</a>
                </div>
            </div>
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.5s">
                <div class="about-div">
                    <i class="fa fa-bolt fa-4x icon-round-border"></i>
                    <h3>SYSTEMATIC APPROACH</h3>
                    <hr />
                    <hr />
                    <p>The approach used in quizes </p>
                    <a href="#" class="btn btn-info btn-set">Adaptive Learning Approach</a>
                </div>
            </div>
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.6s">
                <div class="about-div">
                    <i class="fa fa-magic fa-4x icon-round-border"></i>
                    <h3>Helping Material</h3>
                    <hr />
                    <hr />
                    <p>We used some Helping Material Why?</p>
                    <a href="#" class="btn btn-info btn-set">Details</a>
                </div>
            </div>
        </div>
    </div>

    <!-- FEATURES SECTION END-->

    <div id="faculty-sec">
        <div class="container set-pad">
            <div class="row text-center">
                <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                    <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line">SIGNIN</h1>
                    <p data-scroll-reveal="enter from the bottom after 0.3s">Welcome Users</p>
                </div>

            </div>
            <!--/.HEADER LINE END-->

            <div class="row">

                <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s">
                    <div class="faculty-div">
                        <img src="Images/faculty/1.jpg" class="img-rounded" />
                        <h3>ADMIN</h3>
                        <hr />
                        <h4>Welcome Admin
                             <br />
                            Please Login here</h4>
                        <a href="#login_modal" class="btn btn-info btn-set" data-toggle="modal"><span class="glyphicon glyphicon-user"></span>&nbsp;Login</a>
                    </div>
                </div>
                <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.5s">
                    <div class="faculty-div">
                        <img src="Images/faculty/2.jpg" class="img-rounded" />
                        <h3>STUDENT</h3>
                        <hr />
                        <h4>Welcome Students
                            <br />
                            Please Login here</h4>
                        <a href="#" class="btn btn-info btn-set">LOGIN</a>
                    </div>
                </div>
                <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.6s">
                    <div class="faculty-div">
                        <img src="Images/faculty/3.jpg" class="img-rounded" />
                        <h3>FACULTY</h3>
                        <hr />
                        <h4>Welcome Faculty
                            <br />
                            Please Login here</h4>
                        <a href="#" class="btn btn-info btn-set">LOGIN</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- FACULTY SECTION END-->
    <div class="modal fade" id="login_modal">
        <div class="modal-dialog">
            <div class="modal-content" id="dialog">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">&times;</button>

                    <!-- Tabs-->
                    <div class="tabbable">
                        <ul class="nav nav-pills" style="margin-bottom: 10px;">
                            <li class="active"><a href="#pill1" data-toggle="pill" style="margin: 0px 0px;">Login</a></li>

                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane active" id="pill1">
                                <!-- <form action="" class="form-horizontal">-->
                                <div class="form-group" style="height: 38px;">
                                    <label class="col-lg-2 control-label" for="txtUsername" style="margin-top: 6px;">Username</label>

                                    <div class="col-lg-10">
                                        <!--<input type="text" class="form-control" id="inputUsername" placeholder="Username" />-->
                                        <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server" text="Username"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group" style="height: 91px;">
                                    <label class="col-lg-2 control-label" for="txtPassword">Password</label>

                                    <div class="col-lg-10">
                                        <!--<input type="password" class="form-control" id="inputEmail" placeholder="Password" />-->
                                        <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" text="Password" TextMode="Password"></asp:TextBox>
                                        <!-- <button class="btn btn-success pull-right" type="submit">Send!</button>-->
                                        <asp:Button CssClass="btn btn-success pull-right" ID="loginBtn" OnClick="LoginValidation" runat="server" Text="Send!" />
                                    </div>
                                </div>
                                <!--</form>-->
                            </div>
                            <!--end tab pane 1-->


                            <!--end tab pane 2-->

                        </div>
                        <!--end tab-content-->

                    </div>
                    <!--end tabbable-->


                </div>
                <!--end modal-header-->
            </div>
            <!--end modal-content-->
        </div>
        <!--end modal-dialog-->
    </div>
    <!--end modal fade-->

    <div id="course-sec" class="container set-pad">
        <div class="row text-center">
            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line">SIGNUP</h1>
                <p data-scroll-reveal="enter from the bottom after 0.3s">Please provide the following details</p>
            </div>

        </div>
        <!--/.HEADER LINE END-->


        <div class="row set-row-pad">
            <div class="col-lg-6 col-md-6 col-sm-6 " data-scroll-reveal="enter from the bottom after 0.4s">
                <img src="Images/Welcome.jpg" class="img-thumbnail" />
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default" data-scroll-reveal="enter from the bottom after 0.5s">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" class="collapsed">
                                    <strong>For NAME</strong> Click here 
                                </a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse" style="height: 0px;">
                            <div class="panel-body">
                                First name:
                                <%--<input type="text" name="FirstName" value="Mickey">--%>
                                <asp:TextBox  ID="txtSignFirstName" runat="server" placeholder="Mickey"></asp:TextBox><br>
                                Last name:
                                <%--<input type="text" name="LastName" value="Mouse">--%>
                                <asp:TextBox  ID="txtSignLastName" runat="server" placeholder="Mouse"></asp:TextBox><br>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default" data-scroll-reveal="enter from the bottom after 0.7s">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" class="collapsed">
                                    <strong>For Email Adress</strong> Click here
                                </a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse" style="height: 0px;">
                            <div class="panel-body">
                                Email Adress:
                                <%--<input type="text" email="EmailAdress" value="mail@live.com"><br>--%>
                                <asp:TextBox ID="txtSignEmail" runat="server" placeholder="mail@live.com"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default" data-scroll-reveal="enter from the bottom after 0.9s">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3" class="collapsed">
                                    <strong>For Security Credentials</strong> Click here 
                                </a>
                            </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse" style="height: 0px;">
                            <div class="panel-body">
                                Password:
                                <%--<input type="password" pass="pass1" placeholder="*********">--%>
                                <asp:TextBox TextMode="Password" ID="txtSignPassword" runat="server" placeholder="*********" ></asp:TextBox><br>
                                Verify Password:
                                <%--<input type="password" name="pass2" placeholder="*********">--%>
                                <asp:TextBox TextMode="Password" ID="txtSignConfirmPassword" runat="server" placeholder="*********"></asp:TextBox><br>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="alert alert-info" data-scroll-reveal="enter from the bottom after 1.1s">
                    <span style="font-size: 40px;">
                        <strong>
                            <form action="">
                 
                                <input type="radio" id="r_admin" runat="server" name="r_role" value="admin">
                                ADMIN<br>
                                <hr />
                                <input type="radio" id="r_student"  runat="server" name="r_role" value="student">
                                STUDENT<br>
                                <hr />
                                <input type="radio" id="r_faculty" runat="server" name="r_role" value="faculty">
                                FACULTY
                            </form>
                        </strong>
                        <hr />
                    </span>
                    <asp:Button CssClass="btn btn-success pull-right" ID="signupBtn" runat="server" Text="SUBMIT" OnClick="InsertUser" />
                </div>
            </div>



        </div>
    </div>
    <!-- COURSES SECTION END-->
    <div id="contact-sec">
        <div class="overlay">
            <div class="container set-pad">
                <div class="row text-center">
                    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                        <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line">CONTACT US  </h1>
                        <p data-scroll-reveal="enter from the bottom after 0.3s">Feel free to contact us</p>

                    </div>

                </div>
                <!--/.HEADER LINE END-->
                <div class="row set-row-pad" data-scroll-reveal="enter from the bottom after 0.5s">


                    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control " required="required" placeholder="Your Name" />
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control " required="required" placeholder="Your Email" />
                            </div>
                            <div class="form-group">
                                <textarea name="message" required="required" class="form-control" style="min-height: 150px;" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-info btn-block btn-lg">SUBMIT REQUEST</button>
                            </div>

                        </form>
                    </div>






                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row set-row-pad">
            <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1 " data-scroll-reveal="enter from the bottom after 0.4s">

                <h2><strong>ABOUT US</strong></h2>
                <hr />
                <div>
                    <h4>CAPITAL UNIVERSITY OF SCIENCE & TECHNOLOGY</h4>
                    <h4>ISLAMABAD</h4>
                    <h4><strong>NAME :</strong>  Name</h4>
                    <h4><strong>REG #</strong>BC</h4>
                </div>


            </div>
            <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1" data-scroll-reveal="enter from the bottom after 0.4s">

                <h2><strong>Social Conectivity </strong></h2>
                <hr />
                <div>
                    <a href="#">
                        <img src="Images/Social/facebook.png" alt="" />
                    </a>
                    <a href="#">
                        <img src="Images/Social/google-plus.png" alt="" /></a>
                    <a href="#">
                        <img src="Images/Social/twitter.png" alt="" /></a>
                </div>
            </div>


        </div>
    </div>
    <!-- CONTACT SECTION END-->
</asp:Content>
