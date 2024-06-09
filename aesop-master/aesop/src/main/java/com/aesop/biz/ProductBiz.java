package com.aesop.biz;

import java.util.List;

import com.aesop.domain.Product;
import com.aesop.domain.ProductVO;

public interface ProductBiz {

	int getTotalCount();
	List<ProductVO> getProductList(String category);
	List<ProductVO> getCategoryList(String category, String category_sub);
	ProductVO getProduct(int pno);
	void insProduct(Product product);
	void upProduct(Product product);
	void delProduct(int pno);
}