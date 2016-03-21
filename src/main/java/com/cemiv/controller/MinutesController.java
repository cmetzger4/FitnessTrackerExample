package com.cemiv.controller;

import com.cemiv.model.Exercise;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created on: 3/18/2016
 * Author    :
 */

@Controller
public class MinutesController {

    @RequestMapping(value = "/addMinutes")
    public String addMinutes(@ModelAttribute("exercise") Exercise exercise) {

        System.out.println("exercise: " + exercise.getMinutes());
        return "addMinutes";
    }

//    @RequestMapping(value = "/addMoreMinutes")
//    public String addMoreMinutes(@ModelAttribute("exercise") Exercise exercise) {
//
//        System.out.println("exercising: " + exercise.getMinutes());
//        return "addMinutes";
//    }

}


