package com.example.JavaEE_HomeTask1;

import com.example.JavaEE_HomeTask1.classes.User;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "formServlet", value = "/form-servlet")
public class FormServlet extends HttpServlet {
    private User user;

    public void init() {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter writer = resp.getWriter();
        writer.println(user);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        int age = Integer.parseInt(req.getParameter("age"));
        if (validator(age)) {
            user = User.newUser(name, surname, age);
            System.out.println(user);
            doGet(req, resp);
        } else {
            System.out.println("Inputted data are incorrect!" +
                    "\nPlease try again.");
        }
    }

    private boolean validator(int age) {
        boolean isCorrect = true;
        if (age < 0)
            isCorrect = false;
        return isCorrect;
    }

    public void destroy() {

    }
}