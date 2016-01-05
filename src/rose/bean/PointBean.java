package rose.bean;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import rose.DTO.MpointHistoryDTO;

@Controller
public class PointBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/meminfoForm")
	public String meminfo(HttpSession session , HttpServletRequest request) throws Exception{
		String id = (String)session.getAttribute("memId");
		id += "_mpoint";
		List list = sqlMapClient.queryForList("mypage.mpointhistory", id);
		request.setAttribute("mpoint", list);
		
		return "/mypage/membership/meminfoForm.jsp";
	}

}
