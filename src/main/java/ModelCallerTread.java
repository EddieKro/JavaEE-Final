import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class ModelCallerTread implements Runnable {

	private static File pyScript=new File("/home/tomato/IdeaProjects/JEE-final/hello.py");
	private static String shell="python3";
	private String[] features;
	private List<String> result=new ArrayList<String>();

	public ModelCallerTread(String[] features){
		this.features=features;
	}

	public void run() {
		StringBuilder sb = new StringBuilder();
		sb.append(shell).append(" ").append(pyScript.getAbsolutePath()).append(" ");
		for(String s:features)
			sb.append(s).append(" ");
		try {
			Runtime r = Runtime.getRuntime();
			Process script = r.exec(sb.toString());
			BufferedReader is = new BufferedReader(new InputStreamReader(script.getInputStream()));
			BufferedReader es = new BufferedReader(new InputStreamReader(script.getErrorStream()));
			script.waitFor();
			if(script.exitValue()==0){
//				String line ="";
				while(is.ready())
					result.add(is.readLine());
			}
			else {
				while(es.ready())
					System.out.println(es.readLine());
			}
			for(String s:result)
				System.out.println(s);

		}catch (Exception e){
			System.out.println(e.getMessage());
		}

	}
	public static File getPyScript() {
		return pyScript;
	}

	public static void setPyScript(File pyScript) {
		ModelCallerTread.pyScript = pyScript;
	}
	public static String getShell() {
		return shell;
	}

	public static void setShell(String shell) {
		ModelCallerTread.shell = shell;
	}

	public List<String> getResult() {
		return result;
	}

}


