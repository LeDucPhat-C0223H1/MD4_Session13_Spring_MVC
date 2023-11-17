package ra.spring_mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/form-calculate")
public class CalculatorController {
    @RequestMapping(method = RequestMethod.POST)
    public String calculator(
            @RequestParam("num1") double num1,
            @RequestParam("op") String op,
            @RequestParam("num2") double num2,
            Model model) {

        Double result = null;
        switch (op) {
            case "add":
                result = num1 + num2;
                break;
            case "sub":
                result = num1 - num2;
                break;
            case "mult":
                result = num1 * num2;
                break;
            case "div":
                result = num1 / num2;
                break;
        }

        model.addAttribute("num1", num1);
        model.addAttribute("op", op);
        model.addAttribute("num2", num2);
        model.addAttribute("result", result);

        return "page/calculator";
    }
}
