package rose.screen.bean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ScreenTypeUserBean {

	@RequestMapping(value = "/screens/special", method = RequestMethod.GET)
	public String viewScreenPages(){
		return "/screens/main.jsp";
	}
}
