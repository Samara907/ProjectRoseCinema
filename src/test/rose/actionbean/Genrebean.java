package test.rose.actionbean;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import test.rose.bean.GenreTypeDTO;

@Controller
public class Genrebean {

	private List<GenreTypeDTO> list = null;
	
	@RequestMapping("/selectAllGenre.do")
	public String selectAllGenre(HttpServletRequest request) throws IOException {
		System.out.println("gogogo");
		Reader reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		SqlMapClient sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		try {
			list = sqlMapper.queryForList("getAllGenre");
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("list", list);
		System.out.println(list.get(0).getGenre_name());
		return "/test/genre/GenreMain.jsp";
	}

	
	
	
	@RequestMapping("/goInsertGenrePage.do")
	public String insertGenre() {
		return "/test/genre/InsertGenre.jsp";
	}
	
	@RequestMapping("/goDeleteGenrepage.do")
	public String deleteGenre() {
		return "/test/genre/DeleteGenre.jsp";
	}
	
	@RequestMapping("/goUpdateGenrePage.do")
	public String updateGenre() {
		return "/test/genre/UpdateGenre.jsp";
	}
	
	@RequestMapping("/goSelectGenrePage.do")
	public String selectGenre() {
		return "/test/genre/SelectGenre.jsp";
	}
}
