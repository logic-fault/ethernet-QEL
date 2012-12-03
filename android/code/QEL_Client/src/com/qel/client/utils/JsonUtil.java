package com.qel.client.utils;

import java.util.ArrayList;

import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;

import com.qel.client.pojos.GroupItem;
import com.qel.client.pojos.ListItem;
import com.qel.client.pojos.TagItem;

public class JsonUtil {

	public static ArrayList<ListItem> parseListItems(String in) {

		ArrayList<ListItem> temp = new ArrayList<ListItem>();
		try {
			JSONObject jsonList = new JSONObject(in);

			for (int i = 0; i < jsonList.length(); i++) {
				try {
					JSONObject item = jsonList.getJSONObject("list" + i);

					if (item != null) {

						String name = item.getString("name");
						String status = item.getString("status");
						long time = item.getLong("time");
						ListItem li = new ListItem(name, status, time);
						li.setId(i);
						temp.add(li);
					}

				} catch (Exception e) {
				}

			}

		} catch (JSONException e) {
			e.printStackTrace();
			return null;
		}

		Log.d("TAG", temp.size() + "size");
		
		return temp;
	}

	public static String parseResultJson(String in) {
		
		Log.d("TAG", "json result : " + in);
		try {
			JSONObject json = new JSONObject(in.trim());

			String result = json.getString("result");

			return result;
		} catch (Exception e) {
			return "";
		}
	}

	public static ArrayList<GroupItem> parseGroupItems(String in) {

		ArrayList<GroupItem> temp = new ArrayList<GroupItem>();

		Log.d("TAG", "in : " + in);
		try {
			JSONObject jsonList = new JSONObject(in.trim());

			for (int i = 0; i < jsonList.length(); i++) {
				try {
					String item = jsonList.getString("name" + i);

					if (item != null) {

						GroupItem gi = new GroupItem();
						gi.setgName(item);
						gi.setgID(i);
						temp.add(gi);
					}

				} catch (Exception e) {
				}

			}

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return temp;
	}

	public static ArrayList<TagItem> parseTagItems(String in) {

		ArrayList<TagItem> temp = new ArrayList<TagItem>();

		try {
			JSONObject jsonList = new JSONObject(in);

			for (int i = 0; i < jsonList.length(); i++) {
				try {
					JSONObject item = jsonList.getJSONObject("tag" + i);

					if (item != null) {

						TagItem gi = new TagItem();
						gi.setgName(item.getString("name"));
						gi.settName(item.getString("group"));
						gi.settId(item.getString("tagid"));
						gi.setId(i);
						temp.add(gi);
					}

				} catch (Exception e) {
				}

			}

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return temp;
	}
}
