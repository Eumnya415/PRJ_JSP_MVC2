
package com.example.jspmvc2.controller;

import com.example.jspmvc2.dao.MVCBoardDAO;
import com.example.jspmvc2.dto.MVCBoardDTO;
import com.example.jspmvc2.util.Encrypt;
import com.example.jspmvc2.util.FileUtil;
import com.example.jspmvc2.util.JSFunction;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
        name = "WriteController",
        value = {"/mvcboard/write.do"}
)
@MultipartConfig(
        maxFileSize = 1048576L,
        maxRequestSize = 10485760L
)
public class WriteController extends HttpServlet {
    private MVCBoardDAO dao = new MVCBoardDAO();

    public WriteController() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/14MVCBoard/Write.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String saveDirectory = request.getServletContext().getRealPath("/Uploads");
        String originalFileName = "";

        try {
            originalFileName = FileUtil.uploadFile(request, saveDirectory);
        } catch (Exception var7) {
            System.out.println("파일 업로드 실패");
            JSFunction.alertLocation(response, "파일 업로드 오류 발생", request.getContextPath() + "/mvcboard/write.do");
            return;
        }

        MVCBoardDTO dto = new MVCBoardDTO();
        dto.setName(request.getParameter("name"));
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        dto.setPass(Encrypt.getEncrypt(request.getParameter("pass")));
        if (!originalFileName.isEmpty()) {
            String savedFileName = FileUtil.renameFile(saveDirectory, originalFileName);
            dto.setOfile(originalFileName);
            dto.setSfile(savedFileName);
        }

        int result = this.dao.insertWrite(dto);
        if (result == 1) {
            response.sendRedirect(request.getContextPath() + "/mvcboard/list.do");
        } else {
            System.out.println("글쓰기 실패");
            JSFunction.alertLocation(response, "글쓰기에 실패했습니다.", request.getContextPath() + "/mvcboard/write.do");
        }

    }
}