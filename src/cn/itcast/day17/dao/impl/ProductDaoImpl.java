package cn.itcast.day17.dao.impl;

import cn.itcast.day17.dao.ProductDao;
import cn.itcast.day17.domain.Product;
import cn.itcast.day17.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.util.List;

public class ProductDaoImpl implements ProductDao {

	@Override
	public List<Product> getAll() throws Exception {
		//从数据库中取得所有商品信息
		QueryRunner qr = new QueryRunner( JdbcUtils.getDataSource() );
		
		List<Product> list = (List<Product>) qr.query("select id,name,price,description from tb_product", new BeanListHandler(Product.class) );
		return list;
	}

}
