package dao;

import java.io.*;
import java.util.*;

public class DataImporter {
	public static List<List<String>> loadCSV(String path) {
		List<List<String>> csvList = new ArrayList<List<String>>();  // csv ���� ���� ����Ʈ
		File csv = new File(path);
		BufferedReader br = null;
		String line = "";
		
		try {
		    br = new BufferedReader(new FileReader(csv));
		    while ((line = br.readLine()) != null) { // readLine()�� ���Ͽ��� ����� �� ���� �����͸� �о�´�.
		        List<String> aLine = new ArrayList<String>();
		        String[] lineArr = line.split(",");  // ������ �� ���� ,�� ������ �迭�� ���� �� ����Ʈ�� ��ȯ�Ѵ�.
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
		            br.close(); // ��� �� BufferedReader�� �ݾ��ش�.
		        }
		    } catch(IOException e) {
		        e.printStackTrace();
		    }
		}
		
		return csvList;
		
	}
}
