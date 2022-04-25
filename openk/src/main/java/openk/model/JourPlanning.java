package openk.model;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class JourPlanning {
	
	private StringProperty matin1 = new SimpleStringProperty("");
	
	private StringProperty matin2 = new SimpleStringProperty("");
	
	private StringProperty am1 = new SimpleStringProperty("");
	
	private StringProperty am2 = new SimpleStringProperty("");
	
	public String getMatin1() {
		return matin1.get();
	}
	
	public void setMatin1(String value) {
		matin1.set(value);
	}
	
	public StringProperty matin1Property() {
		return matin1;
	}
	
	public String getMatin2() {
		return matin2.get();
	}
	
	public void setMatin2(String value) {
		matin2.set(value);
	}
	
	public StringProperty matin2Property() {
		return matin2;
	}
	
	public String getAm1() {
		return am1.get();
	}
	
	public void setAm1(String value) {
		am1.set(value);
	}
	
	public StringProperty am1Property() {
		return am1;
	}
	
	public String getAm2() {
		return am2.get();
	}
	
	public void setAm2(String value) {
		am2.set(value);
	}
	
	public StringProperty am2Property() {
		return am2;
	}
	

}
