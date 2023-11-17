package ra.spring_mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/form-convert-usd")
public class ConvertUsdController {

    @RequestMapping(method = RequestMethod.POST)
    public String convertUsd(
            @RequestParam("rate") double rate,
            @RequestParam("usd") double usd,
            Model model) {

        double vnd = usd * rate;

        model.addAttribute("rate", rate);
        model.addAttribute("usd", usd);
        model.addAttribute("vnd", vnd);

        return "page/convert-usd";
    }
}
