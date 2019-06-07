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
import poly.dto.RecommendDTO;
import poly.service.INoticeService;
import poly.service.IRecommendService;
import poly.util.CmmUtil;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
@RequestMapping(value="/recommend") // 최상위경로
public class RecommendController {
	private Logger log = Logger.getLogger(this.getClass()); // 로그찍을떄 사용 외워놓기
	
	@Resource(name="RecommendService")
	private IRecommendService recommendService;
	
	@RequestMapping (value="/list") // 표시되는 이동경로
	public String recommedList() throws Exception {
		
		List<RecommendDTO> rList = new ArrayList<>();  // 리스트 배열화 선언
		rList = recommendService.getRecommedList(); // 리스트 = 서비스.리스트()
		
		
		
		return "/recommend/recommendList"; // 반환하는 jsp값
	}
	
	
	

	
}
