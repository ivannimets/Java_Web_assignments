/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package JPINClub.admin;

import JPINClub.business.JPINBook;
import JPINClub.data.JPINBookIO;
import java.util.ArrayList;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ivann
 */
@WebServlet(name = "JPINAddBookServlet", urlPatterns = {"/JPINAddBook"})
public class JPINAddBookServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext sc = getServletContext();
        String url = "/JPINAddBook.jsp";
        ArrayList<String> errors = new ArrayList<>();

        String code = request.getParameter("code");
        if (code == null || code.trim().isEmpty()) {
            errors.add("Book code is required.");
        }
        String description = request.getParameter("description");
        if (description == null || description.trim().length() < 3) {
            errors.add("Description must have at least 3 characters.");
        }
        String quantityIn = request.getParameter("quantity");
        if (quantityIn.trim().isEmpty() || quantityIn == null) {
            quantityIn = "0";
        }
        int quantity = Integer.parseInt(quantityIn);
        if (quantity <= 0) {
            errors.add("Quantity must be a positive number.");
        }

        if (!errors.isEmpty()) {
            request.setAttribute("code", code);
            request.setAttribute("description", description);
            request.setAttribute("quantity", quantityIn);
            request.setAttribute("errors", errors);

            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
            return;
        }

        String path = getServletContext().getRealPath("/WEB-INF/books.txt");
        JPINBook newBook = new JPINBook(code, description, quantity);
        JPINBookIO.insert(newBook, path);
        response.sendRedirect("JPINDisplayBooks");
    }
}
