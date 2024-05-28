/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import context.DBContext;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog2;



/**
 *
 * @author Admin
 */
// Data Access Object for User operations, extending DBContext to utilize database connections
public class BlogDAO extends DBContext {

    // Singleton instance of UserDAO
    private static BlogDAO instance;
    // Lock object for thread-safe singleton instantiation
    private static Object lockPad = new Object();

    // Private constructor to prevent instantiation
    private BlogDAO() {
    }

    // Returns the singleton instance of SliderDAO
    public static BlogDAO getInstance() {
        if (instance == null) {
            synchronized (lockPad) {
                if (instance == null) {
                    instance = new BlogDAO();
                }
            }
        }
        return instance;
    }
    
    
    
    
    
    
    
    
    
    //Query
     public List<Blog2> listTop8Blog2() {
        List<Blog2> listBlogs = new ArrayList<>();
        try {
            String query = "SELECT TOP 8 * FROM blogs order by id desc";

            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString(2);
                int author_id = rs.getInt(3);
                Date created_at = rs.getDate(4);
                Date updated_at = rs.getDate(5);
                String content = rs.getString(6);
                
                int status = rs.getInt(7);
                String thumbnail = rs.getString(8);
                String briefinfo = rs.getString(9);
                
                Blog2  blog2 = new Blog2(id, title, author_id, created_at, updated_at, content, status, thumbnail, briefinfo);
                listBlogs.add(blog2);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listBlogs;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     public static void main(String[] args) {

         //get top 8
        BlogDAO c = new BlogDAO();
        List<Blog2> l = c.listTop8Blog2();
        System.out.println(l.size());
        for (Blog2 cs : l) {
            System.out.println(cs.toString());
        }
    }
    
}