package com.qgp.api.userservice.controller;

import com.qgp.api.userservice.model.request.UserRequest;
import com.qgp.api.userservice.model.response.UserData;
import com.qgp.api.userservice.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.xml.ws.Response;

@Controller
@RequestMapping("/api/v1/user")
@Slf4j
public class UserController {

    @Autowired
    UserService userService;

    private final UserData genericUserData;

    UserController(){
        this.genericUserData = UserData.builder().userName("DonJuan").build();
    }


    @PostMapping("/")
    public ResponseEntity<UserData> createUser (@Valid @RequestBody UserRequest userRequest){
        log.info(String.format("CONTROLLER -> CREATING USER -> USER -> %s", userRequest.toString()));
        boolean response = userService.createUser(userRequest);
        System.out.println(response);
        return new ResponseEntity<UserData>(this.genericUserData, HttpStatus.OK);
    }

    @GetMapping("/checkNumber/{userNumber}")
    public ResponseEntity checkNumber (@PathVariable String userNumber){
        log.info(String.format("CONTROLLER -> CHECKING PHONE -> %s", userNumber));
        boolean doesTheNumberExist = userService.isTheNumberRegistered(userNumber);
        return  new ResponseEntity(doesTheNumberExist ? HttpStatus.ALREADY_REPORTED : HttpStatus.NOT_FOUND);
    }

    /*
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
     */

}
