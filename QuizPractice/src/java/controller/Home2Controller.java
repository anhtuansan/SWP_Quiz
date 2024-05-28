/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.BlogDAO;
import dal.SliderDAO;
import dal.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Blog2;
import model.Slider;
import model.Subject2;

/**
 *
 * @author Admin
 */
public class Home2Controller extends HttpServlet {

    //List blog, subject, slider ra home page
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BlogDAO blogDAO = BlogDAO.getInstance();
        SliderDAO sliderDAO = SliderDAO.getInstance();
        SubjectDAO subjectDAO = SubjectDAO.getInstance();
        
        List<Blog2> top8Blog = blogDAO.listTop8Blog2();
        List<Slider> top8Slider = sliderDAO.listTop8Slider();
        List<Subject2> top8Subject = subjectDAO.listTop8Subject();
        
         // Đặt các danh sách vào phạm vi request
        request.setAttribute("top8Blog", top8Blog);
        request.setAttribute("top8Slider", top8Slider);
        request.setAttribute("top8Subject", top8Subject);

        // Chuyển hướng đến trang home2.jsp
        request.getRequestDispatcher("/home2.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
}
