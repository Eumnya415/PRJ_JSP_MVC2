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
            <a class="navbar-brand">View</a>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </nav>
</head>
<body>


<h4 style="margin: 20px auto; width: 90%; max-width: 1200px;">파일 첨부형 게시판 - 상세 보기(View)</h4>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<table style="width: 90%; max-width: 1200px; border-collapse: collapse; margin: 0 auto 20px auto;">
    <colgroup>
        <col width="15%"/> <col width="35%"/>
        <col width="15%"/> <col width="35%"/>
    </colgroup>

    <!-- 게시글 정보 -->
    <tr>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">번호</td> <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">${ dto.idx }</td>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">작성자</td> <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">${ dto.name }</td>
    </tr>
    <tr>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">작성일</td> <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">${ dto.postdate }</td>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">조회수</td> <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">${ dto.visitcount }</td>
    </tr>
    <tr>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">제목</td>
        <td colspan="3" style="padding: 10px; border: 1px solid #ddd; text-align: center;">${ dto.title }</td>
    </tr>
    <tr>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">내용</td>
        <td colspan="3" height="100" style="padding: 10px; border: 1px solid #ddd; text-align: center;">
            ${ dto.content }
            <c:if test="${ not empty dto.ofile and isImage eq true }">
                <br><img src="../Uploads/${ dto.sfile }" style="max-width:100%;"/>
            </c:if>
        </td>
    </tr>
    <!-- 첨부파일 -->
    <tr>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">첨부파일</td>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">
            <c:if test="${ not empty dto.ofile }">
                ${ dto.ofile }
                <a href="../mvcboard/download.do?ofile=${ dto.ofile }&sfile=${ dto.sfile }&idx=${ dto.idx }">
                    [다운로드]
                </a>
            </c:if>
        </td>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">다운로드수</td>
        <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">${ dto.downcount }</td>
    </tr>

    <!-- 하단 메뉴(버튼) -->
    <br>
    <tr>
        <td colspan="4" align="center">
            <button type="button" style="background-color: #4CAF50; color: white; padding: 10px 20px; margin: 5px; border: none; border-radius: 4px; cursor: pointer;" onclick="location.href='../mvcboard/pass.do?mode=edit&idx=${ param.idx }';">
                수정하기
            </button>
            <button type="button" style="background-color: #4CAF50; color: white; padding: 10px 20px; margin: 5px; border: none; border-radius: 4px; cursor: pointer;" onclick="location.href='../mvcboard/pass.do?mode=delete&idx=${ param.idx }';">
                삭제하기
            </button>
            <button type="button" style="background-color: #4CAF50; color: white; padding: 10px 20px; margin: 5px; border: none; border-radius: 4px; cursor: pointer;" onclick="location.href='../mvcboard/list.do';">
                목록 바로가기
            </button>
        </td>
    </tr>
</table>


</body>
</html>
