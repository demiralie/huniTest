package com.example;

import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.repository.config.JpaRepositoryConfigExtension;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.domain.WebBoardVO;
import com.example.persistence.WebBoardRepository;
import com.example.persistence.WebBoardRepositoryTest;
import com.example.vo.PageMaker;

import lombok.extern.java.Log;

@RunWith(SpringRunner.class)
@SpringBootTest
@Log
@Commit
public class WebBoardRepositoryTests extends JpaRepositoryConfigExtension {

	@Autowired
	WebBoardRepository repo;

	@Test
	public void insertBoardDummies() {

		IntStream.range(0, 600).forEach(i -> {

			WebBoardVO board = new WebBoardVO();

			board.setTitle("Sample Board Title " + i);
			board.setContent("Content Sample ..." + i + " of Board ");
			board.setWriter("user0" + (i % 10));

			repo.save(board);
		});

	}

	@Test
	public void testList1() {

		Pageable pageable = PageRequest.of(0, 20, Direction.DESC, "bno");

		Page<WebBoardVO> result = repo.findAll(repo.makePredicate(null, null), pageable);

		log.info("PAGE: " + result.getPageable());

		log.info("----------------------");

		log.info("PageNumber: " + result.getPageable().getPageNumber());

		log.info("TotalPages " + result.getTotalPages());

		log.info("" + result.getPageable());

		result.getContent().forEach(board -> log.info("" + board));
		

	}

	@Test
	public void testList2() {

		Pageable pageable = PageRequest.of(0, 20, Direction.DESC, "bno");

		Page<WebBoardVO> result = repo.findAll(repo.makePredicate("t", "10"), pageable);

		log.info("PAGE: " + result.getPageable());

		log.info("----------------------");
		result.getContent().forEach(board -> log.info("" + board));

	}
	
	@Test
	public void testPaging() {

		//3 page , size = 20
		Pageable pageable = PageRequest.of(29, 10, Direction.DESC, "bno");

		Page<WebBoardVO> result = repo.findAll(repo.makePredicate(null, null), pageable);

		PageMaker<WebBoardVO> pgMaker = new PageMaker<>(result);
		
		log.info("prev page: " +  pgMaker.getPrevPage());

		pgMaker.getPageList().forEach(p -> log.info(""+(p.getPageNumber() +1) ));
		
		log.info("next page: " +  pgMaker.getNextPage());

	}

}
