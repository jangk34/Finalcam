package poly.service;

import java.util.List;

import poly.dto.NoticeDTO;

public interface INoticeService {

	public List<NoticeDTO> getNoticeList() throws Exception;

	public int insertNotice(NoticeDTO nDTO)throws Exception;

	public NoticeDTO getnoticeDetail(NoticeDTO nDTO)throws Exception;
	
	

}
