
package model;

import Config.Conectar;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;


public class productsDAO {
    
    Conectar cn = new Conectar();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public List listar(){
        List<products>lista = new ArrayList<>();
        String sql = "SELECT * FROM productos";
        try {
            con=cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
                products  p = new products();
                p.setId(rs.getString("id"));
                p.setNombre(rs.getString("proNombre"));
                p.setImg(rs.getBinaryStream("proImagen"));
                p.setCantidad(rs.getString("proCantidad"));
                p.setPrecio(rs.getString("proPrecio"));
                p.setEstado(rs.getString("proEstado"));
                lista.add(p);
                        
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    public void listarImg(int id, HttpServletResponse response) {
        String sql = "select* from productos where id=" + id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try {
            outputStream = response.getOutputStream();
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                inputStream = rs.getBinaryStream("proImagen");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferedInputStream.read()) != -1) {                
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {
        }
    }
    
}
