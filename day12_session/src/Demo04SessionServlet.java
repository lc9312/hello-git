import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Demo04SessionServlet",
            urlPatterns = "/session4")
public class Demo04SessionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  获取session
        HttpSession session = request.getSession();


        // 向服务器和浏览器端输出session的ID值
        System.out.println("获取session3中的session ID："+session.getId());
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().print("在session4中获取session3中的session ID："+session.getId());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
