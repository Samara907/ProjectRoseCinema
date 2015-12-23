package rose.ticket.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TicketInfoBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping(value = "/ticket", method = RequestMethod.GET)
	public String getTicketList() {
		System.out.println("11111111");
		@SuppressWarnings("unchecked")
		List<Ticket> ticket_list = (List<Ticket>)sqlMapClient.queryForList("ticket.getTicketList", null);
		System.out.println("22222222222222");
		return "/ticket/main.jsp";
	}
}
