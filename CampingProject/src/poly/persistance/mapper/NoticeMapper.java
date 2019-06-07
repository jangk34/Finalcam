package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.NoticeDTO;

@Mapper("NoticeMapper") // 직접 작성
public interface NoticeMapper {

	public List<NoticeDTO> getNoticeList() throws Exception;

	public int insertNotice(NoticeDTO nDTO) throws Exception;

	public NoticeDTO getNoticeDetail(NoticeDTO nDTO) throws Exception;

	
}
