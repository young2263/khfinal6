<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.login_nav ul{
		list-style : none;
	}
	
	.login_nav a {
		text-decoration : none;
	}
</style>
</head>
<body>
 <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@loanplan.company</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-0000-0000</a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="/loanplan">
                <img alt="" src="${pageContext.request.contextPath}/resources/img/loanplan.png" width="200px" height="80px">
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a id="recommendnavi" class="nav-link" id="nav-link1" href="${pageContext.request.contextPath}/recommendloan/recommendloanlist">?????? ??????</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/calview">?????????</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/question/questionView">????????????</a>
                        </li>
                    </ul>
                </div>
                    <div class="nav-icon d-none d-lg-inline login_nav" id="loginBox" >
                       	<ul>
                 <li>
					<c:if test="${member != null && member.m_id == 'admin'}">
						<a href="admin">????????? ??????</a>
						<a href="/loanplan/logout">????????????</a>
					</c:if>
				</li>
				<li>
					<c:if test="${member != null && member.m_id != 'admin'}">
						<a href="/loanplan/myPage">??? ??????</a>
						<a href="/loanplan/logout">????????????</a>
					</c:if>
				</li>
				<li>			
					<c:if test="${member == null}">
						<a href="/loanplan/login.do">?????????</a>
						<a href="/loanplan/register">????????????</a>
					</c:if>
				</li>
				<li>
					<c:if test="${member != null  && member.m_id != 'admin'}">
						<p>${member.m_id}??? ???????????????.</p>
					</c:if>
				</li>
				
			</ul>
                    </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
		<div></div>
        </div>
    </nav>
    <div class="showNavi">
        <a href="${pageContext.request.contextPath}/recommendloan/recommendloanlist">??????????????????</a>
        <a href="${pageContext.request.contextPath}/recommendloan/recommendloancreditlist">??????????????????</a>
        <a href="${pageContext.request.contextPath}/recommendloan/recommendloancharterlist">??????????????????</a>
    </div>

    <script>
        $(".showNavi").hide();
        $("#recommendnavi").hover(function(){
            $(".showNavi").slideDown(500);
        })
        $(".showNavi").hover(function(){
            $(".showNavi").slideDown(500);
        },function(){
            $(".showNavi").slideUp(500);
        })
    </script>
</body>
</html>