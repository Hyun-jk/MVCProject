package kr.product.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.controller.Action;
import kr.product.dao.CommentDAO;
import kr.product.vo.CommentVO;

public class WriteCommentAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		Map<String, String> mapAjax = new HashMap<String, String>();
		
		Integer user_num = (Integer)request.getSession().getAttribute("user_num");
		if(user_num==null) { // 로그인되어 있지 않은 경우
			mapAjax.put("result", "logout");
		}
		else { // 로그인한 경우
			CommentVO comment = new CommentVO();
			comment.setAmember_num(user_num);
			comment.setAproduct_num(Integer.parseInt(request.getParameter("aproduct_num")));
			comment.setContent(request.getParameter("content"));
			if(request.getParameter("acomment_parent")!=null) {
				comment.setAcomment_parent(Integer.parseInt(request.getParameter("acomment_parent")));
			}
			CommentDAO.getInstance().insertComment(comment);
			mapAjax.put("result", "success");
		}
		
		String ajaxData = new ObjectMapper().writeValueAsString(mapAjax);
		
		request.setAttribute("ajaxData", ajaxData);
		
		// JSP 경로 반환
		return "/WEB-INF/views/common/ajax_view.jsp";
	}

}