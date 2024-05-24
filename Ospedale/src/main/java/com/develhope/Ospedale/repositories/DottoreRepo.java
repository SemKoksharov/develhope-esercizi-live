package com.develhope.Ospedale.repositories;

import com.develhope.Ospedale.entities.Dottore;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DottoreRepo extends JpaRepository<Dottore, Long> {
    List<Dottore> findAllByDeleted(Boolean deleted);

}
