package poly.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.RestDTO;
import poly.persistance.mapper.CamMapper;
import poly.service.ICamService;

	@Service("CamService")
	public class CamService implements ICamService {
	
		@Resource(name="CamMapper")
		private CamMapper camMapper; // 클래스명, 인스턴스명

		@Override
		public List<RestDTO> getCamList() throws Exception {
			// TODO Auto-generated method stub
			return camMapper.getCamList();
		}

		@Override
		public List<RestDTO> getcamAnalysis(RestDTO cDTO) throws Exception { // 결과형, 메소드명 
			// TODO Auto-generated method stub
			return (List<RestDTO>)camMapper.getcamAnalysis(cDTO); // 
		}

		@Override
		public RestDTO getglamcamdetail(RestDTO cDTO) throws Exception {
			// TODO Auto-generated method stub
			return camMapper.getglamcamdetail(cDTO);
		}

		@Override
		public int getNoticeListTotalCount() throws Exception {
			// TODO Auto-generated method stub
			return camMapper.getNoticeListTotalCount();
		}

		@Override
		public List<RestDTO> getglamcamList(HashMap<String, Integer> hMap) throws Exception {
			// TODO Auto-generated method stub
			return camMapper.getglamcamList(hMap);
		}
		
		@Override
		public List<RestDTO> getSelect(RestDTO cDTO) throws Exception {
			// TODO Auto-generated method stub
			return camMapper.getSelect(cDTO);
		}

}
