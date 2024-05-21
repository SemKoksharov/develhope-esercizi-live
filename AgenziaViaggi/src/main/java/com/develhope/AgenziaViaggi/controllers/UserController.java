package com.develhope.AgenziaViaggi.controllers;
import com.develhope.AgenziaViaggi.entities.UserEntity;
import com.develhope.AgenziaViaggi.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/{id}")
    public UserEntity getUserById(@PathVariable Long id){
        return userRepository.findById(id).orElse(null);
    }
}
