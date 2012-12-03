package com.qel.client.utils;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import com.qel.client.R.string;
import com.qel.client.pojos.TagItem;

import android.R.integer;
import android.os.DropBoxManager.Entry;
import android.util.Log;

public class NetworkUtil {

	/**
	 * down load content.
	 * 
	 * @param url
	 * @return
	 */
	public static String connect(String url) {

		try {
			URL urlCon = new URL(url);

			Log.v("TAG", url);
			HttpURLConnection conn = (HttpURLConnection) urlCon.openConnection();

			conn.setRequestMethod("GET");

			conn.setConnectTimeout(5 * 1000);

			InputStream inStream = conn.getInputStream();
			byte[] data = readFromInput(inStream);

			String html = new String(data, "gbk");

			return html;
		} catch (Exception e) {
			Log.v("TAG", "Connect " + e.getMessage());
			return "";
		}
	}

	public static String addTags(String url, String tagname, String tagid) {

		return connect(url + "?action=new_tag&new_name=" + tagname + "&new_ID=" + tagid);
	}

	public static String delTags(String url, ArrayList<TagItem> source) {

		if (source.size() > 0) {
			StringBuffer sBuffer = new StringBuffer();

			for (int i = 0; i < source.size() - 1; i++) {
				sBuffer.append(source.get(i).gettId() + ",");
			}

			sBuffer.append(source.get(source.size() - 1).gettId());

			return connect(url + "&check_tag=" + sBuffer.toString());
		} else {
			return "";
		}

	}

	public static String updateGroupMemberList(String url, HashSet<String> names) {

		if (names.size() > 0) {
			StringBuffer sb = new StringBuffer();
			Object o[] = names.toArray();
			for (int i = 0; i < o.length - 1; i++) {
				sb.append(o[i] + ",");
			}

			sb.append(o[o.length - 1]);
			return connect(url + "&qels_list=" + sb.toString());
		} else {
			return "";
		}

	}

	public static String addNewGroup(String url, String groupname) {

		String second = url + "&new_name=" + groupname;

		return connect(second);
	}

	public static String delGroups(String url, ArrayList<String> source) {

		if (source.size() > 0) {
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < source.size() - 1; i++) {
				sb.append(source.get(i) + ",");
			}
			Log.d("TAG", "index : " + (source.size() - 1));
			sb.append(source.get(source.size() - 1));

			return connect(url + "&list_group=" + sb.toString());
		} else {
			return "";
		}
	}

	/**
	 * down load content.
	 * 
	 * @param url
	 * @return
	 */
	public static String dopost(String url, ArrayList<String> names) {

		try {
			URL urlCon = new URL(url);

			DefaultHttpClient dhc = new DefaultHttpClient();

			HttpPost httpPost = new HttpPost(urlCon.toURI());

			ArrayList<BasicNameValuePair> pairs = new ArrayList<BasicNameValuePair>();

			if (names.size() > 0) {

				StringBuffer sb = new StringBuffer();
				for (int i = 0; i < names.size() - 1; i++) {
					sb.append(names.get(i));
				}

				sb.append(names.get(names.size() - 1));

				pairs.add(new BasicNameValuePair("name", sb.toString()));

				UrlEncodedFormEntity p_entity = new UrlEncodedFormEntity(pairs, "utf-8");

				httpPost.setEntity(p_entity);

				HttpResponse hr = dhc.execute(httpPost);
				HttpEntity he = hr.getEntity();
				InputStream is = he.getContent();

				String html = convertStreamToString(is);
				return html;
			}

			return "";
		} catch (Exception e) {
			Log.v("TAG", "Connect " + e.getMessage());
			return "";
		}
	}

	public static String dopost(String url, HashSet<String> names) {

		try {
			URL urlCon = new URL(url);

			Log.d("TAG", url);

			DefaultHttpClient dhc = new DefaultHttpClient();

			HttpPost httpPost = new HttpPost(urlCon.toURI());

			ArrayList<BasicNameValuePair> pairs = new ArrayList<BasicNameValuePair>();

			if (names.size() > 0) {

				StringBuffer sb = new StringBuffer();

				Object o[] = names.toArray();
				for (int i = 0; i < o.length - 1; i++) {
					sb.append(o[i] + ",");
				}

				sb.append(o[o.length - 1]);

				Log.d("TAG", "pairs  : " + sb.toString());
				pairs.add(new BasicNameValuePair("group_name", sb.toString()));

				UrlEncodedFormEntity p_entity = new UrlEncodedFormEntity(pairs, "utf-8");

				httpPost.setEntity(p_entity);

				HttpResponse hr = dhc.execute(httpPost);
				HttpEntity he = hr.getEntity();
				InputStream is = he.getContent();

				String html = convertStreamToString(is);
				return html;
			}

			return "";
		} catch (Exception e) {
			Log.v("TAG", "Connect " + e.getMessage());
			return "";
		}
	}

	public static String dopost(String url) {

		try {
			URL urlCon = new URL(url);

			DefaultHttpClient dhc = new DefaultHttpClient();

			HttpPost httpPost = new HttpPost(urlCon.toURI());

			HttpResponse hr = dhc.execute(httpPost);
			HttpEntity he = hr.getEntity();
			InputStream is = he.getContent();

			String html = convertStreamToString(is);
			return html;
		} catch (Exception e) {
			Log.v("TAG", "Connect " + e.getMessage());
			return "";
		}
	}

	private static String convertStreamToString(InputStream is) {
		BufferedReader reader = new BufferedReader(new InputStreamReader(is));
		StringBuilder sb = new StringBuilder();
		String line = null;
		try {
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return sb.toString();
	}

	/**
	 * Get bytes from input stream.
	 * 
	 * @param inStream
	 * @return
	 * @throws Exception
	 */
	public static byte[] readFromInput(InputStream inStream) throws Exception {

		ByteArrayOutputStream outStream = new ByteArrayOutputStream();

		byte[] buffer = new byte[1024];

		int len = 0;

		while ((len = inStream.read(buffer)) != -1) {

			outStream.write(buffer, 0, len);

		}

		inStream.close();

		return outStream.toByteArray();

	}
}
