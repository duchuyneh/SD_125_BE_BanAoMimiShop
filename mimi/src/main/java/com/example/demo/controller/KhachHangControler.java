package com.example.demo.controller;

import com.example.demo.dto.request.authentication_response.khach_hang.KhachHangLoginRequest;
import com.example.demo.dto.request.authentication_response.khach_hang.KhachHangRegisterRequest;
import com.example.demo.dto.response.authentication_response.khach_hang.KhachHangLoginResponse;
import com.example.demo.dto.response.authentication_response.khach_hang.KhachHangMessageResponse;
import com.example.demo.service.impl.KhachHangServiceImpl;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

@RequestMapping("/api/auth/khachhang/")
@RequiredArgsConstructor
public class KhachHangControler {

  private final KhachHangServiceImpl userService;

  @PostMapping("dangnhapkhachhang")
  public ResponseEntity<KhachHangLoginResponse> login(@Valid @RequestBody KhachHangLoginRequest khachHnagLoginRequest) {
    return new ResponseEntity<>(userService.login(khachHnagLoginRequest), HttpStatus.OK);
  }

  @PostMapping("dangkykhachhang")
  public ResponseEntity<KhachHangMessageResponse> register(@Valid @RequestBody KhachHangRegisterRequest khachHnagLoginRequest) {
    return new ResponseEntity<>(userService.register(khachHnagLoginRequest), HttpStatus.CREATED);
  }

}
