/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.ClaseMadera;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author USUARIO
 */
public class ClaseMaderaDL {

    Conexion con = new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.conectar());
    List datos;

    public List listar() {
        String sql = "select * from clasemadera";
        datos = jdbctemplate.queryForList(sql);
        return datos;
    }

    public void insertar(ClaseMadera cl) {
        String sql = "insert into clasemadera "
                + "(nombre) values (?)";
        jdbctemplate.update(sql, cl.getNombre());
    }

    public List buscar(int id) {
        String sql = "select * from clasemadera where id=" + id;
        datos = jdbctemplate.queryForList(sql);
        return datos;
    }

    public void actualizar(ClaseMadera cl) {
        String sql = "update clasemadera set "
                + "nombre=?";
        jdbctemplate.update(sql, cl.getNombre());
    }

    public void eliminar(int id) {
        try {
            String sql = "delete from clasemadera where id=" + id;
            this.jdbctemplate.update(sql);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
