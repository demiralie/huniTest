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
@RequestMapping("/emp/")
@Log
public class EmpController {

	@Inject
	@Autowired
	EmpRepository emprepo;
	DeptRepository deptrepo; 
	

	@GetMapping("/empregister")
	public String registerGET(@ModelAttribute("vo")EmpVO vo, @ModelAttribute("vo1")DeptVO vo1 ){
		log.info("register get");

		return "jsp/emp/empregister";

	}

	@PostMapping("/empregister")
	public String registerPOST(@ModelAttribute("vo") EmpVO vo, @ModelAttribute("vo1")DeptVO vo1,RedirectAttributes rttr) {

		log.info("register post");
		log.info("" + vo);
		log.info("" + vo1);
		
		vo.setDept(vo1);
		
		emprepo.save(vo);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/emp/emplist";
	}

	@GetMapping("/emplist")
	public String list(@ModelAttribute("pageVO") PageVO vo, Model model) {

		Pageable pageable = vo.makePageable(0, "empno");
		Predicate predicate = emprepo.makePredicate(vo.getType(), vo.getKeyword());

		Page<EmpVO> result = emprepo.findAll(predicate, pageable);

		log.info("" + pageable);
		log.info("" + result);

		log.info("TOTAL PAGE NUMBER: " + result.getTotalPages());

		model.addAttribute("pageMaker", new PageMaker<EmpVO>(result));
		result.forEach(e -> System.out.println(e));

		return "jsp/emp/emplist";
	}

	@GetMapping("/empview")
	public String view(Integer empno, @ModelAttribute("pageVO") PageVO vo, Model model) {

		log.info("EMPNO: " + empno);

		emprepo.findById(empno).ifPresent(emp -> model.addAttribute("vo", emp));

		return "jsp/emp/empview";
	}

	@GetMapping("/empmodify")
	public String modify(Integer empno, @ModelAttribute("vo1")EmpVO vo1, @ModelAttribute("vo2")DeptVO vo2, @ModelAttribute("pageVO") PageVO vo, Model model) {

		log.info("MODIFY EMPNO: " + empno);

		emprepo.findById(empno).ifPresent(emp -> model.addAttribute("vo", emp));

		return "jsp/emp/empmodify";
	}

	@PostMapping("/empmodify")
	public String modifyPost(@ModelAttribute("vo1")EmpVO vo1, @ModelAttribute("vo2")DeptVO vo2, EmpVO emp, DeptVO dept, PageVO vo, RedirectAttributes rttr ){
		
		log.info("Modify EmpVO: " + emp);
		
		emprepo.findById(emp.getEmpno()).ifPresent( origin ->{
			origin.setEname(emp.getEname());
			origin.setGender(emp.getGender());
			origin.setJob(emp.getJob());
			origin.setHiredate(emp.getHiredate());
			origin.setSal(emp.getSal());
			origin.setComm(emp.getComm());
			origin.setDept(vo2);
			
			emprepo.save(origin);
			rttr.addFlashAttribute("msg", "success");
			rttr.addAttribute("empno", origin.getEmpno());
		});

		vo1.setDept(dept);
		vo1.setDept(vo2);
		
		log.info("vo1.getdept" + vo1.getDept());
		log.info("vo1" + vo1);
		log.info("vo2.getemps" + vo2.getEmps());
		log.info("vo2" + vo2);
		log.info("dept" + dept);
		log.info("emp" + emp);
		
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/emp/empview";
	
	}

	@PostMapping("/empdelete")
	public String delete(Integer empno, PageVO vo, RedirectAttributes rttr) {

		log.info("DELETE BNO: " + empno);

		emprepo.deleteById(empno);

		rttr.addFlashAttribute("msg", "success");

		// 페이징과 검색했던 결과로 이동하는 경우
		rttr.addAttribute("page", vo.getPage());
		rttr.addAttribute("size", vo.getSize());
		rttr.addAttribute("type", vo.getType());
		rttr.addAttribute("keyword", vo.getKeyword());

		return "redirect:/emp/emplist";
	}

}
