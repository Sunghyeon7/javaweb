package study.t0421;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/t0421/LoginOk")
public class LoginOk extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String member;
		
		// 회원 인증 ? admin, hkd1234 		: 비밀번호 1234
		if((mid.equals("admin") && pwd.equals("1234")) || (mid.equals("hkd1234")) && pwd.equals("1234")) {
			System.out.println("정상 회원 입니다.");
			member = "OK";
		}
		else {
			System.out.println("비회원 입니다.");
			member = "NO";
		}
		response.sendRedirect(request.getContextPath()+"/study/0421_include/main.jsp?member="+member);
		
	}
}
