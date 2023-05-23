package com.hoainong.model;

import java.util.List;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    @NotBlank
    private String fullname;
    @NotBlank
    private String address;
    @NotNull
    private Gender gender;
    @NotEmpty
    private List<String> city;
    @NotBlank
    private String pincode;
    @NotBlank
    private String course;
    @NotBlank
    @Email
    private String email;
    @NotEmpty
    private List<String> hobbies;
}
