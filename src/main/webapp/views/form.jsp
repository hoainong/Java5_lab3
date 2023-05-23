<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bai 1</title>
    <%@include file="/common/linkcss.jsp"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/common/css/style.css">
</head>
<body>
    <section class="h-100 bg-dark">
        <div class="container py-5 h-100 w-75">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col">
                    <div class="card card-registration my-4">
                        <div class="row g-0">
                            <div class="col-xl-6 d-none d-xl-block">
                                <img
                                    src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                                    alt="Sample photo" class="img-fluid"
                                    style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                            </div>

                            <div class="col-xl-6">
                                <form:form action="/student/save" method="post" modelAttribute="student"
                                    enctype="multipart/form-data">
                                    <div class="card-body p-md-5 text-black">
                                        <h3 class="mb-5 text-uppercase">Student registration form</h3>

                                        <div class="form-outline mb-4">
                                            <form:input path="fullname" id="form3Example8"
                                                class="form-control form-control-lg" />
                                            <form:errors path="fullname" cssClass="form-text text-danger" />
                                            <label class="form-label" for="form3Example8">Full Name</label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <form:input path="address" id="form3Example8"
                                                class="form-control form-control-lg" />
                                            <form:errors path="address" cssClass="form-text text-danger" />
                                            <label class="form-label" for="form3Example8">Address</label>
                                        </div>

                                        <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
                                            <h6 class="mb-0 me-4">Gender: </h6>
                                           
                                            <form:radiobuttons path="gender" delimiter="  "
                                                items="${genders}" />
                                              <form:errors path="gender" cssClass="form-text text-danger"></form:errors>
                                        </div>
										
                                                
                                        <div class="row">
                                            <div class="col-md-8 mb-4">
                                                <form:select path="city"
                                                    class="form-select form-select-lg mb-3">
                                                    <form:option value="NONE" label="Select" />
                                                    <form:options items="${listCity}" />
                                                </form:select>
                                                <br>
                                                <form:errors path="city" cssClass="form-text text-danger"></form:errors>
                                            </div>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <form:input path="pincode" id="form3Example90"
                                                class="form-control form-control-lg" />
                                            <label class="form-label" for="form3Example90">Pincode</label>
                                            <form:errors path="pincode" cssClass="form-text text-danger" />
                                        </div>

                                        <div class="form-outline mb-4">
                                            <form:input path="course" id="form3Example99"
                                                class="form-control form-control-lg" />
                                            <label class="form-label" for="form3Example99">Course</label>
                                            <form:errors path="course" cssClass="form-text text-danger" />
                                        </div>

                                        <div class="form-outline mb-4">
                                            <form:input path="email" id="form3Example97"
                                                class="form-control form-control-lg" />
                                            <label class="form-label" for="form3Example97">Email ID</label>
                                            <form:errors path="email" cssClass="form-text text-danger" />
                                        </div>

                                        <div class="form-outline mb-4">
                                            <label class="ms-3 me-3">Hobbies: </label>
                                            <form:checkboxes path="hobbies" delimiter="    "
                                                items="${listHobbies}" class="form-check-input"
                                                name="hobbies" />
                                                <br>
                                                <form:errors path="hobbies" cssClass="form-text text-danger"></form:errors>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input type="file" name="image"
                                                class="form-control form-control-lg custom-file-input" />
                                        </div>

                                        <div class="d-flex justify-content-end pt-3">
                                            <a type="button" href="/index"
                                                class="btn btn-light btn-lg">Reset all</a>
                                            <button type="submit"
                                                class="btn btn-warning btn-lg ms-2">Submit
                                                form</button>
                                        </div>

                                        <h5 class="card-title">-!!!!: ${message}</h5>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@include file="/common/linkjs.jsp"%>
</body>
</html>
