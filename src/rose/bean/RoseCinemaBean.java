package rose.bean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoseCinemaBean {

	@RequestMapping("/showMovieMenu")
	public String showMenu() {
		return "/movie/movieList.jsp";
	}
}
