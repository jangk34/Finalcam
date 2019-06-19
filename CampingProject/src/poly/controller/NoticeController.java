package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.dto.NoticeDTO;
import poly.dto.PagingDTO;
import poly.dto.RestDTO;
import poly.service.INoticeService;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
@RequestMapping("/notice")
public class NoticeController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="NoticeService")
	INoticeService noticeService;

	@RequestMapping(value="/noticeDetail", method=RequestMethod.GET)
	public String noticeDetail(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		
		log.info("게시판상세");
		String noticeno = request.getParameter("noticeno");
		log.info(noticeno);
		String name = request.getParameter("name");
		log.info(name);
		String content = request.getParameter("content");
		log.info(content);
		String title = request.getParameter("title");
		log.info(title);
		
		NoticeDTO nDTO = new NoticeDTO();
		/*nDTO.setNoticeno(noticeno);*/
		
	    nDTO.setNoticeno(noticeno);
	    log.info(nDTO.getNoticeno());
	    nDTO.setTitle(title);
	    log.info(nDTO.getTitle());
	    nDTO.setName(name);
	    log.info(nDTO.getName());
	    nDTO.setContent(content);
	    log.info(nDTO.getContent());
		
		nDTO=noticeService.getnoticeDetail(nDTO);
		
		model.addAttribute("nDTO", nDTO);
		
		return "/notice/noticeDetail";
	}
	
	@RequestMapping(value="/noticeList")
	public String noticeList(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		PagingDTO pDTO = new PagingDTO();
		log.info("공지사항 리스트");
		String pagenum = request.getParameter("pagenum");
		log.info(pagenum);
		String contentnum = request.getParameter("contentnum");
		
		int cpagenum = Integer.parseInt(pagenum);
		int ccontentnum = Integer.parseInt(contentnum);
		
		pDTO.setTotalcount(noticeService.getnoticeCount());
		pDTO.setPagenum(cpagenum-1);
		pDTO.setContentnum(ccontentnum);
		pDTO.setCurrentblock(cpagenum);
		pDTO.setLastblock(pDTO.getTotalcount());
		
		pDTO.prevnext(cpagenum);
		pDTO.setStartPage(pDTO.getCurrentblock());
		pDTO.setEndPage(pDTO.getLastblock(),pDTO.getCurrentblock());
		
		List<NoticeDTO> nList = new ArrayList<>();
		nList = noticeService.getnoticeList(pDTO.getPagenum()*10, pDTO.getContentnum());
		model.addAttribute("nList", nList);
		model.addAttribute("pDTO", pDTO);
		return "/notice/noticeList";
		
	}
	
}
