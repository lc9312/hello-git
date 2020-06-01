import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/LoginHttpServlet")
public class LoginHttpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置请求的字符集
        request.setCharacterEncoding("UTF-8");

        // 1、获取请求的用户名和密码,及项目路径
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String path = request.getContextPath();

        System.out.println("用户名："+username);
        System.out.println("密码："+password);
        // 2、判定用户和密码的正确性，若为admin和1234则重定向到首页，否则请求转发到登录界面，同时提示错误信息
        if("admin".equals(username) && "1234".equals(password)){
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=UTF-8");

            response.sendRedirect(path+"/index.jsp");
      }
      // 若非指定账户和密码，返回登录界面，并提示用户或密码错误
        else {
            // 给request添加属性，表示用户和密码错误
            request.setAttribute("longinError","用户名和密码错误，请重新输入");

            // 请求转发
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
