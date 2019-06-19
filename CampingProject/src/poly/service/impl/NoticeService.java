package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.NoticeDTO;
import poly.persistance.mapper.NoticeMapper;
import poly.service.INoticeService;

@Service("NoticeService")
public class NoticeService implements INoticeService{
	
	@Resource(name="NoticeMapper")
	private NoticeMapper noticeMapper;  // ser~여기까지 직접써줘야함

	@Override
	public List<NoticeDTO> getNoticeList() throws Exception {

		return noticeMapper.getNoticeList();
	}

	@Override
	public int insertNotice(NoticeDTO nDTO) throws Exception {
		
		return noticeMapper.insertNotice(nDTO);
	}

	@Override
	public NoticeDTO getnoticeDetail(NoticeDTO nDTO) throws Exception {
		return noticeMapper.getnoticeDetail(nDTO);
	}

	@Override
	public int getnoticeCount() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<NoticeDTO> getnoticeList(int i, int j) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getnoticeList(i, j);
	}
}
