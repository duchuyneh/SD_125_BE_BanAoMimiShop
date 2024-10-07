package com.example.demo.service.impl;

import com.example.demo.dto.request.authentication_response.khach_hang.KhachHangLoginRequest;
import com.example.demo.dto.request.authentication_response.khach_hang.KhachHangRegisterRequest;
import com.example.demo.dto.response.authentication_response.khach_hang.KhachHangLoginResponse;
import com.example.demo.dto.response.authentication_response.khach_hang.KhachHangMessageResponse;
import com.example.demo.entity.KhachHang;
import com.example.demo.repository.KhachHangRepository;
import com.example.demo.service.KhachHangService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;


@Service
@RequiredArgsConstructor
public class KhachHangServiceImpl implements KhachHangService {

  private final KhachHangRepository khachhangRepository;
  private final PasswordEncoder passwordEncoder;

  @Override
  public KhachHangLoginResponse login(KhachHangLoginRequest khachhangLoginRequest) {
    Optional<KhachHang> otkh = khachhangRepository.findByTaikhoan(khachhangLoginRequest.getTaikhoan());
    if (otkh.isPresent() && passwordEncoder.matches(khachhangLoginRequest.getMatkhau(), otkh.get().getMatKhau())) {
      KhachHang khachHang = otkh.get();
      return KhachHangLoginResponse.builder()
          .idtk(khachHang.getId())
          .username(khachHang.getTaiKhoan())
          .message("Login thành công !")
          .build();
    } else {
      return KhachHangLoginResponse.builder()
          .message("Sai username hoặc password !")
          .build();
    }
  }

  @Override
  public KhachHangMessageResponse register(KhachHangRegisterRequest khachhangRegisterRequest) {
    Optional<KhachHang> otkh = khachhangRepository.findByTaikhoan(khachhangRegisterRequest.getTaikhoan());

    if (otkh.isPresent()) {
      return KhachHangMessageResponse.builder().message("Tài khoản đã tồn tại !").build();
    }

    try {
      return KhachHangMessageResponse.builder().message("Registered thành công !").build();
    } catch (Exception e) {
      return KhachHangMessageResponse.builder().message("Lỗi trong quá trình đăng ký !").build();
    }

  }
}
