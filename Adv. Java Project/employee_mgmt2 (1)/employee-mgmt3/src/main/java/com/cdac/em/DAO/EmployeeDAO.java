package com.cdac.em.DAO;

import java.util.List;

import com.cdac.em.api.Employee;

public interface EmployeeDAO {

	public List<Employee> loadEmployees();
	void saveEmployee(Employee employee);
	Employee getEmployee(int id);
	public void updateEmployee(Employee employee);
	public void deleteEmployee(int id);
	public List<Employee> getManagers();
	public List<Employee> getWorkers();
	//public Employee isEmployeePresent(Credentials credentials);
	public List<Employee> searchEmployee(String q);
	//public Employee showEmployeeLogin(String email, String password);
	public boolean isEmployeePresent(String email, String password);
	public Employee fetchEmployee(String email);
	
}
