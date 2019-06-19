package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.InqDTO;
import poly.service.IInqService;
import poly.util.EmailSender;
import poly.util.MailUtil;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
@RequestMapping (value="/inq")
public class InqController {
	private Logger log = Logger.getLogger(this.getClass()); // 로그찍을떄 사용 외워놓기
	
	@Resource(name="InqService")
	private IInqService inqService;
	
	@RequestMapping (value="/one")
	public String inqList(Model model) throws Exception {
		
		List<InqDTO> iList = new ArrayList<>(); 
		iList = inqService.getInqList();
		
		model.addAttribute("iList", iList);
		model.addAttribute("jjaa","1234");
		
		return "/inq/inqone";
	}
	// 메일 보내기
	
	@Autowired
	private EmailSender emailSender;
	
	
	@RequestMapping (value="/mailSending.do")
	public String mailSending(HttpServletRequest req,Model model) throws Exception {
		
		String setfrom = req.getParameter("setfrom");
		log.info("setfrom" + setfrom);
		
		String title = req.getParameter("title");
		log.info("title" + title);
		String content = req.getParameter("content");
		log.info("content" + content);

		  String body ="<hr>"+content;

		MailUtil.sendMail("superdeveloper2018@gmail.com", setfrom+ "캠핑고의 문의내용이 접수되었습니다", body);  
		// 받는사람과, 제목, 내용 입력해주면 메일이감
		String msg,url;
		msg="접수 완료";
		url="/home.do";
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
	return "/alert";
}
	
}
