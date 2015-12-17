package rose.ticket.info;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TicketInfoBean {

	private List<TicketInfoBean> list = null;
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/goTicketMain.do")
	public String goTicketMain() {
		return "/ticket/TicketMain.jsp";
	}
	
	@RequestMapping("/goTicketTestMain.do")
	public String goTicketTestMain() {
		return "/ticket/test/TestMain.jsp";
	}
	
	@RequestMapping("/goInsertTicketForm.do")
	public String goInsertTicketForm() {
		return "/ticket/test/InsertTicketForm.jsp";
	}
	
	@RequestMapping("/goDeleteTicketForm.do")
	public String goDeleteTicketForm() {
		return "/ticket/test/DeleteTicketForm.jsp";
	}
	
	@RequestMapping("/goUpdateTicketForm.do")
	public String goUpdateTicketForm() {
		return "/ticket/test/UpdateTicketForm.jsp";
	}
	
	@RequestMapping("/goSelectTicketForm.do")
	public String goSelectTicketForm() {
		return "/ticket/test/SelectTicketForm.jsp";
	}
	
	@RequestMapping("/selectAllTicket.do")
	public String selectAllTicket() {
		return "/ticket/test/TestMain.jsp";
	}
	
	@RequestMapping("/InsertTicket.do")
	public String insertTicket(TicketInfoBean dto, HttpSession session) {
		sqlMapClient.insert("ticket.insertTest",  dto);
		return "/goTicketTestMain.do";
	}
	
}
