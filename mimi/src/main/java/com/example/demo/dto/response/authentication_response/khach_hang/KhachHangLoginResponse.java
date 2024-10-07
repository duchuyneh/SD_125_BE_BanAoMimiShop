package com.example.demo.dto.response.authentication_response.khach_hang;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class KhachHangLoginResponse {

  private String message;

  private UUID idtk;

  private String username;
}