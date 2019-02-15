package gr.hua.weberasmus;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;


public class WebErasmusGeneric {
	
	public static final String URL = "http://localhost:8080/ErasmusApp";
	public static final String STUDENT_API = "/api";
	public static final String UNIVERSITIES_API = "/api/universities";
	public static final String CHARSET = "UTF-8";
	
	public URLConnection getErasmusConnection(String endpoint) {
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
	
	public JSONArray getJsonResponse(InputStream response) {
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
		URLConnection connection = getErasmusConnection(UNIVERSITIES_API + "/getuniversities");
		InputStream response = connection.getInputStream();
		JSONArray array = getJsonResponse(response);
	    for (int i = 0; i < array.size(); i++) {
	        uniList.add((JSONObject)array.get(i));
	    }
		return uniList;
	}
	
	public List<JSONObject> getStudents() throws IOException {
		List<JSONObject> studList = new ArrayList<JSONObject>();
		URLConnection connection = getErasmusConnection(STUDENT_API + "/students");
		InputStream response = connection.getInputStream();
		JSONArray array = getJsonResponse(response);
	    for (int i = 0; i < array.size(); i++) {
	        studList.add((JSONObject)array.get(i));
	    }
		return studList;
	}
	
	// HTTP GET request
		public void sendGet(String url) throws Exception {
			
			URL obj = new URL(url);
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();

			con.setRequestMethod("GET");

			int responseCode = con.getResponseCode();

			BufferedReader in = new BufferedReader(
			        new InputStreamReader(con.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();

		}
		
		// HTTP POST request
		public void sendPost(String url, String urlParameters) throws Exception {
			URL obj = new URL(url);
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();

			con.setRequestMethod("POST");
			con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
			con.setDoOutput(true);
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(urlParameters);
			wr.flush();
			wr.close();

			int responseCode = con.getResponseCode();

			BufferedReader in = new BufferedReader(
			        new InputStreamReader(con.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
		}
		
		// HTTP PUT request
		public void sendPut(String url, String urlParameters) throws Exception {
			URL obj = new URL(url);
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();

			con.setRequestMethod("PUT");
			con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
			con.setDoOutput(true);
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(urlParameters);
			wr.flush();
			wr.close();

			int responseCode = con.getResponseCode();

			BufferedReader in = new BufferedReader(
			        new InputStreamReader(con.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
		}
		
		// HTTP DELETE request
		public void sendDelete(String url, String urlParameters) throws Exception {
			URL obj = new URL(url);
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();

			con.setRequestMethod("DELETE");
			con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
			con.setDoOutput(true);
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(urlParameters);
			wr.flush();
			wr.close();

			int responseCode = con.getResponseCode();

			BufferedReader in = new BufferedReader(
			        new InputStreamReader(con.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
		}
}
