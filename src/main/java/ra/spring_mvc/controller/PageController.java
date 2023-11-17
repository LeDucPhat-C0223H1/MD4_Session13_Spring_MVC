package ra.spring_mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/navbar")
public class PageController {
    @RequestMapping("/home")
    public String mainPage(){
        return "page/home"; // trả lại view convert-usd.jsp nằm trong page
    }

    @RequestMapping("/convert-usd")
    public String convertUsdPage(){
        return "page/convert-usd";
    }

    @RequestMapping("/dictionary")
    public String dictionaryPage(){
        return "page/dictionary";
    }

    @RequestMapping("/calculator")
    public String calculatorPage(){
        return "page/calculator";
    }
}
