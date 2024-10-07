package com.example.demo.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.UUID;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Builder
@Table(name = "dia_chi")
public class DiaChi {

  @Id
  @GeneratedValue(strategy = GenerationType.UUID)
  @Column(name = "id")
  private UUID id;

  @Column(name = "dia_chi_chi_tiet")
  private String diaChiChiTiet;

  @Column(name = "phuong_xa")
  private String phuongXa;

  @Column(name = "quan_huyen")
  private String quanHuyen;

  @Column(name = "tinh_thanh")
  private String tinhThanh;

  @Column(name = "quoc_gia")
  private String quocGia;

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "ngay_tao")
  private Date ngayTao = new Date();

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "ngay_cap_nhat")
  private Date ngayCapNhat;

  @Column(name = "ghi_chu")
  private String ghiChu;

  @Column(name = "trangThai")
  private Integer trangThai;

  @ManyToOne
  @JoinColumn(name = "khachHang")
  @JsonBackReference
  KhachHang khachhang;

}
