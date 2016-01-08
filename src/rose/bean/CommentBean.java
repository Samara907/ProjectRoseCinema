package rose.bean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import rose.DTO.CommentInfoDTO;

public class CommentBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/movie/commentinsert.do")
	public ModelAndView comment(HttpSession session, HttpServletRequest request)throws Exception{
		CommentInfoDTO dto = new CommentInfoDTO();
		dto.setMovie_id(request.getParameter("movie_id");
		dto.setMember_id(request.getParameter("member_id");
		dto.setContent(request.getParameter("content");
		dto.setScore(request.getParameter("Score");
		dto.setRecommend(request.getParameter("recommend");
		sqlMapClient.insert("comment.insertComment", dto);
		
		int cid = (int)sqlMapClient.queryForObject("comment.lastNum", null);
		dto.setComment_id(cid);
		
		
		ModelAndView mv = new ModelAndView();
				
		request.setCharacterEncoding("UTF-8");
		String str = request.getParameter("score");
		String comment = request.getParameter("comment");
	
		mv.setViewName("/comment/commentinsert.jsp");
		return mv;
	}

}
