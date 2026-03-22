package com.bytedance.vcloud.networkpredictor;
/* loaded from: classes3.dex */
public class SpeedPredictorRecordOld implements ISpeedRecordOld {
    private long mBytes;
    private long mLastRecvDate;
    private String mProtocol;
    private long mTcpInfoRtt;
    private long mTime;
    private long mTimestamp;
    private String mStreamId = "";
    private int mTrackType = 0;

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedRecordOld
    public long getBytes() {
        return this.mBytes;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedRecordOld
    public long getLastRecvDate() {
        return this.mLastRecvDate;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedRecordOld
    public String getProtocol() {
        return this.mProtocol;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedRecordOld
    public String getStreamId() {
        return this.mStreamId;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedRecordOld
    public long getTcpInfoRtt() {
        return this.mTcpInfoRtt;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedRecordOld
    public long getTime() {
        return this.mTime;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedRecordOld
    public long getTimestamp() {
        return this.mTimestamp;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedRecordOld
    public int getTrackType() {
        return this.mTrackType;
    }

    public void setBytes(long j10) {
        this.mBytes = j10;
    }

    public void setLastRecvDate(long j10) {
        this.mLastRecvDate = j10;
    }

    public void setProtocol(String str) {
        this.mProtocol = str;
    }

    public void setSteamId(String str) {
        this.mStreamId = str;
    }

    public void setTcpInfoRtt(long j10) {
        this.mTcpInfoRtt = j10;
    }

    public void setTime(long j10) {
        this.mTime = j10;
    }

    public void setTimestamp(long j10) {
        this.mTimestamp = j10;
    }

    public void setTrackType(int i10) {
        this.mTrackType = i10;
    }
}
