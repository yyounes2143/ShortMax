package com.bytedance.vcloud.abrmodule;
/* loaded from: classes3.dex */
public class ABRVideoStream implements IVideoStream {
    public int mBandWidth;
    private String mCodec;
    private int mFrameRate;
    private int mHeight;
    private int mRealBitrate;
    private int mResolution;
    private int mSegmentDuration;
    private String mStreamId = "";
    private int mSupportSR;
    private int mWidth;

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public int getBandwidth() {
        return this.mBandWidth;
    }

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public String getCodec() {
        return this.mCodec;
    }

    @Override // com.bytedance.vcloud.abrmodule.IVideoStream
    public float getFrameRate() {
        return this.mFrameRate;
    }

    @Override // com.bytedance.vcloud.abrmodule.IVideoStream
    public int getHeight() {
        return this.mHeight;
    }

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public int getRealBitrate() {
        return this.mRealBitrate;
    }

    @Override // com.bytedance.vcloud.abrmodule.IVideoStream
    public int getResolution() {
        return this.mResolution;
    }

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public int getSegmentDuration() {
        return this.mSegmentDuration;
    }

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public String getStreamId() {
        return this.mStreamId;
    }

    @Override // com.bytedance.vcloud.abrmodule.IVideoStream
    public int getSupportSR() {
        return this.mSupportSR;
    }

    @Override // com.bytedance.vcloud.abrmodule.IVideoStream
    public int getWidth() {
        return this.mWidth;
    }

    public void setBandWidth(int i10) {
        this.mBandWidth = i10;
    }

    public void setCodec(String str) {
        this.mCodec = str;
    }

    public void setFrameRate(int i10) {
        this.mFrameRate = i10;
    }

    public void setHeight(int i10) {
        this.mHeight = i10;
    }

    public void setRealBitrate(int i10) {
        this.mRealBitrate = i10;
    }

    public void setResolution(int i10) {
        this.mResolution = i10;
    }

    public void setSegmentDuration(int i10) {
        this.mSegmentDuration = i10;
    }

    public void setStreamId(String str) {
        this.mStreamId = str;
    }

    public void setSupportSR(int i10) {
        this.mSupportSR = i10;
    }

    public void setWidth(int i10) {
        this.mWidth = i10;
    }
}
