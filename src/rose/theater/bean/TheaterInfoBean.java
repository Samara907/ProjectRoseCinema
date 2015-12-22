package rose.theater.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TheaterInfoBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping(value = "/theaters", method = RequestMethod.GET)
	@ResponseBody
	public List<Theater> getTheaterList(){
		List<Theater> theater_list = (List<Theater>)sqlMapClient.queryForList("theaters.getTheaterList", null);
		return theater_list;
	}
	
	@RequestMapping(value = "/theaters/{theater_id}", method = RequestMethod.GET)
	@ResponseBody
	public Theater getTheaterInfo(@PathVariable("theater_id") int theater_id) {
		Theater theater_info = (Theater)sqlMapClient.queryForObject("theaters.getTheaterInfo", theater_id);
		return theater_info;
	}
}
