package com.cdac.em.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.cdac.em.api.Employee;
import com.cdac.em.service.EmployeeService;


@Controller
public class EmployeeController {

	
	@Autowired
	private EmployeeService employeeService;
	

	@GetMapping("/loginAdmin")
	public String showAdminLogin(@RequestParam("email") String email,@RequestParam("password") String password) {
		 System.out.println("xyz= " + email);
		    System.out.println("vczzd= " + password);

		if(email.equals("admin@gmail.com") && password.equals("adminpass"))
		{
			return "redirect:/showEmployee";
		}
		else {
			return "adminLogin";
		}
			
	}
	
	@GetMapping("/loginAdmin1")
	public String loginAdmin1() {

		return "adminLogin";
	}
	
	
	@GetMapping("/loginEmployee")	
	public String showEmployeeLogin(@RequestParam("email") String email,@RequestParam("password") String password,Map<String, Employee> model) {
		 System.out.println("xyz= " + email);
		    System.out.println("vczzd= " + password);
				
		   Employee employee =  employeeService.showEmployeeLogin(email,password);
		   System.out.println(employee);
		   model.put("employee", employee);
		   
		   return "employee-info-page";
	}
	
	@GetMapping("/loginEmployee1")
	public String loginEmployee1() {

		return "employeeLogin";
	}
	

	@GetMapping("/homePage")
	public String showHomePage() {

		return "Home";
	}
	
	
	@RequestMapping(value = "/showEmployee", 
			  produces = "application/json", 
			  method=RequestMethod.POST)
	//@GetMapping("/showEmployee")
	public String showEmployeeList(Model model) {

		List<Employee> employeeList = employeeService.loadEmployees();
		model.addAttribute("employees", employeeList);

		return "employee-list";
	}
	
	@GetMapping("/Logout")
	public String Logout() {

		return "Home";
	}
	
	
	@GetMapping("/showEmployee")
		public String showEmployeeList1(Model model) {

			List<Employee> employeeList = employeeService.loadEmployees();
			model.addAttribute("employees", employeeList);

			return "employee-list";
		}
	
	
	@GetMapping("/showAddEmployeePage")
	public String addEmployee(Model model) {

		Employee employee = new Employee();		
		model.addAttribute("employee", employee);

		return "add-employee";
	}
	
	@GetMapping("/getManagers")
	public String getManagers(Model model) {
		
		List<Employee> managers =employeeService.getManagers();
		model.addAttribute("employees", managers);
		
		return "employee-list";
	}
	
	@GetMapping("/getWorkers")
	public String getWorkers(Model model) {
		
		List<Employee> workers =employeeService.getWorkers();
		model.addAttribute("employees", workers);
		
		return "employee-list";
	}
	
	
	@PostMapping("/save-employee")
	public String saveEmployee(Employee employee) {


			//System.out.println(employee);

			if(employee.getId()==0) {
				
				employeeService.saveEmployee(employee);
			}else {
				employeeService.updateEmployee(employee);
			}
			
		return "redirect:/showEmployee";
	}

	
	@GetMapping("/updateEmployee")
	public String updateEmployee(@RequestParam("userId") int id, Model model) {

		System.out.println("looking data for the employee having id : " + id);
		
		Employee theEmployee = employeeService.getEmployee(id);
		System.out.println(theEmployee);
		
		model.addAttribute("employee", theEmployee);
		
		return "add-employee";
	}
	
	
	@GetMapping("/deleteEmployee")
	
	public String deleteEmployee(@RequestParam("userId") int id) {
	
		employeeService.deleteEmployee(id);
		
		return "redirect:/showEmployee";
	}
	
@GetMapping("/searchEmployee")
	
	public String searchEmployee(@RequestParam("q") String q,Model model) {
	
	List<Employee> employees=employeeService.searchEmployee(q);
		model.addAttribute("employees", employees);
		
		return "employee-list";
	}
	
}



