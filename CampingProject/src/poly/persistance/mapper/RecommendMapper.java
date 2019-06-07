package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import jdk.nashorn.internal.runtime.ECMAErrors;
import poly.dto.RecommendDTO;

@Mapper("RecommendMapper")
public interface RecommendMapper {

	public List<RecommendDTO> getRecommendList() throws Exception;



	

	
}

