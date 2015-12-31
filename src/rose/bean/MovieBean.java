package rose.bean;

import java.io.File;
import java.sql.Timestamp;
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

import rose.DTO.MovieInfoDTO;

@Controller 
public class MovieBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/movie/movieupload.do")
	public ModelAndView upload()throws Exception{
		List alist = sqlMapClient.queryForList("genre.getGenreList", null);
		List bgrade = sqlMapClient.queryForList("grade.getGradeList", null);
		System.out.println(bgrade.size());
		System.out.println(bgrade.size());
		System.out.println(bgrade.size());
		System.out.println(bgrade.size());
		System.out.println(bgrade.size());
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
			File copyFile = new File("E:\\save\\"+sysName);
			file.transferTo(copyFile);
			fileNum++;
		}
		dto.setStilcut(simg);
		
		sqlMapClient.update("movie.fileUp", dto);



		ModelAndView mv = new ModelAndView ();
		mv.setViewName("/movie/movieinsert.jsp");
	
		return mv;
	}

}







