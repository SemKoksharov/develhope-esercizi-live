package com.develhope.AgenziaViaggi.repositories;

import com.develhope.AgenziaViaggi.entities.BookingEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingRepository extends JpaRepository<BookingEntity, Long> {
}
