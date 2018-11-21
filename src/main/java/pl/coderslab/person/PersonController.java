package pl.coderslab.person;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/persons")
public class PersonController {

    @Autowired
    private PersonService personService;

    @GetMapping ("/add")
    public String show(Model model) {
        model.addAttribute("person", new Person());   // (!!!!)
       return "person";
   }

    @PostMapping("/add")
    @ResponseBody
    public String add(@ModelAttribute Person person) {
       personService.save(person);
       return "person added";
    }


}
