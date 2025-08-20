package com.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/students/add")
public class AddStudentServlet extends HttpServlet {
    private final StudentDAO dao = new StudentDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        String ageStr = req.getParameter("age");

        // Simple validation
        if (name == null || name.isBlank() || ageStr == null || ageStr.isBlank()) {
            req.getSession().setAttribute("msg", "Name and Age are required.");
            resp.sendRedirect(req.getContextPath() + "/addStudent.jsp");
            return;
        }

        try {
            int age = Integer.parseInt(ageStr);
            dao.addStudent(age, name.trim(), age);
            // redirect to list after insert (PRG pattern)
            resp.sendRedirect(req.getContextPath() + "/students");
        } catch (NumberFormatException nfe) {
            req.getSession().setAttribute("msg", "Age must be a number.");
            resp.sendRedirect(req.getContextPath() + "/addStudent.jsp");
        }
    }
}
