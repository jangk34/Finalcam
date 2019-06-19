package poly.persistance.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import config.Mapper;
import poly.dto.PagingDTO;

@Mapper("PagingMapper")
public interface PagingMapper {
	
	public List<PagingDTO> pList(@Param("pagenum") int pagenum,@Param("contentnum") int contentnum);
	// List<Test> // testlist
	public int pagingcount();
    // testcount() 
	


	


	
}

