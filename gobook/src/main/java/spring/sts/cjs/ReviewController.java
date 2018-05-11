package spring.sts.cjs;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.review.ReviewDAO;
import spring.model.review.ReviewDTO;
import spring.utility.gobook.Utility;

@Controller
public class ReviewController {
		
	@Autowired
	private ReviewDAO dao;
	
	@RequestMapping("/review/read")
	public String read(Model model,HttpServletRequest request) throws Exception {
		
		int re_num = Integer.parseInt(request.getParameter("re_num"));
		dao.re_count(re_num);
		ReviewDTO dto = (ReviewDTO) dao.read(re_num);
		String re_content = dto.getRe_content();
		re_content = re_content.replaceAll("\r\n", "<br>");
		
		model.addAttribute("dto", dto);
		model.addAttribute("re_content", re_content);
	
		String col = request.getParameter("col");
		String word = request.getParameter("word");
		int nowPage = Integer.parseInt(request.getParameter("nowPage"));
	
		
		return "/review/read";
	}
	
	
	
	@RequestMapping(value = "/review/delete", method = RequestMethod.POST)
	public String delete(HttpServletRequest request,Model model) throws Exception {
		
		String basePath = request.getRealPath("/storage_b");
		int re_num = Integer.parseInt(request.getParameter("re_num"));
		String passwd = request.getParameter("passwd");
		String oldfile = request.getParameter("oldfile");
		
		
		boolean flag = false;
		if(flag){
			
			model.addAttribute("col", request.getParameter("col"));
			model.addAttribute("word", request.getParameter("word"));
			model.addAttribute("nowPage", request.getParameter("nowPage"));
			
			flag=dao.delete(re_num);
			Utility.deleteFile(basePath, oldfile);
			
			return "redirect:/review/list";
		}else {
			return "/image/passwdError";
		}
		
	}
	
	@RequestMapping(value = "/review/delete", method =RequestMethod.GET)
	public String delete() {
		
		return "/review/delete";
	}

	@RequestMapping(value="/review/update", method = RequestMethod.POST)
	public String update(ReviewDTO dto,Model model,HttpServletRequest request) throws Exception {
		
	/*	if(dao.update(dto)) {
			model.addAttribute("col",request.getParameter("col"));
			model.addAttribute("word",request.getParameter("word"));
			model.addAttribute("nowPage",request.getParameter("nowPage"));*/
			return "redirect:/review/list";
/*		}else {
			return "error";
		}*/
	}
	
	
	@RequestMapping(value="/review/update",method=RequestMethod.GET)
	public String update( Model model) throws  Exception{
		
	/*	model.addAttribute("dto", dao.read(re_num));
		*/
		return "/review/update";
		
	}
	
	
	@RequestMapping("/review/list")
	public String list(HttpServletRequest request) throws Exception{
		//검색관련------------------------------------------
	    String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));
		
		if(col.equals("total")) word="";
 
		//paging 관련
		int nowPage = 1;//현재 보고있는 페이지
		if(request.getParameter("nowPage")!=null)
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		
		int recordPerPage = 5; //한페이지당 보여줄 레코드 갯수
		
		int sno = ((nowPage-1) * recordPerPage) + 1;
		int eno = nowPage * recordPerPage;
		
		//----------------------------------------------------
		
		Map map = new HashMap();
		map.put("col",col);
		map.put("word",word);
		map.put("sno", sno);
		map.put("eno", eno);
		
		List<ReviewDTO> list = dao.list(map);
		
		//전체 레코드 갯수 가져오기
		int totalRecord = dao.total(map);
 
		String paging = Utility.paging3(totalRecord, nowPage, recordPerPage, col, word);
		
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("col", col);
		request.setAttribute("word", word);

		return "/review/list";
	}
	
	@RequestMapping(value="/review/create",method=RequestMethod.GET)
	public String create() {
		
		return "/review/create";
	}
	@RequestMapping(value="/review/create",method=RequestMethod.POST)
	public String create(ReviewDTO dto,HttpServletRequest request) throws Exception {
		
		String basePath = request.getRealPath("/storage_b");
		String filename = Utility.saveFileSpring30(dto.getFilenameMF(), basePath);
		int filesize = (int)dto.getFilenameMF().getSize();
		
		dto.setFilename(filename);
		dto.setFilesize(filesize);
		
		if(dao.create(dto)) {
			return "redirect:/review/list";
		}else {
			return "/review/error";
		}
 
	}

	
	}
	

