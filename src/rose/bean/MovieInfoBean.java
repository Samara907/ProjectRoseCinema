package rose.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import rose.dto.MovieDTO;

public class MovieInfoBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/getAllMovieList")
	@ResponseBody
	public List<MovieDTO> getMovieList() {
		List<MovieDTO> movie_list = (List<MovieDTO>)sqlMapClient.queryForList("movie.getMovieList", null);
		return movie_list;
	}
}
