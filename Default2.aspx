﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" data-ng-app="myModule">
<head runat="server">
  <link href="https://fonts.googleapis.com/css?family=Quattrocento+Sans" rel="stylesheet"/>
  <link href="css/tickr-style-black.css" rel="stylesheet" />
 <link href="css/Style3.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    
    <link href="css/loading-bar.css" rel="stylesheet" />

    <link href="css/Transition.css" rel="stylesheet" />

    <link href="css/sweet-alert.css" rel="stylesheet" />
    <script src="js/jquery-2.1.1.min.js"></script>
    
    <script src="js/jquery-ui.min.js"></script>
     <script src="js/angular.min.js"></script>
    <script src="js/angular-local-storage.js"></script>
    <script src="js/loading-bar.js"></script>
    <script src="js/sweet-alert.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/AngularLogin2.js"></script>
    
        <style type="text/css" > 
            html, body {
            background-color: white;
       
        }

             body {
          font-family: 'Quattrocento Sans', sans-serif;
        }

            #agentbtn {
            background-color :##06FBB5;
               
              
    cursor:pointer;
}

            #agentlogin2 {
                text-decoration:none;
border:0;
outline:none;
            }


            .form-control2 {
         background-color : #939393 ;color :white  ;font-size:10px;
    }

            input::-webkit-input-placeholder {
color: white !important;
opacity:0.6 ;


}
 
input:-moz-placeholder { /* Firefox 18- */
color: white !important;  
opacity:0.6 ;


}
 
input::-moz-placeholder {  /* Firefox 19+ */
color: white !important;  
opacity:0.6 ;

}
 
input:-ms-input-placeholder {  
color: white !important; 
opacity:0.6  ;


}


        li > a:hover, .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
            background-color: red;
            color: white;
        }




 li > a:hover {
    color: cyan;
}  
      
 .navbar-default .navbar-nav>li>a {
    color: white;
}  

 .glyphicon {color:#06FBB5 !important;}

 .glyphicon4 {color:white !important;}

 .button2 {
    margin-top: 0px;

     padding-top :5px;
     padding-bottom: 5px;
               margin-bottom :30px;
               margin-left :20px;
    
  
}


 .ff {
	font-family: "Open Sans";
	font-size: 10px;
	font-style: normal;
	font-variant: normal;

   
	font-weight: 500;

   
	
	
}
    #fullcol {

        margin-bottom :-9999px;
        padding-bottom :9999px;
    }
   #cpp {
      
      
      
   }

   .nopadding {
   padding: 0 !important;
   margin: 0 !important;
}

   .navbar {
   
    margin-bottom: 1px;
  
}

            .ico:after {
                content: '';
                background-image: url('images/icons-02.png');
                display: block;
                height: 40px; /*height of icon */
                width: 40px; /*width of icon */
                position: absolute;
                /*where to replace the icon */
                top: 0px;
                left: -40px;
                /*background */
               
            }

          footer {
    overflow:hidden
}

         


           .side-menu .navbar-nav li {
   
    border-bottom: 0px solid #939393;
    padding-left :10px;
}

    .side-menu #dropdown > a {
    border-bottom: 0px solid #939393;
}

  
    .side-menu #dropdown .panel-body .navbar-nav li {
  
    border-bottom: 0px solid #939393;
}

    .side-menu .navbar-nav  {
        font-family: Helvetica ;
        font-size :10px;

    }

    .glyphicon3 {color:black !important;}
.popover {
    max-width: 1000px; /* optional max width */
    width: intrinsic; /* Safari/WebKit uses a non-standard name */
    width: -moz-max-content; /* Firefox/Gecko */
    width: -webkit-max-content; /* Chrome */

    background-color:#3D3D3D
}

 .hr3{
	border-top: 4px solid #FFFFFF;
    margin-top :1px;
}

           .sweet-alert button {
    background-color: #06FBB5 !important;
      color: black;
  
   
   
}

           .helvetica-font {
    font-family: Helvetica,'Helvetica Neue',Arial,sans-serif;
    font-size: 12px;
}

 
    </style>


    <style type="text/css">
        @media print {

            .no-print, .no-print * {
                display: none !important;
            }
        }


 .navbar-default .navbar-nav>li>a:focus, .navbar-default .navbar-nav>li>a:hover {
    color: white;
   
}

 .side-menu .navbar-nav li a .glyphicon4 {
    padding-right: 1px;
}

 a:hover
{
text-decoration: none !important;
color: #FFFFFF;
}





    </style>
