package cn.itcast.day17.service;

import java.util.List;

import cn.itcast.day17.domain.Product;

public interface ProductService {

	List<Product> getAll() throws Exception;
	
	
}
