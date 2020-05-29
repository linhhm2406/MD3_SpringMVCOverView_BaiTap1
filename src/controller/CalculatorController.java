package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/start")
public class CalculatorController {

    @GetMapping()
    public ModelAndView showUI(){
        ModelAndView modelAndView = new ModelAndView("showUI");
        return modelAndView;
    }

    @PostMapping("/calculator")
    public ModelAndView calculate(@RequestParam String vnd, String ratio){
        float usd = Float.parseFloat(vnd)*Float.parseFloat(ratio);
        ModelAndView modelAndView = new ModelAndView("showUI");
        modelAndView.addObject("usd",usd);
        return modelAndView;
    }
}
