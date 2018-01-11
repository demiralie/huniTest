package com.example.controller.jsp;

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

import com.querydsl.core.types.Predicate;

import lombok.extern.java.Log;
import com.example.domain.CarrierVO;
import com.example.persistence.CarrierRepository;
import com.example.vo.PageMaker;
import com.example.vo.PageVO;

@Controller
@RequestMapping("/carrier/")
@Log
public class CarrierController {
	
	@Autowired
	private CarrierRepository repo;
	
	@GetMapping("/carrierregister")
	public String registerGET(@ModelAttribute("vo")CarrierVO vo){
		log.info("register get");

		return "jsp/carrier/carrierregister";
	
	}
	
	@PostMapping("/carrierregister")
	public String registerPOST(@ModelAttribute("vo")CarrierVO vo, RedirectAttributes rttr){
		
		log.info("register post");
		log.info("" + vo);

		repo.save(vo);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/carrier/carrierlist";
	}
	
	@GetMapping("/carrierview")
	public String view(String code, @ModelAttribute("pageVO") PageVO vo, Model model){
		
		log.info("Code: "+ code);
		
		repo.findById(code).ifPresent(carrier -> model.addAttribute("vo", carrier));
		
		return "jsp/carrier/carrierview";
	}
	
	@GetMapping("/carriermodify")
	public String modify(String code, @ModelAttribute("pageVO") PageVO vo, Model model){
		
		log.info("MODIFY CarrierVO: "+ code);
		
		repo.findById(code).ifPresent(carriers -> model.addAttribute("vo", carriers));
		
		return "jsp/carrier/carriermodify";
	}
	
	@PostMapping("/carriermodify")
	public String modifyPost(CarrierVO carrier, PageVO vo, RedirectAttributes rttr ){
		
		log.info("Modify CarrierVO: " + carrier);
		
		repo.findById(carrier.getCode()).ifPresent( origin ->{
			
			repo.save(origin);
			rttr.addFlashAttribute("msg", "success");
			rttr.addAttribute("code", origin.getCode());
		});
		
		//페이징과 검색했던 결과로 이동하는 경우 
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/carrier/carrierview";
	}
	
	
	@PostMapping("/carrierdelete")
	public String delete(String code, PageVO vo, RedirectAttributes rttr ){
		
		log.info("DELETE CarrierVO: " + code);
		
		repo.deleteById(code);
		
		rttr.addFlashAttribute("msg", "success");

		//페이징과 검색했던 결과로 이동하는 경우 
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/carrier/carrierlist";
	}
	
	@GetMapping("/carrierlist")
	public String list(@ModelAttribute("pageVO") PageVO vo, Model model){
		
		Pageable pageable = vo.makePageable(0, "code");	// code 기준으로 0이면 최신순으로 페이지 불러오고 1이면 역순으로 맨처음데이터부터 불러온다
		Predicate predicate = repo.makePredicate(vo.getType(), vo.getKeyword());
		
		Page<CarrierVO> result = repo.findAll(predicate, pageable);
		
		log.info(""+ pageable);
		log.info(""+ result);
		
		log.info("TOTAL PAGE NUMBER: " + result.getTotalPages());
		
		model.addAttribute("pageMaker", new PageMaker<CarrierVO>(result));
		result.forEach(e -> System.out.println(e));		
		
		return "jsp/carrier/carrierlist";
	}
}
