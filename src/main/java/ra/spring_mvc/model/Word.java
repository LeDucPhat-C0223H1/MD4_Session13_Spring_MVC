package ra.spring_mvc.model;

public class Word {
    private String en;

    private String vn;

    public Word() {
    }

    public Word(String en, String vn) {
        this.en = en;
        this.vn = vn;

    }

    public String getVn() {
        return vn;
    }

    public void setVn(String vn) {
        this.vn = vn;
    }

    public String getEn() {
        return en;
    }

    public void setEn(String en) {
        this.en = en;
    }
}
