package com.thedivisiongames.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thedivisiongames.dao.ConexaoTheDivisionGames;

/**
 * Servlet implementation class Servlet02
 */
@WebServlet("/BuscaGaleria")
public class Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet03() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		Connection con = ConexaoTheDivisionGames.conectaBD();
		try {
			PreparedStatement stmt = con.prepareStatement("SELECT imagem FROM tb_imagem WHERE id_imagem = ? AND flg_capa = 'N' ");

			stmt.setLong(1, Long.valueOf(request.getParameter("id")));

			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				response.setContentType("image/jpg");
				response.getOutputStream().write(rs.getBytes("imagem"));
			}
			stmt.close();
			rs.close();
			con.close();
		} catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
		}
	}
}