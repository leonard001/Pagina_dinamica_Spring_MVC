
package Controlador;

import Config.Conectar;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;//aqui es Servlet

//definir que es un controlador, hacer la nota en "dispatcher-servlet.xml"
@Controller
public class controladorUno {
    Conectar con = new Conectar();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql = "SELECT * FROM productos";
        List datos = this.jdbctemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }
}
