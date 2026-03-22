package com.bytedance.vcloud.abrmodule;
/* loaded from: classes3.dex */
public class ABRBufferInfo implements IBufferInfo {
    private String mStreamId = "";
    private float mPlayerAvailDuration = -1.0f;
    private long mFileAvailSize = -1;
    private long mHeadSize = -1;

    @Override // com.bytedance.vcloud.abrmodule.IBufferInfo
    public long getFileAvailSize() {
        return this.mFileAvailSize;
    }

    @Override // com.bytedance.vcloud.abrmodule.IBufferInfo
    public long getHeadSize() {
        return this.mHeadSize;
    }

    @Override // com.bytedance.vcloud.abrmodule.IBufferInfo
    public float getPlayerAvailDuration() {
        return this.mPlayerAvailDuration;
    }

    @Override // com.bytedance.vcloud.abrmodule.IBufferInfo
    public String getStreamId() {
        return this.mStreamId;
    }

    public void setFileAvailSize(long j10) {
        this.mFileAvailSize = j10;
    }

    public void setHeadSize(long j10) {
        this.mHeadSize = j10;
    }

    public void setPlayerAvailDuration(float f10) {
        this.mPlayerAvailDuration = f10;
    }

    public void setStreamId(String str) {
        this.mStreamId = str;
    }
}
