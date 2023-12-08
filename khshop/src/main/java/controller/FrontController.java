package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDAO;

@WebServlet("*.do" )
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ProductDAO dao = new ProductDAO();
	
	public FrontController() {
		dao = new ProductDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		
		String command = uri.substring(uri.lastIndexOf("/"));
		System.out.println(command);
		String nextPage = "";
		
		if(command.equals("/list.do")) {
			dao.list();
			nextPage = "/product/list.jsp";
			
		}else if(command.equals("/cart.do")) {
			dao.addCart();
			nextPage = "/product/cart.jsp";
		}
		//페이지 이동
		RequestDispatcher dispatch =
				request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

}
