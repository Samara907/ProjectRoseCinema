package rose.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class FaqBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
}
