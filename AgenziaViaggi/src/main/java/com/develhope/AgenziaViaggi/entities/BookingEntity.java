package com.develhope.AgenziaViaggi.entities;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "bookings")
public class BookingEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    private UserEntity user;

    @ManyToMany(fetch = FetchType.LAZY)
    private List<PlaceEntity> places;
}
