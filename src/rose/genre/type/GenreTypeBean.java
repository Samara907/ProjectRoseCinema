package rose.genre.type;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import rose.genre.type.GenreTypeDTO;

public class GenreTypeBean {
private List<GenreTypeDTO> list = null;
	

	@RequestMapping("/selectAllGenre.do")
	public String selectAllGenre(HttpServletRequest request) {
		
		return "/movie/genre/GenreMain.jsp";
	}

	@RequestMapping("/InsertGenreForm.do")
	public String InsertGenreForm() {
		return "/movie/admin/insertGenreForm.jsp";
	}
	
	@RequestMapping("/InsertGenrePro.do")
	public String insertGenrePro() {
		return "/test/genre/InsertGenre.jsp";
	}
}
