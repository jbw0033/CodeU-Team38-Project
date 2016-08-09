package com.flatironschool.javacs;

public class HelloWorld {
    public static Double getVersion() {
    	Double version = Double.parseDouble(System.getProperty("java.specification.version"));
        
    	System.out.print(version);
    	return version;
    }

    public static void main(String[] args) {
	    getVersion();
    }
}