</head>
<body ng-controller="myController" class="ff" style="overflow: auto">
            <div class="header no-print">
            <nav class="navbar navbar-default navbar-static-top header">
                <div class="container-fluid" style="background-color:#3D3D3D;color:#0FDBA1">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="row ">
                        <br />

                    </div>
                    <div class="row">
                        <div class="navbar-header">

                            <button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed col-md-2" style="color:#0FDBA1">
                                MENU
                            </button>

                            <!--   <img src="images/IPProLogo.png" height="80px" style="margin-left:14px" /> -->

                            <img src="images/banner103.png" height="140px" style="margin-left:10px" />

                            <a id="agentlogin2" href="#/Register" ng-show=islogout><button type="button" id="agentbtn" style="background-color :#06FBB5 ;color :black ; margin-top:0px;font-size:10px ;font-weight:bold" class="btn  btn-lg button2 ff">Agent Sign Up</button></a>


                            <a id="agentlogin3" href="#" ng-show=islogin class="text-center" style="margin-left:520px;">

                                <button type="button" id="agentbtn" style="background-color :#3D3D3D ;color :#06FBB5 ; margin-top:0px;font-size:11px ;font-weight:bold ;font-family:Helvetica ;" class="btn  btn-lg button2 ff">{{HeaderMessage}}</button>
                            </a>

                            <button type="button" class="navbar-toggle collapsed col-md-3" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1, #agentlogin3">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>







                            <!--    <a class="navbar-brand" href="/#" style="color:white">
        Administrator
    </a>  -->

                        </div>





                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">



                            <ul class="nav navbar-nav navbar-right ff" style="margin-right:6px;">

                                <li ng-show=islogout>
                                    <a class="dropdown-menu2 ff " style="color:#316758;font-size:11px"  change-background2 count2="0" ng-style="count == 0 ? {color: '#06FBB5' } : { color: '#0FDBA1' } " href="http://5.77.54.44/EinaoTestEnvironment.IpoNigeria">Home</a>
                                </li>

                                <li ng-show=islogout>
                                    <a class="dropdown-menu2 ff " style="color:#316758;font-size:11px"  change-background2 count2="21" ng-style="count == 21 ? {color: '#06FBB5' } : { color: '#0FDBA1' } " href="#/AboutUs">About Us</a>
                                </li>



                                <li ng-show=islogout style="color:#316758;">
                                    <a class="dropdown-menu2 ff" style="color:#316758;font-size:11px" change-background2 count2="23" ng-style="count == 24 ? {color: '#06FBB5' } : { color: '#0FDBA1' } " href="#">Online Services</a>
                                </li>


                                <li ng-show=islogout style="color:#316758;">
                                    <a class="dropdown-menu2 ff" style="color:#316758;font-size:11px" change-background2 count2="25" ng-style="count == 25 ? {color: '#06FBB5' } : { color: '#0FDBA1' } " href="#/SendMail">Contact Us</a>
                                </li>

                                <li ng-show="isFee && islogin">
                                    <button id="btn-signup3" go-click="/SelectedItem" class="btn btn-lg" popover-placement="bottom" uib-popover-html="htmlPopover" popover-trigger="mouseenter" style="color:black;font-size:10px; background-color :#06FBB5 ;margin-top:18px ;border-color: #06FBB5;border:none;border-radius: 6px;width:60px" href="#/Fee"><i class="glyphicon glyphicon3 glyphicon-shopping-cart"></i> &nbsp;({{vcount}}) </button>

                                </li>

                                <li style="color:#316758;" ng-show=islogin>

                                    <a class="dropdown-menu2 ff" style="color:#316758;font-size:11px;" change-background2 count2="22" ng-style="count == 22 ? {color: '#06FBB5' } : { color: '#0FDBA1' } " href="#/logout"><i class="glyphicon glyphicon-log-out"></i>&nbsp;LogOut</a>
                                </li>

                            </ul>
                        </div>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <!-- Brand and toggle get grouped for better mobile display -->
                </div>
                <!-- /.container-fluid -->
            </nav>
        </div>
        <div>
            <div ng-show=islogin >

                <div class="col-md-2 sidebar no-print " ng-show=islogin>

                    <div class="row">
                        
                    

                        
                        <!-- uncomment code for absolute positioning tweek see top comment in css -->
                        <div class="absolute-wrapper"> </div>
                        <!-- Menu -->
                        <div class="side-menu" id="fullcol" style="background-color:#616161">
                            <nav class="navbar navbar-default" role="navigation" style="background-color:#616161">
                                <!-- Main Menu -->
                                <div class="side-menu-container">
                                    <ul class="nav navbar-nav" style="background-color:#616161;color:white">

                                        <li ng-show="agentRole.Agent"><a ui-sref="PaymentType" change-background2 count2="32" ng-style="count2 == 32 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161'}"><img src="images/icons-03.png" width="20px" height="20px" style="vertical-align:bottom;text-decoration:none" /> <span style="vertical-align:bottom;font-size:11px">Make Payment</span></a></li>

                                        <li ng-show="agentRole.Agent" class="panel panel-default" id="dropdown" ng-style="count2 == 0 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }">
                                            <a data-toggle="collapse" href="#dropdown-lvl1" eat-click style="text-decoration:none" change-background2 count2="0" ng-style="count2 == 0 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }">
                                                <img src="images/icon_Purchases Unused.png" width="20px" height="20px" style="vertical-align:bottom;text-decoration:none" /> <span style="vertical-align:bottom;font-size:11px">File Application</span>  <span class="caret"></span>
                                            </a>

                                            <!-- Dropdown level 1 -->
                                            <div id="dropdown-lvl1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <ul class="nav navbar-nav" style="background-color:#616161;color:white">
                                                        <li change-background3 count2="21" ng-style="count22 == 21 ? {'color': 'white' } : { 'color': 'white' }"><a ui-sref="ViewBasketTm" style="text-decoration:underline;"><img ng-show="count22 == '21'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Trademark &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>
                                                        <li change-background3 count2="22" ng-style="count22 == 22 ? {'color': 'white' } : { 'color': 'white' }"><a ui-sref="ViewBasketPt" style="text-decoration:underline"><img ng-show="count22 == '22'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Patent &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>

                                                        <li change-background3 count2="23" ng-style="count22 == 23 ? {'color': 'white' } : { 'color': 'white' }"><a ui-sref="ViewBasketDs" style="text-decoration:underline"> <img ng-show="count22 == '23'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Design &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>


                                                    </ul>
                                                </div>
                                            </div>
                                        </li>

                                        <li ng-show="agentRole.Agent" class="panel panel-default" id="dropdown" ng-style="count2 == 10 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }">
                                            <a data-toggle="collapse" href="#dropdown-lvl3" eat-click style="text-decoration:none" change-background2 count2="10" ng-style="count2 == 10 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }">
                                                <img src="images/icon_Purchases Report.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:11px">Payment Report</span>  <span class="caret"></span>
                                            </a>

                                            <!-- Dropdown level 1 -->
                                            <div id="dropdown-lvl3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <ul class="nav navbar-nav" style="background-color:#616161;color:white">
                                                        <li change-background3 count2="25" ng-style="count22 == 25 ? {'color': 'white' } : { 'color': 'white' }"><a href="#/TrademarkPaymentReport" style="text-decoration:underline;"><img ng-show="count22 == '25'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Trademark &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>
                                                        <li change-background3 count2="26" ng-style="count22 == 26 ? {'color': 'white' } : { 'color': 'white' }"><a href="#/PatentPaymentReport" style="text-decoration:underline"><img ng-show="count22 == '26'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Patent &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>

                                                        <li change-background3 count2="27" ng-style="count22 == 27 ? {'color': 'white' } : { 'color': 'white' }"><a href="#/DesignPaymentReport" style="text-decoration:underline"><img ng-show="count22 == '27'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Design &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>


                                                    </ul>
                                                </div>
                                            </div>
                                        </li>


                                        <li ng-show="agentRole.Agent" class="panel panel-default" id="dropdown" ng-style="count2 == 13 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }">
                                            <a data-toggle="collapse" href="#dropdown-lvl3a" eat-click style="text-decoration:none" change-background2 count2="13" ng-style="count2 == 13 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }">
                                                <img src="images/icon_Status.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:11px">Application Status</span>  <span class="caret"></span>
                                            </a>

                                            <!-- Dropdown level 1 -->
                                            <div id="dropdown-lvl3a" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <ul class="nav navbar-nav" style="background-color:#616161;color:white">
                                                        <li change-background3 count2="28" ng-style="count22 == 28 ? {'color': 'white' } : { 'color': 'white' }"><a href="#/TrademarkStatus" style="text-decoration:underline;"><img ng-show="count22 == '28'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Trademark &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>
                                                        <li change-background3 count2="29" ng-style="count22 == 29 ? {'color': 'white' } : { 'color': 'white' }"><a href="#/PatentStatus" style="text-decoration:underline"><img ng-show="count22 == '29'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Patent &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>

                                                        <li change-background3 count2="30" ng-style="count22 == 30 ? {'color': 'white' } : { 'color': 'white' }"><a href="#/DesignStatus" style="text-decoration:underline"> <img ng-show="count22 == '30'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /><span style="vertical-align:bottom;font-size:10px"> Design &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>


                                                    </ul>
                                                </div>
                                            </div>
                                        </li>

                                        <li ng-show="agentRole.Agent" class="panel panel-default" id="dropdown" ng-style="count2 == 24 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }">
                                            <a data-toggle="collapse" href="#dropdown-lvl3aa" eat-click style="text-decoration:none" change-background2 count2="24" ng-style="count2 == 24 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }">
                                                <img src="images/icons-08.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:11px">Document Management</span>  <span class="caret"></span>
                                            </a>

                                            <!-- Dropdown level 1 -->
                                            <div id="dropdown-lvl3aa" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <ul class="nav navbar-nav" style="background-color:#616161;color:white">
                                                        <li change-background3 count2="24" ng-style="count22 == 32 ? {'color': 'white' } : { 'color': 'white' }"><a href="#/Recordal" style="text-decoration:underline;"><img ng-show="count22 == '32'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Recordal &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>

                                                        <li change-background3 count2="24" ng-style="count22 == 33 ? {'color': 'white' } : { 'color': 'white' }"><a href="#/Certificate" style="text-decoration:underline;"><img ng-show="count22 == '33'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Pay  For Certificate &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>

                                                        <li change-background3 count2="24" ng-style="count22 == 34 ? {'color': 'white' } : { 'color': 'white' }"><a href="#/UploadDoc" style="text-decoration:underline;"><img ng-show="count22 == '34'" src="images/sub-menu selection icon_Purchases Report copy.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:10px"> Update Documents &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a></li>



                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                        <li ng-show="agentRole.Agent"><a ui-sref="home" change-background2 count2="3" ng-style="count2 == 3 ? {'background-color': '#3D3D3D'  } : { 'background-color': '#616161'}"><img src="images/icons-02.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:11px">MailBox</span></a></li>
                                        <li ng-show="agentRole.Agent"><a href="#/UpdateRegistration" change-background2 count2="38" ng-style="count2 == 38 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }"><img src="images/Profile.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:11px">Profile</span></a></li>

                                        <li ng-show="agentRole.Agent"><a href="#/SendMail" change-background2 count2="23" ng-style="count2 == 23 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }"><img src="images/icons-07.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:11px">Contact Us</span></a></li>
                                        <li ng-show="agentRole.Agent"><a ui-sref="PaymentRequery" change-background2 count2="200" ng-style="count2 == 200 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161'}"><img src="images/icons-03.png" width="20px" height="20px" style="vertical-align:bottom;text-decoration:none" /> <span style="vertical-align:bottom;font-size:11px">Requery Payment</span></a></li>
                                        <li ng-show="agentRole.Agent"><a href="#" change-background2 count2="22" ng-style="count2 == 22 ? {'background-color': '#3D3D3D' } : { 'background-color': '#616161' }"><img src="images/icons-06.png" width="20px" height="20px" style="vertical-align:bottom" /> <span style="vertical-align:bottom;font-size:11px">Reports</span></a></li>

                                        <!-- Dropdown-->









                                    </ul>
                                </div><!-- /.navbar-collapse -->
                            </nav>

                        </div>
                    </div>
                </div>
                <div class="col-md-10 content nopadding " >

           
                </div>

            </div>

            <div ng-show=islogout>

                <div class="col-md-12 content  ">

                    <div id="form-views" ui-view>




                    </div>
                </div>

            </div>

        </div>

        <div class="row container-fluid" style="overflow:hidden">





            <footer class="pull-left  navbar-fixed-bottom" style="background-color:#3D3D3D;color:#0FDBA1 ;min-height:40px ">


                <p class="col-md-12">

                    

                    <div class="ff text-center " style="font-size:10px;font-family:Helvetica;">


                        <span class=" ff text-center ">  Einao |  Copyright &COPY; 2015 </span>


                    </div>




                    <div>

                        <div class="row" >
                            <img src="images/IPProLogo.png" height="60px"  style="margin-left:20px" />
                            <img style="display:inline;margin-left:250px"  src="images/footer2.png" />
                        </div>


                    </div>

                </p>
            </footer>

             <form class="form-login" role="form" >
                   <input id="Email" name="Email" type="hidden" runat="server" />
                   <input id="Password" name="Password" type="hidden" runat="server" />

      </form>

        </div>
</body>
</html>
