package com.cdac.em.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.em.DAO.EmployeeDAO;
import com.cdac.em.api.Employee;
import com.cdac.em.exception.EmployeeServiceException;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	private EmployeeDAO employeeDAO;
	
	public List<Employee> loadEmployees() {
		
		List<Employee> employeeList = employeeDAO.loadEmployees();
		
		return employeeList;
	}

	public void saveEmployee(Employee employee) {
		
		if(employee.getLname().equals("jadhav")) {
			System.out.println("mail sent to :" + employee.getFname()+" "+ employee.getLname());
		}
		
		employeeDAO.saveEmployee(employee);
		
	}

	public Employee getEmployee(int id) {
		
		return employeeDAO.getEmployee(id);
	}

	public void updateEmployee(Employee employee) {
		employeeDAO.updateEmployee(employee);
		
	}

	public void deleteEmployee(int id) {
		
		employeeDAO.deleteEmployee(id);
		
	}

	public List<Employee> getManagers() {
		List<Employee> managerList=employeeDAO.getManagers();
		return managerList;
	}

	public List<Employee> getWorkers() {
		List<Employee> workerList=employeeDAO.getWorkers();
		return workerList;
	}

	/*public Employee isEmployeePresent(Credentials credentials) {
		
		Employee employee = employeeDAO.isEmployeePresent(credentials);
		return employee;
	}*/

	public List<Employee> searchEmployee(String q) {
		List<Employee> employee= employeeDAO.searchEmployee(q);
		return employee;
	}

	
	
	
	public Employee showEmployeeLogin(String email, String password) {
		if(employeeDAO.isEmployeePresent(email, password)) {
			System.out.println("success1");
			return employeeDAO.fetchEmployee(email);
		}
		else {
		
			throw new EmployeeServiceException("Incorrect Email/Password !");
		}
	}
	
	/*public Doctors login(String email, String password) {
		if(doctorDao.isDoctorPresent(email, password)) {
			System.out.println("success1");
			return doctorDao.fetchDoctor(email);
		}
		else
			throw new DoctorServiceException("Incorrect Email/Password !");
	}*/


	

}
