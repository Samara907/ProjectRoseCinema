package rose.event.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import rose.event.dto.CouponNumDTO;


@Controller
public class CouponNumBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/couponNum.do")
	public String couponNum()throws Exception{
		return "/event/couponNum.jsp";
	}
	
	@RequestMapping("/couponNumPro.do")
	public String couponNumPro(CouponNumDTO dto)throws Exception{
		
		sqlMapClient.insert("event.numInsert", dto);
		
		return "/event/couponNumPro.jsp";
	}
}