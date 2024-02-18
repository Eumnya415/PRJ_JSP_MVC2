# 💻 Mybatis 기반 JSP 프로젝트 : MVC2 구현
- MyBatis / Servlet&JSP : 게시판 CRUD 구현
- 개인 프로젝트


### INDEX

01. [프로젝트 소개](#-프로젝트-소개)
02. [개발 기간](#-개발-기간)
03. [개발 상세](#-개발-상세)
04. [구현 기능 소개](#-구현-기능-소개)
05. [개발 환경](#-개발-환경)
06. [파일 구조](#-파일-구조)
07. [회고](#-회고)   

<br>

## 🔎 프로젝트 소개
* MyBatis 기반 JSP MVC2 모델 게시판 제작
* MyBatis, JSP, MVC2, CRUD의 이해

<br>

## 🔎 개발 기간
* 전체 개발 기간 : 2023.11.13. - 2023.11.24.

<br>

## 🔎 개발 상세
### 주요 업무
* 프로젝트 기획 및 설계, 백엔드&프론트엔드 개발, 보안 기능 구현, 페이징 처리
<br>

### 상세 역할
* 프로젝트 기획 및 설계 : 게시판의 기능과 구조 정의, 이를 기반으로 DB 스키마 설계
* 백엔드 개발 : MyBatis를 이용하여 MVC2 타입의 게시판 구현. MyBatis를 이용하여 DB와 자바 서버 간 연동 처리
* 프론트엔드 개발 : HTML5, CSS3, JS를 이용하여 게시판의 사용자 인터페이스 구현
* 보안 기능 구현 : 비밀번호 암호화 시스템을 구현하여 사용자의 비밀번호를 안전하게 구현. 비밀번호 검증 시스템을 통해 사용자의 비밀번호가 올바른지 확인
* 페이징 처리 : 사용자가 게시글을 쉽게 찾을 수 있도록 페이징 처리 구현
<br>

## 🔎 구현 기능 소개

### 📌 파일 첨부형 게시판 - 목록 보기 (List)
![image](https://github.com/Eumnya415/PRJ_JSP_MVC2/assets/145963611/a8633050-b8e7-4194-bc22-696dfb67acd0)

### 구현 기능
* Header : 네비게이션 바 / Footer <br>

* 페이징 기능 : 10개 게시물 당 1페이지 적용 <br>
![image](https://github.com/Eumnya415/PRJ_JSP_MVC2/assets/145963611/6a484ce5-1eeb-4b85-8f1b-7e15090e14f9) <br>
* 검색 기능 : 제목이나 내용에 들어가는 키워드 검색 시 표시 <br>
![image](https://github.com/Eumnya415/PRJ_JSP_MVC2/assets/145963611/12366ab9-7d04-434a-bac4-f400d16c91a0) <br><br>


### 📌 파일 첨부형 게시판 - 글쓰기 (Write)
![image](https://github.com/Eumnya415/PRJ_JSP_MVC2/assets/145963611/0ca3c59d-c85b-4755-9985-bead55b2921f)

### 구현 기능
* 파일 첨부 기능
  - 업로드 가능한 이미지 확장자 : png, gif, jpg, jpeg

* 초기화, 목록 바로가기 기능 연동

* 비밀번호 암호화 : SHA-256 알고리즘과 솔트(salt)를 사용한 암호화
<br>

### 📌 파일 첨부형 게시판 - 상세 보기 (View)
![image](https://github.com/Eumnya415/PRJ_JSP_MVC2/assets/145963611/c6f93292-b4ec-4236-a5dc-015a7cc26903)

* 이미지 조회 기능 : 움직이는 gif 이미지도 조회 가능 <br>
![Screenshot 2024-02-19 at 05 18 32](https://github.com/Eumnya415/Eumnya415/assets/145963611/7566901b-c0bd-469d-8584-81c73db1000d) <br>

* 이미지 다운로드 기능

* 수정하기, 삭제하기, 목록 바로가기 기능 연동

<br>


### 📌 파일 첨부형 게시판 - 수정하기 (Edit)
* 수정하기, 삭제하기 기능 전 비밀번호 검증
![image](https://github.com/Eumnya415/PRJ_JSP_MVC2/assets/145963611/7e96e518-e5bb-4609-8132-782af8099664) <br>

* 비밀번호 검증 실패 시 alert 팝업 표시 <br>
![image](https://github.com/Eumnya415/PRJ_JSP_MVC2/assets/145963611/82d34e58-7c6d-42a8-b258-cebaf8134782)

<br>

### 📌 파일 첨부형 게시판 - 삭제하기 (Delete)
* 삭제 시 alert 팝업 표시 <br>
![image](https://github.com/Eumnya415/PRJ_JSP_MVC2/assets/145963611/1add9347-e87b-4da1-9481-108185ca9d8d)

<br>

## 💊 개발 환경
### Tech Skills
<img src="https://img.shields.io/badge/JAVA-C01818?style=for-the-badge&logo=javat&logoColor=white" /> <img src="https://img.shields.io/badge/JSP-de6c1e?style=for-the-badge&logo=jsp&logoColor=white"> <img src="https://img.shields.io/badge/Servlet-e42c2e?style=for-the-badge&logo=servlet&logoColor=whit"> <br>
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"> <img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white"> <img src="https://img.shields.io/badge/Mybatis-000000?style=for-the-badge&logo=Fluentd&logoColor=fff"/> <br>
<img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=fff"/> <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=fff"/> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=fff"/> 

### Tools
<img src="https://img.shields.io/badge/IntelliJIDEA-000000?style=for-the-badge&logo=intellijidea&logoColor=white"> <img src="https://img.shields.io/badge/DBeaver-362822?style=for-the-badge&logo=dbeaver&logoColor=white">

### And So On
<img src="https://img.shields.io/badge/SHA256+SALT-ecd31d?style=for-the-badge&logo=sha256&logoColor=000"/> <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=fff"/>

<br>

* 사용언어 : JAVA, HTML5, CSS3, JS
* 개발환경 : MySQL8, MariaDB
* 라이브러리/프레임워크 : MyBatis, Servlet&JSP

<br>

## 🔎 파일 구조

<details><summary>파일 구조 보기</summary>
📦src <br>
 ┗ 📂main <br>
 ┃ ┣ 📂java <br>
 ┃ ┃ ┗ 📂com <br>
 ┃ ┃ ┃ ┗ 📂example <br>
 ┃ ┃ ┃ ┃ ┗ 📂jspmvc2 <br>
 ┃ ┃ ┃ ┃ ┃ ┣ 📂controller <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DownloadController.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜EditController.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ListController.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PassController.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TestServlet.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ViewController.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜WriteController.java <br>
 ┃ ┃ ┃ ┃ ┃ ┣ 📂dao <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MVCBoardDAO.java <br>
 ┃ ┃ ┃ ┃ ┃ ┣ 📂dto <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MVCBoardDTO.java <br>
 ┃ ┃ ┃ ┃ ┃ ┣ 📂filter <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜UTF8CharacterEncodingFilter.java <br>
 ┃ ┃ ┃ ┃ ┃ ┣ 📂mybatis <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂config <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MyBatisConfig.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂factory <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MyBatisSessionFactory.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂mapper <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MVCBoardMapper.java <br>
 ┃ ┃ ┃ ┃ ┃ ┣ 📂paging <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜BoardPage.java <br>
 ┃ ┃ ┃ ┃ ┃ ┗ 📂util <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Encrypt.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FileUtil.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜JSFunction.java <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜Test.java <br>
 ┃ ┣ 📂resources <br>
 ┃ ┃ ┗ 📂com <br>
 ┃ ┃ ┃ ┗ 📂example <br>
 ┃ ┃ ┃ ┃ ┗ 📂jspmvc2 <br>
 ┃ ┃ ┃ ┃ ┃ ┗ 📂mybatis <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂config <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜mybatis-config.xml <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂mapper <br>
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MVCBoardMapper.xml <br>
 ┃ ┗ 📂webapp <br>
 ┃ ┃ ┣ 📂14MVCBoard <br>
 ┃ ┃ ┃ ┣ 📜Default.jsp <br>
 ┃ ┃ ┃ ┣ 📜Edit.jsp <br>
 ┃ ┃ ┃ ┣ 📜List.jsp <br>
 ┃ ┃ ┃ ┣ 📜Pass.jsp <br>
 ┃ ┃ ┃ ┣ 📜View.jsp <br>
 ┃ ┃ ┃ ┗ 📜Write.jsp <br>
 ┃ ┃ ┣ 📂for-insert-data <br>
 ┃ ┃ ┃ ┗ 📜ForInsert.jsp <br>
 ┃ ┃ ┣ 📂resources <br>
 ┃ ┃ ┃ ┣ 📂css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.min.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.min.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.rtl.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.rtl.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.rtl.min.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.rtl.min.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.min.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.min.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.rtl.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.rtl.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.rtl.min.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.rtl.min.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.min.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.min.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.rtl.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.rtl.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.rtl.min.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.rtl.min.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.min.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.min.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.rtl.css <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.rtl.css.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.rtl.min.css <br>
 ┃ ┃ ┃ ┃ ┗ 📜bootstrap.rtl.min.css.map <br>
 ┃ ┃ ┃ ┗ 📂js <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.bundle.js <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.bundle.js.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.bundle.min.js <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.bundle.min.js.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.esm.js <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.esm.js.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.esm.min.js <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.esm.min.js.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.js <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.js.map <br>
 ┃ ┃ ┃ ┃ ┣ 📜bootstrap.min.js <br>
 ┃ ┃ ┃ ┃ ┗ 📜bootstrap.min.js.map <br>
 ┃ ┃ ┣ 📂test <br>
 ┃ ┃ ┃ ┣ 📜test.jsp <br>
 ┃ ┃ ┃ ┗ 📜test1.jsp <br>
 ┃ ┃ ┣ 📂txt <br>
 ┃ ┃ ┃ ┗ 📜ajax_info.txt <br>
 ┃ ┃ ┣ 📂WEB-INF <br>
 ┃ ┃ ┃ ┣ 📂lib <br>
 ┃ ┃ ┃ ┃ ┣ 📜jstl-1.2.jar <br>
 ┃ ┃ ┃ ┃ ┣ 📜logback-classic-1.2.3.jar <br>
 ┃ ┃ ┃ ┃ ┣ 📜logback-core-1.2.3.jar <br>
 ┃ ┃ ┃ ┃ ┣ 📜lombok-1.18.28.jar <br>
 ┃ ┃ ┃ ┃ ┣ 📜mariadb-java-client-3.2.0.jar <br>
 ┃ ┃ ┃ ┃ ┣ 📜mybatis-3.5.14.jar <br>
 ┃ ┃ ┃ ┃ ┣ 📜slf4j-api-1.7.36.jar <br>
 ┃ ┃ ┃ ┃ ┣ 📜taglibs-standard-compat-1.2.5.jar <br>
 ┃ ┃ ┃ ┃ ┣ 📜taglibs-standard-impl-1.2.5.jar <br>
 ┃ ┃ ┃ ┃ ┣ 📜taglibs-standard-jstlel-1.2.5.jar <br>
 ┃ ┃ ┃ ┃ ┗ 📜taglibs-standard-spec-1.2.5.jar <br>
 ┃ ┃ ┃ ┗ 📜web.xml <br>
 ┃ ┃ ┗ 📜index.jsp <br>
</details>

<br>
 
## 🔎 회고

> 웹 개발의 전체적인 흐름을 이해하고, 실제로 웹 애플리케이션을 개발해보는 경험이었다. 특히 MyBatis를 활용한 DB연동, 비밀번호 암호화 및 검증 시스템 구현, 페이징 처리 등 복잡한 기능을 직접 구현해보면서 이론에서만 알고 있던 개념들을 실제로 적용해보는 기회를 가졌다. MyBatis로 DB와 연동하면서 아직 기능이 익숙치 않아서 어려움이 있었지만, 공식 문서를 반복해서 읽고 문제를 해결하는 과정에서 MyBatis 의 동작 방식과 사용 방법을 점차 이해할 수 있었다. 이러한 경험을 통해 웹 개발에 필요한 기술적 역량을 키울 수 있었으며, 사용자 중심의 시스템 설계와 구현의 중요성을 깨달았다. 또한 복잡한 기능을 구현하는 과정에서 문제 해결 능력과 창의적 사고력을 기를 수 있었다. 실제 프로젝트를 통한 경험은 다양한 상황에서 유연하게 대처하는 능력을 키우는 데 큰 도움이 된 것 같다.
