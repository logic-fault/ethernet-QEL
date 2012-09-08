package edu.purdue.fueloscope;

import java.util.Timer;
import java.util.TimerTask;

import android.app.Activity;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.Menu;
import android.widget.TextView;

public class HttpRequest extends Activity {
	private Timer timer;
	private TimerTask getData;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		
		GraphicalSurfaceView view1 = (GraphicalSurfaceView) findViewById(R.id.surfaceView1);
		TextView view2 = (TextView) findViewById(R.id.textView1);
		view2.setMovementMethod(new ScrollingMovementMethod());
		
		long currentTime = System.currentTimeMillis() / 1000L;     //send time when app is started
    	String lastTimeStamp = Long.toString(currentTime);

		getData = new AskDataTimerTask(this,view1,lastTimeStamp);
		timer  = new Timer();
	}
	
	@Override
	public void onResume() {
        super.onResume();
        
		timer.schedule(getData, 0, 1000);
		((GraphicalSurfaceView)findViewById(R.id.surfaceView1)).startDrawing();
	}
	
	@Override
	public void onPause() {
		super.onPause();
		timer.purge();
		((GraphicalSurfaceView)findViewById(R.id.surfaceView1)).stopDrawing();
	}

	// yyyyz
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
}

// refer class HttpURLconnection sending/receiving data from a webserver

// POST timestamp on web server
/*
 * private void sendTime(int time) throws IOException { URL url1 = new
 * URL("//filepathoftimestamp"); HttpURLConnection url1Connection =
 * (HttpURLConnection) url1.openConnection(); try {
 * url1Connection.setDoOutput(true); url1Connection.setChunkedStreamingMode(0);
 * 
 * OutputStream timestamp = new
 * BufferedOutputStream(url1Connection.getOutputStream());
 * writeStream(timestamp); } finally { url1Connection.disconnect(); }
 * 
 * }
 */
// hj
// GET data from the server

