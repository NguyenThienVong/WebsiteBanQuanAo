<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="layoutadmin/layout1.jsp"/>
<title>V-Shopper</title>
</head>
<body>
    <div class="dashboard-main-wrapper">
 
       <jsp:include page="layoutadmin/layout2.jsp"/>
        <div class="dashboard-wrapper">
          <!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row" >
			<div class="col-6 offset-3">
				<form:form name="qryform" id="qryform" action="/admin/order"
					class="px-3" modelAttribute="item">
					<div class="card" >
						<div class="card-header">
							<h3 class="alert alert-info">
								Order Control <a href="/admin/order"
									class="btn btn-success float-right">Order List</a>
							</h3>
							<div class="bg-success text-light px-3">${message }</div>
						</div>
						<div class="card-body">
							<div class="form-group">
								<form:input type="text" class="form-control" id="id" disabled="true" 
									path="id" aria-describedby="idHid" placeholder="id" />
								<small id="idHid" class="form-text text-muted">Order ID is invalid</small>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" id="username" disabled="true" 
									path="account.username" aria-describedby="usernameHid"
									placeholder="Username" />
								<small id="usernameHid" class="form-text text-muted">Username
									is invalid</small>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" id="fullname" disabled="true" 
									path="account.fullname" aria-describedby="fullnameHid"
									placeholder="Fullname" />
								<small id="fullnameHid" class="form-text text-muted">Fullname
									is invalid</small>
							</div>
							<div class="form-group">
								<form:input type="date" class="form-control" id="createDate"
									path="createDate" aria-describedby="createDateHid" disabled="true" 
									placeholder="Create Date" />
								<small id="createDateHid" class="form-text text-muted">Create Date
									is invalid</small>
							</div>

							<div class="form-group">
								<form:input type="text" class="form-control" id="address"
									path="address" aria-describedby="addressHid" placeholder="Address" />
								<small id="addressHid" class="form-text text-muted">Address
									is invalid</small>
							</div>
						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-primary "
								formaction="/admin/order/create">Insert</button>
							<button type="submit" class="btn btn-warning"
								formaction="/admin/order/update">Update</button>
							<button type="submit" class="btn btn-danger"
								formaction="/admin/order/delete/${item.id}">Delete</button>
							<button type="submit" class="btn btn-success"
								formaction="/admin/orderControl">Reset</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
           
        </div>

</body>
</html>