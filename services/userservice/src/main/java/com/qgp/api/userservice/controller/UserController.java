package com.qgp.api.userservice.controller;

import com.qgp.api.userservice.model.response.UserData;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/api/v1/user")
@Slf4j
public class UserController {

    private final UserData genericUserData;

    UserController(){
        this.genericUserData = UserData.builder().userName("DonJuan").build();
    }



    @PostMapping("/")
    public ResponseEntity<UserData> createUser (){
        return new ResponseEntity<UserData>(this.genericUserData, HttpStatus.OK);
    }

    @GetMapping("/{userId}")
    public ResponseEntity<UserData> getUser(@PathVariable String userId) {
        return new ResponseEntity<UserData>(this.genericUserData, HttpStatus.OK);
    }

    @PutMapping("/{userId}")
    public ResponseEntity updateUser(@PathVariable String userId) {
        return new ResponseEntity(HttpStatus.OK);
    }

    @PostMapping("/login")
    public ResponseEntity<UserData> login() {
        return new ResponseEntity<UserData>(this.genericUserData, HttpStatus.OK);

    }

    @PostMapping("/logout")
    public ResponseEntity logout() {
        return new ResponseEntity(HttpStatus.OK);

    }

}
