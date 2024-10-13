package com.example.demo.entity;

import com.example.demo.enums.QuyenEnum;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity

@Builder
@Table(name = "chucvu")
public class ChucVu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "id")
    private Integer idchucvu;

    @Column(name = "tenchucvu")
    @Enumerated(EnumType.STRING)
    private QuyenEnum tenchucvu;

    @Column(name = "loaichucvu")
    private Integer loaichucvu;

    @Column(name = "mota")
    private String mota;

    @Column(name = "trangthai")
    private Integer trangthai;

    @OneToMany(mappedBy = "chucvu", fetch = FetchType.LAZY)
    @JsonManagedReference
    List<NhanVien> nhanvien;
}
