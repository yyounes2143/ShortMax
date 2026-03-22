package com.ss.ttvideoengine.log;
/* loaded from: classes6.dex */
public class VRTracker {
    private int mVideoStyle = Integer.MIN_VALUE;
    private int mDimension = Integer.MIN_VALUE;
    private int mProjectStyle = Integer.MIN_VALUE;
    private int mViewSize = Integer.MIN_VALUE;

    public int getDimension() {
        return this.mDimension;
    }

    public int getProjectStyle() {
        return this.mProjectStyle;
    }

    public int getVideoStyle() {
        return this.mVideoStyle;
    }

    public int getViewSize() {
        return this.mViewSize;
    }

    public void setDimension(int i10) {
        this.mDimension = i10;
    }

    public void setProjectStyle(int i10) {
        this.mProjectStyle = i10;
    }

    public void setVideoStyle(int i10) {
        this.mVideoStyle = i10;
    }

    public void setViewSize(int i10) {
        this.mViewSize = i10;
    }
}
