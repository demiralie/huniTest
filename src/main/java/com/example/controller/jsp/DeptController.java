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

import com.example.domain.DeptVO;
import com.example.domain.EmpVO;
import com.example.persistence.DeptRepository;
import com.example.persistence.EmpRepository;
import com.example.vo.PageMaker;
import com.example.vo.PageVO;
import com.querydsl.core.types.Predicate;

import lombok.extern.java.Log;

@Controller
@RequestMapping("/dept/")
@Log
public class DeptController {

	@Inject
	@Autowired
	private DeptRepository deptrepo;
	private EmpRepository emprepo;


	@GetMapping("/deptregister")
	public String registerGET(@ModelAttribute("dvo") DeptVO dvo) {
		log.info("register get");

		dvo.setDeptno(dvo.getDeptno());
		dvo.setDname("부서명");
		dvo.setLoc("지역");

		return "jsp/dept/deptregister";

	}

	@PostMapping("/deptregister")
	public String registerPOST(@ModelAttribute("dvo") DeptVO vo, RedirectAttributes rttr) {

		log.info("register post");
		log.info("" + vo);

		deptrepo.save(vo);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/dept/deptlist";
	}

	@GetMapping("/deptview")
	public String view(Integer deptno, @ModelAttribute("pageVO") PageVO vo, Model model) {

		log.info("Deptno: " + deptno);

		deptrepo.findById(deptno).ifPresent(dept -> model.addAttribute("vo", dept));

		return "jsp/dept/deptview";
	}

	@GetMapping("/deptmodify")
	public String modify(Integer deptno, @ModelAttribute("pageVO") PageVO vo, Model model) {

		log.info("MODIFY DEPTNO: " + deptno);

		deptrepo.findById(deptno).ifPresent(dept -> model.addAttribute("vo", dept));

		return "jsp/dept/deptmodify";
	}

	@PostMapping("/deptmodify")
	public String modifyPost(DeptVO dvo, PageVO vo, RedirectAttributes rttr) {

		log.info("Modify DeptVO: " + dvo);

		deptrepo.findById(dvo.getDeptno()).ifPresent(origin -> {

			origin.setDeptno(dvo.getDeptno());
			origin.setDname(dvo.getDname());
			origin.setLoc(dvo.getLoc());

			deptrepo.save(origin);
			rttr.addFlashAttribute("msg", "success");
			rttr.addAttribute("deptno", origin.getDeptno());
		});

		// 페이징과 검색했던 결과로 이동하는 경우
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/dept/deptview";
	}

	@PostMapping("/deptdelete")
	public String delete(Integer deptno, PageVO vo, EmpVO evo, DeptVO dvo, RedirectAttributes rttr) {

		log.info("DELETE DeptVO: " + deptno);

		deptrepo.deleteById(deptno);
		// repo.deleteById(dvo.getDeptno());

		rttr.addFlashAttribute("msg", "success");

		// 페이징과 검색했던 결과로 이동하는 경우
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/dept/deptlist";
	}

	@GetMapping("/deptlist")
	public String list(@ModelAttribute("pageVO") PageVO vo, Model model) {

		Pageable pageable = vo.makePageable(0, "deptno");
		Predicate predicate = deptrepo.makePredicate(vo.getType(), vo.getKeyword());

		Page<DeptVO> result = deptrepo.findAll(predicate, pageable);

		log.info("" + pageable);
		log.info("" + result);

		log.info("TOTAL PAGE NUMBER: " + result.getTotalPages());

		model.addAttribute("pageMaker", new PageMaker<DeptVO>(result));
		result.forEach(e -> System.out.println(e));

		return "jsp/dept/deptlist";
	}
	
	@GetMapping("/deptdetail")
	public String detail(Integer deptno, Integer empno,  @ModelAttribute("pageVO") PageVO vo, Model model){

		log.info("Deptno: " + deptno);
		log.info("empno : " + empno);
		
		deptrepo.findById(deptno).ifPresent(dept -> model.addAttribute("vo", dept));
			
		
		return "jsp/dept/deptdetail";
	}
}
