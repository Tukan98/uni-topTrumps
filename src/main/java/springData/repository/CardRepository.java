package springData.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import springData.domain.Cards;
import springData.domain.Deck;

public interface CardRepository extends CrudRepository<Cards, Integer> {
	Cards findByName(String name);    
    Cards findByImgCover(String imgCover);
    Cards findById(int id);
}