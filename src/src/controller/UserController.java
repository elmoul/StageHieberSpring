package src.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import src.dao.User;
import src.dao.profile.Profile;
import src.services.ProfileMetier;
import src.services.UserMetier;

@Controller
public class UserController {

	@Autowired
	UserMetier service;

	@Autowired
	ProfileMetier profileService;

   // gestion user

	@RequestMapping(value = "/allUsers")
	public String pageIndex(Model model) {
    model.addAttribute("listUsers", service.getAllUsers());
    model.addAttribute("page", "users");
    return "Users";
	}

	@RequestMapping(value = "/")
	public String pageIndex2(Model model) {
    System.out.println("h2!");
    // ligne ajouter par master

    System.out.println("Hello from Github its master");

    //
    model.addAttribute("listUsers", service.getAllUsers());
    model.addAttribute("page", "users");
    return "Users";
	}

	@RequestMapping(value = "/ajoutUser")
	public String ajoutUser(Model model, @RequestParam String nom, @RequestParam String prenom,
    	@RequestParam String email, @RequestParam String role, @RequestParam String type,
    	@RequestParam String username, @RequestParam String password, @RequestParam String pass) {
    if (!password.equals(pass)) {
    	goToAddUser(model);
    	return "addUser";
    }
    User u = new User(nom, prenom, email, role, type, username, password);
    service.addUser(u);
    model.addAttribute("listUsers", service.getAllUsers());
    model.addAttribute("page", "users");
    return "Users";
	}

	@RequestMapping(value = "/deleteUser")
	public String deletUser(Model model, @RequestParam Long id) {
    service.deletUser(id);
    model.addAttribute("listUsers", service.getAllUsers());
    model.addAttribute("page", "users");
    return "Users";
	}

	@RequestMapping(value = "/viewUser")
	public String viewUser(Model model, @RequestParam Long id) {
    model.addAttribute("user", service.getUserById(id));
    model.addAttribute("type", profileService.getProfileById(Long.parseLong(service.getUserById(id).getType())));
    model.addAttribute("page", "users");
    return "viewUser";
	}

	// gestion profile

	@RequestMapping(value = "/ajoutProfile")
	public String ajoutProfile(Model model, @RequestParam String libelle) {

    Profile p = new Profile(libelle);
    profileService.addProfile(p);
    model.addAttribute("listProfiles", profileService.getAllProfiles());
    model.addAttribute("page", "profiles");
    return "profiles";
	}

	// redirect (rond point )

	@RequestMapping(value = "/redirect")
	public String resirect(Model model, @RequestParam String page) {
    switch (page) {
      case "addUser":
        goToAddUser(model);
        return "addUser";
      case "allUsers":
        model.addAttribute("listUsers", service.getAllUsers());
        model.addAttribute("page", "users");
        return "Users";
	  case "addProfile":
		model.addAttribute("page", "addProfile");
	    return "addProfile";
	  case "allProfiles":
	    model.addAttribute("listProfiles", profileService.getAllProfiles());
	    model.addAttribute("page", "profiles");
	    return "profiles";
	
	  default:
	    return "pageVide";
    }

	}

	// methodes pour facilite les taches

	public void goToAddUser(Model model) {
    model.addAttribute("listProfiles", profileService.getAllProfiles());
    model.addAttribute("page", "addUser");
	}

}
