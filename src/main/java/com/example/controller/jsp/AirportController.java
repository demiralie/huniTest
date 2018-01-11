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

import com.querydsl.core.types.Predicate;

import lombok.extern.java.Log;
import com.example.domain.AirportVO;
import com.example.persistence.AirportRepository;
import com.example.vo.PageMaker;
import com.example.vo.PageVO;

@Controller
@RequestMapping("/airport/")
@Log
public class AirportController {

	@Inject
	@Autowired
	AirportRepository repo;

	@GetMapping("/airportregister")
	public String registerGET(@ModelAttribute("vo") AirportVO vo) {
		log.info("register get");

		return "jsp/airport/airportregister";

	}

	@PostMapping("/airportregister")
	public String registerPOST(@ModelAttribute("vo") AirportVO vo, RedirectAttributes rttr) {

		log.info("register post");
		log.info("" + vo);

		repo.save(vo);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/airport/airportlist";
	}

	@GetMapping("/airportview")
	public String view(String iata, @ModelAttribute("pageVO") PageVO vo, Model model) {

		log.info("Iata: " + iata);

		repo.findById(iata).ifPresent(airport -> model.addAttribute("vo", airport));

		return "jsp/airport/airportview";
	}

	@GetMapping("/airportmodify")
	public String modify(String iata, @ModelAttribute("pageVO") PageVO vo, Model model) {

		log.info("MODIFY AirportVO: " + iata);

		repo.findById(iata).ifPresent(airport -> model.addAttribute("vo", airport));

		return "jsp/airport/airportmodify";
	}

	@PostMapping("/airportmodify")
	public String modifyPost(AirportVO airport, PageVO vo, RedirectAttributes rttr) {

		log.info("Modify airportVO: " + airport);

		repo.findById(airport.getIata()).ifPresent(origin -> {

			repo.save(origin);
			rttr.addFlashAttribute("msg", "success");
			rttr.addAttribute("iata", origin.getIata());
		});

		// 페이징과 검색했던 결과로 이동하는 경우
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/airport/airportview";
	}

	@PostMapping("/airportdelete")
	public String delete(String iata, PageVO vo, RedirectAttributes rttr) {

		log.info("DELETE AirportVO: " + iata);

		repo.deleteById(iata);

		rttr.addFlashAttribute("msg", "success");

		// 페이징과 검색했던 결과로 이동하는 경우
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/airport/airportlist";
	}

	@GetMapping("/airportlist")
	public String list(@ModelAttribute("pageVO") PageVO vo, Model model) {

		Pageable pageable = vo.makePageable(0, "iata"); // code 기준으로 0이면 최신순으로
														// 페이지 불러오고 1이면 역순으로
														// 맨처음데이터부터 불러온다
		Predicate predicate = repo.makePredicate(vo.getType(), vo.getKeyword());

		Page<AirportVO> result = repo.findAll(predicate, pageable);

		log.info("" + pageable);
		log.info("" + result);

		log.info("TOTAL PAGE NUMBER: " + result.getTotalPages());

		model.addAttribute("pageMaker", new PageMaker<AirportVO>(result));
		result.forEach(e -> System.out.println(e));

		return "jsp/airport/airportlist";
	}
}
