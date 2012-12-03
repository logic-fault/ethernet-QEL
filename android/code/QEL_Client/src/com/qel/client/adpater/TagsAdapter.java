package com.qel.client.adpater;

import java.util.ArrayList;
import java.util.HashSet;

import com.qel.client.R;
import com.qel.client.pojos.TagItem;
import com.qel.client.utils.Constants;

import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class TagsAdapter extends BaseAdapter {

	Context mContext;
	LayoutInflater inflater;
	ArrayList<TagItem> arrayTags;

	public TagsAdapter(Context context, ArrayList<TagItem> in) {

		Constants.isTagCheckedIndexSet = new HashSet<Integer>();
		mContext = context;
		arrayTags = in;
		inflater = LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		return arrayTags.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return arrayTags.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {

		TagItem ti = arrayTags.get(position);
		TagHolder th;

		if (convertView == null) {

			View view = inflater.inflate(R.layout.layout_listview_tag, null);

			th = new TagHolder();

			th.rlMain = (RelativeLayout) view.findViewById(R.id.llItem);
			th.tvTName = (TextView) view.findViewById(R.id.tagname);
			th.tvGName = (TextView) view.findViewById(R.id.taggroup);
			th.tvTId = (TextView) view.findViewById(R.id.tagid);
			th.cbCheck = (CheckBox) view.findViewById(R.id.cbChecked);

			view.setTag(th);

			convertView = view;
		} else {
			th = (TagHolder) convertView.getTag();
		}

		if (Constants.isTagCheckedMap.get(ti.getId()) == null) {
			Constants.isTagCheckedMap.put(ti.getId(), false);
		} else {
			th.cbCheck.setChecked(Constants.isTagCheckedMap.get(ti.getId()));
		}

		if (position % 2 == 0) {
			th.rlMain.setBackgroundColor(Color.WHITE);
		} else {
			th.rlMain.setBackgroundColor(Color.GRAY);
		}

		th.tvTName.setText(ti.gettName());
		th.tvGName.setText(ti.getgName());
		th.tvTId.setText(ti.gettId());

		return convertView;
	}

}

class TagHolder {
	RelativeLayout rlMain;
	TextView tvTName;
	TextView tvGName;
	TextView tvTId;
	CheckBox cbCheck;
}
