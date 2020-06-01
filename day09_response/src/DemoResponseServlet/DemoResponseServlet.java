package DemoResponseServlet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

@WebServlet(urlPatterns = "/fileTrans")
public class DemoResponseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置响应头，让浏览器自动弹出下载附件窗口，同时解决中文乱码问题
        response.setHeader("Content-Disposition","attachment;filename=" +
                DownloadUtils.encodeFilename(request, "一汽奥迪.jpg"));

        // 1、获取响应输出流
        ServletOutputStream os = response.getOutputStream();

        // 2、获取本地输入流
        InputStream is = getServletContext().getResourceAsStream("WEB-INF/car.jpg");

        // 3、标准字节流读取
        int len = -1;
        byte[] bs = new byte[1024 *2];
        while ((len = is.read(bs)) != -1){
            os.write(bs,0,len);
        }

        // 4、关闭流
        is.close();
        os.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
