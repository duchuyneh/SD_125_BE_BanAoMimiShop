package com.example.demo.service.quan_ly_dong_san_pham_service.Impl;

import com.example.demo.dto.request.quan_ly_dong_san_pham_request.DanhMucRequest;
import com.example.demo.dto.respon.quan_ly_dong_san_pham_respon.DanhMucRespon;
import com.example.demo.entity.DanhMuc;
import com.example.demo.repository.quan_ly_dong_san_pham_repository.DanhMucRepository;
import com.example.demo.service.quan_ly_dong_san_pham_service.DanhMucService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class DanhMucServiceImpl implements DanhMucService {
    @Autowired
    DanhMucRepository danhMucRepository;

    // GetAll
    @Override
    public Page<DanhMucRespon> GetAllDanhMuc(Integer page) {
        Pageable pageable = PageRequest.of(page, 10);
        return danhMucRepository.GetAllDanhMuc(pageable);
    }

    @Override
    public Optional<DanhMucRespon> FindByDanhMucID(UUID id) {
        return danhMucRepository.FindByDanhMucID(id);
    }

    @Override
    public DanhMuc AddDanhMuc(DanhMucRequest danhmuc) {
        DanhMuc dmm = new DanhMuc();
        dmm.setTendanhmuc(danhmuc.getTendanhmuc());
        dmm.setMota(danhmuc.getMota());
        dmm.setTrangthai(danhmuc.getTrangthai());

        return danhMucRepository.save(dmm);
    }

    @Override
    public DanhMuc UpdateDanhMuc(DanhMucRequest danhMucRequest) {
        DanhMuc danhMuc = danhMucRepository.findById(danhMucRequest.getId())
                .orElseThrow(() -> new RuntimeException("Không tìm thấy danh mục với Id : " + danhMucRequest.getId()));

        danhMuc.setTendanhmuc(danhMucRequest.getTendanhmuc());
        danhMuc.setMota(danhMucRequest.getMota());
        danhMuc.setTrangthai(danhMucRequest.getTrangthai());
        return danhMucRepository.save(danhMuc);
    }

    @Override
    public DanhMuc ChuyenTrangThai(UUID id, Integer trangThaiMoi) {
        Optional<DanhMuc> danhMuc = danhMucRepository.findById(id);
        if (danhMuc.isPresent()) {
            DanhMuc danhMuc1 = danhMuc.get();
            danhMuc1.setTrangthai(trangThaiMoi);
            return danhMucRepository.save(danhMuc1);
        } else {
            throw new IllegalArgumentException("Không tìm thấy danh mục với Id : " + id);
        }
    }

    @Override
    public List<DanhMucRespon> GetAllDanhMucLoadComboBox() {
        return danhMucRepository.GetAllDanhMucLoadComboBox();
    }
}
