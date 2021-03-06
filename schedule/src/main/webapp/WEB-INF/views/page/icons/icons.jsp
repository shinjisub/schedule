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
      <div class="content">
        <div class="container-fluid">
          <div class="container-fluid">
            <div class="card card-plain">
              <div class="card-header card-header-primary">
                <h4 class="card-title">Material Design Icons</h4>
                <p class="card-category">Handcrafted by our friends from
                  <a target="_blank" href="https://design.google.com/icons/">Google</a>
                </p>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="card-body">
                    <div class="iframe-container d-none d-lg-block">
                      <iframe src="https://design.google.com/icons/">
                        <p>Your browser does not support iframes.</p>
                      </iframe>
                    </div>
                    <div class="col-md-12 d-none d-sm-block d-md-block d-lg-none d-block d-sm-none text-center ml-auto mr-auto">
                      <h5>The icons are visible on Desktop mode inside an iframe. Since the iframe is not working on Mobile and Tablets please visit the icons on their original page on Google. Check the
                        <a href="https://design.google.com/icons/" target="_blank">Material Icons</a>
                      </h5>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- content -->

	  <!-- footer -->
	  <jsp:include page="../include/iFooter.jsp"/>
	  <!-- footer -->
	        
    </div>
  </div>
  
</body>
</html>