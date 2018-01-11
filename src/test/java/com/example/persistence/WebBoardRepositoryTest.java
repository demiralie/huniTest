package com.example.persistence;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.domain.WebBoardVO;
import com.example.vo.PageMaker;
import com.example.vo.PageVO;
import com.querydsl.core.types.Predicate;

@RunWith(SpringRunner.class)
@SpringBootTest
public class WebBoardRepositoryTest {

	@Inject
	WebBoardRepository repo;

	@Test
	public void test() {
		System.out.println(repo);
		repo.findAll().forEach(e -> System.out.println(e));

	}

	@Test
	public void test2() {

		PageRequest pageable = PageRequest.of(1, 5);

		repo.findAll(pageable).forEach(e -> {
			System.out.println(e);
		});

	}

	@Test
	public void test3() {

		PageRequest pageable = PageRequest.of(1, 5, Sort.Direction.DESC, "bno");

		repo.findAll(pageable).forEach(e -> {
			System.out.println(e);
		});

	}

	@Test
	public void test4() {
		System.out.println(repo);

		// boards/list?page=0&size=10
		PageVO pageVO = new PageVO();
		pageVO.setPage(1);
		pageVO.setSize(10);

		System.out.println("PageVO : " + pageVO);

		PageRequest pageable = PageRequest.of(pageVO.getPage() - 1, pageVO.getSize(), Sort.Direction.DESC, "bno");

		repo.findAll(pageable).forEach(e -> {
			System.out.println(e);
		});

	}

	@Test
	public void test5() {
		System.out.println(repo);

		// boards/list?page=0&size=10
		PageVO pageVO = new PageVO();
		pageVO.setPage(2);
		pageVO.setSize(10);

		System.out.println("PageVO : " + pageVO);

		repo.findAll(pageVO.makePageable(0, "bno")).forEach(e -> {
			System.out.println(e);
		});

	}

	@Test
	public void test6() {
		System.out.println(repo);

		// boards/list?page=0&size=10&type=w&keyword=9
		PageVO pageVO = new PageVO();
		pageVO.setPage(1);
		pageVO.setSize(10);
		pageVO.setType("w");
		pageVO.setKeyword("9");

		System.out.println("PageVO : " + pageVO);

		Pageable pageable = pageVO.makePageable(0, "bno");
		Predicate predicate = repo.makePredicate(pageVO.getType(), pageVO.getKeyword());

		repo.findAll(predicate, pageable).forEach(e -> {
			System.out.println(e);
		});
		;
	}

	@Test
	public void test7() {
		System.out.println(repo);

		// boards/list?page=1&size=10
		PageVO pageVO = new PageVO();
		pageVO.setPage(13);
		pageVO.setSize(10);

		System.out.println("PageVO : " + pageVO);

		Page<WebBoardVO> pageInfo = repo.findAll(pageVO.makePageable(0, "bno"));

		PageMaker<WebBoardVO> pageMaker = new PageMaker<>(pageInfo);

		for (WebBoardVO b : pageMaker.getResult().getContent()) {
			System.out.println(b);
		}
		System.out.println("#################################################################");

		if (pageMaker.getPrevPage() != null)
			System.out.print("  Prev : " + (pageMaker.getPrevPage().getPageNumber() + 1));

		for (Pageable p : pageMaker.getPageList()) {
			System.out.print(" " + (p.getPageNumber() + 1));
		}

		if (pageMaker.getNextPage() != null)
			System.out.print("  Next : " + (pageMaker.getNextPage().getPageNumber() + 1));

		System.out.println();
		System.out.println("#################################################################");
	}

}
