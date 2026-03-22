package com.ss.ttvideoengine.strategy.preload;

import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.strategy.StrategySettings;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes6.dex */
public class StrategyPreload {
    private static final String TAG = "Strategy Preload";
    private boolean mEnable;
    private boolean mEnablePreload;
    private final PreloadListener mListener;
    private PreloadSync mPreloadSync;
    private PreloadTaskFactory mPreloadTaskFactory;
    private final int mScene;
    private final Set<String> mPreloadedList = new HashSet();
    private final PreloadConfigManager mConfigManager = new PreloadConfigManager();

    public StrategyPreload(int i10, PreloadListener preloadListener) {
        this.mScene = i10;
        this.mListener = preloadListener;
        updateConfig();
    }

    private TTVideoEngine getPlayingEngine() {
        return StrategyManager.instance().getPlayEngine();
    }

    private boolean isPlayingEngine(TTVideoEngine tTVideoEngine) {
        if (tTVideoEngine == StrategyManager.instance().getPlayEngine()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startPreload$0(int i10, String str) {
        if (i10 == 2) {
            this.mPreloadedList.add(str);
        }
        PreloadListener preloadListener = this.mListener;
        if (preloadListener != null) {
            preloadListener.onResult(i10, str);
        }
    }

    private void startPreload(TTVideoEngine tTVideoEngine) {
        if (this.mEnablePreload && this.mEnable && tTVideoEngine != null && isPlayingEngine(tTVideoEngine)) {
            startPreload(StrategyManager.instance().getPlayIndex() + 1);
        }
    }

    private void stopPreload() {
        if (!this.mEnablePreload) {
            return;
        }
        TTVideoEngineLog.d(TAG, "stopPreload");
        this.mEnablePreload = false;
        PreloadSync preloadSync = this.mPreloadSync;
        if (preloadSync != null) {
            preloadSync.stop();
            this.mPreloadSync = null;
        }
        TTVideoEngine.cancelAllPreloadTasks();
    }

    public boolean isPreloaded(String str) {
        return this.mPreloadedList.contains(str);
    }

    public void onBufferStart(TTVideoEngine tTVideoEngine) {
        TTVideoEngineLog.d(TAG, "onBufferStart " + tTVideoEngine);
        if (!isPlayingEngine(tTVideoEngine)) {
            return;
        }
        stopPreload();
    }

    public void onCacheEnd(TTVideoEngine tTVideoEngine) {
        if (isPlayingEngine(tTVideoEngine) && !this.mEnablePreload) {
            TTVideoEngineLog.d(TAG, "onCacheEnd start preload");
            this.mEnablePreload = true;
            startPreload(tTVideoEngine);
        }
    }

    public void onCacheSize(TTVideoEngine tTVideoEngine, long j10) {
        if (!isPlayingEngine(tTVideoEngine)) {
            return;
        }
        int stopBufferLimit = this.mConfigManager.getStopBufferLimit();
        if (this.mEnablePreload && j10 < stopBufferLimit * 1000) {
            stopPreload();
            return;
        }
        int startBufferLimit = this.mConfigManager.getStartBufferLimit();
        if (!this.mEnablePreload && j10 > startBufferLimit * 1000) {
            TTVideoEngineLog.d(TAG, "onCacheSize " + j10 + " start preload");
            this.mEnablePreload = true;
            startPreload(tTVideoEngine);
        }
    }

    public void setCustomConfig(StrategyPreloadConfig strategyPreloadConfig) {
        this.mConfigManager.setCustomConfig(strategyPreloadConfig);
    }

    public void setPreloadTaskFactory(PreloadTaskFactory preloadTaskFactory) {
        this.mPreloadTaskFactory = preloadTaskFactory;
    }

    public void start() {
        TTVideoEngineLog.d(TAG, "start");
        this.mEnable = true;
        startPreload(getPlayingEngine());
    }

    public void stop() {
        TTVideoEngineLog.d(TAG, "stop");
        this.mEnable = false;
        stopPreload();
    }

    public void updateConfig() {
        this.mConfigManager.setSettingsConfig(StrategySettings.getInstance().getPreload(this.mScene));
    }

    public void updateEngine() {
        stopPreload();
    }

    public void updateSource() {
        stopPreload();
        startPreload(getPlayingEngine());
    }

    public void startPreload(int i10) {
        List<StrategySource> source = StrategyManager.instance().getSource();
        TTVideoEngineLog.d(TAG, "startPreload start index " + i10);
        if (i10 < 0 || i10 > source.size() - 1) {
            return;
        }
        int min = Math.min(source.size() - 1, (this.mConfigManager.getCount() + i10) - 1);
        ArrayList arrayList = new ArrayList();
        while (i10 <= min) {
            arrayList.add(source.get(i10));
            i10++;
        }
        PreloadSync preloadSync = new PreloadSync(new ArrayList(arrayList), this.mPreloadTaskFactory, this.mConfigManager.getSize());
        this.mPreloadSync = preloadSync;
        preloadSync.setListener(new PreloadListener() { // from class: com.ss.ttvideoengine.strategy.preload.b
            @Override // com.ss.ttvideoengine.strategy.preload.PreloadListener
            public final void onResult(int i11, String str) {
                StrategyPreload.this.lambda$startPreload$0(i11, str);
            }
        });
        this.mPreloadSync.start();
    }
}
