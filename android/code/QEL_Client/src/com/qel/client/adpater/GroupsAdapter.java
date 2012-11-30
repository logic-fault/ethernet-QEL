package com.qel.client.adpater;

import java.util.ArrayList;
import java.util.HashSet;

import com.qel.client.R;
import com.qel.client.pojos.GroupItem;
import com.qel.client.utils.Constants;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class GroupsAdapter extends BaseAdapter {

	Context mContext;
	ArrayList<GroupItem> source;
	LayoutInflater inflater;

	public GroupsAdapter(Context context, ArrayList<GroupItem> in) {
		mContext = context;
		source = in;
		inflater = LayoutInflater.from(context);
		Constants.isGroupCheckedIndexSet = new HashSet<Integer>();
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return source.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return source.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {

		final GroupItem gi = source.get(position);
		GroupHolder gh;

		if (convertView == null) {
			View view = inflater.inflate(R.layout.layout_listview_group, null);

			gh = new GroupHolder();

			gh.rlGroup = (RelativeLayout) view.findViewById(R.id.rlGroup);
			gh.tvName = (TextView) view.findViewById(R.id.tvGroupName);
			gh.cbGroup = (CheckBox) view.findViewById(R.id.cbGourp);

			view.setTag(gh);

			convertView = view;
		} else {
			gh = (GroupHolder) convertView.getTag();
		}

		if (Constants.isGourpCheckedMap.get(gi.getgID()) == null) {
			Constants.isGourpCheckedMap.put(gi.getgID(), false);
		} else {
			gh.cbGroup.setChecked(Constants.isGourpCheckedMap.get((gi.getgID())));
		}

		gh.cbGroup.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (gi.isCheck()) {
					if (Constants.isGroupCheckedIndexSet.contains(gi.getgID())) {
						Constants.isGroupCheckedIndexSet.remove(gi.getgID());
					}
					Constants.isGourpCheckedMap.put(gi.getgID(), false);
					gi.setCheck(false);
				} else {
					Constants.isGroupCheckedIndexSet.add(gi.getgID());
					Constants.isGourpCheckedMap.put(gi.getgID(), true);
					gi.setCheck(true);
				}
			}
		});

		if (position % 2 == 0) {
			gh.rlGroup.setBackgroundColor(Color.WHITE);
		} else {
			gh.rlGroup.setBackgroundColor(Color.GRAY);
		}

		gh.tvName.setText(gi.getgName());

		return convertView;
	}
}

class GroupHolder {
	RelativeLayout rlGroup;
	TextView tvName;
	CheckBox cbGroup;
}
