package kr.co.service;

import java.util.List;

import kr.co.domain.ProductDTO;
import kr.co.domain.UploadDTO;

public interface ProductService {
	

	public abstract void register(ProductDTO product);
	public abstract ProductDTO get(Long p_no);
	public abstract boolean modify(ProductDTO product);
	public abstract boolean remove(Long p_no);
	public abstract List<ProductDTO> getList(); // 상세이미지삭제
	public abstract List<ProductDTO> descList();// 조회수 내림차순 출력

}
