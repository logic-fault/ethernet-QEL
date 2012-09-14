package edu.purdue.fueloscope;

import java.util.ArrayList;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;


public class GraphicalSurfaceView extends SurfaceView implements Runnable{
	
	private boolean running;
	private SurfaceHolder surfaceHolder;
	
	private Thread thread = null;
    private ArrayList<Double> data1;
    private  Paint linePaint;
    private Paint pointPaint;
    private  Paint labelPaint;
      
  
	public GraphicalSurfaceView(Context context) {
		
		super(context);
    //    this.context = context;
		setupGraphicalSurfaceView(context);
		
	}
	
   public GraphicalSurfaceView(Context context, AttributeSet attrs) {
				
		super(context, attrs);	
		setupGraphicalSurfaceView(context);
		Log.d("viewcreated","1"); 

	}
   
   public GraphicalSurfaceView(Context context, AttributeSet attrs, int defStyle) {
		
	   super(context, attrs, defStyle);
	   setupGraphicalSurfaceView(context);
	   Log.d("viewcreated","1"); 
   }
		
   private void setupGraphicalSurfaceView(Context context){
	   running = false;
	   surfaceHolder  = this.getHolder();
	   
	// Make sure the surface is top most so transparency will work (most important line of the bloody code without it 
			setZOrderOnTop(true);            //most important line of the bloody code. Without it cannot see the view

	   
	    linePaint = new Paint();
	    linePaint.setColor(Color.GREEN);
	    linePaint.setStyle(Style.STROKE);
	    
	    pointPaint = new Paint();
	    pointPaint.setColor(Color.BLUE);
	    pointPaint.setStyle(Style.FILL_AND_STROKE);
	    
	    labelPaint = new Paint();
	    labelPaint.setColor(Color.WHITE);
	    labelPaint.setStyle(Style.STROKE);
	    labelPaint.setTextAlign(Paint.Align.CENTER);
	    
	    initData();
	       
   }
   
   public void startDrawing() {
		
			
		thread = new Thread(this);
		
		running = true;
		thread.start();
	}
	
	// Stop the thread that is updating the drawing
	public void stopDrawing() {
		boolean isDead = false;
		
		running = false; 
		while(!isDead) {
			try {
				thread.join();
				isDead = true;
			} catch(InterruptedException e) {
				/* Do nothing */
			}
		}
	}

  
   private void initData(){
	 
	  this.data1 = new ArrayList<Double>();	 
	  int i;
	  synchronized(data1){
	  for(i=0;i<=20;i++){
	  	this.data1.add((double)1.00);
	//  	this.data1.add((double)0.0);
	//  	this.data1.add((double)0.0);
	  }
	}
	    	
  }

public void addDataToGraph(ArrayList<Double> data1In){
	int index;
    synchronized(data1){
    for(index=0;index<data1In.size();index++){
			this.data1.add(data1In.get(index));
			this.data1.remove(0);
		}
    }
   } 
		
  public void run() {
	  while(running) {
		Canvas canvas = surfaceHolder.lockCanvas();
	    
		if (canvas == null){
			continue;
			}
		Point graphSize = new Point((canvas.getWidth() - 40),((canvas.getHeight()) - 60));
	
		Log.d("reached","1");
		canvas.drawColor(Color.BLACK);
	    drawAxis(graphSize,canvas);
	    int i;
	    for(i=0;i<19;i++){
	 //   Log.d("data1[",Integer.toString(i) + "] " + Double.toString(data1.get(i))); 
	    }//ii
	    
	    ArrayList<Double> data2 = new ArrayList<Double>();
	    int index;
	    for(index=0;index<this.data1.size();index++){
	    	data2.add(this.data1.get(index));
	    	
	    }
	    
	    drawPlot(graphSize,canvas,data2);
	    surfaceHolder.unlockCanvasAndPost(canvas);
	}
  }
	
