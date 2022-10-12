package springData.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import springData.domain.Deck;

public interface DeckRepository extends CrudRepository<Deck, Integer> {
    Deck findByName(String name);    
    Deck findByImgCover(String imgCover);
    Deck findById(int id);
}