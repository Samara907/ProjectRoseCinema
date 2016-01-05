package rose.event.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import rose.event.dto.EventDTO;

@Controller
public class EventBean  {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/event")
	public String event() throws Exception{
		return "/event/event.jsp";
	}
	
	@RequestMapping("/eventPro")
	public String eventPro(EventDTO dto)throws Exception{
		
		sqlMapClient.insert("event.eventInsert", dto);
		
		return "/event/eventPro.jsp";
	}
}