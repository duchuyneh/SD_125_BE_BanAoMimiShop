package com.example.demo.repository;

import com.example.demo.entity.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;
import java.util.UUID;

public interface KhachHangRepository extends JpaRepository<KhachHang, UUID> {
  Optional<KhachHang> findByTaikhoan(String taikhoan);

  Optional<KhachHang> findByEmail(String email);

}
