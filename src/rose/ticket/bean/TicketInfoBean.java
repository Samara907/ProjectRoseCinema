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
	
	@RequestMapping("/getAllTickList")
	@ResponseBody
	public List<Ticket> getAllTicketList() {
		List<Ticket> ticket_list = (List<Ticket>)sqlMapClient.queryForList("ticket.getAllTicketList", null);
		return ticket_list;
	}
	
	public List<Ticket> getTicketList(int member_id) {
		List<Ticket> ticket_list = (List<Ticket>)sqlMapClient.queryForList("ticket.getTicketList", member_id);
		return ticket_list;
	}
	
	public Ticket getTicket(String no) {
		Ticket ticket = (Ticket)sqlMapClient.queryForObject("ticket.getTIcket", no);
		return ticket;
	}
}
