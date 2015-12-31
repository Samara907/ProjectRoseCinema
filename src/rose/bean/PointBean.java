package rose.bean;

import java.util.List;

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
	public ModelAndView meminfo(MpointHistoryDTO dto) throws Exception{
		
		List alist = sqlMapClient.queryForList("mypage.mpointhistory", dto);
		
		ModelAndView mv = new ModelAndView ();
		mv.addObject("alist", alist);
		
		mv.setViewName("/mypage/membership/meminfoForm.jsp");
		
		return mv;
	}

}
