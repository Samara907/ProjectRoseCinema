package rose.movie.bean;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import test.rose.bean.MovieInfoDTO;

@Controller 
public class MovieBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/movie/movieupload.do")
	public ModelAndView upload()throws Exception{
		List alist = sqlMapClient.queryForList("genre.getGenreList", null);
		
		ModelAndView mv = new ModelAndView ();
		mv.addObject("alist", alist);
		
		mv.setViewName("/movie/movieupload.jsp");
	
		return mv;
	}
	
	@RequestMapping("/movie/movieinsert.do")
	public ModelAndView insert(MovieInfoDTO dto )throws Exception{
		
		sqlMapClient.insert("movie.insertMovie", dto);
		
		ModelAndView mv = new ModelAndView ();
		mv.setViewName("/movie/movieinsert.jsp");
	
		return mv;
	}

}







