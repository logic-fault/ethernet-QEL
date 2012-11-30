package com.qel.client.pojos;

public class ListItem {

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "The detail of this item : name=" + getName() + "  status=" + getStatus() + "   time=" + getTime();
	}

	public ListItem() {
		name = "";
		status = "";
		time = 0;
		checked = false;
	}

	public ListItem(String nname, String nStatus, long nTime) {
		name = nname;
		status = nStatus;
		time = nTime;
		checked = false;
	}

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean check) {
		checked = check;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public long getTime() {
		return time;
	}

	public void setTime(long time) {
		this.time = time;
	}

	private int id;
	private String name;
	private String status;
	private long time;
	private boolean checked;

}
