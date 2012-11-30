package com.qel.client;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.Map.Entry;

import com.qel.client.adpater.GroupListAdapter;
import com.qel.client.adpater.TagsAdapter;
import com.qel.client.pojos.GroupItem;
import com.qel.client.pojos.ListItem;
import com.qel.client.pojos.TagItem;
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
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;

public class TagsActivity extends Activity implements OnItemClickListener {

	DropDownRefreshListView lvTags;
	TagsAdapter tAdapter;
	ArrayList<TagItem> arrayTagItems;

	ImageButton ibtnDelete;
	ImageButton ibtnAddTag;
	Button btnSetGroup;

	TagsActivity appref;

	ProgressBar pb;
	Spinner spinner;
	View view;

	ArrayList<GroupItem> arrayGroupItems = new ArrayList<GroupItem>();

	Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {

			switch (msg.what) {
			case 1:

				lvTags.onRefreshComplete();
				tAdapter.notifyDataSetChanged();
				break;

			default:
				break;
			}
			super.handleMessage(msg);
		}

	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_tags_activity);

		appref = this;

		ibtnAddTag = (ImageButton) findViewById(R.id.ibAddTags);
		ibtnDelete = (ImageButton) findViewById(R.id.ibDeleteTags);
		btnSetGroup = (Button) findViewById(R.id.btnSetGroup);

		Constants.isTagCheckedMap = new HashMap<Integer, Boolean>();

		lvTags = (DropDownRefreshListView) findViewById(R.id.lvTagsList);

		lvTags.setonRefreshListener(new OnRefreshListener() {

			@Override
			public void onRefresh() {
				new getListTask().execute();
			}
		});

		lvTags.setOnItemClickListener(this);

		ibtnAddTag.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				final View view = LayoutInflater.from(appref).inflate(R.layout.layout_add_tag, null);
				new AlertDialog.Builder(appref).setTitle(getString(R.string.caution)).setView(view)
						.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog, int which) {
								EditText etName = (EditText) view.findViewById(R.id.etTagName);
								EditText etId = (EditText) view.findViewById(R.id.etTagId);

								if (!etName.getText().toString().equals("") || !etId.getText().toString().equals("")) {
									if (JsonUtil.parseResultJson(
											NetworkUtil.addTags(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strTagsAccessUrl, etName
													.getText().toString(), etId.getText().toString())).equals("1")) {
										Toast.makeText(getApplicationContext(), "Successfully Added", 1000).show();
									} else {
										Toast.makeText(getApplicationContext(), "Successfully Added", 1000).show();
									}
								}
							}
						}).setNegativeButton(getString(R.string.button_cancel), new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog, int which) {

							}
						}).show();

			}
		});

		ibtnDelete.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				TextView tvConfirm = new TextView(appref);
				tvConfirm.setText("Are you sure.");
				new AlertDialog.Builder(appref).setTitle(getString(R.string.caution)).setView(tvConfirm)
						.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog, int which) {

								if (JsonUtil.parseResultJson(
										NetworkUtil.delTags(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strTagsAccessUrl
												+ "?action=delete", getCheckedItemList())).equals("1")) {
									Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
								} else {
									Toast.makeText(getApplicationContext(), "Successfully Deleted", 1000).show();
								}
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

		btnSetGroup.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				View view = LayoutInflater.from(appref).inflate(R.layout.layout_tag_setgroup, null);
				pb = (ProgressBar) view.findViewById(R.id.progressBar1);
				spinner = (Spinner) view.findViewById(R.id.spinnerGroup);
				
				new AlertDialog.Builder(appref).setTitle(getString(R.string.set_group)).setView(view)
						.setPositiveButton(getString(R.string.button_confirm), new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog, int which) {
								if (JsonUtil.parseResultJson(
										NetworkUtil.delTags(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strTagsAccessUrl
												+ "?action=set_group&group_select="
												+ arrayGroupItems.get(spinner.getSelectedItemPosition()).getgName(), getCheckedItemList())).equals(
										"1")) {
									Toast.makeText(getApplicationContext(), "Successfully Setted", 1000).show();
								} else {
									Toast.makeText(getApplicationContext(), "Successfully Setted", 1000).show();
								}
								clearCheckBoxStatus();
							}
						}).setNegativeButton(getString(R.string.button_cancel), new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog, int which) {

							}
						}).show();

				new getGroupTask().execute();
			}
		});
		new getListTask().execute();
	}

	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
		int ids = arrayTagItems.get(position - 1).getId();

		boolean value;
		try {
			value = Constants.isTagCheckedMap.get(ids);
		} catch (Exception e) {
			value = false;
		}

		Constants.isTagCheckedMap.put(ids, !value);

		tAdapter.notifyDataSetChanged();
	}

	private ArrayList<TagItem> getCheckedItemList() {

		ArrayList<TagItem> temp = new ArrayList<TagItem>();

		Set<Entry<Integer, Boolean>> set = Constants.isTagCheckedMap.entrySet();

		// set all to !flag
		for (Iterator it = set.iterator(); it.hasNext();) {
			Entry<Integer, Boolean> entry = (Entry<Integer, Boolean>) it.next();
			if (Constants.isTagCheckedMap.get(entry.getKey())) {
				temp.add(arrayTagItems.get(entry.getKey()));
			}
		}

		return temp;
	}

	private void clearCheckBoxStatus() {
		Set<Entry<Integer, Boolean>> set = Constants.isTagCheckedMap.entrySet();

		// set all to !flag
		for (Iterator it = set.iterator(); it.hasNext();) {
			Entry<Integer, Boolean> entry = (Entry<Integer, Boolean>) it.next();
			Constants.isTagCheckedMap.put(entry.getKey(), false);
		}

		tAdapter.notifyDataSetChanged();
	}

	class getListTask extends AsyncTask {

		@Override
		protected void onPostExecute(Object result) {

			tAdapter = new TagsAdapter(getApplicationContext(), arrayTagItems);

			lvTags.setAdapter(tAdapter);

			Message msg = new Message();
			msg.what = 1;
			mHandler.sendMessage(msg);

			super.onPostExecute(result);
		}

		@Override
		protected Object doInBackground(Object... params) {

			String back = NetworkUtil.connect(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strTagsAccessUrl);

			ArrayList<TagItem> al = JsonUtil.parseTagItems(back);
			if (al != null) {
				arrayTagItems = al;
			}

			return null;
		}

	};

	class getGroupTask extends AsyncTask {

		@Override
		protected void onPostExecute(Object result) {

			pb.setVisibility(View.GONE);

			spinner.setVisibility(View.VISIBLE);
			String[] names = new String[arrayGroupItems.size()];
			for (int i = 0; i < arrayGroupItems.size(); i++) {
				names[i] = arrayGroupItems.get(i).getgName();
			}

			ArrayAdapter<String> adapter = new ArrayAdapter<String>(appref, android.R.layout.simple_spinner_item, names);

			spinner.setAdapter(adapter);

			super.onPostExecute(result);
		}

		@Override
		protected Object doInBackground(Object... params) {

			String back = NetworkUtil.connect(Constants.strHttpUrlHead + Constants.strServerIP + Constants.strGroupDataAccess);

			ArrayList<GroupItem> ala = JsonUtil.parseGroupItems(back);
			if (ala != null) {
				arrayGroupItems = ala;
			}

			return null;
		}

	};
}
