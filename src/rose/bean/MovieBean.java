package rose.bean;

import java.io.File;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import rose.DTO.CommentInfoDTO;
import rose.DTO.GradeTypeDTO;
import rose.DTO.MovieInfoDTO;

@Controller 
public class MovieBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/movie/movieupload.do")
	public ModelAndView upload()throws Exception{
		List alist = sqlMapClient.queryForList("genre.getGenreList", null);
		List bgrade = sqlMapClient.queryForList("grade.getGradeList", null);
		ModelAndView mv = new ModelAndView ();
		mv.addObject("alist", alist);
		mv.addObject("bgrade", bgrade);
		mv.setViewName("/movie/movieupload.jsp");
	
		return mv;	
	}
	
	
	
	@RequestMapping("/movie/movieinsert.do")
	public ModelAndView insert(MultipartHttpServletRequest multi)throws Exception{
		MovieInfoDTO dto = new MovieInfoDTO();	
		dto.setMovie_name(multi.getParameter("movie_name"));
		dto.setOpendate(multi.getParameter("opendate"));
		dto.setDirector(multi.getParameter("director"));
		dto.setGenre_id(Integer.parseInt(multi.getParameter("genre_id")));
		dto.setActor(multi.getParameter("actor"));
		dto.setSynopsis(multi.getParameter("synopsis"));
		dto.setGrade_id(Integer.parseInt(multi.getParameter("grade_id")));
		sqlMapClient.insert("movie.insertMovie", dto);
		
		int mid = (int)sqlMapClient.queryForObject("movie.lastNum",null);
		dto.setMovie_id(mid);
		System.out.println(mid);
		Iterator files =  multi.getFileNames();
		String simg = ""; 
		int fileNum = 1;
		
		while(files.hasNext()){
			String fn = (String)files.next();
			MultipartFile file = multi.getFile(fn);
			
			String orgf = file.getOriginalFilename();
			String file_ext = orgf.substring(orgf.lastIndexOf('.') + 1,orgf.length()); // 파일 확장자
			String sysName = "file_"+mid+"_"+fileNum+"."+file_ext;  // ex) file_1_1.jpg
			if(fn.equals("video")){
				dto.setVideo(sysName);
			}else if(fn.equals("movie_image")){
				dto.setMovie_image(sysName);
			}else{
				simg += sysName+",";
			}
			String path = multi.getRealPath("movie//movie_image//");
			System.out.println("================="+path);
			File copyFile = new File(path+"//"+sysName);
			file.transferTo(copyFile);
			fileNum++;
		}
		dto.setStilcut(simg);
		
		sqlMapClient.update("movie.fileUp", dto);

		ModelAndView mv = new ModelAndView ();
		mv.setViewName("/movie/movieinsert.jsp");
	
		return mv;
	}
	
	@RequestMapping("/movie/movielist.do")
	public ModelAndView list()throws Exception{
		
		List<MovieInfoDTO> list = sqlMapClient.queryForList("movie.listMovie", null);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list" , list);
		mv.setViewName("/movie/movielist.jsp");
		return mv;
	}	
	
	@RequestMapping("/movie/moviecontent.do")
	public ModelAndView content(int movie_id)throws Exception{
		
		MovieInfoDTO dto  = (MovieInfoDTO)sqlMapClient.queryForObject("movie.contentMovie", movie_id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto" , dto);
		mv.setViewName("/movie/moviecontent.jsp");
		return mv;
	}
	
	@RequestMapping("/movie/comment.do")
	public ModelAndView comment(HttpServletRequest request)throws Exception{
		request.setCharacterEncoding("UTF-8");
		String str = request.getParameter("score");
		String comment = request.getParameter("comment");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/movie/moviecontent.jsp");
		return mv;
	}
}	
	







