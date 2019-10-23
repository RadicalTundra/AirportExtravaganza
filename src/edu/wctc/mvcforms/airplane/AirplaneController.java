package edu.wctc.mvcforms.airplane;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.ArrayList;

@Controller
@RequestMapping("/airplane")
public class AirplaneController {

    @RequestMapping("/showForm")
    public String AirplaneForm(Model model){
        ArrayList<String> requirements = new ArrayList<>();
        for(AirplaneSpecialRequirements aSR : AirplaneSpecialRequirements.values())
        {
            requirements.add(aSR.getType());
        }
        model.addAttribute("airplaneRoute", new Airplane());
        model.addAttribute("airports", new Airports());
        model.addAttribute("specialRequirements", requirements);
        return"airplane/airplane-form";
    }

    @RequestMapping("/processForm")
    public String AirplaneConfirmation(@Valid @ModelAttribute("airplaneRoute") Airplane airplane,
                                       BindingResult bindingResult,
                                       Model model)
    {
        ArrayList<String> requirements = new ArrayList<>();
        for(AirplaneSpecialRequirements aSR : AirplaneSpecialRequirements.values())
        {
            requirements.add(aSR.getType());
        }
        model.addAttribute("specialRequirements", requirements);
        model.addAttribute("airports", new Airports());
        if(bindingResult.hasErrors())
        {
            return"airplane/airplane-form";
        }
        if(airplane.getRequirements().isEmpty())
        {
            ArrayList<String> noneList = new ArrayList<>();
            noneList.add("none");
            airplane.setRequirements(noneList);
        }
        System.out.println(airplane.getHomeAirport());
        System.out.println(airplane.getDestinationAirport());
        return"airplane/airplane-confirmation";
    }
}
