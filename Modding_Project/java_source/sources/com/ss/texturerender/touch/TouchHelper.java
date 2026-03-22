package com.ss.texturerender.touch;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes6.dex */
public class TouchHelper extends GestureDetector.SimpleOnGestureListener implements ScaleGestureDetector.OnScaleGestureListener {
    private static final String LOG_TAG = "TR_TouchHelper";
    private GestureDetector mGestureDetector;
    private ArrayList<GestureDetector.SimpleOnGestureListener> mGestureListener;
    private ScaleGestureDetector mScaleGestureDetector;
    private ArrayList<ScaleGestureDetector.OnScaleGestureListener> mScaleGestureListener;

    public TouchHelper(Context context) {
        this.mGestureDetector = new GestureDetector(context, this);
        this.mScaleGestureDetector = new ScaleGestureDetector(context, this);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        ArrayList<ScaleGestureDetector.OnScaleGestureListener> arrayList = this.mScaleGestureListener;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<ScaleGestureDetector.OnScaleGestureListener> it = this.mScaleGestureListener.iterator();
            while (it.hasNext()) {
                it.next().onScale(scaleGestureDetector);
            }
            return true;
        }
        return false;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        ArrayList<GestureDetector.SimpleOnGestureListener> arrayList = this.mGestureListener;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<GestureDetector.SimpleOnGestureListener> it = this.mGestureListener.iterator();
            while (it.hasNext()) {
                it.next().onScroll(motionEvent, motionEvent2, f10, f11);
            }
            return true;
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mGestureDetector != null && motionEvent.getPointerCount() == 1) {
            this.mGestureDetector.onTouchEvent(motionEvent);
        }
        if (this.mScaleGestureDetector != null && motionEvent.getPointerCount() == 2) {
            this.mScaleGestureDetector.onTouchEvent(motionEvent);
            return false;
        }
        return false;
    }

    public void register(GestureDetector.SimpleOnGestureListener simpleOnGestureListener) {
        if (this.mGestureListener == null) {
            this.mGestureListener = new ArrayList<>();
        }
        if (this.mGestureListener.contains(simpleOnGestureListener)) {
            return;
        }
        this.mGestureListener.add(simpleOnGestureListener);
    }

    public void release() {
        ArrayList<GestureDetector.SimpleOnGestureListener> arrayList = this.mGestureListener;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public void unregister(GestureDetector.SimpleOnGestureListener simpleOnGestureListener) {
        ArrayList<GestureDetector.SimpleOnGestureListener> arrayList = this.mGestureListener;
        if (arrayList != null) {
            arrayList.remove(simpleOnGestureListener);
        }
    }

    public void unregister(ScaleGestureDetector.OnScaleGestureListener onScaleGestureListener) {
        ArrayList<ScaleGestureDetector.OnScaleGestureListener> arrayList = this.mScaleGestureListener;
        if (arrayList != null) {
            arrayList.remove(onScaleGestureListener);
        }
    }

    public void register(ScaleGestureDetector.OnScaleGestureListener onScaleGestureListener) {
        if (this.mScaleGestureListener == null) {
            this.mScaleGestureListener = new ArrayList<>();
        }
        if (this.mScaleGestureListener.contains(onScaleGestureListener)) {
            return;
        }
        this.mScaleGestureListener.add(onScaleGestureListener);
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }
}
