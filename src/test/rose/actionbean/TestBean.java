package test.rose.actionbean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestBean {

	@RequestMapping("/goTestMainPage.do")
	public String goTestMain() {
		return "/test/TestMain.jsp";
	}
	
	@RequestMapping("/goGenreMainPage.do")
	public String goGenreMain() {
		return "/selectAllGenre.do";
	}
}
