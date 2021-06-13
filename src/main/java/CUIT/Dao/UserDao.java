package CUIT.Dao;


import java.util.List;
import java.util.Map;

//dao === mapper
public interface UserDao {

    //根据ID查询用户
    User getUserById(int id);


    List<User> getUserByLimit(Map<String, Integer> map);
}
