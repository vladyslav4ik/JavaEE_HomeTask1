package com.example.JavaEE_HomeTask1;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "formServlet", value = "/form-servlet")
public class FormServlet extends HttpServlet {
    private String name;
    private int age;

    public void init() {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter writer = resp.getWriter();
        writer.println("Inputted name: " + name);
        writer.println("Inputted age: " + age);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        name = req.getParameter("name");
        age = Integer.parseInt(req.getParameter("age"));
        if (validator()) {
            System.out.println("New user: " + name + " " + age + " y.o.");
            doGet(req, resp);
        } else {
            System.out.println("Inputted data are incorrect!" +
                    "\nPlease try again.");
        }
    }

    private boolean validator() {
        boolean isCorrect = true;
        if (name == null || name.isEmpty() || age < 0)
            isCorrect = false;
        return isCorrect;
    }

    public void destroy() {

    }
}