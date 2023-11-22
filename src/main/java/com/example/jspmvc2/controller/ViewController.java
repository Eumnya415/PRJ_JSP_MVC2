
package com.example.jspmvc2.controller;

import com.example.jspmvc2.dao.MVCBoardDAO;
import com.example.jspmvc2.dto.MVCBoardDTO;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/mvcboard/view.do"})
public class ViewController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ViewController() {
    }

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MVCBoardDAO dao = new MVCBoardDAO();
        String idx = req.getParameter("idx");
        dao.updateVisitCount(idx);
        MVCBoardDTO dto = dao.selectView(idx);
        dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));
        String ext = null;
        String fileName = dto.getSfile();
        if (fileName != null) {
            ext = fileName.substring(fileName.lastIndexOf(".") + 1);
        }

        String[] mimeStr = new String[]{"png", "jpg", "gif", "jpeg"};
        List<String> mimeList = Arrays.asList(mimeStr);
        boolean isImage = false;
        if (mimeList.contains(ext)) {
            isImage = true;
        }

        req.setAttribute("dto", dto);
        req.setAttribute("isImage", isImage);
        req.getRequestDispatcher("/14MVCBoard/View.jsp").forward(req, resp);
    }
}