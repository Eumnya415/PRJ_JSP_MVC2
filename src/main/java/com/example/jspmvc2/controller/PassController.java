
package com.example.jspmvc2.controller;

import com.example.jspmvc2.dao.MVCBoardDAO;
import com.example.jspmvc2.dto.MVCBoardDTO;
import com.example.jspmvc2.util.FileUtil;
import com.example.jspmvc2.util.JSFunction;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/mvcboard/pass.do"})
public class PassController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public PassController() {
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("mode", req.getParameter("mode"));
        req.getRequestDispatcher("/14MVCBoard/Pass.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idx = req.getParameter("idx");
        String mode = req.getParameter("mode");
        String pass = req.getParameter("pass");
        MVCBoardDAO dao = new MVCBoardDAO();
        boolean confirmed = dao.confirmPassword(pass, idx);
        if (confirmed) {
            if (mode.equals("edit")) {
                HttpSession session = req.getSession();
                session.setAttribute("pass", pass);
                resp.sendRedirect("../mvcboard/edit.do?idx=" + idx);
            } else if (mode.equals("delete")) {
                dao = new MVCBoardDAO();
                MVCBoardDTO dto = dao.selectView(idx);
                int result = dao.deletePost(idx);
                if (result == 1) {
                    String saveFileName = dto.getSfile();
                    FileUtil.deleteFile(req, "/Uploads", saveFileName);
                }

                JSFunction.alertLocation(resp, "삭제되었습니다.", "../mvcboard/list.do");
            }
        } else {
            JSFunction.alertBack(resp, "비밀번호 검증에 실패했습니다.");
        }

    }
}