   private void drawAxis(Point graphSize,Canvas canvas){
	//Log.d("drawing again", "1");
	    
	    
	   /* 
	    Paint labelPaint = new Paint();
	    labelPaint.setColor(Color.GREEN);
	    labelPaint.setStyle(Style.STROKE);
	    labelPaint.setPathEffect(new DashPathEffect(new float[] {10,20}, 0)); */
	   
	    Path path1 = new Path();
	    Path path2 = new Path();
        float offset =  (graphSize.x/10);

	    path1.moveTo((float)0.00, (float)0.00);
	    path2.moveTo((float)0.00, (float)(graphSize.y));

	    int i;
	    int width;
	    int yLabel;
	    int xLabel;
	    
	    for(i=0,xLabel=-30,yLabel=20;i<10;i++,xLabel=xLabel+3,yLabel=yLabel-2){
	    	path1.moveTo(0.0f, i*graphSize.y/10);
	    	canvas.drawText(Integer.toString(yLabel),20.0f, (i*graphSize.y/10 + 10),labelPaint);
	    	path1.rLineTo((float)0.00, (float)(graphSize.y)/10);
	    	path1.rLineTo((float)(graphSize.x)/20, (float)(0.00));
	    	for(width=(graphSize.x /20); width < graphSize.x; width= width + (graphSize.x /20)){
	            	 path1.rMoveTo((float)(graphSize.x)/20, (float)0.00);
	            	 path1.rLineTo(3.0f, 0.0f);
	            	 path1.rMoveTo(-3.0f,0.0f);
	             }
	    	
	     	path2.moveTo((float)i*(graphSize.x)/10, (float)(graphSize.y));
	     	canvas.drawText(Integer.toString(xLabel),(float)(i*(graphSize.x)/10 + 25),(float)(15 + graphSize.y),labelPaint);
	        path2.rLineTo((float)(graphSize.x)/10,(float)0.00);
	        path2.rLineTo((float)0.00, (float)(-1 * graphSize.y)/20);
	        
	    }
	        
	        path1.offset(offset, 0.0f);
		    path2.offset(offset, 0.0f);
		    canvas.drawPath(path1, linePaint);
		    canvas.drawPath(path2, linePaint);
		    canvas.drawText("Time(s)",(float)((graphSize.x)/2),(float)(graphSize.y + 30), labelPaint);
		    
		    canvas.save();
		    canvas.rotate(-90.0f, 10.0f,(float)((graphSize.y)/2));
		    canvas.drawText("Fuel rate (hrs/L)", 10.0f,(float)((graphSize.y)/2) , labelPaint);
		    canvas.restore();
    }
   
	    
   private void drawPlot(Point graphSize, Canvas canvas, ArrayList<Double> data){  
	//   Log.d("drawing again", "2");
	    int cnt;
	    float pntX;
	    float pntY;
	    float nextpntX;
	    float nextpntY; 
	    float offset =  (graphSize.x/10);
 
	    Path path3 = new Path();
	   
	    	for(cnt=0;cnt<19;cnt++){
	    		pntX = (float)(graphSize.x - cnt*(graphSize.x)/20);
	    		pntY = (float)(graphSize.y - data.get(20-cnt)*(graphSize.x)/40);
	    		nextpntX = (float)(graphSize.x - (cnt+1)*(graphSize.x)/20);
	    		nextpntY = (float)(graphSize.y - data.get(20-(cnt+1))*(graphSize.x)/40);
	    		path3.moveTo(pntX,pntY);
	    		canvas.drawCircle(offset+1+pntX, 1.0f + pntY,2.0f, pointPaint);
	    		canvas.drawCircle(offset+1+nextpntX, 1.0f + nextpntY,2.0f, pointPaint);
	    		path3.rLineTo(nextpntX-pntX,nextpntY-pntY);
	    		
	    	} 
	    	
	    	path3.offset(offset+1, 0.0f);
    		canvas.drawPath(path3, linePaint);

   }
	
}



