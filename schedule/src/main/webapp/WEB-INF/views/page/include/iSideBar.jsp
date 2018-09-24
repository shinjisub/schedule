  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./resources/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./resources/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" /><!--     Fonts and icons     -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"><!--     Fonts and icons     -->
  <link href="./resources/css/material-dashboard.css?v=2.1.0" rel="stylesheet" /><!-- CSS Files -->
  <link href="./resources/demo/demo.css" rel="stylesheet" />  <!-- CSS Just for demo purpose, don't include it in your project -->
  <script src="./resources/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="./resources/js/core/popper.min.js" type="text/javascript"></script>
  <script src="./resources/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="./resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script><!--  Google Maps Plugin    -->
  <script src="./resources/js/plugins/chartist.min.js"></script><!-- Chartist JS -->
  <script src="./resources/js/plugins/bootstrap-notify.js"></script><!--  Notifications Plugin    -->
  <script src="./resources/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script><!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="./resources/demo/demo.js"></script><!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="./resources/js/ws/sockjs.min.js" type="text/javascript"></script>
  <!--
 	웹소켓 통신을위한 문장
   <script type="text/javascript">
    var wsUri = "ws://localhost:8090/main";

    function send_message() {
        websocket = new WebSocket(wsUri);

        websocket.onopen = function(evt) { onOpen(evt); };
        websocket.onmessage = function(evt) { onMessage(evt); };
        websocket.onerror = function(evt) { onError(evt); };
    }
    function onOpen(evt) { websocket.send("${nick}"); }
    function onMessage(evt) { $('#count').append(evt.data);}
    function onError(evt) {}

    $(document).ready(function(){ send_message(); });
	</script> -->
	
<div class="sidebar" data-color="purple" data-background-color="white" data-image="./resources/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="#" class="simple-text logo-normal">
          Creative Tim
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active  ">
            <a class="nav-link" href="./main">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./userProfile">
              <i class="material-icons">person</i>
              <p>User Profile</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./table">
              <i class="material-icons">content_paste</i>
              <p>Table List</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./typography">
              <i class="material-icons">library_books</i>
              <p>Typography</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./icons">
              <i class="material-icons">bubble_chart</i>
              <p>Icons</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./maps">
              <i class="material-icons">location_ons</i>
              <p>Maps</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./notifications">
              <i class="material-icons">notifications</i>
              <p>Notifications</p>
            </a>
          </li>
          <!-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
        </ul>
      </div>
</div>