package rose.movie.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MovieInfoBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/selectAllMovie")
	@ResponseBody
	public List<Movie> getMovieList() {
		List<Movie> movie_list = (List<Movie>)sqlMapClient.queryForList("movie.getMovieList", null);
		return movie_list;
	}
}
