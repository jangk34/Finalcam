package poly.service;

import java.util.List;

import poly.dto.NoticeDTO;
import poly.dto.InqDTO;
import poly.dto.QaDTO;

public interface IInqService {

	public List<InqDTO> getInqList() throws Exception;


}
