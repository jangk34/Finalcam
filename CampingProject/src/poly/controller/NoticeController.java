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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.dto.NoticeDTO;
import poly.service.INoticeService;
import poly.util.CmmUtil;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
@RequestMapping (value="/notice") //최상위 경로
public class NoticeController {
	private Logger log = Logger.getLogger(this.getClass()); // 로그찍을때 사용 외워놓기
	
	@Resource(name="NoticeService")
	private INoticeService noticeService;  // 직접작성
	
	@RequestMapping (value="/list")
	public String noticeList(Model model)throws Exception {
		
		List<NoticeDTO> nList = new ArrayList<>();  // 클래스명(틀) 인스턴스명(생성) = 생성자(복제)
		nList = noticeService.getNoticeList();
		log.info(nList.size());
		
		model.addAttribute("nList",nList);
		model.addAttribute("jjaa","1234");
		
		return "/notice/noticeList";
	}
	
	@RequestMapping (value="/add")
	public String noticeAdd() throws Exception {
		log.info("start"+this.getClass());
		
		log.info("end"+this.getClass());
		return "/notice/noticeinsertview";
	}
	
	@RequestMapping (value="/insertproc")
	public String noticeInsertproc(HttpServletRequest req, Model model) throws Exception {
		
		String title =  CmmUtil.nvl(req.getParameter("title"));
		
		String content = CmmUtil.nvl(req.getParameter("content"));
		
		NoticeDTO nDTO = new NoticeDTO();
		nDTO.setTitle(title);
		nDTO.setContent(content);
		
		int result = noticeService.insertNotice(nDTO);
		
		String msg, url;
		
		if( result == 1 ) {
		
		msg = "성공했습니다.";
		url = "/notice/list.do";
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		}
		else { 
			
			msg = "실패했습니다.";
			url = "/notice/list.do";
			
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
		}
		return "/alert";
	}
	
	@RequestMapping("/noticedetail") //최상위경로 notice 설정해줬기떄문에 따로 앞우부분에 따로 설정안함
	public String noticedetail(HttpServletRequest req,Model model) throws Exception {
		
		String noticeno = CmmUtil.nvl(req.getParameter("noticeNo")); // 디티오 안에있는데 스트링의 노티스 넘버값 받아오기
		log.info("noticeNo" + noticeno);
		
		NoticeDTO nDTO = new NoticeDTO(); //디티오를 사용하겠다는 선언
		nDTO.setNoticeno(noticeno); // 위에 스트링 선언해줬던 디티오값 이름 그대로 설정(set과()모두 디티오 안에있는 이름 그대로)
		
		nDTO = noticeService.getnoticeDetail(nDTO); // 서비스사용 선언 
		
		model.addAttribute("nDTO", nDTO); // detail.jsp에서 사용할 변수를 모델객체에 저장
		
		return "/notice/noticeDetail";
	}
}
