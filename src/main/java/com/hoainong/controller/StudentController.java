package com.hoainong.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hoainong.model.Gender;
import com.hoainong.model.Student;

import jakarta.servlet.ServletContext;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.validation.Valid;

@Controller
@MultipartConfig
public class StudentController {
	
    @Autowired
    ServletContext app;
    
    @GetMapping("/index")
    public String index(Model model) {
        model.addAttribute("student", new Student());
        model.addAttribute("genders", Gender.values());
        model.addAttribute("listCity", getCity());
        model.addAttribute("listHobbies", getHobbies());
        return "form";
    }
    
    @PostMapping("/student/save")
    public String save(@Valid @ModelAttribute("student") Student student, BindingResult result, Model model,
            @RequestParam("image") MultipartFile img)
            throws IllegalStateException, IOException {
        if (result.hasErrors()) {
            model.addAttribute("message", "Some fields are not valid. Please fix them!");
            model.addAttribute("genders", Gender.values());
            model.addAttribute("listCity", getCity());
            model.addAttribute("listHobbies", getHobbies());
            return "form";
        } else {
            if (!img.isEmpty()) {
                String fileName = img.getOriginalFilename();
                File file = new File(app.getRealPath("/img/" + fileName));
                img.transferTo(file);
                model.addAttribute("upload", fileName);
            }
            model.addAttribute("message", "All fields are valid^^");
            model.addAttribute("sv", student);
            return "show";
        }
    }

    @ModelAttribute("listCity")
    public List<String> getCity() {
        List<String> list = new ArrayList<>();
        list.add("HCM");
        list.add("HN");
        list.add("LD");
        return list;
    }

    @ModelAttribute("listHobbies")
    public Map<String, String> getHobbies() {
        Map<String, String> map = new HashMap<String, String>();
        map.put("Travelling", "Travelling");
        map.put("Music", "Music");
        map.put("Food", "Food");
        map.put("Other", "Other");
        return map;
    }
}
