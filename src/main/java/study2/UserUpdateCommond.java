package study2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.ajax2.UserDAO;
import study2.ajax2.UserVO;

public class UserUpdateCommond implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int idx = request.getParameter("idx")==null ? 0 : Integer.parseInt(request.getParameter("idx"));	
			String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
			String name = request.getParameter("name")==null ? "" : request.getParameter("name");
			int age = request.getParameter("age")==null ? 0 : Integer.parseInt(request.getParameter("age"));
			String address = request.getParameter("address")==null ? "" : request.getParameter("address");
			
			UserVO vo = new UserVO();
			
			vo.setIdx(idx);
			vo.setMid(mid);
			vo.setName(name);
			vo.setAge(age);
			vo.setAddress(address);
			
			UserDAO dao = new UserDAO();
			
			String res = dao.getMidUpdate(vo);
			
			
			if(res.equals("0")) {
				res = dao.setUserInput(vo);
								
				
			}

			response.getWriter().write(res);
			
		}
	}

