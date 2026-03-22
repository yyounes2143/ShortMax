package com.ss.ttvideoengine.strategy.common;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.strategy.StrategySettings;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class StrategyStatic {
    private static final String BUFFERING_DATA = "buffering_data";
    private static final String BUFFERING_TIMEOUT = "buffering_timeout";
    public static final int INT_NULL = -100;
    private static final String MAX_BUFFERING_DATA = "max_buffering_data";
    private static final String NETWORK_TIMEOUT = "network_timeout";
    private static final String NOTIFY_BUFFERING_DIRECTLY = "notify_buffering_directly";
    private static final String P_UPDATE_INR = "p_update_inr";
    private static final String P_UPDATE_INR_TH = "p_update_inr_th";
    private static final String TAG = "Strategy Static";
    private final int mScene;
    private JSONObject mStaticConfig;
    private int mNetworkTimeout = -100;
    private int mBufferingTimeout = -100;
    private int mNotifyBufferingDirectly = -100;
    private int mBufferingData = -100;
    private int mMaxBufferingData = -100;
    private int mPUpdateInr = -100;
    private int mPUpdateInrTh = -100;

    public StrategyStatic(int i10) {
        this.mScene = i10;
        updateConfig();
    }

    public void engineCreate(TTVideoEngineInterface tTVideoEngineInterface) {
        if (tTVideoEngineInterface != null && this.mStaticConfig != null) {
            TTVideoEngineLog.d(TAG, "engineCreate " + tTVideoEngineInterface);
            int i10 = this.mNetworkTimeout;
            if (i10 != -100) {
                tTVideoEngineInterface.setIntOption(12, i10);
            }
            int i11 = this.mBufferingTimeout;
            if (i11 != -100) {
                tTVideoEngineInterface.setIntOption(11, i11);
            }
            int i12 = this.mNotifyBufferingDirectly;
            if (i12 != -100) {
                tTVideoEngineInterface.setIntOption(322, i12);
            }
            int i13 = this.mBufferingData;
            if (i13 != -100) {
                tTVideoEngineInterface.setIntOption(118, i13);
            }
            int i14 = this.mMaxBufferingData;
            if (i14 != -100) {
                tTVideoEngineInterface.setIntOption(202, i14);
            }
        }
    }

    public void onPrepared(TTVideoEngineInterface tTVideoEngineInterface) {
        if (tTVideoEngineInterface != null && this.mStaticConfig != null) {
            TTVideoEngineLog.d(TAG, "onPrepared " + tTVideoEngineInterface);
            if (this.mPUpdateInr != -100 && this.mPUpdateInrTh != -100 && tTVideoEngineInterface.getDuration() >= this.mPUpdateInrTh * 1000) {
                tTVideoEngineInterface.setIntOption(602, this.mPUpdateInr);
            }
        }
    }

    public void updateConfig() {
        this.mStaticConfig = StrategySettings.getInstance().getStatic(this.mScene);
        TTVideoEngineLog.d(TAG, "updateConfig " + this.mStaticConfig);
        JSONObject jSONObject = this.mStaticConfig;
        if (jSONObject == null) {
            return;
        }
        this.mNetworkTimeout = jSONObject.optInt("network_timeout", -100);
        this.mBufferingTimeout = this.mStaticConfig.optInt(BUFFERING_TIMEOUT, -100);
        this.mNotifyBufferingDirectly = this.mStaticConfig.optInt(NOTIFY_BUFFERING_DIRECTLY, -100);
        this.mBufferingData = this.mStaticConfig.optInt(BUFFERING_DATA, -100);
        this.mMaxBufferingData = this.mStaticConfig.optInt(MAX_BUFFERING_DATA, -100);
        this.mPUpdateInr = this.mStaticConfig.optInt(P_UPDATE_INR, -100);
        this.mPUpdateInrTh = this.mStaticConfig.optInt(P_UPDATE_INR_TH, -100);
    }
}
