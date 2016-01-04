package com.wzp1.webapp.action;

import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.beanutils.BeanUtilsBean2;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wzp1.webapp.model.Product;

@Controller
@RequestMapping("/product")
public class ProductController {
	private static Logger logger = LoggerFactory.getLogger(HelloWorldController.class);
	
	public String upload(Product product){
		logger.debug(product.toString());
		return "upload";
	}
}
