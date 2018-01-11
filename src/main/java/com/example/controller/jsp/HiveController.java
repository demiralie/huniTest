package com.example.controller.jsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.WebBoardVO;
import com.example.vo.PageMaker;
import com.example.vo.PageVO;

import lombok.extern.java.Log;

@Controller
@RequestMapping("/hive")
@Log
public class HiveController {

	@GetMapping("/yeardelay")
	public String yeardelay(Model model) throws ClassNotFoundException, SQLException {
		log.info("/hive/yeardelay...");

		Class.forName("org.apache.hive.jdbc.HiveDriver");
		Connection conn = DriverManager.getConnection("jdbc:hive2://localhost:10000", "", "");
		Statement stmt = conn.createStatement();
		System.out.println(conn);

		ResultSet rs = stmt.executeQuery("select * from year_delay");

		while (rs.next()) {
			System.out.println(rs.getInt(1) + ", " + rs.getInt(2) + ", " + rs.getInt(3) + ", " + rs.getFloat(4));
			// vo 에 담고 chart 및 웹출력을 한면된다
		}

		rs.close();
		stmt.close();
		conn.close();

		return "jsp/hive/yeardelay";
	}
}
