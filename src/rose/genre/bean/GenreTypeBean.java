package rose.genre.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GenreTypeBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("")
	public List<Genre> getGenreList(){
		List<Genre> Genre_list = (List<Genre>)sqlMapClient.queryForList("genre.getGenreList", null);
		return Genre_list;
	}
	@RequestMapping("")
	public Genre getGenre_Type(@PathVariable("genre_id")int genre_id){
		Genre genre_info = (Genre)sqlMapClient.queryForObject("genre.getGenre_Type", genre_id);
		return genre_info;
	}

}
