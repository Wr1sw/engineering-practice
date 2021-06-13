package CUIT.Bean;

import java.io.Serializable;

public class Hobby implements Serializable {
    private int user_id;
    private String hobby1;
    private String hobby2;
    private String hobby3;
    private String hobby4;

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getHobby1() {
        return hobby1;
    }

    public void setHobby1(String hobby1) {
        this.hobby1 = hobby1;
    }

    public String getHobby2() {
        return hobby2;
    }

    public void setHobby2(String hobby2) {
        this.hobby2 = hobby2;
    }

    public String getHobby3() {
        return hobby3;
    }

    public void setHobby3(String hobby3) {
        this.hobby3 = hobby3;
    }

    public String getHobby4() {
        return hobby4;
    }

    public void setHobby4(String hobby4) {
        this.hobby4 = hobby4;
    }
}
