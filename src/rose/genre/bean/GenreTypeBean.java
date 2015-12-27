package rose.genre.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class GenreTypeBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/selectAllGenre")
	@ResponseBody
	public List<Genre> getGenreList() {
		List<Genre> genre_list = (List<Genre>)sqlMapClient.queryForList("genre.getGenreList",null);
		return genre_list;
	}
}
