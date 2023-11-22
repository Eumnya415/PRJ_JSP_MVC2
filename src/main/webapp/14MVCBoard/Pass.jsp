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
            if (form.pass.value == "") {
                alert("비밀번호를 입력하세요.");
                form.pass.focus();
                return false;
            }
        }
    </script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand">Pass</a>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </nav>
</head>
<body>

<h4 style="margin: 20px auto; width: 90%; max-width: 1200px;">파일 첨부형 게시판 - 비밀번호 검증(Pass)</h4>

<form name="writeFrm" method="post" action="../mvcboard/pass.do" onsubmit="return validateForm(this);">
    <input type="hidden" name="idx" value="${ param.idx }" />
    <input type="hidden" name="mode" value="${ param.mode }" />

    <table style="width: 90%; max-width: 1200px; border-collapse: collapse; margin: 0 auto 20px auto;">
        <colgroup>
            <col width="15%"/> <col width="35%"/>
        </colgroup>

        <tr>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center; font-weight: bold; background-color: #f2f2f2;">비밀번호</td>
            <td style="padding: 10px; border: 1px solid #ddd; text-align: center;">
                <input type="password" name="pass" style="width:100px;" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="submit" style="background-color: #4CAF50; color: white; padding: 10px 20px; margin: 5px; border: none; border-radius: 4px; cursor: pointer;">검증하기</button>
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