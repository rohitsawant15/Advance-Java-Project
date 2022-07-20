package com.cdac.em.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.cdac.em.api.Employee;

public class EmployeeRowMapper implements RowMapper<Employee> {

	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {

		Employee employee = new Employee();

		employee.setId(rs.getInt("id")); // 1
		employee.setFname(rs.getString("fname")); // pritam
		employee.setLname(rs.getString("lname")); // gunjawate
		employee.setEmail(rs.getString("email")); // pritam@gmail.com
		employee.setRole(rs.getString("role"));
		
		return employee;
	}

}
