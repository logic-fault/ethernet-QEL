package com.qel.client.dao;

import java.text.SimpleDateFormat;

import com.qel.client.db.ConfigDBHelper;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

public class ConfigDao {

	// the instance of musiclistproviderOpenHelper.
	private ConfigDBHelper mlpo;

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy MM dd HH:mm:ss");

	public ConfigDao(Context context) {
		mlpo = ConfigDBHelper.getInstance(context);
	}

	public Cursor queryAll() {

		try {
			SQLiteDatabase db = mlpo.getReadableDatabase();

			Cursor cursor = db.query("configure", null, "", null, "", "", "");

			return cursor;
		} catch (Exception e) {
			return null;
		}

	}

	public Cursor query(String column) {

		SQLiteDatabase db = mlpo.getReadableDatabase();

		Cursor cursor = db.query("configure", new String[] { "value" }, "name='" + column + "'", null, "", "", "");

		return cursor;

	}

	/**
	 * save the length of downloaded data.
	 * 
	 * @param path
	 * @param map
	 */
	public void save(ContentValues cv) {

		String name = cv.getAsString("name");
		String value = cv.getAsString("value");

		if (name != null && value != null) {

			Cursor cursor = query(name);

			int size = cursor.getCount();
			cursor.close();

			Log.d("TAG", size + "   count");

			if (size > 0) {
				update(name, value);
			} else {
				insert(name, value);
			}
		}

	}

	/**
	 * save the length of downloaded data.
	 * 
	 * @param path
	 * @param map
	 */
	public void save(String name, String value) {

		Log.d("TAG", "save");

		if (name != null && value != null) {

			Cursor cursor = query(name);

			int size = cursor.getCount();
			cursor.close();

			if (size > 0) {
				update(name, value);
			} else {
				insert(name, value);
			}
		}

	}

	/**
	 * update the Configuration.
	 * 
	 * @param path
	 * @param map
	 */
	public void update(String name, String value) {

		SQLiteDatabase db = mlpo.getWritableDatabase();

		try {
			db.beginTransaction();

			ContentValues cv = new ContentValues();
			cv.put("value", value);

			db.update("configure", cv, "name='" + name + "'", null);

			db.setTransactionSuccessful();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.endTransaction();
		}

		db.close();

	}

	/**
	 * update the Configuration.
	 * 
	 * @param path
	 * @param map
	 */
	public void insert(String name, String value) {

		Log.d("TAG", "insert");

		SQLiteDatabase db = mlpo.getWritableDatabase();

		try {
			db.beginTransaction();

			ContentValues cv = new ContentValues();
			cv.put("name", name);
			cv.put("value", value);

			db.insert("configure", null, cv);

			db.setTransactionSuccessful();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.endTransaction();
		}

		db.close();

	}

}
