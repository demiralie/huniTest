package com.example.controller.jsp;

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
@RequestMapping("/bootstrap")
@Log
public class BootStrapController {

	@GetMapping("/list")
	public String list(PageVO vo, Model model) {
		log.info("/bootstrap/list....");

		// DB 작업 수행
		model.addAttribute("pageMaker", null);

		return "jsp/bootstrap/list";
	}

	
	// @GetMapping("/view")
	// public String view(Long bno, @ModelAttribute("pageVO") PageVO vo, Model
	// model){
	//
	// log.info("BNO: "+ bno);
	//
	// repo.findById(bno).ifPresent(board -> model.addAttribute("vo", board));
	//
	// return "thymeleaf/boards/view";
	// }
	//
	// @GetMapping("/modify")
	// public String modify(Long bno, @ModelAttribute("pageVO") PageVO vo, Model
	// model){
	//
	// log.info("MODIFY BNO: "+ bno);
	//
	// repo.findById(bno).ifPresent(board -> model.addAttribute("vo", board));
	//
	// return "thymeleaf/boards/modify";
	// }
}
