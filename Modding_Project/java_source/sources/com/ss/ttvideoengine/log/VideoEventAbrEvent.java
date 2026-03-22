package com.ss.ttvideoengine.log;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.SieveCacheKt;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.ss.ttvideoengine.strategrycenter.StrategyCenter;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoEventAbrEvent {
    private static final String TAG = "VideoEventAbrEvent";
    public static final String monitorName = "videoplayer_abrswitch";
    public VideoEventBase mEventBase;
    private ArrayList<EventContext> mEventContexts = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class AsyncGetLogDataRunnable implements Runnable {
        private Context rContext;
        private VideoEventAbrEvent rEvent;
        private VideoEventBase rEventBase;
        private EventContext rEventContext;
        private Handler rHandler = new Handler(Looper.getMainLooper());

        public AsyncGetLogDataRunnable(Context context, VideoEventAbrEvent videoEventAbrEvent, VideoEventBase videoEventBase, EventContext eventContext) {
            this.rEvent = videoEventAbrEvent;
            this.rEventBase = videoEventBase;
            this.rContext = context;
            this.rEventContext = eventContext;
        }

        @Override // java.lang.Runnable
        public void run() {
            final boolean z10;
            VideoEventAbrEvent videoEventAbrEvent = this.rEvent;
            if (videoEventAbrEvent == null) {
                return;
            }
            VideoEventBase videoEventBase = this.rEventBase;
            if (videoEventBase != null && videoEventBase.isUploadLogEnabled) {
                z10 = true;
            } else {
                z10 = false;
            }
            final JSONObject jsonObject = videoEventAbrEvent.toJsonObject(this.rEventContext, videoEventBase);
            Handler handler = this.rHandler;
            if (handler != null && handler.getLooper() != null) {
                this.rHandler.post(new Runnable() { // from class: com.ss.ttvideoengine.log.VideoEventAbrEvent.AsyncGetLogDataRunnable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoEventManager.instance.addEventV2(z10, jsonObject, VideoEventAbrEvent.monitorName);
                    }
                });
            } else {
                VideoEventManager.instance.addEventV2(z10, jsonObject, VideoEventAbrEvent.monitorName);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class EventContext {
        public String mAbrV;
        public long mAudioBufferLen;
        public long mCostTime;
        public long mDelayTime;
        public String mEndType;
        public long mEventTime;
        public long mMaxBufferLen;
        public long mNewBr;
        public long mOldBr;
        public int mReason;
        public float mSpeed;
        public int mSwitch2new;
        public long mVideoBufferLen;
        public long mWasteByte;

        private EventContext() {
            this.mEventTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mCostTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mEndType = "";
            this.mAbrV = "";
            this.mOldBr = -1L;
            this.mNewBr = -1L;
            this.mMaxBufferLen = -1L;
            this.mAudioBufferLen = -1L;
            this.mVideoBufferLen = -1L;
            this.mSpeed = -1.0f;
            this.mDelayTime = -1L;
            this.mWasteByte = -1L;
            this.mSwitch2new = 0;
            this.mReason = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoEventAbrEvent(VideoEventBase videoEventBase) {
        this.mEventBase = videoEventBase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject toJsonObject(EventContext eventContext, VideoEventBase videoEventBase) {
        HashMap hashMap = new HashMap();
        if (videoEventBase != null) {
            LoggerUtils.putToMap(hashMap, "player_sessionid", videoEventBase.mSessionID);
            LoggerUtils.putToMap(hashMap, "v", videoEventBase.mVid);
            LoggerUtils.putToMap(hashMap, "pc", videoEventBase.f37070pc);
            LoggerUtils.putToMap(hashMap, "sv", videoEventBase.sv);
            LoggerUtils.putToMap(hashMap, "sdk_version", videoEventBase.sdk_version);
            LoggerUtils.putToMap(hashMap, "vtype", videoEventBase.vtype);
        }
        LoggerUtils.putToMap(hashMap, "abrv", eventContext.mAbrV);
        LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_COST_TIME, eventContext.mCostTime);
        LoggerUtils.putToMap(hashMap, "pr_time", eventContext.mEventTime);
        LoggerUtils.putToMap(hashMap, "end_type", eventContext.mEndType);
        LoggerUtils.putToMap(hashMap, "old_br", eventContext.mOldBr);
        LoggerUtils.putToMap(hashMap, "new_br", eventContext.mNewBr);
        LoggerUtils.putToMap(hashMap, "max_buf", eventContext.mMaxBufferLen);
        LoggerUtils.putToMap(hashMap, "abuf", eventContext.mAudioBufferLen);
        LoggerUtils.putToMap(hashMap, "vbuf", eventContext.mVideoBufferLen);
        LoggerUtils.putToMap((Map) hashMap, "netspeed", eventContext.mSpeed);
        LoggerUtils.putToMap(hashMap, "delaytime", eventContext.mDelayTime);
        LoggerUtils.putToMap((Map) hashMap, "tonew", eventContext.mSwitch2new);
        LoggerUtils.putToMap((Map) hashMap, "reason", eventContext.mReason);
        TTVideoEngineLog.d(TAG, "AbrSwitch:" + hashMap.toString());
        return new JSONObject(hashMap);
    }

    public void abrSwitchEnd(long j10) {
        if (this.mEventContexts == null) {
            return;
        }
        EventContext eventContext = null;
        while (!this.mEventContexts.isEmpty() && ((eventContext = this.mEventContexts.remove(0)) == null || eventContext.mNewBr != j10)) {
        }
        if (eventContext == null) {
            return;
        }
        TTVideoEngineLog.d(TAG, "abrSwitchEnd");
        eventContext.mSwitch2new = (int) this.mEventBase.mDataSource.getLogValueLong(106);
        eventContext.mDelayTime = this.mEventBase.mDataSource.getLogValueLong(107);
        eventContext.mCostTime = System.currentTimeMillis() - eventContext.mEventTime;
        sendAbrSwitchEvent(eventContext);
    }

    public void abrSwitchStart(long j10, long j11) {
        TTVideoEngineLog.d(TAG, "abrSwitchStart");
        EventContext eventContext = new EventContext();
        eventContext.mEventTime = System.currentTimeMillis();
        eventContext.mAbrV = this.mEventBase.mDataSource.getLogValueStr(102);
        eventContext.mOldBr = j10;
        eventContext.mNewBr = j11;
        eventContext.mMaxBufferLen = this.mEventBase.mDataSource.getLogValueInt(103);
        eventContext.mAudioBufferLen = this.mEventBase.mDataSource.getLogValueLong(104);
        eventContext.mVideoBufferLen = this.mEventBase.mDataSource.getLogValueLong(105);
        eventContext.mReason = this.mEventBase.mDataSource.getLogValueInt(109);
        ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
        if (iSpeedPredictor != null) {
            eventContext.mSpeed = iSpeedPredictor.getPredictSpeed(0);
        }
        this.mEventContexts.add(eventContext);
    }

    public void reset() {
        this.mEventContexts.clear();
    }

    public void sendAbrSwitchEvent(EventContext eventContext) {
        this.mEventBase.updateVideoInfo(null);
        VideoEventBase videoEventBase = this.mEventBase;
        EngineThreadPool.addExecuteTask(new AsyncGetLogDataRunnable(videoEventBase.mContext, this, videoEventBase, eventContext));
    }
}
