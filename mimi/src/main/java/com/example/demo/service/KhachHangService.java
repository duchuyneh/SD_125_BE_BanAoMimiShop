package com.example.demo.service;

import com.example.demo.dto.request.authentication_response.khach_hang.KhachHangLoginRequest;
import com.example.demo.dto.request.authentication_response.khach_hang.KhachHangRegisterRequest;
import com.example.demo.dto.response.authentication_response.khach_hang.KhachHangLoginResponse;
import com.example.demo.dto.response.authentication_response.khach_hang.KhachHangMessageResponse;

public interface KhachHangService {

  KhachHangLoginResponse login(KhachHangLoginRequest khachhangLoginRequest);

  KhachHangMessageResponse register(KhachHangRegisterRequest khachhangRegisterRequest);


}
