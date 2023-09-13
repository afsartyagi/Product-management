package com.cetpa.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cetpa.models.Product;
import com.cetpa.services.ProductService;

@Controller
public class ProductController 
{
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/")
	public String getHomeView()
	{
		return "home.jsp";
	}

	@RequestMapping("insert-record")
	public String getInsertRecordView()
	{
		return "insert.jsp";
	}
	@RequestMapping("save-record")
	public String saveProductRecord(Product product)
	{
		productService.addProduct(product);
		return "save.jsp";
	}
	@RequestMapping("list")
	public String getProductList(Model model)
	{
		List<Product> productList=productService.getList();
		model.addAttribute("list",productList);
		return "product-list.jsp";
	}
	@RequestMapping("search-record")
	public String getSearchRecordView()
	{
		return "search.jsp";
	}
	@RequestMapping("show-record")
	public String getPrtoductRecord(int pid,Model model)
	{
		Product product=productService.getProduct(pid);
		if(product==null)
		{
			model.addAttribute("msg","Product with id "+pid+" not found");
			return "search.jsp";
		}
		model.addAttribute("product",product);
		return "search-record.jsp";
	}
	@RequestMapping("delete-record")
	public String getDeleteRecordView()
	{
		return "delete.jsp";
	}
	@RequestMapping("confirm-delete")
	public String getConfirmDeleteView(int pid,Model model)
	{
		Product product=productService.getProduct(pid);
		if(product==null)
		{
			model.addAttribute("msg","Product with id "+pid+" not found");
			return "delete.jsp";
		}
		model.addAttribute("product",product);
		return "confirm-delete.jsp";
	}
	@RequestMapping("delete-product-record")
	public String deleteProductRecord(int pid,Model model)
	{
		productService.deleteProduct(pid);
		model.addAttribute("msg","Product with id "+pid+" has been deleted");
		return "delete.jsp";
	}
	@RequestMapping("edit-record")
	public String getEditRecordView()
	{
		return "edit.jsp";
	}
	@RequestMapping("get-record")
	public String getRecordView(int pid,Model model)
	{
		Product product=productService.getProduct(pid);
		if(product==null)
		{
			model.addAttribute("msg","Product with id "+pid+" not found");
			return "edit.jsp";
		}
		model.addAttribute("product",product);
		return "show-record.jsp";
	}
	@RequestMapping("update-record")
	public String updateProductRecord(Product productn)
	{
		productService.updateProduct(productn);
		return "updated.jsp";
	}
}
