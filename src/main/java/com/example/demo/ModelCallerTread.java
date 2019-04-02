package com.example.demo;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Application {

	public static void main(String[] args){
		try
		{
			Runtime r = Runtime.getRuntime();
			Process p = r.exec("python3 /home/tomato/IdeaProjects/JEE-final/hello.py 123 123 123");

			BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
			p.waitFor();
			String line = "";
			while (br.ready())
				System.out.println(br.readLine());

		}
		catch (Exception e)
		{
			String cause = e.getMessage();
			if (cause.equals("python: not found"))
				System.out.println("No python interpreter found.");
		}
	}
	}

