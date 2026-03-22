package com.bytedance.vcloud.abrmodule;
/* loaded from: classes3.dex */
public class ABRAudioStream implements IAudioStream {
    public int mBandWidth;
    private String mCodec;
    private int mRealBitrate;
    private int mSampleRate;
    private int mSegmentDuration;
    private String mStreamId = "";

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public int getBandwidth() {
        return this.mBandWidth;
    }

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public String getCodec() {
        return this.mCodec;
    }

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public int getRealBitrate() {
        return this.mRealBitrate;
    }

    @Override // com.bytedance.vcloud.abrmodule.IAudioStream
    public int getSampleRate() {
        return this.mSampleRate;
    }

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public int getSegmentDuration() {
        return this.mSegmentDuration;
    }

    @Override // com.bytedance.vcloud.abrmodule.IStream
    public String getStreamId() {
        return this.mStreamId;
    }

    public void setBandWidth(int i10) {
        this.mBandWidth = i10;
    }

    public void setCodec(String str) {
        this.mCodec = str;
    }

    public void setRealBitrate(int i10) {
        this.mRealBitrate = i10;
    }

    public void setSampleRate(int i10) {
        this.mSampleRate = i10;
    }

    public void setSegmentDuration(int i10) {
        this.mSegmentDuration = i10;
    }

    public void setStreamId(String str) {
        this.mStreamId = str;
    }
}
