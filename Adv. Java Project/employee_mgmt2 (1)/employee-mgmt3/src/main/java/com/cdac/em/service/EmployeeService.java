package com.cdac.em.service;

import java.util.List;

import com.cdac.em.api.Employee;

public interface EmployeeService {
	List<Employee> loadEmployees();

	void saveEmployee(Employee employee);
	
	Employee getEmployee(int id);

	void updateEmployee(Employee employee);

	void deleteEmployee(int id);

	List<Employee> getManagers();
	
	List<Employee> getWorkers();

	//Employee isEmployeePresent(Credentials credentials);

	List<Employee> searchEmployee(String q);

	Employee showEmployeeLogin(String email, String password);
}
