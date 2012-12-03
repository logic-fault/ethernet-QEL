package com.qel.client;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

import com.qel.client.R.id;
import com.qel.client.adpater.QelListAdapter;
import com.qel.client.dao.ConfigDao;
import com.qel.client.pojos.ListItem;
import com.qel.client.utils.Constants;
import com.qel.client.utils.JsonUtil;
import com.qel.client.utils.NetworkUtil;
import com.qel.client.widget.DropDownRefreshListView;
import com.qel.client.widget.DropDownRefreshListView.OnRefreshListener;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.database.Cursor;
import android.hardware.Camera.Size;
import android.opengl.GLDebugHelper;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.GetChars;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CompoundButton.OnCheckedChangeListener;

/**
 * @author Adil Soomro
 * 
 */
public class ListActivity extends Activity {

	ArrayList<ListItem> arrayListItems = new ArrayList<ListItem>();
	DropDownRefreshListView lvItems;
	QelListAdapter listAdapter;

	CheckBox cbAll;
	AlertDialog adSetServerIp;
	ListActivity appref;
	EditText etServerIpSet;
	ImageView ivLock;
	ImageView ivUnLock;
	ImageView ivNoEntry;
	ConfigDao cd;

	Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {

			switch (msg.what) {
			case 1:

				lvItems.onRefreshComplete();
				listAdapter.notifyDataSetChanged();
				break;

			default:
				break;
			}
			super.handleMessage(msg);
		}

	};

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.arrowspage);

		ivLock = (ImageView) findViewById(R.id.ivLock);
		ivUnLock = (ImageView) findViewById(R.id.ivUnLock);
		ivNoEntry = (ImageView) findViewById(R.id.ivNoEntry);

		appref = this;

		cd = new ConfigDao(getApplicationContext());

		Cursor cursor = cd.query("sip");
		cursor.moveToFirst();

		if (cursor.getCount() > 0) {
			for (cursor.moveToFirst(); !cursor.isAfterLast(); cursor.moveToNext()) {
				if (cursor.getString(0).equals("") || cursor.getString(0) == null) {
					Log.d("TAG", "string : " + cursor.getString(0));
					showServerIpInputDialog();
				} else {
					Constants.strServerIP = cursor.getString(0);
				}
			}
		}

		ivLock.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {

				ArrayList<ListItem> itemlist = getCheckedItemList();
				if (itemlist.size() > 0) {

					TextView tvContent = new TextView(appref);
					tvContent.setText("Lock");
					new AlertDialog.Builder(appref).setTitle(getString(R.string.caution)).setView(tvContent)
							.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

								@Override
								public void onClick(DialogInterface dialog, int which) {
									ArrayList<ListItem> alli = getCheckedItemList();

									StringBuffer sb = new StringBuffer();

									for (int i = 0; i < alli.size() - 1; i++) {
										sb.append(alli.get(i).getName() + ",");
									}
									sb.append(alli.get(alli.size() - 1).getName());

									if (JsonUtil.parseResultJson(
											NetworkUtil.connect(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strListAddress
													+ "?qel_action=Lock&check_qel=" + sb.toString())).equals("1")) {
										Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
									} else {
										Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
									}

									clearCheckBoxStatus();

								}

							}).setNegativeButton(getString(R.string.button_cancel), new DialogInterface.OnClickListener() {

								@Override
								public void onClick(DialogInterface dialog, int which) {
								}

							}).show();
				}

			}
		});
		ivUnLock.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				ArrayList<ListItem> itemlist = getCheckedItemList();
				TextView tvContent = new TextView(appref);
				tvContent.setText("UnLock");
				if (itemlist.size() > 0) {
					new AlertDialog.Builder(appref).setTitle(getString(R.string.caution)).setView(tvContent)
							.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

								@Override
								public void onClick(DialogInterface dialog, int which) {
									
									ArrayList<ListItem> alli = getCheckedItemList();

									StringBuffer sb = new StringBuffer();

									for (int i = 0; i < alli.size() - 1; i++) {
										sb.append(alli.get(i).getName() + ",");
									}
									sb.append(alli.get(alli.size() - 1).getName());

									if (JsonUtil.parseResultJson(
											NetworkUtil.connect(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strListAddress
													+ "?qel_action=Unlock&check_qel=" + sb.toString())).equals("1")) {
										Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
									} else {
										Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
									}
									
									clearCheckBoxStatus();

								}

							}).setNegativeButton(getString(R.string.button_cancel), new DialogInterface.OnClickListener() {

								@Override
								public void onClick(DialogInterface dialog, int which) {
								}

							}).show();
				}
			}
		});

		ivNoEntry.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				ArrayList<ListItem> itemlist = getCheckedItemList();
				TextView tvContent = new TextView(appref);
				tvContent.setText("No Entry");
				if (itemlist.size() > 0) {
					new AlertDialog.Builder(appref).setTitle(getString(R.string.caution)).setView(tvContent)
							.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

								@Override
								public void onClick(DialogInterface dialog, int which) {
									
									ArrayList<ListItem> alli = getCheckedItemList();

									StringBuffer sb = new StringBuffer();

									for (int i = 0; i < alli.size() - 1; i++) {
										sb.append(alli.get(i).getName() + ",");
									}
									sb.append(alli.get(alli.size() - 1).getName());

									if (JsonUtil.parseResultJson(
											NetworkUtil.connect(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strListAddress
													+ "?qel_action=Secure&check_qel=" + sb.toString())).equals("1")) {
										Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
									} else {
										Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
									}
									
									clearCheckBoxStatus();
								}

							}).setNegativeButton(getString(R.string.button_cancel), new DialogInterface.OnClickListener() {

								@Override
								public void onClick(DialogInterface dialog, int which) {
								}

							}).show();
				}
			}
		});

		Constants.isCheckedMap = new HashMap<Integer, Boolean>();

		cbAll = (CheckBox) findViewById(R.id.ivCheckAll);

		lvItems = (DropDownRefreshListView) findViewById(R.id.lvListItems);

		lvItems.setonRefreshListener(new OnRefreshListener() {

			@Override
			public void onRefresh() {
				new getListTask().execute();
			}
		});

		lvItems.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> adapter, View view, int position, long id) {

				int ids = arrayListItems.get(position - 1).getId();

				boolean value;
				try {
					value = Constants.isCheckedMap.get(ids);
				} catch (Exception e) {
					value = false;
				}

				Constants.isCheckedMap.put(ids, !value);

				listAdapter.notifyDataSetChanged();
			}
		});

		cbAll.setOnCheckedChangeListener(new OnCheckedChangeListener() {

			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				Set<Entry<Integer, Boolean>> set = Constants.isCheckedMap.entrySet();

				// set all to !flag
				for (Iterator it = set.iterator(); it.hasNext();) {
					Entry<Integer, Boolean> entry = (Entry<Integer, Boolean>) it.next();
					Constants.isCheckedMap.put(entry.getKey(), isChecked);
				}

				listAdapter.notifyDataSetChanged();
			}
		});

		new getListTask().execute();
	}

	private ArrayList<ListItem> getCheckedItemList() {

		ArrayList<ListItem> temp = new ArrayList<ListItem>();

		Set<Entry<Integer, Boolean>> set = Constants.isCheckedMap.entrySet();

		// set all to !flag
		for (Iterator it = set.iterator(); it.hasNext();) {
			Entry<Integer, Boolean> entry = (Entry<Integer, Boolean>) it.next();
			if (Constants.isCheckedMap.get(entry.getKey())) {
				temp.add(arrayListItems.get(entry.getKey()));
			}
		}

		return temp;
	}

	private void clearCheckBoxStatus() {
		Set<Entry<Integer, Boolean>> set = Constants.isCheckedMap.entrySet();

		// set all to !flag
		for (Iterator it = set.iterator(); it.hasNext();) {
			Entry<Integer, Boolean> entry = (Entry<Integer, Boolean>) it.next();
			Constants.isCheckedMap.put(entry.getKey(), false);
		}

		cbAll.setChecked(false);

		listAdapter.notifyDataSetChanged();
	}

	private void showServerIpInputDialog() {
		if (adSetServerIp == null) {

			etServerIpSet = new EditText(appref);

			adSetServerIp = new AlertDialog.Builder(appref).setTitle(getString(R.string.setip_title)).setView(etServerIpSet)
					.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {
							String ip = etServerIpSet.getText().toString();
							if (!ip.equals("")) {
								cd.save("sip", ip);
								Constants.strServerIP = ip;
								adSetServerIp.dismiss();
							}

						}
					}).setNegativeButton(getString(R.string.button_cancel), new DialogInterface.OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {

						}
					}).create();
		}

		if (adSetServerIp != null)
			adSetServerIp.show();
	}

	class getListTask extends AsyncTask {

		@Override
		protected void onPostExecute(Object result) {

			if (arrayListItems.size() == 0) {
				arrayListItems.add(new ListItem("", "", 0));
			}

			listAdapter = new QelListAdapter(getApplicationContext(), arrayListItems);
			lvItems.setAdapter(listAdapter);

			Message msg = new Message();
			msg.what = 1;
			mHandler.sendMessage(msg);

			super.onPostExecute(result);
		}

		@Override
		protected Object doInBackground(Object... params) {

			String back = NetworkUtil.connect(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strListAddress);

			ArrayList<ListItem> al = JsonUtil.parseListItems(back);
			if (al != null) {
				arrayListItems = al;
			}

			return null;
		}

	}

}