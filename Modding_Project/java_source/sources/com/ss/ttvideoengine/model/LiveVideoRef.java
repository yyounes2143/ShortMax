package com.ss.ttvideoengine.model;

import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class LiveVideoRef {
    public static final int LIVE_STATUS_DOING = 3;
    public static final int LIVE_STATUS_END = 1;
    public static final int LIVE_STATUS_ERROR = 0;
    public static final int LIVE_STATUS_WAIT = 2;
    public int mBackupStatus;
    public long mEndTime;
    public String mLiveId;
    public int mLiveStatus;
    public LiveVideoInfo mLiveVideo1;
    public LiveVideoInfo mLiveVideo2;
    public long mStartTime;
    public int mStatus;
    public String mUserId;

    public void extractFields(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("live_info");
        try {
            if (optJSONObject.has("live_0")) {
                LiveVideoInfo liveVideoInfo = new LiveVideoInfo();
                this.mLiveVideo1 = liveVideoInfo;
                liveVideoInfo.extractFields(optJSONObject.getJSONObject("live_0"));
            }
            if (optJSONObject.has("live_1")) {
                LiveVideoInfo liveVideoInfo2 = new LiveVideoInfo();
                this.mLiveVideo2 = liveVideoInfo2;
                liveVideoInfo2.extractFields(optJSONObject.getJSONObject("live_1"));
            }
            this.mBackupStatus = optJSONObject.optInt("backup_status");
            this.mLiveStatus = optJSONObject.optInt("live_status");
            this.mStatus = optJSONObject.optInt("status");
            this.mStartTime = optJSONObject.optLong(MetricsSQLiteCacheKt.METRICS_START_TIME);
            this.mEndTime = optJSONObject.optLong(MetricsSQLiteCacheKt.METRICS_END_TIME);
        } catch (JSONException e10) {
            TTVideoEngineLog.d(e10);
        }
        this.mUserId = jSONObject.optString(TTVideoEngineInterface.PLAY_API_KEY_USERID);
        this.mLiveId = jSONObject.optString("live_id");
    }

    public LiveVideoInfo getLiveVideoInfo() {
        LiveVideoInfo liveVideoInfo = this.mLiveVideo1;
        if (liveVideoInfo != null) {
            return liveVideoInfo;
        }
        LiveVideoInfo liveVideoInfo2 = this.mLiveVideo2;
        if (liveVideoInfo2 != null) {
            return liveVideoInfo2;
        }
        return null;
    }
}
