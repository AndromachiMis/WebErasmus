package gr.hua.weberasmus;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class WebErasmusGeneric {
	
	public static final String URL = "http://localhost:8080/ErasmusApp";
	public static final String STUDENT_API = "/api/student";
	public static final String UNIVERSITIES_API = "/api/universities";
	public static final String CHARSET = "UTF-8";
	
	private URLConnection getConnection(String endpoint) {
		URLConnection connection = null;
		try {
			String url = URL + endpoint;
			System.out.println(url);
			connection = new URL(url).openConnection();
			connection.setRequestProperty("Accept-Charset", CHARSET);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	private JSONArray getJsonResponse(InputStream response) {
		JSONParser jsonParser = new JSONParser();
		JSONArray jsonArray = new JSONArray();
		try {
			jsonArray = (JSONArray)jsonParser.parse(new InputStreamReader(response, CHARSET));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return jsonArray;
	}
	
	public List<JSONObject> getUniversities() throws IOException {
		List<JSONObject> uniList = new ArrayList<JSONObject>();
		URLConnection connection = getConnection(UNIVERSITIES_API + "/getuniversities");
		InputStream response = connection.getInputStream();
		JSONArray array = getJsonResponse(response);
	    for (int i = 0; i < array.size(); i++) {
	        uniList.add((JSONObject)array.get(i));
	    }
		return uniList;
	}
}
