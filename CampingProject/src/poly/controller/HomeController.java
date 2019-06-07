package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.dto.MainDTO;
import poly.service.IMainService;
import poly.util.CmmUtil;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
public class HomeController {
	private Logger log = Logger.getLogger(this.getClass()); // 로그찍을떄 사용 외워놓기
	
	@Resource(name="MainService")
	private IMainService mainService;
	
	@RequestMapping (value="/home")
	public String noticeList() throws Exception {
		
		return "/main/home";
	}
	
	@RequestMapping (value="/main/login") // 실질 경로
	public String login(Model model) throws Exception {
		
		List<MainDTO> mList = new ArrayList<>();
		mList = mainService.getMainList();
		
		model.addAttribute("jjaa", "1234");
		model.addAttribute("mList", mList);
		
		return "/main/login"; // jsp파일 반환
	}
	
	@RequestMapping(value="/main/login/insertproc", method=RequestMethod.POST)
	public String mainInsertproc(HttpServletRequest req,Model model) throws Exception {
		log.info("start" +this.getClass()); // this = 클래스명 getcl = 클래스 정보
		
		
		String name = CmmUtil.nvl(req.getParameter("name"));
		log.info("name" + name);
		String email = CmmUtil.nvl(req.getParameter("email"));
		log.info("email" + email);
		String password = CmmUtil.nvl(req.getParameter("password"));
		log.info("password" + password);
		
		MainDTO mDTO = new MainDTO(); // 데이터를 받기위해 mDTO선언 
		mDTO.setName(name);
		mDTO.setEmail(email);
		mDTO.setPassword(password);
		
		int result = mainService.insertMain(mDTO);
		
		String msg,url;
		
		if(result == 1) {
			msg = "회원가입에 성공했습니다.";
			url = "/main/login.do";
			
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			}
			else { 
				msg = "실패했습니다.";
				url = "/notice/list.do";
				
				model.addAttribute("msg", msg);
				model.addAttribute("url", url);
			}
		log.info("end" +this.getClass());
			return "/alert";
	}
	
	//일반 로그인 
			@RequestMapping(value="/main/loginproc",method=RequestMethod.POST)
			public String mainLoginproc(HttpServletRequest request,HttpSession session,Model model) throws Exception {
				log.info("start" +this.getClass()); // this = 클래스명 getcl = 클래스 정보
				
				//1. 
				String email=CmmUtil.nvl(request.getParameter("email"));
				log.info("email"+email);
				String password= CmmUtil.nvl(request.getParameter("password"));
				log.info("password:"+password);
				
				//로그인을 하고나서는 정보를 다받아와야되니 MainDTO 
				//2.데이터를 받아와서
				MainDTO mDTO =new MainDTO();
				mDTO.setEmail(email);
				mDTO.setPassword(password);
			
				mDTO=mainService.getMainLogin(mDTO);// 성공하지못하면 아무것도 가져오지 못해서 널
				String msg="";
				String url="";
				if(mDTO==null) {
					//로그인 실패
					msg="로그인에 실패하셨습니다.";
					url = "/main/login.do";
					model.addAttribute("msg",msg);
					model.addAttribute("url",url);
					 		
					
					return "/alert";
				}else {
					//로그인 성공
					log.info(mDTO.getUserno());
					session.setAttribute("email", mDTO.getEmail());
					session.setAttribute("name",mDTO.getName());
					session.setAttribute("userno",mDTO.getUserno());
				}
				//관리자만 관리버튼 나오게 하려고받는 것
				// userNo 도 받아야됨
				
				log.info("end" +this.getClass());
				return "redirect:/home.do";
			}
			
			//회원 로그아웃
			@RequestMapping(value="/logout")
			public String logout(HttpSession session,Model model) throws Exception{
				
				session.invalidate();
				String url = "/home.do";
				String msg="로그아웃 하셨습니다.";
				model.addAttribute("url",url);
				model.addAttribute("msg",msg);
				
				return "/alert";
			}
			//카카오 로그인
			@RequestMapping(value="/main/loginkakao")
			public String loginkakao(HttpServletRequest req, HttpSession session, Model model) throws Exception {
				
				String jName =req.getParameter("kName");
				log.info("kName" + jName); // console.log = 자바스크립트에서 받아온 값을 f12에 찍어줌
				String jEmail = req.getParameter("kEmail");
				log.info("kEmail" + jEmail);
				
				// 1. subString을 이용해서 ""없애고 새로운 문자열에 저장  2.새로운 문자열에 저장된걸 세션에 저장
				
				/*String doli = "a장창근a";
				doli.substring(0, 3);
				log.info("데분사황" + doli);*/
				
				String msg="";
				String url="";
				
					session.setAttribute("email",jName.substring(1, jName.length()-1));
					log.info("email" + jName.substring(1, jName.length()-1));
					
					msg = "로그인에 성공했습니다.";
					url = "/main/login.do";
					model.addAttribute("msg", msg);
					model.addAttribute("url", url);
					
				return "redirect:/home.do";
				
	}
			// 네이버 로그인
}
