package cn.itcast.day17.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.day17.domain.Product;
import cn.itcast.day17.service.ProductService;
import cn.itcast.day17.service.impl.ProductServiceImpl;

public class ProductServlet extends HttpServlet {

	//持有一个Service的实现类对象做为工具
	private ProductService productService = new ProductServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//一、调用业务逻辑，取得商品信息
		List<Product> list = null;
		try {
			list = productService.getAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//二、把商品信息保存到request域中
		req.setAttribute("list", list);
		
		//三、使用内部转发，转跳到/product/list.jsp进行显示
		req.getRequestDispatcher("/product/list.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
