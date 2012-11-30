package com.qel.client;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.Map.Entry;

import javax.xml.transform.Source;

import com.qel.client.adpater.GroupListAdapter;
import com.qel.client.adpater.GroupsAdapter;
import com.qel.client.pojos.GroupItem;
import com.qel.client.pojos.ListItem;
import com.qel.client.utils.Constants;
import com.qel.client.utils.JsonUtil;
import com.qel.client.utils.NetworkUtil;
import com.qel.client.widget.DropDownRefreshListView;
import com.qel.client.widget.DropDownRefreshListView.OnRefreshListener;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;

/**
 * @author Adil Soomro
 * 
 */
public class GroupActivity extends Activity implements OnItemClickListener {

	String groupName;
	ArrayList<GroupItem> arrayGroupList;
	DropDownRefreshListView lvGroup;
	GroupsAdapter groupsAdapter;

	ImageButton btnDelete;
	ImageButton btnAdd;

	ProgressBar pb;
	ListView lvGroupList;
	View viewGroup;

	public static HashSet<String> arrayMemeber = new HashSet<String>();
	public static HashSet<String> memberToAdd;
	public static HashSet<String> memberToDel;

	GroupActivity appref;
	ArrayList<ListItem> arrayList = new ArrayList<ListItem>();
	ArrayList<GroupItem> groupMemeber;

	Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {

			switch (msg.what) {
			case 1:

				lvGroup.onRefreshComplete();
				groupsAdapter.notifyDataSetChanged();
				break;

			default:
				break;
			}
			super.handleMessage(msg);
		}

	};

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_group_activity);

		appref = this;
		btnDelete = (ImageButton) findViewById(R.id.ibDelete);
		btnAdd = (ImageButton) findViewById(R.id.ibAddGroup);
		Constants.isGourpCheckedMap = new HashMap<Integer, Boolean>();
		arrayGroupList = new ArrayList<GroupItem>();
		lvGroup = (DropDownRefreshListView) findViewById(R.id.lvGroupList);

		lvGroup.setonRefreshListener(new OnRefreshListener() {

			@Override
			public void onRefresh() {
				new getListTask().execute();
			}
		});

		lvGroup.setOnItemClickListener(this);

		btnDelete.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				TextView tvConfirm = new TextView(appref);
				tvConfirm.setText("Are you sure.");
				new AlertDialog.Builder(appref).setTitle(getString(R.string.add_tag)).setView(tvConfirm)
						.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog, int which) {
								mHandler.post(new Runnable() {

									@Override
									public void run() {
										ArrayList<GroupItem> aTemp = getCheckedItemList();

										ArrayList<String> source = new ArrayList<String>();
										Object o[] = Constants.isGroupCheckedIndexSet.toArray();
										for (int i = 0; i < o.length; i++) {
											source.add(arrayGroupList.get((Integer) o[i]).getgName());
										}

										if (JsonUtil.parseResultJson(
												NetworkUtil.delGroups(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strGroupDataAccess
														+ "?actiondel=check_group", source)).equals("1")) {
											Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
										} else {
											Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
										}
									}
								});
								clearCheckBoxStatus();
							}
						}).setNegativeButton(getString(R.string.button_cancel), new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog, int which) {
								// TODO Auto-generated method stub

							}
						}).show();
			}
		});

		btnAdd.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				final View view = LayoutInflater.from(appref).inflate(R.layout.layout_add_group, null);
				new AlertDialog.Builder(appref).setTitle(getString(R.string.add_group)).setView(view)
						.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog, int which) {
								final EditText et = (EditText) view.findViewById(R.id.etGroupName);
								if (!et.getText().toString().equals("")) {
									mHandler.post(new Runnable() {

										@Override
										public void run() {
											if (JsonUtil.parseResultJson(
													NetworkUtil.addNewGroup(Constants.strHttpUrlHead + Constants.strServerIP
															+ Constants.strGroupDataAccess + "?action=new_group", et.getText().toString())).equals(
													"1")) {
												Toast.makeText(getApplicationContext(), "Successfully Added", 1000).show();
											} else {
												Toast.makeText(getApplicationContext(), "Successfully Added", 1000).show();
											}
										}
									});
								}
							}
						}).setNegativeButton(getString(R.string.button_cancel), new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog, int which) {
								// TODO Auto-generated method stub

							}
						}).show();

			}
		});

		new getListTask().execute();
	}

	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

		groupName = arrayGroupList.get(position - 1).getgName();

		viewGroup = LayoutInflater.from(appref).inflate(R.layout.layout_group_list, null);
		pb = (ProgressBar) viewGroup.findViewById(R.id.progressBarGroupList);
		lvGroupList = (ListView) viewGroup.findViewById(R.id.lvGroupUserList);

		final String page_ref = "group.php?group_name=" + groupName;

		new AlertDialog.Builder(appref).setTitle(getString(R.string.group_user_list)).setView(viewGroup)
				.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

					@Override
					public void onClick(DialogInterface dialog, int which) {
						mHandler.post(new Runnable() {

							@Override
							public void run() {

								if (JsonUtil.parseResultJson(
										NetworkUtil.updateGroupMemberList(Constants.strHttpUrlHead + Constants.strServerIP + "/" + page_ref
												+ "&action=submit_new_qels", GroupActivity.memberToAdd)).equals("1")) {
								} else {
								}
								if (JsonUtil.parseResultJson(
										NetworkUtil.updateGroupMemberList(Constants.strHttpUrlHead + Constants.strServerIP + "/" + page_ref
												+ "&action=submit_delete_qels", GroupActivity.memberToDel)).equals("1")) {
								} else {
								}

							}
						});
					}
				}).setNegativeButton(getString(R.string.button_cancel), new DialogInterface.OnClickListener() {

					@Override
					public void onClick(DialogInterface dialog, int which) {

					}
				}).show();

		new getGroupListTask().execute();
	}

	private ArrayList<GroupItem> getCheckedItemList() {

		ArrayList<GroupItem> temp = new ArrayList<GroupItem>();

		Set<Entry<Integer, Boolean>> set = Constants.isGourpCheckedMap.entrySet();

		// set all to !flag
		for (Iterator it = set.iterator(); it.hasNext();) {
			Entry<Integer, Boolean> entry = (Entry<Integer, Boolean>) it.next();
			Log.d("TAG", "is checked : " + Constants.isGourpCheckedMap.get(entry.getKey()));
			if (Constants.isGourpCheckedMap.get(entry.getKey())) {
				temp.add(arrayGroupList.get(entry.getKey()));
			}
		}

		return temp;
	}

	private void clearCheckBoxStatus() {

		Set<Entry<Integer, Boolean>> set = Constants.isGourpCheckedMap.entrySet();

		// set all to !flag
		for (Iterator it = set.iterator(); it.hasNext();) {
			Entry<Integer, Boolean> entry = (Entry<Integer, Boolean>) it.next();
			Constants.isGourpCheckedMap.put(entry.getKey(), false);
		}

		groupsAdapter.notifyDataSetChanged();
	}

	class getListTask extends AsyncTask {

		@Override
		protected void onPostExecute(Object result) {

			groupsAdapter = new GroupsAdapter(getApplicationContext(), arrayGroupList);

			lvGroup.setAdapter(groupsAdapter);

			Message msg = new Message();
			msg.what = 1;
			mHandler.sendMessage(msg);

			super.onPostExecute(result);
		}

		@Override
		protected Object doInBackground(Object... params) {

			String back = NetworkUtil.connect(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strGroupDataAccess);

			ArrayList<GroupItem> al = JsonUtil.parseGroupItems(back);
			if (al != null) {
				arrayGroupList = al;
			}

			return null;
		}

	};

	class getGroupListTask extends AsyncTask {

		@Override
		protected void onPostExecute(Object result) {

			if (groupMemeber == null)
				groupMemeber = new ArrayList<GroupItem>();

			pb.setVisibility(View.GONE);

			lvGroupList.setVisibility(View.VISIBLE);
			String[] names = new String[arrayList.size()];
			for (int i = 0; i < arrayList.size(); i++) {
				names[i] = arrayList.get(i).getName();
			}

			GroupListAdapter gla = new GroupListAdapter(appref, arrayList, groupMemeber);

			lvGroupList.setAdapter(gla);

			super.onPostExecute(result);
		}

		@Override
		protected Object doInBackground(Object... params) {

			if (!groupName.equals("") && groupName != null) {
				// groupMemeber = new ArrayList<ListItem>();
				String back = NetworkUtil.connect(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strListAddress);

				ArrayList<ListItem> al = JsonUtil.parseListItems(back);

				String member = NetworkUtil.connect(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strGroupListUrl + "?group_name="
						+ groupName);
				groupMemeber = JsonUtil.parseGroupItems(member);

				if (al != null) {
					arrayList = al;
				}
			}

			return null;
		}

	};
}
