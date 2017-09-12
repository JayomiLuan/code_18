package cn.itcast.day17.service.impl;

import java.util.List;

import cn.itcast.day17.dao.ProductDao;
import cn.itcast.day17.dao.impl.ProductDaoImpl;
import cn.itcast.day17.domain.Product;
import cn.itcast.day17.service.ProductService;

public class ProductServiceImpl implements ProductService {
	
	//持有一个ProductDao的实现类的对象，做为工具，便于调用
	private ProductDao productDao = new ProductDaoImpl();
	
	@Override
	public List<Product> getAll() throws Exception {
		//调用Dao取得所有商品信息
		return productDao.getAll();
	}

}
