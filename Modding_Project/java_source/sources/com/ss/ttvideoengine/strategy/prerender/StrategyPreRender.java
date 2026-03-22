package com.ss.ttvideoengine.strategy.prerender;

import android.content.Context;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.strategy.StrategySettings;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class StrategyPreRender {
    private static final String COUNT = "count";
    private static final String START_BUFFER_LIMIT = "start_buffer_limit";
    private static final String STOP_BUFFER_LIMIT = "stop_buffer_limit";
    private static final String TAG = "Strategy PreRender";
    private TTVideoEngine mCacheReadyEngine;
    private boolean mEnable;
    private boolean mEnableReleasePreRenderEngineInstanceByLRU;
    private final PreRenderListener mPreRenderListener;
    private final int mScene;
    private int mCount = 1;
    private int mStartBufferLimitInS = 14;
    private int mStopBufferLimitInS = 5;
    private final List<String> mWaitPreloads = new ArrayList();
    private boolean mControlEngineRelease = true;
    private boolean mPreloadFirst = true;
    private boolean mEnableOptPreRenderOnSourceUpdate = false;
    private final ConcurrentHashMap<String, TTVideoEngine> mPreRenderEngines = new ConcurrentHashMap<>();

    public StrategyPreRender(int i10, PreRenderListener preRenderListener) {
        this.mScene = i10;
        this.mPreRenderListener = preRenderListener;
        updateConfig();
    }

    private void clearAllEngine(TTVideoEngine tTVideoEngine) {
        TTVideoEngineLog.d(TAG, "clearAllEngine");
        this.mCacheReadyEngine = null;
        this.mWaitPreloads.clear();
        releaseEngines(tTVideoEngine);
    }

    private List<StrategySource> getNeedPreRenderList(int i10) {
        StrategySource strategySource;
        List<StrategySource> source = StrategyManager.instance().getSource();
        ArrayList arrayList = new ArrayList();
        if (i10 >= 0 && i10 < source.size() - 1 && (strategySource = source.get(i10 + 1)) != null) {
            arrayList.add(strategySource);
        }
        return arrayList;
    }

    private void releaseEngines(TTVideoEngine tTVideoEngine) {
        if (this.mPreRenderEngines.isEmpty()) {
            return;
        }
        TTVideoEngineLog.d(TAG, "releaseEngines");
        TTVideoEngine tTVideoEngine2 = null;
        for (TTVideoEngine tTVideoEngine3 : this.mPreRenderEngines.values()) {
            if (tTVideoEngine3 != null) {
                if (tTVideoEngine3 == tTVideoEngine) {
                    tTVideoEngine2 = tTVideoEngine3;
                } else {
                    TTVideoEngineLog.d(TAG, "release " + tTVideoEngine3);
                    tTVideoEngine3.releaseAsync();
                }
            }
        }
        this.mPreRenderEngines.clear();
        if (tTVideoEngine2 != null) {
            this.mPreRenderEngines.put(tTVideoEngine2.getVideoID(), tTVideoEngine2);
        }
    }

    private void startPreRender(TTVideoEngine tTVideoEngine) {
        if (this.mEnable && tTVideoEngine != null && tTVideoEngine == StrategyManager.instance().getPlayEngine()) {
            Context context = tTVideoEngine.getContext();
            if (context == null) {
                TTVideoEngineLog.d(TAG, "startPreRender context is null");
                return;
            }
            Context applicationContext = context.getApplicationContext();
            int playIndex = StrategyManager.instance().getPlayIndex();
            TTVideoEngineLog.d(TAG, "startPreRender play index " + playIndex);
            for (StrategySource strategySource : getNeedPreRenderList(playIndex)) {
                String vid = strategySource.vid();
                if (this.mPreRenderEngines.containsKey(vid)) {
                    TTVideoEngineLog.d(TAG, "startPreRender already exist " + vid);
                } else {
                    if (this.mEnableReleasePreRenderEngineInstanceByLRU) {
                        releaseEngines(tTVideoEngine);
                    }
                    if (this.mPreloadFirst && !StrategyManager.instance().isAllowPreRender(vid)) {
                        TTVideoEngineLog.d(TAG, "startPreRender preload no ready " + vid);
                        this.mWaitPreloads.add(vid);
                    } else {
                        this.mWaitPreloads.remove(vid);
                        TTVideoEngine createPreRenderEngine = this.mPreRenderListener.createPreRenderEngine(strategySource);
                        if (createPreRenderEngine == null) {
                            createPreRenderEngine = new TTVideoEngine(applicationContext, 0);
                            createPreRenderEngine.setStrategySource(strategySource);
                            this.mPreRenderListener.onPreRenderEngineCreated(createPreRenderEngine, strategySource);
                        }
                        createPreRenderEngine.setIntOption(100, 0);
                        createPreRenderEngine.setAutoRangeRead(2, 512000);
                        createPreRenderEngine.prepare();
                        this.mPreRenderEngines.put(vid, createPreRenderEngine);
                        TTVideoEngineLog.d(TAG, "startPreRender success engine:" + createPreRenderEngine + " " + vid);
                    }
                }
            }
        }
    }

    public void controlEngineRelease(boolean z10) {
        this.mControlEngineRelease = z10;
    }

    public void enableOptPreRenderOnSourceUpdate(boolean z10) {
        this.mEnableOptPreRenderOnSourceUpdate = z10;
    }

    public void enableReleasePreRenderEngineInstanceByLRU(boolean z10) {
        this.mEnableReleasePreRenderEngineInstanceByLRU = z10;
    }

    @Nullable
    public TTVideoEngine getPreRenderEngine(String str) {
        TTVideoEngine tTVideoEngine = this.mPreRenderEngines.get(str);
        TTVideoEngineLog.d(TAG, "getPreRenderEngine " + tTVideoEngine);
        if (tTVideoEngine == null) {
            return null;
        }
        if (tTVideoEngine.isPrepared()) {
            if (!this.mControlEngineRelease) {
                this.mPreRenderEngines.remove(str);
            }
            return tTVideoEngine;
        }
        TTVideoEngineLog.d(TAG, "preRender engine is not prepared");
        tTVideoEngine.releaseAsync();
        this.mPreRenderEngines.remove(str);
        return null;
    }

    public void onCacheEnd(TTVideoEngine tTVideoEngine) {
        if (tTVideoEngine == StrategyManager.instance().getPlayEngine() && this.mCacheReadyEngine != tTVideoEngine) {
            TTVideoEngineLog.d(TAG, "onCacheEnd " + tTVideoEngine);
            this.mCacheReadyEngine = tTVideoEngine;
            startPreRender(tTVideoEngine);
        }
    }

    public void onCacheSize(TTVideoEngine tTVideoEngine, long j10) {
        if (tTVideoEngine == StrategyManager.instance().getPlayEngine() && j10 > this.mStartBufferLimitInS * 1000 && this.mCacheReadyEngine != tTVideoEngine) {
            TTVideoEngineLog.d(TAG, "onCacheSize " + tTVideoEngine + " " + j10);
            this.mCacheReadyEngine = tTVideoEngine;
            startPreRender(tTVideoEngine);
        }
    }

    public void onPreloadSuccess(String str) {
        if (this.mPreloadFirst && this.mWaitPreloads.contains(str)) {
            TTVideoEngineLog.d(TAG, "onPreloadSuccess " + str);
            startPreRender(StrategyManager.instance().getPlayEngine());
        }
    }

    public void preloadFirst(boolean z10) {
        this.mPreloadFirst = z10;
    }

    @Nullable
    public TTVideoEngine removePreRenderEngine(String str) {
        TTVideoEngine remove = this.mPreRenderEngines.remove(str);
        TTVideoEngineLog.d(TAG, "removePreRenderEngine " + remove);
        if (remove == null) {
            return null;
        }
        if (remove.isPrepared()) {
            return remove;
        }
        TTVideoEngineLog.d(TAG, "preRender engine is not prepared");
        remove.releaseAsync();
        return null;
    }

    public void start() {
        TTVideoEngineLog.d(TAG, "start");
        this.mEnable = true;
        startPreRender(StrategyManager.instance().getPlayEngine());
    }

    public void stop() {
        TTVideoEngineLog.d(TAG, "stop");
        this.mEnable = false;
        clearAllEngine(null);
    }

    public void updateConfig() {
        JSONObject preRender = StrategySettings.getInstance().getPreRender(this.mScene);
        TTVideoEngineLog.d(TAG, "updateConfig " + preRender);
        if (preRender == null) {
            return;
        }
        this.mCount = preRender.optInt("count", 1);
        this.mStartBufferLimitInS = preRender.optInt(START_BUFFER_LIMIT, 14);
        this.mStopBufferLimitInS = preRender.optInt(STOP_BUFFER_LIMIT, 5);
    }

    public void updateEngine() {
        clearAllEngine(StrategyManager.instance().getPlayEngine());
    }

    public void updateSource(boolean z10) {
        if (!this.mEnableReleasePreRenderEngineInstanceByLRU) {
            if (this.mEnableOptPreRenderOnSourceUpdate) {
                if (!z10) {
                    clearAllEngine(StrategyManager.instance().getPlayEngine());
                }
            } else {
                clearAllEngine(StrategyManager.instance().getPlayEngine());
            }
        }
        startPreRender(StrategyManager.instance().getPlayEngine());
    }
}
