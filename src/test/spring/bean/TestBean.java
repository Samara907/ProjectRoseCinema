package test.spring.bean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestBean {

	@RequestMapping("/testarea.do")
	public String goAreaMain() {
		return "/test/area/area.jsp";
	}
}
