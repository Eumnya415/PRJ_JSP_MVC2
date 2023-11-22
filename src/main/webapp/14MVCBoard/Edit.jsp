<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>파일 첨부형 게시판</title>
    <script type="text/javascript">
        function validateForm(form) {
            if (form.name.value == "") {
                alert("작성자를 입력하세요.");
                form.name.focus();
                return false;
            }
            if (form.title.value == "") {
                alert("제목을 입력하세요.");
                form.title.focus();
                return false;
            }
            if (form.content.value == "") {
                alert("내용을 입력하세요.");
                form.content.focus();
                return false;
            }
        }
    </script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand">Edit</a>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </nav>
</head>

<h4 style="margin: 20px auto; width: 90%; max-width: 1200px;">파일 첨부형 게시판 - 수정하기 (Edit)</h4>

<form name="writeFrm" method="post" enctype="multipart/form-data" action="../mvcboard/edit.do" onsubmit="return validateForm(this);">
    <input type="hidden" name="idx" value="${ dto.idx }"/>
    <input type="hidden" name="prevOfile" value="${ dto.ofile }" />
    <input type="hidden" name="prevSfile" value="${ dto.sfile }" />

    <table style="width: 90%; max-width: 1200px; border-collapse: collapse; margin: 0 auto 20px auto;">
        <colgroup>
            <col width="15%"/> <col width="35%"/>
        </colgroup>

        <tr>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">작성자</td>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">
                <input type="text" name="name" style="width:150px;" value="${ dto.name }" />
            </td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">제목</td>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">
                <input type="text" name="title" style="width:90%;" value="${ dto.title }" />
            </td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">내용</td>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">
                <textarea name="content" style="width:90%;height:100px;">${ dto.content }</textarea>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">첨부 파일</td>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">
                <input type="file" name="ofile" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="submit" style="background-color: #4CAF50; color: white; padding: 10px 20px; margin: 5px; border: none; border-radius: 4px; cursor: pointer;">작성 완료</button>
                <button type="reset" style="background-color: #4CAF50; color: white; padding: 10px 20px; margin: 5px; border: none; border-radius: 4px; cursor: pointer;">RESET</button>
                <button type="button" style="background-color: #4CAF50; color: white; padding: 10px 20px; margin: 5px; border: none; border-radius: 4px; cursor: pointer;" onclick="location.href='../mvcboard/list.do';">
                    목록 바로가기
                </button>
            </td>
        </tr>
    </table>
</form>

<footer class="footer mt-auto" style="position: fixed; bottom: 0; width: 100%; background-color: #b3b3b3; padding: 10px 0;">
    <div class="container text-center">
        <span class="text-muted">MyBatis & MVC2 Board</span>
    </div>
</footer>

</body>
</html>