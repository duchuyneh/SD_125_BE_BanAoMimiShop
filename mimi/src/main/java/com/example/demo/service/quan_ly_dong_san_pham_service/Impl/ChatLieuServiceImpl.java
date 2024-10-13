package com.example.demo.service.quan_ly_dong_san_pham_service.Impl;

import com.example.demo.dto.request.quan_ly_dong_san_pham_request.ChatLieuRequest;
import com.example.demo.dto.respon.quan_ly_dong_san_pham_respon.ChatLieuRespon;
import com.example.demo.entity.ChatLieu;
import com.example.demo.repository.quan_ly_dong_san_pham_repository.ChatLieuRepository;
import com.example.demo.service.quan_ly_dong_san_pham_service.ChatLieuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class ChatLieuServiceImpl implements ChatLieuService {
    @Autowired
    ChatLieuRepository chatLieuRepository;

    @Override
    public Page<ChatLieuRespon> GetAllChatlieu(Integer page) {
        Pageable pageable = PageRequest.of(page, 10);
        return chatLieuRepository.GetAllChatlieu(pageable);
    }

    @Override
    public Optional<ChatLieuRespon> FindByChatLieuID(UUID id) {
        return chatLieuRepository.FindByChatLieuID(id);
    }


    @Override
    public ChatLieu AddChatLieu(ChatLieuRequest chatlieu) {
        ChatLieu clm = new ChatLieu();
        clm.setTenchatlieu(chatlieu.getTenchatlieu());
        clm.setMota(chatlieu.getMota());
        clm.setTrangthai(chatlieu.getTrangthai());

        return chatLieuRepository.save(clm);
    }

    @Override
    public ChatLieu UpdateChatlieu(ChatLieuRequest chatLieuRequest) {
        ChatLieu chatLieu = chatLieuRepository.findById(chatLieuRequest.getId())
                .orElseThrow(() -> new RuntimeException("Không tìm thấy chất liệu với Id : " + chatLieuRequest.getId()));

        chatLieu.setTenchatlieu(chatLieuRequest.getTenchatlieu());
        chatLieu.setMota(chatLieuRequest.getMota());
        chatLieu.setTrangthai(chatLieuRequest.getTrangthai());
        return chatLieuRepository.save(chatLieu);
    }

    @Override
    public ChatLieu ChuyenTrangThai(UUID id, Integer trangThaiMoi) {
        Optional<ChatLieu> chatLieu = chatLieuRepository.findById(id);
        if (chatLieu.isPresent()) {
            ChatLieu chatLieu1 = chatLieu.get();
            chatLieu1.setTrangthai(trangThaiMoi);
            return chatLieuRepository.save(chatLieu1);
        } else {
            throw new IllegalArgumentException("Không tìm thấy chất liệu với Id : " + id);
        }
    }

    @Override
    public List<ChatLieuRespon> GetAllChatlieuLoadCombobox() {
        return null;
    }
}
