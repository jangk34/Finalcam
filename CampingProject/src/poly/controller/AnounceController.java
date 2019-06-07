package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.AnounceDTO;
import poly.dto.QaDTO;
import poly.service.IAnounceService;
import poly.service.IQaService;

@Controller
@RequestMapping (value="/anounce") //최상위 경로
public class AnounceController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="AnounceService")
	private IAnounceService anounceService;
	
	@RequestMapping (value="/list")
public String anounceList(Model model) throws Exception {
		
		List<AnounceDTO> aList = new ArrayList<>();
		aList = anounceService.getAnounceList();
		log.info(aList.size());
		
		model.addAttribute("aList", aList); // DTO 이름, 값
		model.addAttribute("jjaa","1234"); // DB 이름, 비밀번호
		
		return "/anounce/anounceList"; //실질 jsp경로
	}
}
