package com.cdac.em.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.cdac.em.api.Employee;
import com.cdac.em.rowmapper.EmployeeRowMapper;
import com.mysql.cj.Query;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private JdbcTemplate jdbcTemplete;
	
	public List<Employee> loadEmployees() {

		String sql = "SELECT * FROM employees";

		List<Employee> theListOfEmployee = jdbcTemplete.query(sql, new EmployeeRowMapper());

		return theListOfEmployee;
	}

	public void saveEmployee(Employee employee) {
		Object[] sqlParameters = {employee.getFname(),employee.getLname(),employee.getEmail(),employee.getPassword(),employee.getRole()};
	
			String sql="insert into employees(fname,lname,email,password,role) values(?,?,?,?,?)";
			try {
			jdbcTemplete.update(sql, sqlParameters);
			}
			catch(DuplicateKeyException e) {
				System.out.println("employee with similar mail id..! please try with another mail id");
			}
			System.out.println("1 record updated..");
	}

	public Employee getEmployee(int id) {
		
		String sql = "SELECT * FROM EMPLOYEES WHERE ID = ?";
		Employee employee = jdbcTemplete.queryForObject(sql,new EmployeeRowMapper(), id);
		return employee;
	}

	public void updateEmployee(Employee employee) {
		
		String sql = "UPDATE EMPLOYEES SET fname = ?, lname = ?, email = ?,password=?, role=? WHERE id = ?";
		jdbcTemplete.update(sql, employee.getFname(),employee.getLname(),employee.getEmail(),employee.getPassword(),employee.getRole(),employee.getId());
		System.out.println("1 record updated..");
	}

	public void deleteEmployee(int id) {
		
		String sql = "DELETE FROM EMPLOYEES WHERE ID = ?";
		jdbcTemplete.update(sql, id);
		
	}

	public List<Employee> getManagers() {
		
		String sql = "SELECT * FROM EMPLOYEES WHERE role='manager'";
		List<Employee> theListOfManagers = jdbcTemplete.query(sql, new EmployeeRowMapper());
		System.out.println(theListOfManagers);
		return theListOfManagers;
	}

	public List<Employee> getWorkers() {
		String sql = "SELECT * FROM EMPLOYEES WHERE role='worker'";
		List<Employee> theListOfWorkers = jdbcTemplete.query(sql, new EmployeeRowMapper());
		System.out.println(theListOfWorkers);
		return theListOfWorkers;
	}

	public List<Employee> searchEmployee(String q) {
		String sql;
		if(q!=null){
		 sql = "SELECT * FROM EMPLOYEES WHERE fname like '%"+q+"%' or lname like '%"+q+"%' or email like '%"+q+"%'";
		}else {
		 sql = "select * from employees order by fname desc";}
		List<Employee> theListOfSearchedEmployees = jdbcTemplete.query(sql, new EmployeeRowMapper());
		System.out.println(theListOfSearchedEmployees);
		return theListOfSearchedEmployees;
		
	}
	
	/*public int count(String email, String password) {

        String sql = "SELECT * FROM EMPLOYEES WHERE email like '"+email+"' and password like '"+password+"'";

        // queryForInt() is Deprecated
        // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
        //int total = jdbcTemplate.queryForInt(sql);

        return jdbcTemplete.queryForObject(sql, Integer.class);

    }

	public Employee showEmployeeLogin(String email, String password) {
		
		/*int count = count(email,password);
		System.out.println(count);
		if(count==1) {
			String sql = "SELECT * FROM EMPLOYEES WHERE email= ? and password= ?";
			Employee theOneEmploye = jdbcTemplete.queryForObject(sql, new EmployeeRowMapper(),email,password);
		}
		else {
			throw new 
		}
		
	/*	System.out.println(theOneEmploye);
		
		
		String sql = "SELECT * FROM EMPLOYEES WHERE email= ? and password= ?";
		Employee theOneEmploye = jdbcTemplete.queryForObject(sql, new EmployeeRowMapper(),email,password);
		System.out.println("1 record fetched...!");
		System.out.println(theOneEmploye); 
		return null;
	} */

	public boolean isEmployeePresent(String email, String password) {
		System.out.println("isEmployeePresent");
		String sql = "SELECT COUNT(*) FROM EMPLOYEES WHERE email ='"+email+"' and password='"+password+"'";
		int count = jdbcTemplete.queryForObject(sql, Integer.class);
		if(count == 1)
			return true;
		return false;
	}

	public Employee showEmployeeLogin(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	public Employee fetchEmployee(String email) {
		String sql = "SELECT * FROM EMPLOYEES WHERE email = ?";
		Employee employee = (Employee) jdbcTemplete.queryForObject(sql, new EmployeeRowMapper(),email);
		System.out.println(employee);
		return employee;
		
	}


}





