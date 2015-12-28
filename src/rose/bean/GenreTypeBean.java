package rose.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import rose.dto.GenreDTO;

public class GenreTypeBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/selectAllGenre")
	@ResponseBody
	public List<GenreDTO> getGenreList() {
		List<GenreDTO> genre_list = (List<GenreDTO>)sqlMapClient.queryForList("genre.getGenreList",null);
		return genre_list;
	}
}
