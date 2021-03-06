package pl.coderslab.web;

import pl.coderslab.dao.RecipieDao;
import pl.coderslab.model.Recipie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RecipeDetails", value = "/app/recipe/details")
public class RecipeDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String idString = request.getParameter("id");
        int id = Integer.parseInt(idString);


        RecipieDao recipieDao = new RecipieDao();
        Recipie recipe = recipieDao.read(id);

        response.getWriter().println(recipieDao.read(id));
        HttpSession session = request.getSession();
        session.setAttribute("detail", recipe);

        if((boolean) session.getAttribute("superadmin")){
            boolean isSuperAdmin = (boolean) session.getAttribute("superadmin");
            request.setAttribute("superAdmin", isSuperAdmin);
        }

        getServletContext().getRequestDispatcher("/app/recipe/RecipeDetails.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
