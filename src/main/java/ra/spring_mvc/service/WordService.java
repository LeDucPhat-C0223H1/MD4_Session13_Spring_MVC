package ra.spring_mvc.service;

import ra.spring_mvc.model.Word;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class WordService {
    List<Word> list = new ArrayList<>();

    public WordService() {
        list.add(new Word("car","ô tô"));
        list.add(new Word("umbrella","dù che mưa"));
        list.add(new Word("cat","con mèo"));
        list.add(new Word("dog","con chó"));
        list.add(new Word("table","cái bàn"));
        list.add(new Word("board","cái bảng"));
        list.add(new Word("chair","cái ghế"));
        list.add(new Word("apartment","căn hộ"));
        list.add(new Word("capital","thủ đô"));
        list.add(new Word("city","thành phố"));
        list.add(new Word("bus","xe buýt"));
    }

    public Optional<Word> findByName(String en){
        return list.stream().
                filter(w-> w.getEn().equalsIgnoreCase(en)).
                findFirst();
    }
}




