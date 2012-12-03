package com.qel.client.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class ConfigDBHelper extends SQLiteOpenHelper {

	private static final String DBNAME = "config.db";
	private static final int VERSION = 1;

	private static ConfigDBHelper adbh;

	public static ConfigDBHelper getInstance(Context context) {
		if (adbh == null) {
			return new ConfigDBHelper(context);
		} else {
			return adbh;
		}
	}

	public ConfigDBHelper(Context context) {
		super(context, DBNAME, null, VERSION);
	}

	public ConfigDBHelper(Context context, String name, CursorFactory factory, int version) {
		super(context, name, factory, version);
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		db.execSQL("CREATE TABLE IF NOT EXISTS configure (id integer primary key autoincrement, name varchar(255), value varchar(255))");
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		db.execSQL("DROP TABLE IF EXISTS configure");
	}

}
