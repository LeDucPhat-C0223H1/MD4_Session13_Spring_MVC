package ra.spring_mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ra.spring_mvc.model.Word;
import ra.spring_mvc.service.WordService;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller // thành phần điều hướng trong mvc
@RequestMapping("/form-translate")
public class DictionaryController {
    private WordService wordService = new WordService();


    @RequestMapping(method = RequestMethod.POST) // mặc định là get
    public String translate(
            @RequestParam("en") String en,
            Model model) {

        Word word = wordService.findByName(en).orElse(new Word());
        String vn = word.getVn();
        model.addAttribute("en", en);
        model.addAttribute("vn", vn==null?"Không tìm thấy":vn);
        return "page/dictionary";


    }
}
