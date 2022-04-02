package dao;

import java.io.*;
import java.util.*;

public class DataImporter {
	public static List<List<String>> loadCSV(String path) {
		List<List<String>> csvList = new ArrayList<List<String>>();  // csv 파일 받을 리스트
		File csv = new File(path);
		BufferedReader br = null;
		String line = "";
		
		try {
		    br = new BufferedReader(new FileReader(csv));
		    while ((line = br.readLine()) != null) { // readLine()은 파일에서 개행된 한 줄의 데이터를 읽어온다.
		        List<String> aLine = new ArrayList<String>();
		        String[] lineArr = line.split(",");  // 파일의 한 줄을 ,로 나누어 배열에 저장 후 리스트로 변환한다.
		        aLine = Arrays.asList(lineArr);
		        csvList.add(aLine);
		    }
		} catch (FileNotFoundException e) {
		    e.printStackTrace();
		} catch (IOException e) {
		    e.printStackTrace();
		} finally {
		    try {
		        if (br != null) { 
		            br.close(); // 사용 후 BufferedReader를 닫아준다.
		        }
		    } catch(IOException e) {
		        e.printStackTrace();
		    }
		}
		
		return csvList;
		
	}
}
