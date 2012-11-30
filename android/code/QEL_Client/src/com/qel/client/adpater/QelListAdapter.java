package com.qel.client.adpater;

import java.util.ArrayList;

import com.qel.client.R;
import com.qel.client.R.id;
import com.qel.client.pojos.ListItem;
import com.qel.client.utils.Constants;

import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class QelListAdapter extends BaseAdapter {

	ArrayList<ListItem> source = new ArrayList<ListItem>();
	Context context;

	public QelListAdapter(Context mContext, ArrayList<ListItem> lists) {
		source = lists;
		context = mContext;
	}

	@Override
	public int getCount() {
		return source.size();
	}

	@Override
	public Object getItem(int arg0) {
		return source.get(arg0);
	}

	@Override
	public long getItemId(int arg0) {
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup arg2) {

		final ListItem li = source.get(position);

		ItemHolder ih;

		if (convertView == null) {
			View view = LayoutInflater.from(context).inflate(R.layout.layout_listview_item, null);

			ih = new ItemHolder();

			ih.tvName = (TextView) view.findViewById(R.id.qelname);
			ih.tvStatus = (TextView) view.findViewById(R.id.qelstatus);
			ih.tvTime = (TextView) view.findViewById(R.id.qeltime);
			ih.llMain = (RelativeLayout) view.findViewById(R.id.llItem);
			ih.cbChecked = (CheckBox) view.findViewById(R.id.cbChecked);

			view.setTag(ih);

			convertView = view;
		} else {
			ih = (ItemHolder) convertView.getTag();
		}

		if (Constants.isCheckedMap.get(li.getId()) == null) {
			Constants.isCheckedMap.put(li.getId(), false);
		} else {
			ih.cbChecked.setChecked(Constants.isCheckedMap.get(li.getId()));
		}

		if (position % 2 == 0) {
			ih.llMain.setBackgroundColor(Color.GRAY);
		} else {
			ih.llMain.setBackgroundColor(Color.WHITE);
		}

		ih.tvName.setText(li.getName());
		ih.tvStatus.setText(li.getStatus());
		ih.tvTime.setText(li.getTime() + "");
		
		if(li.getName().equals("") && li.getStatus().equals("") && li.getTime() == 0){
			ih.llMain.setVisibility(View.INVISIBLE);
		}

		return convertView;
	}

	class ItemHolder {
		RelativeLayout llMain;
		TextView tvName;
		TextView tvStatus;
		TextView tvTime;
		CheckBox cbChecked;
	}

}
