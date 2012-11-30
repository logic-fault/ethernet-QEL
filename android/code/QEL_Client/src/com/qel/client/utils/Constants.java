package com.qel.client.utils;

import java.util.HashMap;
import java.util.HashSet;

public class Constants {

	public static HashMap<Integer, Boolean> isCheckedMap;
	public static HashMap<Integer, Boolean> isGourpCheckedMap;
	public static HashMap<Integer, Boolean> isTagCheckedMap;
	public static HashMap<String, Boolean> isGroupListCheckedMap;
	public static HashSet<Integer> isGroupCheckedIndexSet;
	public static HashSet<Integer> isTagCheckedIndexSet;

	public static String strServerIP = "";
	public static String strHttpUrlHead = "http://";

	public static String strListAddress = "/index_m.php";
	public static String strGroupDataAccess = "/groups.php";
	public static String strTagsAccessUrl = "/tags.php";
	public static String strGroupListUrl = "/group.php";

	public static String jsonList = "{\"list0\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"},\"list1\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\""
			+ "},\"list2\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"},\"list3\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\""
			+ "},\"list4\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"}"
			+ ",\"list5\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"}"
			+ ",\"list6\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"}"
			+ ",\"list7\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"}"
			+ ",\"list8\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"}"
			+ ",\"list9\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"}"
			+ ",\"list10\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"}"
			+ ",\"list11\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"}"
			+ ",\"list12\": {\"name\": \"test\",\"status\": \"status\",\"time\": \"00000000\"}}";

	public static String jsonGroup = "{\"name0\": \"group1\",\"name1\": \"group2\",\"name2\": \"group2\",\"name3\": \"group2\",\"name4\": \"group2\","
			+ "\"name5\": \"group2\",\"name6\": \"group2\",\"name7\": \"group2\",\"name8\": \"group2\",\"name9\": \"group2\"}";

	public static String jsonTags = "{\"tag0\": {\"name\": \"tag0\",\"group\": \"group\",\"tagid\": \"tagid0\"},\"tag1\": {\"name\": \"tag1\",\"group\": \"group\","
			+ "\"tagid\": \"tagid1\"},\"tag2\": {\"name\": \"tag2\",\"group\": \"group\",\"tagid\": \"tagid2\"},\"tag3\": {\"name\": \"tag3\",\"group\": \"group\",\"tagid\": \"tagid3\""
			+ "},\"tag4\": {\"name\": \"tag4\",\"group\": \"group\",\"tagid\": \"tagid4\"},\"tag5\": {\"name\": \"tag5\",\"group\": \"group\",\"tagid\": \"tagid5\"},\"tag6\": {"
			+ "\"name\": \"tag6\",\"group\": \"group\",\"tagid\": \"tagid6\"},\"tag7\": {\"name\": \"tag7\",\"group\": \"group\",\"tagid\": \"tagid7\"},\"tag8\": {\"name\": \"tag8\","
			+ "\"group\": \"group\",\"tagid\": \"tagid8\"},\"tag9\": {\"name\": \"tag9\",\"group\": \"group\",\"tagid\": \"tagid9\"}}";
}
