package rose.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import rose.dto.TicketDTO;

@Controller
public class TicketInfoBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/getAllTicketList")
	@ResponseBody
	public List<TicketDTO> getAllTicketList() {
		List<TicketDTO> ticket_list = (List<TicketDTO>)sqlMapClient.queryForList("ticket.getAllTicketList", null);
		return ticket_list;
	}
	
/*	@RequestMapping("/getTicketList")
	@ResponseBody
	public List<TicketDTO> getTicketList(int member_id) {
		List<TicketDTO> ticket_list = (List<TicketDTO>)sqlMapClient.queryForList("ticket.getTicketList", member_id);
		return ticket_list;
	}
	
	@RequestMapping("/getTicket")
	@ResponseBody
	public TicketDTO getTicket(String no) {
		TicketDTO ticket = (TicketDTO)sqlMapClient.queryForObject("ticket.getTIcket", no);
		return ticket;
	}
	
	@RequestMapping("/cancelTicket")
	@ResponseBody
	public int cancelTicket(String no) {
		int success = (int)sqlMapClient.queryForObject("ticket.cancelTicket", no);
		return success;
	}
	
	@RequestMapping("/buyTicket")
	@ResponseBody
	public void buyTicket(TicketDTO ticket) {
		sqlMapClient.queryForObject("ticket.buyTicket", ticket);
	}*/
}
