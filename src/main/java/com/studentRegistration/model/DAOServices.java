package com.studentRegistration.model;

import java.sql.ResultSet;

public interface DAOServices {
	public void connectionDB();
	public boolean verifyCredentials(String email,String password);
	public void saveRegistration(String name,String city,String email,String mobile);
    public ResultSet savedList();
    public void deleteRecord(String email);
    public void updateRecord(String email,String mobile);
}
