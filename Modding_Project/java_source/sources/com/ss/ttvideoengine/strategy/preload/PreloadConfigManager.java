package com.ss.ttvideoengine.strategy.preload;

import android.text.TextUtils;
import com.ss.ttvideoengine.strategy.preload.StrategyPreloadConfig;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class PreloadConfigManager {
    private static final String COUNT = "count";
    private static final String COUNT_LIMIT = "count_limit";
    private static final String FORCE_USE = "force_use";
    private static final String SIZE = "size";
    private static final String START_BUFFER_LIMIT = "start_buffer_limit";
    private static final String STOP_BUFFER_LIMIT = "stop_buffer_limit";
    private static final String TAG = "Strategy_Preload_Config";
    private StrategyPreloadConfig mConfig;
    private String mConfigJson;
    private StrategyPreloadConfig mCustomConfig;
    private boolean mForceUseSettings;
    private StrategyPreloadConfig mSettingsConfig;
    private int mCountLimit = 10;
    private final StrategyPreloadConfig mDefaultConfig = new StrategyPreloadConfig.Builder().build();

    public PreloadConfigManager() {
        updateConfig();
    }

    private void updateConfig() {
        StrategyPreloadConfig strategyPreloadConfig;
        if (this.mForceUseSettings && (strategyPreloadConfig = this.mSettingsConfig) != null) {
            this.mConfig = strategyPreloadConfig;
        } else {
            StrategyPreloadConfig strategyPreloadConfig2 = this.mCustomConfig;
            if (strategyPreloadConfig2 != null) {
                this.mConfig = strategyPreloadConfig2;
            } else {
                StrategyPreloadConfig strategyPreloadConfig3 = this.mSettingsConfig;
                if (strategyPreloadConfig3 != null) {
                    this.mConfig = strategyPreloadConfig3;
                } else {
                    this.mConfig = this.mDefaultConfig;
                }
            }
        }
        TTVideoEngineLog.d(TAG, "updateConfig " + this.mConfig);
    }

    public int getCount() {
        return this.mConfig.getCount();
    }

    public int getSize() {
        return this.mConfig.getSize();
    }

    public int getStartBufferLimit() {
        return this.mConfig.getStartBufferLimit();
    }

    public int getStopBufferLimit() {
        return this.mConfig.getStopBufferLimit();
    }

    public void setCustomConfig(StrategyPreloadConfig strategyPreloadConfig) {
        TTVideoEngineLog.d(TAG, "setCustomConfig " + strategyPreloadConfig);
        if (strategyPreloadConfig == null) {
            this.mCustomConfig = null;
        } else {
            this.mCustomConfig = new StrategyPreloadConfig.Builder(strategyPreloadConfig).setCount(Math.min(strategyPreloadConfig.getCount(), this.mCountLimit)).build();
        }
        updateConfig();
    }

    public void setSettingsConfig(JSONObject jSONObject) {
        TTVideoEngineLog.d(TAG, "updateSettingsConfig " + jSONObject);
        if (jSONObject == null || TextUtils.equals(jSONObject.toString(), this.mConfigJson)) {
            return;
        }
        this.mConfigJson = jSONObject.toString();
        this.mCountLimit = jSONObject.optInt(COUNT_LIMIT, 10);
        boolean z10 = false;
        if (jSONObject.optInt(FORCE_USE, 0) > 0) {
            z10 = true;
        }
        this.mForceUseSettings = z10;
        int min = Math.min(jSONObject.optInt("count", 3), this.mCountLimit);
        int optInt = jSONObject.optInt(SIZE, 800);
        int optInt2 = jSONObject.optInt(START_BUFFER_LIMIT, 14);
        this.mSettingsConfig = new StrategyPreloadConfig.Builder().setCount(min).setSize(optInt).setStartBufferLimit(optInt2).setStopBufferLimit(jSONObject.optInt(STOP_BUFFER_LIMIT, 5)).build();
        updateConfig();
    }
}
