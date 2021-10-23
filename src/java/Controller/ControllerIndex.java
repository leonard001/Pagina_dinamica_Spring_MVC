
package Controller;

import Config.Conectar;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllerIndex {
    
    Conectar con = new Conectar();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView Listar(){
        String sql = "SELECT * FROM productos";
        List datos = this.jdbctemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping("index.htm")
    public ModelAndView Lista() {
        String sql = "SELECT * FROM productos";
        List datos = this.jdbctemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }
    
    /*@RequestMapping(value = "suma", method = RequestMethod.POST)
    public String suma(@RequestParam("valorUno") String valorU,
            @RequestParam("valorDos") String valorD, ModelMap map) {
             
        int a = Integer.parseInt(valorU);
        int b = Integer.parseInt(valorD);
        int c ;
        
        c=a+b;
        
       map.addAttribute("resultado", c);
       return "index";
    }*/
    
}