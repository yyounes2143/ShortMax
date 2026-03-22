package com.ss.ttvideoengine.strategy;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.debug.DebugManager;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.strategy.common.StrategyCommon;
import com.ss.ttvideoengine.strategy.common.StrategyStatic;
import com.ss.ttvideoengine.strategy.gear.StrategyGearABR;
import com.ss.ttvideoengine.strategy.pcdn.PCDNConfig;
import com.ss.ttvideoengine.strategy.preload.PreloadListener;
import com.ss.ttvideoengine.strategy.preload.PreloadTaskFactory;
import com.ss.ttvideoengine.strategy.preload.StrategyPreload;
import com.ss.ttvideoengine.strategy.preload.StrategyPreloadConfig;
import com.ss.ttvideoengine.strategy.prerender.PreRenderListener;
import com.ss.ttvideoengine.strategy.prerender.StrategyPreRender;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.ss.ttvideoengine.strategy.utils.BufferCheckListener;
import com.ss.ttvideoengine.strategy.utils.BufferCheckUtil;
import com.ss.ttvideoengine.superresolution.SRStrategyConfig;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes6.dex */
public class StrategyManager {
    public static final int STRATEGY_SCENE_SHORT_VIDEO = 1;
    public static final int STRATEGY_SCENE_SMALL_VIDEO = 0;
    public static final int STRATEGY_TYPE_COMMON = 0;
    public static final int STRATEGY_TYPE_PRELOAD = 1;
    public static final int STRATEGY_TYPE_PRE_RENDER = 2;
    private static final String TAG = "Strategy Manager";
    private boolean mControlEngineRelease;
    private StrategyPreloadConfig mCustomPreloadConfig;
    private boolean mEnableOptPreRenderOnSourceUpdate;
    private boolean mEnableTrimEngineInstance;
    private ScheduledExecutorService mExecutor;
    private EngineStrategyListener mListener;
    private WeakReference<TTVideoEngine> mPlayEngine;
    private int mPlayIndex;
    private boolean mPreloadFirst;
    private PreloadTaskFactory mPreloadTaskFactory;
    private final StrategyCommon mStrategyCommon;
    private StrategyPreRender mStrategyPreRender;
    private StrategyPreload mStrategyPreload;
    private final List<StrategySource> mStrategySources;
    private StrategyStatic mStrategyStatic;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ss.ttvideoengine.strategy.StrategyManager$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public class AnonymousClass2 implements BufferCheckListener {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCacheEnd$0(TTVideoEngine tTVideoEngine) {
            if (StrategyManager.this.mStrategyPreload != null) {
                StrategyManager.this.mStrategyPreload.onCacheEnd(tTVideoEngine);
            }
            if (StrategyManager.this.mStrategyPreRender != null) {
                StrategyManager.this.mStrategyPreRender.onCacheEnd(tTVideoEngine);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCacheSize$1(TTVideoEngine tTVideoEngine, long j10) {
            if (StrategyManager.this.mStrategyPreload != null) {
                StrategyManager.this.mStrategyPreload.onCacheSize(tTVideoEngine, j10);
            }
            if (StrategyManager.this.mStrategyPreRender != null) {
                StrategyManager.this.mStrategyPreRender.onCacheSize(tTVideoEngine, j10);
            }
        }

        @Override // com.ss.ttvideoengine.strategy.utils.BufferCheckListener
        public void onCacheEnd(final TTVideoEngine tTVideoEngine) {
            StrategyManager.this.runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.r
                @Override // java.lang.Runnable
                public final void run() {
                    StrategyManager.AnonymousClass2.this.lambda$onCacheEnd$0(tTVideoEngine);
                }
            });
        }

        @Override // com.ss.ttvideoengine.strategy.utils.BufferCheckListener
        public void onCacheSize(final TTVideoEngine tTVideoEngine, final long j10) {
            StrategyManager.this.runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.q
                @Override // java.lang.Runnable
                public final void run() {
                    StrategyManager.AnonymousClass2.this.lambda$onCacheSize$1(tTVideoEngine, j10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class Holder {
        private static final StrategyManager instance = new StrategyManager();

        private Holder() {
        }
    }

    public static StrategyManager instance() {
        return Holder.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addStrategySources$1(List list) {
        TTVideoEngineLog.d(TAG, "addStrategySources");
        if (list == null) {
            return;
        }
        boolean z10 = !this.mStrategySources.isEmpty();
        this.mStrategySources.addAll(list);
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload != null) {
            strategyPreload.updateSource();
        }
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender != null) {
            strategyPreRender.updateSource(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bufferStart$13(TTVideoEngine tTVideoEngine) {
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload != null) {
            strategyPreload.onBufferStart(tTVideoEngine);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearAll$11() {
        TTVideoEngineLog.d(TAG, "clearAll");
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload != null) {
            strategyPreload.stop();
            this.mStrategyPreload = null;
        }
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender != null) {
            strategyPreRender.stop();
            this.mStrategyPreRender = null;
        }
        this.mStrategyStatic = null;
        stopBufferCheck();
        this.mStrategySources.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$controlEngineRelease$4(boolean z10) {
        this.mControlEngineRelease = z10;
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender != null) {
            strategyPreRender.controlEngineRelease(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enable$3(int i10, int i11) {
        TTVideoEngineLog.d(TAG, "enable type:" + i10 + ", scene:" + i11);
        if (this.mStrategyStatic == null) {
            this.mStrategyStatic = new StrategyStatic(i11);
        }
        if (i10 != 1) {
            if (i10 == 2 && this.mStrategyPreRender == null) {
                StrategyPreRender strategyPreRender = new StrategyPreRender(i11, new PreRenderListener() { // from class: com.ss.ttvideoengine.strategy.StrategyManager.1
                    @Override // com.ss.ttvideoengine.strategy.prerender.PreRenderListener
                    public TTVideoEngine createPreRenderEngine(StrategySource strategySource) {
                        if (StrategyManager.this.mListener == null) {
                            return null;
                        }
                        return StrategyManager.this.mListener.createPreRenderEngine(strategySource);
                    }

                    @Override // com.ss.ttvideoengine.strategy.prerender.PreRenderListener
                    public void onPreRenderEngineCreated(TTVideoEngine tTVideoEngine, StrategySource strategySource) {
                        if (StrategyManager.this.mListener != null) {
                            StrategyManager.this.mListener.onPreRenderEngineCreated(tTVideoEngine, strategySource);
                        }
                    }
                });
                this.mStrategyPreRender = strategyPreRender;
                strategyPreRender.controlEngineRelease(this.mControlEngineRelease);
                this.mStrategyPreRender.preloadFirst(this.mPreloadFirst);
                this.mStrategyPreRender.enableOptPreRenderOnSourceUpdate(this.mEnableOptPreRenderOnSourceUpdate);
                this.mStrategyPreRender.enableReleasePreRenderEngineInstanceByLRU(this.mEnableTrimEngineInstance);
                this.mStrategyPreRender.start();
                startBufferCheck();
            }
        } else if (this.mStrategyPreload == null) {
            StrategyPreload strategyPreload = new StrategyPreload(i11, new PreloadListener() { // from class: com.ss.ttvideoengine.strategy.k
                @Override // com.ss.ttvideoengine.strategy.preload.PreloadListener
                public final void onResult(int i12, String str) {
                    StrategyManager.this.lambda$null$2(i12, str);
                }
            });
            this.mStrategyPreload = strategyPreload;
            strategyPreload.setPreloadTaskFactory(this.mPreloadTaskFactory);
            StrategyPreloadConfig strategyPreloadConfig = this.mCustomPreloadConfig;
            if (strategyPreloadConfig != null) {
                this.mStrategyPreload.setCustomConfig(strategyPreloadConfig);
            }
            this.mStrategyPreload.start();
            startBufferCheck();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enableOptPreRenderOnSourceUpdate$5(boolean z10) {
        this.mEnableOptPreRenderOnSourceUpdate = z10;
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender != null) {
            strategyPreRender.enableOptPreRenderOnSourceUpdate(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enableReleasePreRenderEngineInstanceByLRU$6(boolean z10) {
        this.mEnableTrimEngineInstance = z10;
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender != null) {
            strategyPreRender.enableReleasePreRenderEngineInstanceByLRU(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enginePlay$12(TTVideoEngine tTVideoEngine) {
        if (this.mStrategyPreload == null && this.mStrategyPreRender == null) {
            return;
        }
        TTVideoEngineLog.d(TAG, "enginePlay " + tTVideoEngine);
        if (getPlayEngine() == tTVideoEngine) {
            return;
        }
        this.mPlayEngine = new WeakReference<>(tTVideoEngine);
        updateEngineIndex();
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload != null) {
            strategyPreload.updateEngine();
        }
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender != null) {
            strategyPreRender.updateEngine();
        }
        startBufferCheck();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$null$2(int i10, String str) {
        StrategyPreRender strategyPreRender;
        if (i10 == 2 && (strategyPreRender = this.mStrategyPreRender) != null) {
            strategyPreRender.onPreloadSuccess(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPrepared$14(TTVideoEngineInterface tTVideoEngineInterface) {
        StrategyStatic strategyStatic = this.mStrategyStatic;
        if (strategyStatic != null) {
            strategyStatic.onPrepared(tTVideoEngineInterface);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preload$8(int i10) {
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload != null) {
            strategyPreload.startPreload(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preloadFirst$7(boolean z10) {
        this.mPreloadFirst = z10;
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender != null) {
            strategyPreRender.preloadFirst(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCustomPreloadConfig$10(StrategyPreloadConfig strategyPreloadConfig) {
        this.mCustomPreloadConfig = strategyPreloadConfig;
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload != null) {
            strategyPreload.setCustomConfig(strategyPreloadConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPreloadTaskFactory$9(PreloadTaskFactory preloadTaskFactory) {
        this.mPreloadTaskFactory = preloadTaskFactory;
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload != null) {
            strategyPreload.setPreloadTaskFactory(preloadTaskFactory);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStrategySources$0(List list) {
        TTVideoEngineLog.d(TAG, "setStrategySources");
        if (list == null) {
            return;
        }
        this.mStrategySources.clear();
        this.mStrategySources.addAll(list);
        updateEngineIndex();
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload != null) {
            strategyPreload.updateSource();
        }
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender != null) {
            strategyPreRender.updateSource(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSettings$15() {
        this.mStrategyCommon.updateConfig();
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload != null) {
            strategyPreload.updateConfig();
        }
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender != null) {
            strategyPreRender.updateConfig();
        }
        StrategyStatic strategyStatic = this.mStrategyStatic;
        if (strategyStatic != null) {
            strategyStatic.updateConfig();
        }
    }

    private void startBufferCheck() {
        if (this.mStrategyPreload == null && this.mStrategyPreRender == null) {
            return;
        }
        BufferCheckUtil.instance().start(getPlayEngine(), new AnonymousClass2());
    }

    private void stopBufferCheck() {
        BufferCheckUtil.instance().stop();
    }

    private void updateEngineIndex() {
        TTVideoEngine playEngine = getPlayEngine();
        if (playEngine == null) {
            this.mPlayIndex = -1;
            return;
        }
        String videoID = playEngine.getVideoID();
        this.mPlayIndex = -1;
        for (StrategySource strategySource : this.mStrategySources) {
            if (TextUtils.equals(videoID, strategySource.vid())) {
                this.mPlayIndex = this.mStrategySources.indexOf(strategySource);
                return;
            }
        }
    }

    public void addStrategySources(final List<StrategySource> list) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.g
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$addStrategySources$1(list);
            }
        });
    }

    public void bufferStart(final TTVideoEngine tTVideoEngine) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.o
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$bufferStart$13(tTVideoEngine);
            }
        });
    }

    public void clearAll() {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.b
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$clearAll$11();
            }
        });
    }

    public void codecType(TTVideoEngineInterface tTVideoEngineInterface, String str) {
        StrategyCommon strategyCommon = this.mStrategyCommon;
        if (strategyCommon != null) {
            strategyCommon.setCodecType(tTVideoEngineInterface, str);
        }
    }

    public void controlEngineRelease(final boolean z10) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.m
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$controlEngineRelease$4(z10);
            }
        });
    }

    public void enable(final int i10, final int i11) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.e
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$enable$3(i10, i11);
            }
        });
    }

    public boolean enableEngineLooper() {
        return this.mStrategyCommon.enableEngineLooper();
    }

    public void enableOptPreRenderOnSourceUpdate(final boolean z10) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.j
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$enableOptPreRenderOnSourceUpdate$5(z10);
            }
        });
    }

    public void enableReleasePreRenderEngineInstanceByLRU(final boolean z10) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.h
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$enableReleasePreRenderEngineInstanceByLRU$6(z10);
            }
        });
    }

    public void engineCreate(TTVideoEngineInterface tTVideoEngineInterface) {
        StrategyCommon strategyCommon = this.mStrategyCommon;
        if (strategyCommon != null) {
            strategyCommon.engineCreate(tTVideoEngineInterface);
        }
        PCDNConfig.configEngine(tTVideoEngineInterface);
        StrategyStatic strategyStatic = this.mStrategyStatic;
        if (strategyStatic != null) {
            strategyStatic.engineCreate(tTVideoEngineInterface);
        }
    }

    public void enginePlay(final TTVideoEngine tTVideoEngine) {
        DebugManager.enginePlay(tTVideoEngine);
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.d
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$enginePlay$12(tTVideoEngine);
            }
        });
    }

    public TTVideoEngine getPlayEngine() {
        WeakReference<TTVideoEngine> weakReference = this.mPlayEngine;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public int getPlayIndex() {
        return this.mPlayIndex;
    }

    @Nullable
    public TTVideoEngine getPreRenderEngine(StrategySource strategySource) {
        StrategyPreRender strategyPreRender = this.mStrategyPreRender;
        if (strategyPreRender == null || strategySource == null) {
            return null;
        }
        return strategyPreRender.getPreRenderEngine(strategySource.vid());
    }

    public List<StrategySource> getSource() {
        return this.mStrategySources;
    }

    public void initGearGlobalConfig() {
        StrategyGearABR.initGlobalConfig();
    }

    public boolean isAllowPreRender(String str) {
        StrategyPreload strategyPreload = this.mStrategyPreload;
        if (strategyPreload == null) {
            return true;
        }
        return strategyPreload.isPreloaded(str);
    }

    public void mdlStart(AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure) {
        StrategyCommon strategyCommon = this.mStrategyCommon;
        if (strategyCommon != null) {
            strategyCommon.mdlStart(aVMDLDataLoaderConfigure);
        }
        PCDNConfig.configMDL(aVMDLDataLoaderConfigure);
    }

    public void onPrepared(final TTVideoEngineInterface tTVideoEngineInterface) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.i
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$onPrepared$14(tTVideoEngineInterface);
            }
        });
    }

    public void preload(final int i10) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.f
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$preload$8(i10);
            }
        });
    }

    public void preloadFirst(final boolean z10) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.l
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$preloadFirst$7(z10);
            }
        });
    }

    @Nullable
    public TTVideoEngine removePreRenderEngine(String str) {
        if (this.mStrategyPreRender != null && !TextUtils.isEmpty(str)) {
            return this.mStrategyPreRender.removePreRenderEngine(str);
        }
        return null;
    }

    public synchronized void runOnWorkThread(Runnable runnable) {
        try {
            if (this.mExecutor == null) {
                this.mExecutor = Executors.newSingleThreadScheduledExecutor();
            }
            this.mExecutor.execute(runnable);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setCustomPreloadConfig(final StrategyPreloadConfig strategyPreloadConfig) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.n
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$setCustomPreloadConfig$10(strategyPreloadConfig);
            }
        });
    }

    public void setListener(EngineStrategyListener engineStrategyListener) {
        this.mListener = engineStrategyListener;
    }

    public void setPreloadTaskFactory(final PreloadTaskFactory preloadTaskFactory) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.c
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$setPreloadTaskFactory$9(preloadTaskFactory);
            }
        });
    }

    public void setStrategySources(final List<StrategySource> list) {
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.p
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$setStrategySources$0(list);
            }
        });
    }

    public void setVideoInfo(TTVideoEngineInterface tTVideoEngineInterface, VideoInfo videoInfo) {
        this.mStrategyCommon.setVideoInfo(tTVideoEngineInterface, videoInfo);
    }

    public void startSpeedPredictor() {
        StrategyGearABR.startSpeedPredictor();
    }

    public void updateSRStrategyConfig(SRStrategyConfig sRStrategyConfig) {
        if (sRStrategyConfig == null) {
            return;
        }
        StrategyGearABR.updateSRStrategyConfig(sRStrategyConfig);
    }

    public void updateSettings() {
        StrategySettings.getInstance().update();
        runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.a
            @Override // java.lang.Runnable
            public final void run() {
                StrategyManager.this.lambda$updateSettings$15();
            }
        });
    }

    private StrategyManager() {
        this.mStrategyCommon = new StrategyCommon();
        this.mStrategySources = new ArrayList();
        this.mPlayIndex = -1;
        this.mEnableOptPreRenderOnSourceUpdate = false;
        this.mEnableTrimEngineInstance = false;
        this.mControlEngineRelease = true;
        this.mPreloadFirst = true;
    }

    @Nullable
    public TTVideoEngine getPreRenderEngine(String str) {
        if (this.mStrategyPreRender == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.mStrategyPreRender.getPreRenderEngine(str);
    }
}
