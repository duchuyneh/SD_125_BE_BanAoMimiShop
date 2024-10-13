package com.example.demo.service.quan_ly_dong_san_pham_service;

import com.example.demo.dto.request.quan_ly_dong_san_pham_request.ChatLieuRequest;
import com.example.demo.dto.respon.quan_ly_dong_san_pham_respon.ChatLieuRespon;
import com.example.demo.entity.ChatLieu;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface ChatLieuService {
    // Hiển thị danh sách chất liệu
    Page<ChatLieuRespon> GetAllChatlieu(Integer page);

    // Findby chất liệu theo id
    Optional<ChatLieuRespon> FindByChatLieuID(UUID id);

    // Thêm chất liệu
    ChatLieu AddChatLieu(ChatLieuRequest chatlieu);

    // Update chất liệu theo id
    ChatLieu UpdateChatlieu(ChatLieuRequest chatLieuRequest);

    // Chuyển trạng thái chất liệu
    ChatLieu ChuyenTrangThai(UUID id, Integer trangThaiMoi);

    // Hiển thị danh sách chất liệu load combobox
    List<ChatLieuRespon> GetAllChatlieuLoadCombobox();
}
