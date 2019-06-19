package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.RestDTO;
import poly.service.ICamService;
import poly.util.CmmUtil;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */

@Controller
@RequestMapping(value="/cam") // 최상위경로
public class CamController {
	private Logger log = Logger.getLogger(this.getClass()); // 로그찍을떄 사용 외워놓기
	
	@Resource(name="CamService")
	private ICamService camService;
	
	@RequestMapping (value="/glamcamlist") // 표시되는 이동경로
	public String glamcamlist(HttpServletRequest request) throws Exception {
		
		System.out.println("glamcamlist");
		
		return "/cam/glamcamList"; // 반환하는 jsp값
	}
	
	@RequestMapping(value="/glamcamdetail")
	public String glamcamdetail(HttpServletRequest req,Model model) throws Exception {
		
		 // 디티오 안에있는데 스트링의 노티스 넘버값 받아오기
		
		
		String camno = CmmUtil.nvl(req.getParameter("Camno")); // 디티오 안에있는데 스트링의 노티스 넘버값 받아오기
		log.info("Camno" + camno);
		
		//cmmutil  은 공백의 널값 방지
		
		RestDTO cDTO = new RestDTO(); //디티오를 사용하겠다는 선언
		
		cDTO.setCamno(camno);
		// 위에 스트링 선언해줬던 디티오값 이름 그대로 설정(set과()모두 디티오 안에있는 이름 그대로)
		cDTO = camService.getglamcamdetail(cDTO);
		model.addAttribute("cDTO", cDTO); // 컨트롤러에서 jsp에서 갈때 담아줌
		
		return "/cam/glamcamDetail";
	}
	
	@RequestMapping(value="/select.do")
	public @ResponseBody  List<RestDTO> glamcamdetail2(HttpServletRequest req,Model model) throws Exception {
		log.info("start"+this.getClass());
		 
		 String regionval= req.getParameter("regionval");  // 키값
		 log.info(regionval);
		 String camname= req.getParameter("Camname");  // 키값
		 log.info(camname);
		 String camno = req.getParameter("Camno");  // 키값
		 log.info(camno);
		 
		 RestDTO cDTO = new RestDTO(); // 변수값을 restDTO 형태로 변환 
		 
	    List<RestDTO> clist = new ArrayList<>();  // 클래스명 인스턴스명 = 새롭게 지정
	    
	    cDTO.setRegionval(regionval);
	    log.info(cDTO.getRegionval());
	    cDTO.setCamname(camname);
	    log.info(cDTO.getCamname());
	    cDTO.setCamno(camno);
	    log.info(cDTO.getCamno());
	    
	    clist = camService.getSelect(cDTO);
	    log.info(clist.size());
	    for (int i=0; i<clist.size(); i++) {
	    	log.info(clist.get(i).getCamname());
	    }
	    
	    return clist;
	    
		
	}
	/*@RequestMapping(value="/glamcamAnalysis")
	public @ResponseBody List<RestDTO> glamcamAnalysis(HttpServletRequest request) throws Exception {
		// public 결과형 메소드
		
		log.info("start" +this.getClass()); // this = 클래스명 getcl = 클래스 정보
		PagingDTO paging = new PagingDTO();
		
		List<RestDTO> cList = new ArrayList<>();
		
	  // 키값
	  // 키 + 선언값
		String camno = CmmUtil.nvl(request.getParameter("Camno"));
		log.info("Camno" + camno);
		String regionval = CmmUtil.nvl(request.getParameter("Regionval"));
		log.info("Regionval" + regionval);
		int pagenum = Integer.parseInt(request.getParameter("Pagenum"));
		log.info("Pagenum" + pagenum);
		
		paging.setPagenum(pagenum-1);
		
		RestDTO cDTO = new RestDTO();
		cDTO.setRegionval(regionval); // 선언값
		cDTO.setCamno(camno);
		cDTO.setPagenum(pagenum);
		
		cList = camService.getcamAnalysis(cDTO); // 결과 = 인스턴스.메소드명
		
		log.info("end" +this.getClass());
		
		return cList;
	}*/
	
}
