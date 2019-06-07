package poly.controller;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.dto.InqDTO;
import poly.dto.MainDTO;
import poly.service.IInqService;
import poly.service.IMainService;
import poly.service.impl.InqService;
import poly.util.CmmUtil;

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
	
	@Autowired
	private JavaMailSender mailSender;

	// mailSending 코드
	@RequestMapping(value = "/inq/inqone")
	public String mailSending(HttpServletRequest request) {

		String setfrom = "";
		String email = request.getParameter("email"); // 받는 사람 이메일
		String title = request.getParameter("title"); // 제목
		String content = request.getParameter("content"); // 내용

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(email); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "/inq/inqone";
	}
}
