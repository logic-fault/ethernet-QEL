package edu.purdue.fueloscope;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.TimerTask;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

public class AskDataTimerTask extends TimerTask {

	private Context context;
	private GraphicalSurfaceView view;
	private Handler mHandler = new Handler();
	private String lastTimeStamp;                                    // "1327936196.214385";
	
	
	private String length = "0.1";                   //length of time to plot
	private int mode = 0;

	public AskDataTimerTask(Context con, GraphicalSurfaceView view, String lastTimeStamp) {
		this.context = con;                          //give the class the context of main activity
		this.view = view;                            //indirectly import view class from activity
		this.lastTimeStamp = lastTimeStamp;          //current unix time corresponding to data coming in real time 
		
		// TODO Auto-generated constructor stub
	}

	@Override
	public void run() {                                   //function is called by timer every 10s(period)
		// TODO Auto-generated method stub
		new Thread(new Runnable() {                       //getData runs on new thread
			@Override
			public void run() {
				mHandler.post(new Runnable() {            //Handler is needed for Toast messages from thread
					@Override
					public void run() {
						mode = mode + 1;
						getData();                         //calling getData
						
								
					}
				});
			}
		}).start();

	}

/*
//Receives data from the web server every 10s, starting by sending the timestamp of the the current time, and then sending the 
//timestamp of the last received line/data point 	*/
	private void getData() {
		/*HttpURLConnection urlConnection = null;
		// final Handler handler = new Handler();
		// Toast.makeText(this, "There was an error", Toast.LENGTH_LONG).show();

		try {
			URL url = new URL("http://192.168.0.100/test4new2.php?Time="+ lastTimeStamp + "&Length=" + length);     
			int http_status;

			urlConnection = (HttpURLConnection) url.openConnection();      //open a connection with the web server
			InputStream dataIn = new BufferedInputStream(urlConnection.getInputStream());     //make an input dataStream from server
			http_status = urlConnection.getResponseCode();                  //get status of request

			if (http_status != 200) {        //request failed
				Toast.makeText(this.context, "There was an error1",Toast.LENGTH_LONG).show();   //display error on screen
			} else {
				String data = readStream(dataIn); // download data from stream converted to a string
				data = data.trim(); // get rid of white spaces before and after the stream
				String[] data_parts = data.split("\\s+"); // split the dataStream at white spaces to make new arrays of strings
			
				if (data_parts.length >= 3) {        //atleast 1 line is received
					lastTimeStamp = data_parts[data_parts.length - 4];      //store timestamp of last line
					ArrayList<String> packed_data_points = getDataPoints(data_parts);
					newDataLength = packed_data_points.size();
					ArrayList<Double> new_data_points = decodeDataPoints(packed_data_points);
					this.view.addDataToGraph(new_data_points);
					
					/**Log.d("parts1", data_parts[data_parts.length - 1]);
					Log.d("parts2", data_parts[data_parts.length - 2]);      //debugging
					Log.d("parts3", data_parts[data_parts.length - 4]); 
				}

			//	this.view2.setText(data);                 //add received data lines to text view
			}
		} catch (Exception e) {
			Toast.makeText(this.context, "There was an error2",Toast.LENGTH_LONG).show();
			Log.d("error", e.toString());
		} finally {
			if (urlConnection != null) {
				urlConnection.disconnect();       //disconnect connection if it had been able to connect
			}
		}
	}*/ //test
		//Log.d("timer shot", "1");
		ArrayList<Double> new_data_points = new ArrayList<Double>();
		int i;
		synchronized(new_data_points){
		  for(i=0;i<=1;i++){
			  new_data_points.add((double)i*10);
			  }
		  
		//Log.d("new_data", Double.toString(new_data_points.get(0)) + " " + Double.toString(new_data_points.get(1)));  
		this.view.addDataToGraph(new_data_points);
		}
	}
		
	
	//*extract fuel data from each line*/
	private ArrayList<String> getDataPoints(String[] data_parts){
		ArrayList<String> data_points = new ArrayList<String>();
        int j;
		for(j=2;j <= data_parts.length;j=j+3){
			data_points.add(data_parts[j]);
		}
		return data_points;
		
	}
	
	private ArrayList<Double> decodeDataPoints(ArrayList<String> encoded_points){
		String unpacked;
		ArrayList<Double> data_points = new ArrayList<Double>();
		int int_data_point;
		double double_data_point;
		int i;
		for(i=0;i<=encoded_points.size();i++){
			unpacked = encoded_points.get(i).substring(0,15);
			int_data_point = Integer.parseInt(unpacked, 16);
			double_data_point = int_data_point * 0.05;
			data_points.add(double_data_point);	
		}
		return data_points;
		
		
	}
	
	private String readStream(InputStream in) {
		try {
			ByteArrayOutputStream data = new ByteArrayOutputStream();

			int i = in.read();
			while (i != -1) {            // read stream byte by byte until end of stream
				data.write(i);           // write bytes of CAN data in ASCII to byte array in memory
				i = in.read();          // why was this loop working when max size is only 32 bytes??
			}
			return data.toString();       //convert byte array to string

		} catch (IOException e) {
			return "";
		}
	}
	
	
}
