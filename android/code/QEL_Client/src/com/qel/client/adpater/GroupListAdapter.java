package com.qel.client.adpater;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import com.qel.client.GroupActivity;
import com.qel.client.pojos.GroupItem;
import com.qel.client.pojos.ListItem;
import com.qel.client.utils.Constants;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.Spinner;
import android.widget.TextView;

public class GroupListAdapter extends BaseAdapter {

	Context mContext;
	ArrayList<ListItem> arrayList;
	LayoutInflater inflater;

	public GroupListAdapter(Context context, ArrayList<ListItem> array, ArrayList<GroupItem> members) {

		GroupActivity.arrayMemeber = new HashSet<String>();
		GroupActivity.memberToAdd = new HashSet<String>();
		GroupActivity.memberToDel = new HashSet<String>();
		Constants.isGroupListCheckedMap = new HashMap<String, Boolean>();
		mContext = context;
		arrayList = array;
		inflater = LayoutInflater.from(context);

		for (GroupItem li : members) {
			Log.d("TAG", li.getgName());
			GroupActivity.arrayMemeber.add(li.getgName());
		}
	}

	@Override
	public int getCount() {
		return arrayList.size();
	}

	@Override
	public Object getItem(int arg0) {
		return arrayList.get(arg0);
	}

	@Override
	public long getItemId(int arg0) {
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup arg2) {

		final ListItem li = arrayList.get(position);

		CheckBox tView = new CheckBox(mContext);
		tView.setTextSize(24);
		tView.setTextColor(Color.WHITE);

		tView.setText(li.getName());

		tView.setChecked(false);

		tView.setOnCheckedChangeListener(new OnCheckedChangeListener() {

			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				if (isChecked == false && GroupActivity.arrayMemeber.contains(li.getName())) {
					GroupActivity.memberToDel.add(li.getName());
				} else if (isChecked == true && !GroupActivity.arrayMemeber.contains(li.getName())) {
					GroupActivity.memberToAdd.add(li.getName());
				}

			}
		});

		if (GroupActivity.arrayMemeber.contains(li.getName())) {
			Constants.isGroupListCheckedMap.put(li.getName(), true);
			tView.setChecked(true);
		} else {
			Constants.isGroupListCheckedMap.put(li.getName(), false);
			tView.setChecked(false);
		}

		return tView;
	}

}

class Holder {
	TextView tvmain;
}
