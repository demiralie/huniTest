package com.example.controller.jsp;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.OntimeVO;
import com.example.persistence.OntimeRepository;
import com.example.vo.PageMaker;
import com.example.vo.PageVO;
import com.querydsl.core.types.Predicate;

import lombok.extern.java.Log;

@Controller
@RequestMapping("/ontime/")
@Log
public class OntimeController {

	@Inject
	@Autowired
	private OntimeRepository onrepo;
	


	@GetMapping("/ontimeregister")
	public String registerGET(@ModelAttribute("vo") OntimeVO vo) {
		log.info("register get");

		vo.setNum(vo.getNum());
//		vo.setYear("년도");
//		vo.setMonth("지역");

		return "jsp/ontime/ontimeregister";

	}

	@PostMapping("/ontimeregister")
	public String registerPOST(@ModelAttribute("vo") OntimeVO vo, RedirectAttributes rttr) {

		log.info("register post");
		log.info("" + vo);

		onrepo.save(vo);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/ontime/ontimelist";
	}

	@GetMapping("/ontimeview")
	public String view(Long num, @ModelAttribute("pageVO") PageVO vo, Model model) {

		log.info("Ontime: " + num);

		onrepo.findById(num).ifPresent(ontime -> model.addAttribute("vo", ontime));

		return "jsp/ontime/ontimeview";
	}

	@GetMapping("/ontimemodify")
	public String modify(Long num, @ModelAttribute("pageVO") PageVO vo, Model model) {

		log.info("MODIFY ONTIME : " + num);

		onrepo.findById(num).ifPresent(ontime -> model.addAttribute("vo", ontime));

		return "jsp/ontime/ontimemodify";
	}

	@PostMapping("/ontimemodify")
	public String modifyPost(OntimeVO ovo, PageVO vo, RedirectAttributes rttr) {

		log.info("Modify OtimeVO: " + ovo);

		onrepo.findById(ovo.getNum()).ifPresent(origin -> {

			origin.setNum(ovo.getNum());

			onrepo.save(origin);
			rttr.addFlashAttribute("msg", "success");
			rttr.addAttribute("ontime", origin.getNum());
		});

		// 페이징과 검색했던 결과로 이동하는 경우
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/ontime/ontimeview";
	}

	@PostMapping("/ontimedelete")
	public String delete(Long num, PageVO vo, RedirectAttributes rttr) {

		log.info("DELETE Ontime: " + num);

		onrepo.deleteById(num);
		// repo.deleteById(dvo.getDeptno());

		rttr.addFlashAttribute("msg", "success");

		// 페이징과 검색했던 결과로 이동하는 경우
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/ontime/ontimelist";
	}

	@GetMapping("/ontimelist")
	public String list(@ModelAttribute("pageVO") PageVO vo, Model model) {

		Pageable pageable = vo.makePageable(0, "num");
		Predicate predicate = onrepo.makePredicate(vo.getType(), vo.getKeyword());

		Page<OntimeVO> result = onrepo.findAll(predicate, pageable);

		log.info("" + pageable);
		log.info("" + result);

		log.info("TOTAL PAGE NUMBER: " + result.getTotalPages());

		model.addAttribute("pageMaker", new PageMaker<OntimeVO>(result));
		result.forEach(e -> System.out.println(e));

		return "jsp/ontime/ontimelist";
	}
	
	@GetMapping("/ontimedetail")
	public String detail(Long num, @ModelAttribute("pageVO") PageVO vo, Model model){

		log.info("ontime: " + num);
		
		
		onrepo.findById(num).ifPresent(ontime -> model.addAttribute("vo", ontime));
			
		
		return "jsp/ontime/ontimedetail";
	}
}
