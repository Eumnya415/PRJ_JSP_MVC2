<%@ page import="com.example.jspmvc2.paging.BoardPage" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>파일 첨부형 게시판</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand">List</a>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </nav>



    <style>
        body {
            margin: 0;
            min-height: 100vh;
            padding: 0;
            box-sizing: border-box;
        }
        h4 {
            margin: 20px auto;
            width: 95%;
            max-width: 1200px;
        }
        table {
            width: 95%;
            max-width: 1200px;
            border-collapse: collapse;
            margin: 0 auto 20px auto;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .search-form {
            justify-content: center;
            margin-bottom: 20px;
            width: 95%;
            max-width: 1200px;
            margin: 0 auto;
        }
        .search-form select {
            width: 15%;
            padding: 5px;
        }
        .search-form input[type="text"] {
            width: 40%;
            padding: 5px;
        }
        .search-form input[type="submit"] {
            width: 15%;
            background-color: #4CAF50;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .search-form input[type="submit"]:hover {
            background-color: #45a049;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 0 auto;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: block;
            width: 150px;
        }
        button:hover {
            background-color: #45a049;
        }
        a {
            color: black;
            text-decoration: none;
        }
        a:hover {
            color: grey;
        }
    </style>




</head>
<body>

<h4>파일 첨부형 게시판 - 목록 보기(List)</h4>

<!-- 검색 폼 -->
<form method="get" class="search-form">
    <table border="1">
        <tr>
            <td align="center">
                <select name="searchField">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                </select>
                <input type="text" name="searchWord" />
                <input type="submit" value="검색하기" />
            </td>
        </tr>
    </table>
</form>

<!-- 목록 테이블 -->
<table border="1">
    <tr>
        <th width="10%">번호</th>
        <th width="*">제목</th>
        <th width="15%">작성자</th>
        <th width="10%">조회수</th>
        <th width="15%">작성일</th>
        <th width="8%">첨부</th>
    </tr>

    <c:choose>
        <c:when test="${ empty boardLists }">  <!-- 게시물이 없을 때 -->
            <tr>
                <td colspan="6" align="center">
                    등록된 게시물 없! 음!
                </td>
            </tr>
        </c:when>
        <c:otherwise>  <!-- 게시물이 있을 때 -->
            <c:forEach items="${ boardLists }" var="row" varStatus="loop">
                <tr align="center">
                    <td>  <!-- 번호 -->
                            ${ map.totalCount - (((map.pageNum-1) * map.pageSize) + loop.index)}
                    </td>
                    <td align="left">  <!-- 제목(링크) -->
                        <a href="../mvcboard/view.do?idx=${ row.idx }">${ row.title }</a>
                    </td>
                    <td>${ row.name }</td>  <!-- 작성자 -->
                    <td>${ row.visitcount }</td>  <!-- 조회수 -->
                    <td>${ row.postdate }</td>  <!-- 작성일 -->
                    <td>  <!-- 첨부 파일 -->
                        <c:if test="${ not empty row.ofile }">
                            <a href="../mvcboard/download.do?ofile=${ row.ofile }&sfile=${ row.sfile }&idx=${ row.idx }">[Down]</a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </c:otherwise>
    </c:choose>
</table>

<!-- 하단 메뉴(바로가기, 글쓰기) -->
<table border="1" width="90%">
    <tr align="center">
        <td>
            ${ map.pagingImg }
        </td>
        <td width="100"><button type="button"
                                onclick="location.href='../mvcboard/write.do';">글쓰기</button></td>
    </tr>
</table>

<footer class="footer mt-auto" style="position: fixed; bottom: 0; width: 100%; background-color: #b3b3b3; padding: 10px 0;">
    <div class="container text-center">
        <span class="text-muted">MyBatis & MVC2 Board</span>
    </div>
</footer>
</body>
</html>