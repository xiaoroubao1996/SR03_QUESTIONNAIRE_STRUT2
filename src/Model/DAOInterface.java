package Model;

import java.sql.SQLException;
import java.util.ArrayList;

public interface DAOInterface<T> {
    T selectByID(Integer id);
    ArrayList<T> selectAll();
    void add(T t) throws SQLException;
    void update(T t);
    void delete(T t);
}