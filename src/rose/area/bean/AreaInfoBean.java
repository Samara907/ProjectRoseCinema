package rose.area.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/area")
public class AreaInfoBean{
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping(value = "/get/list", method = RequestMethod.GET)
	@ResponseBody
	public List<Area> getAreaListJSON() {
		List<Area> area_list = (List<Area>)sqlMapClient.queryForList("area.getAreaList", null);
		return area_list;
	}
}
