
package Controller;

import Config.Conectar;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllerCategories {
    
    Conectar con = new Conectar();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    
    
    @RequestMapping(value = "/categorias", method = RequestMethod.GET)
    public String categorias(){
        return "categorias";
    }
  
}