package com.bytedance.vcloud.networkpredictor;

import com.huawei.hms.framework.common.hianalytics.WiseOpenHianalyticsData;
import com.ss.texturerender.TextureRenderKeys;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class SpeedPredictorRecordItem {
    private long mBytes;
    private long mLastDataRecv;
    private long mMDLBufferCurrentSize;
    private long mMDLBufferMaxSize;
    private long mMDLRangeEndOffset;
    private long mMDLRangeStartOffset;
    private String mProtocol;
    private long mTcpInfoRtt;
    private long mTime;
    private long mTimestamp;
    private int mTrackType = 0;
    private String mhost;
    private String mloadType;

    public void extractFields(JSONObject jSONObject) throws Throwable {
        if (jSONObject == null) {
            return;
        }
        this.mTrackType = jSONObject.optInt("trackType");
        this.mBytes = jSONObject.optLong("size");
        this.mTime = jSONObject.optLong(WiseOpenHianalyticsData.UNION_COSTTIME);
        this.mTimestamp = jSONObject.optLong("timestamp");
        this.mloadType = jSONObject.optString("loadType");
        this.mhost = jSONObject.optString(TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST);
        this.mTcpInfoRtt = jSONObject.optLong("rtt");
        this.mLastDataRecv = jSONObject.optLong("last_data_recv");
        this.mProtocol = jSONObject.optString("protocol");
        this.mMDLBufferCurrentSize = jSONObject.optLong("cbs");
        this.mMDLBufferMaxSize = jSONObject.optLong("fbs");
        this.mMDLRangeStartOffset = jSONObject.optLong("s_off");
        this.mMDLRangeEndOffset = jSONObject.optLong("e_off");
    }

    public long getBytes() {
        return this.mBytes;
    }

    public String getHost() {
        return this.mhost;
    }

    public long getLastDataRecv() {
        return this.mLastDataRecv;
    }

    public String getLoadType() {
        return this.mloadType;
    }

    public long getMDLBufferCurrentSize() {
        return this.mMDLBufferCurrentSize;
    }

    public long getMDLBufferMaxSize() {
        return this.mMDLBufferMaxSize;
    }

    public long getMDLRangeEndOffset() {
        return this.mMDLRangeEndOffset;
    }

    public long getMDLRangeStartOffset() {
        return this.mMDLRangeStartOffset;
    }

    public String getProtocol() {
        return this.mProtocol;
    }

    public long getTcpInfoRtt() {
        return this.mTcpInfoRtt;
    }

    public long getTime() {
        return this.mTime;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public int getTrackType() {
        return this.mTrackType;
    }

    public void setBytes(long j10) {
        this.mBytes = j10;
    }

    public void setHost(String str) {
        this.mhost = str;
    }

    public void setLastDataRecv(long j10) {
        this.mLastDataRecv = j10;
    }

    public void setLoadType(String str) {
        this.mloadType = str;
    }

    public void setMDLBufferCurrentSize(long j10) {
        this.mMDLBufferCurrentSize = j10;
    }

    public void setMDLBufferMaxSize(long j10) {
        this.mMDLBufferMaxSize = j10;
    }

    public void setMDLRangeEndOffset(long j10) {
        this.mMDLRangeEndOffset = j10;
    }

    public void setMDLRangeStartOffset(long j10) {
        this.mMDLRangeStartOffset = j10;
    }

    public void setProtocol(String str) {
        this.mProtocol = str;
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
