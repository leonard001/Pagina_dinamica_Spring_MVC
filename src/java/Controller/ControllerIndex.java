
package Controller;

import Config.Conectar;
import static com.sun.xml.internal.ws.api.message.Packet.Status.Request;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import model.products;
import model.productsDAO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllerIndex {
    
    Conectar con = new Conectar();
    products pro = new products();
    productsDAO prDAO = new productsDAO();
    ModelAndView mav = new ModelAndView();
    
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String Listar(Model model){
        List<products>datos = prDAO.listar();
        model.addAttribute("lista",datos);
        return "index";
    }
    
    @RequestMapping(value = "imagen", method = RequestMethod. GET)
    public void imagen(@RequestParam("id") String id, HttpServletResponse response){
        int idImagen = Integer.parseInt(id);
        prDAO.listarImg(idImagen, response);
    }
    
    @RequestMapping("index.htm")
    public String Lista(Model model){
        List<products>datos = prDAO.listar();
        model.addAttribute("lista",datos);
        return "index";
    }
    
   /* @RequestMapping(value = "/imagen", method = RequestMethod.GET)
    public String imagen(@RequestParam("valorUno") String valorU){
        int id = Integer.parseInt(valorU);
        prDAO.listarImg(id, response);
        return "index";
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