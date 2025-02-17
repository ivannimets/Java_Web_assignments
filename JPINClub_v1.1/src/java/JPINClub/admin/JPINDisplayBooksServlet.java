
package JPINClub.admin;

import JPINClub.business.JPINBook;
import JPINClub.data.JPINBookIO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ivann
 */
@WebServlet(name = "JPINDisplayBooksServlet", urlPatterns = {"/JPINDisplayBooks"})
public class JPINDisplayBooksServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/JPINDisplayBooks.jsp";
        String path = getServletContext().getRealPath("/WEB-INF/books.txt");
        ArrayList<JPINBook> books = JPINBookIO.getBooks(path);
        
        request.setAttribute("allBooks", books);
        
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
