import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*	接收客户端提交的帐号、密码
            判断：如果帐号是"admin"，并且密码是 "1234"，则登录成功；否则登录失败
            如果成功：给浏览器页面上显示“login success”
            如果失败：给浏览器页面上显示“login fail”*/

@WebServlet(urlPatterns = "/demo01")
public class CheckHttpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取name和password
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(name);
        System.out.println(password);

        // 校验账户和密码
        if("admin".equals(name) && "1234".equals(password)){
            response.getWriter().print("login success");
        }else {
            response.getWriter().print("login faild");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
