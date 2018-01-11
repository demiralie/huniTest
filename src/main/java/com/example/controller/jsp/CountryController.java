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
import com.example.domain.CountryVO;
import com.example.persistence.CountryRepository;
import com.example.vo.PageMaker;
import com.example.vo.PageVO;

@Controller
@RequestMapping("/country/")
@Log
public class CountryController {
	
	@Autowired
	private CountryRepository repo;
	
	@GetMapping("/countryregister")
	public String registerGET(@ModelAttribute("vo")CountryVO vo){
		log.info("register get");

		return "jsp/country/countryregister";
	
	}
	
	@PostMapping("/countryregister")
	public String registerPOST(@ModelAttribute("vo")CountryVO vo, RedirectAttributes rttr){
		
		log.info("register post");
		log.info("" + vo);

		repo.save(vo);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/country/countrylist";
	}
	
	@GetMapping("/countryview")
	public String view(String code, @ModelAttribute("pageVO") PageVO vo, Model model){
		
		log.info("Code: "+ code);
		
		repo.findById(code).ifPresent(countrys -> model.addAttribute("vo", countrys));
		
		return "jsp/country/countryview";
	}
	
	@GetMapping("/countrymodify")
	public String modify(String code, @ModelAttribute("pageVO") PageVO vo, Model model){
		
		log.info("MODIFY CountryVO: "+ code);
		
		repo.findById(code).ifPresent(countrys -> model.addAttribute("vo", countrys));
		
		return "jsp/country/countrymodify";
	}
	
	@PostMapping("/countrymodify")
	public String modifyPost(CountryVO countrys, PageVO vo, RedirectAttributes rttr ){
		
		log.info("Modify CountryVO: " + countrys);
		
		repo.findById(countrys.getCode()).ifPresent( origin ->{
			
			repo.save(origin);
			rttr.addFlashAttribute("msg", "success");
			rttr.addAttribute("code", origin.getCode());
		});
		
		//페이징과 검색했던 결과로 이동하는 경우 
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/country/countryview";
	}
	
	
	@PostMapping("/countrydelete")
	public String delete(String code, PageVO vo, CountryVO cvo, RedirectAttributes rttr ){
		
		log.info("DELETE CountryVO: " + code);
		
		repo.deleteById(code);
		
		rttr.addFlashAttribute("msg", "success");

		//페이징과 검색했던 결과로 이동하는 경우 
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/country/countrylist";
	}
	
	@GetMapping("/countrylist")
	public String list(@ModelAttribute("pageVO") PageVO vo, Model model){
		
		Pageable pageable = vo.makePageable(0, "code");	// code 기준으로 0이면 최신순으로 페이지 불러오고 1이면 역순으로 맨처음데이터부터 불러온다
		Predicate predicate = repo.makePredicate(vo.getType(), vo.getKeyword());
		
		Page<CountryVO> result = repo.findAll(predicate, pageable);
		
		log.info(""+ pageable);
		log.info(""+ result);
		
		log.info("TOTAL PAGE NUMBER: " + result.getTotalPages());
		
		model.addAttribute("pageMaker", new PageMaker<CountryVO>(result));
		result.forEach(e -> System.out.println(e));		
		
		return "jsp/country/countrylist";
	}
}
