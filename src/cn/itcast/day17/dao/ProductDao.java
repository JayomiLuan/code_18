package cn.itcast.day17.dao;

import java.util.List;

import cn.itcast.day17.domain.Product;

public interface ProductDao {
	List<Product> getAll() throws Exception;
}
