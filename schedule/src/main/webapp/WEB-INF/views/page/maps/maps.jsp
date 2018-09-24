<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>Material Dashboard by Creative Tim</title>
</head>

<body class="">
  <div class="wrapper ">

    <!--sideBar  -->
	<jsp:include page="../include/iSideBar.jsp"/>
	<!--sideBar  -->

    <div class="main-panel">

    <!-- Head  -->
 	<jsp:include page="../include/iHead.jsp"/>
 	<!-- Head  -->

      <!-- content -->
      <div id="map"></div>
      <!-- content -->
      
    </div>
  </div>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initGoogleMaps();
    });
  </script>
  
</body>
</html>