package com.qel.client;

import org.w3c.dom.Comment;

import com.qel.client.R.id;
import com.qel.client.dao.ConfigDao;
import com.qel.client.utils.Constants;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class SettingActivity extends Activity implements OnClickListener {

	ConfigDao cd;

	TextView tvServerIp;
	Button btnSettingServerIp;
	EditText etServerIpSet;
	EditText etComment;

	AlertDialog adSetServerIp;

	Button btnConfirm;

	SettingActivity appref;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_setting_activity);

		appref = this;

		tvServerIp = (TextView) findViewById(R.id.tvLabelServerIp);
		btnSettingServerIp = (Button) findViewById(R.id.btnConfigServerIP);
		cd = new ConfigDao(appref);

		Cursor cursor = cd.query("sip");
		cursor.moveToFirst();

		if (cursor.getCount() > 0) {
			for (cursor.moveToFirst(); !cursor.isAfterLast(); cursor.moveToNext()) {
				if (cursor.getString(0).equals("") || cursor.getString(0) == null) {
					tvServerIp.setText("127.0.0.1");
					Constants.strServerIP = "127.0.0.1";
				} else {
					tvServerIp.setText(cursor.getString(0));
					Constants.strServerIP = cursor.getString(0);
				}
			}
		}
		cursor.close();

		btnSettingServerIp.setOnClickListener(this);

	}

	@Override
	public void onClick(View v) {

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
								tvServerIp.setText(ip);
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
}
