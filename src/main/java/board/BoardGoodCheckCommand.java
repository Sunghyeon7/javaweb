package board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardGoodCheckCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx")==null ? 0 : Integer.parseInt(request.getParameter("idx"));
		
		BoardDAO dao = new BoardDAO();
		
// 		글 좋아요 1회 증가시키기 (조회수 중복방지처리 - 세션사용 : "'boardgood'+고유번호" 값을 객체배열(ArrayList)에  )
			HttpSession session = request.getSession();
			@SuppressWarnings({ "unchecked", "rawtypes" })
			ArrayList<String> goodIdx = (ArrayList) session.getAttribute("sGoodIdx");
			if(goodIdx == null) {
				goodIdx = new ArrayList<String>();
			}
			
			String imsiGoodIdx = "boardGood" + idx;
			if(!goodIdx.contains(imsiGoodIdx)) {
				dao.setGoodUpdate(idx);
				goodIdx.add(imsiGoodIdx);
			}
			
			session.setAttribute("sGoodIdx", goodIdx);
		
			// 현재 게시글의 전체 내용 보기.
		BoardVO vo = dao.getBoardContent(idx);
		
		request.setAttribute("vo", vo);
	}

}
