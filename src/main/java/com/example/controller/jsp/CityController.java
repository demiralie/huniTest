package com.example.controller.jsp;

import java.util.List;

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
import com.example.domain.CityVO;
import com.example.persistence.CityRepository;
import com.example.vo.PageMaker;
import com.example.vo.PageVO;

@Controller
@RequestMapping("/city/")
@Log
public class CityController {
	
	@Autowired
	private CityRepository repo;
	
	@GetMapping("/cityregister")
	public String registerGET(@ModelAttribute("vo")CityVO vo){
		log.info("register get");

		return "jsp/city/cityregister";
	
	}
	
	@PostMapping("/cityregister")
	public String registerPOST(@ModelAttribute("vo")CityVO vo, RedirectAttributes rttr){
		
		log.info("register post");
		log.info("" + vo);

		repo.save(vo);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/city/citylist";
	}
	
	@GetMapping("/cityview")
	public String view(Integer id, @ModelAttribute("pageVO") PageVO vo, Model model){
		
		log.info("Id: "+ id);
		
		repo.findById(id).ifPresent(citys -> model.addAttribute("vo", citys));
		
		return "jsp/city/cityview";
	}
	
	@GetMapping("/citymodify")
	public String modify(Integer id, @ModelAttribute("pageVO") PageVO vo, Model model){
		
		log.info("MODIFY CityVO: "+ id);
		
		repo.findById(id).ifPresent(citys -> model.addAttribute("vo", citys));
		
		return "jsp/city/citymodify";
	}
	
	@PostMapping("/citymodify")
	public String modifyPost(CityVO citys, PageVO vo, RedirectAttributes rttr ){
		
		log.info("Modify CityVO: " + citys);
		
		repo.findById(citys.getId()).ifPresent( origin ->{
		 
			origin.setId(citys.getId());
			origin.setDistrict(citys.getDistrict());
			origin.setName(citys.getName());
			origin.setPopulation(citys.getPopulation());
			origin.setCountrycode(citys.getCountrycode());
//			origin.setCode(citys.getCode());
			
			repo.save(origin);
			rttr.addFlashAttribute("msg", "success");
			rttr.addAttribute("id", origin.getId());
		});
		
		//페이징과 검색했던 결과로 이동하는 경우 
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/city/cityview";
	}
	
	
	@PostMapping("/citydelete")
	public String delete(Integer id, PageVO vo, CityVO cvo, RedirectAttributes rttr ){
		
		log.info("DELETE CityVO: " + id);
		
		repo.deleteById(id);
		
		rttr.addFlashAttribute("msg", "success");

		//페이징과 검색했던 결과로 이동하는 경우 
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/city/citylist";
	}
	
	@GetMapping("/citylist")
	public String list(@ModelAttribute("pageVO") PageVO vo, Model model){
		
		Pageable pageable = vo.makePageable(0, "id");
		Predicate predicate = repo.makePredicate(vo.getType(), vo.getKeyword());
		
		Page<CityVO> result = repo.findAll(predicate, pageable);
		
		log.info(""+ pageable);
		log.info(""+ result);
		
		log.info("TOTAL PAGE NUMBER: " + result.getTotalPages());
		
		model.addAttribute("pageMaker", new PageMaker<CityVO>(result));
		result.forEach(e -> System.out.println(e));		
		
		return "jsp/city/citylist";
	}
}
