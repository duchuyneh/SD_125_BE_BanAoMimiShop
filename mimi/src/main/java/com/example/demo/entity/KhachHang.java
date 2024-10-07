package com.example.demo.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Builder
@Table(name = "khach_hang")
public class KhachHang {

  @Id
  @GeneratedValue(strategy = GenerationType.UUID)
  @Column(name = "id")
  private UUID id;

  @Column(name = "ma")
  private String ma;

  @Column(name = "ho_va_ten")
  private String hoVaTen;

  @Column(name = "gioi_tinh")
  private Boolean gioiTinh;

  @Temporal(TemporalType.DATE)
  @Column(name = "ngay_sinh")
  private Date ngaySinh;

  @Column(name = "tai_khoan")
  private String taiKhoan;

  @Column(name = "mat_khau")
  private String matKhau;

  @Column(name = "so_dien_thoai")
  private String soDienThoai;

  @Column(name = "email")
  private String email;

  @Column(name = "image")
  private String image;

  @Column(name = "mo_ta")
  private String moTa;

  @Column(name = "trang_thai")
  private Integer trangThai;

  @OneToMany(mappedBy = "khachHang", fetch = FetchType.LAZY)
  @JsonManagedReference
  List<DiaChi> diaChiList;

}
