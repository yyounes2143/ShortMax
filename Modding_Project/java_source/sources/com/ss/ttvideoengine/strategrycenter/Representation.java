package com.ss.ttvideoengine.strategrycenter;
/* loaded from: classes6.dex */
public class Representation {
    private int mBitrate;
    private String mCodec;
    private String mFileID;
    private int mFileSize;
    private int mHeight;
    private String mMediaType;
    private String mQuality;
    private int mWidth;

    public int getBitrate() {
        return this.mBitrate;
    }

    public String getFileID() {
        return this.mFileID;
    }

    public int getFileSize() {
        return this.mFileSize;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public String getMediaType() {
        return this.mMediaType;
    }

    public String getQuality() {
        return this.mQuality;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void setBitrate(int i10) {
        this.mBitrate = i10;
    }

    public void setFileID(String str) {
        this.mFileID = str;
    }

    public void setFileSize(int i10) {
        this.mFileSize = i10;
    }

    public void setHeight(int i10) {
        this.mHeight = i10;
    }

    public void setMediaType(String str) {
        this.mMediaType = str;
    }

    public void setQuality(String str) {
        this.mQuality = str;
    }

    public void setWidth(int i10) {
        this.mWidth = i10;
    }
}
