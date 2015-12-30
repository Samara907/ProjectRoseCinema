package event.rose.bean;

import java.io.Reader;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

@Controller
public class GreetBean {
	@RequestMapping("/greet.do")
	public String greet(){
	return "/event/greet.jsp";
}
	public static Reader reader;
	
	public static SqlMapClient sqlMapper;
	
	public GreetBean() throws Exception{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper= SqlMapClientBuilder.buildSqlMapClient(reader);
	
	}
	

}


