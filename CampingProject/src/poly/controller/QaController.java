package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.QaDTO;
import poly.service.IQaService;

@Controller
@RequestMapping (value="/qa") //최상위 경로
public class QaController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="QaService")
	private IQaService qaService;
	
	@RequestMapping (value="/list")
public String qaList(Model model) throws Exception {
		
		List<QaDTO> qList = new ArrayList<>();
		qList = qaService.getQaList();
		log.info(qList.size());
		
		model.addAttribute("qList", qList); // DTO 이름, 값
		model.addAttribute("jjaa","1234"); // DB 이름, 비밀번호
		
		return "/qa/qaList";
	}
}
