package poly.persistance.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import config.Mapper;
import poly.dto.NoticeDTO;

@Mapper("NoticeMapper") // 직접 작성
public interface NoticeMapper {

	public List<NoticeDTO> getNoticeList() throws Exception;

	public int insertNotice(NoticeDTO nDTO) throws Exception;

	public List<NoticeDTO> getnoticeList(@Param("pagenum") int pagenum, @Param("contentnum") int contentnum) throws Exception;

	public NoticeDTO getnoticeDetail(NoticeDTO nDTO) throws Exception;


}
