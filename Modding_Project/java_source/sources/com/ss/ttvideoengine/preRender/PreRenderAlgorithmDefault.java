package com.ss.ttvideoengine.preRender;

import androidx.annotation.NonNull;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class PreRenderAlgorithmDefault implements PreRenderAlgorithm {
    private static final String TAG = "PreRender_AlgorithmDef";
    private PreRenderTriggerListener mBufferListener;
    private PreRenderTriggerListener mListener;
    private Source mSource;
    private SourceCache mSourceCache;
    private SourceCacheListener mSourceCacheListener;
    private final String mTraceId = "@" + hashCode();
    private int mAutoRangeKB = 500;
    private boolean mSourceCacheEnough = false;
    private boolean mTriggered = false;
    private boolean mStop = false;

    private void checkPlayBuffer() {
        this.mBufferListener = new PreRenderTriggerListener() { // from class: com.ss.ttvideoengine.preRender.PreRenderAlgorithmDefault.1
            @Override // com.ss.ttvideoengine.preRender.PreRenderTriggerListener
            public void onPausePreRender() {
                PreRenderAlgorithmDefault.this.pausePreRender();
            }

            @Override // com.ss.ttvideoengine.preRender.PreRenderTriggerListener
            public void onTriggerPreRender() {
                TTVideoEngineLog.d(PreRenderAlgorithmDefault.TAG, PreRenderAlgorithmDefault.this.mTraceId + " start preRender playBuffer allowed");
                PreRenderAlgorithmDefault.this.startPreRender();
            }
        };
        PlayBufferManager.instance().addListener(this.mBufferListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkSourceCache$0(Source source, long j10) {
        if (j10 > this.mAutoRangeKB * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            this.mSourceCacheEnough = true;
            TTVideoEngineLog.d(TAG, this.mTraceId + " start preRender cache enough " + j10);
            startPreRender();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pausePreRender() {
        if (this.mStop || !this.mTriggered || this.mSourceCacheEnough) {
            return;
        }
        TTVideoEngineLog.d(TAG, this.mTraceId + " pause preRender");
        this.mTriggered = false;
        PreRenderTriggerListener preRenderTriggerListener = this.mListener;
        if (preRenderTriggerListener != null) {
            preRenderTriggerListener.onPausePreRender();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPreRender() {
        if (!this.mStop && !this.mTriggered) {
            this.mTriggered = true;
            PreRenderTriggerListener preRenderTriggerListener = this.mListener;
            if (preRenderTriggerListener != null) {
                preRenderTriggerListener.onTriggerPreRender();
            }
        }
    }

    private void updateSettingsInfo() {
        JSONObject vodJsonObject = SettingsHelper.helper().getVodJsonObject(PlayBufferManager.PRERENDER_KEY);
        if (vodJsonObject == null) {
            return;
        }
        this.mAutoRangeKB = vodJsonObject.optInt(PlayBufferManager.AUTO_RANGE_K_KEY, 500);
    }

    protected void checkSourceCache() {
        this.mSourceCacheListener = new SourceCacheListener() { // from class: com.ss.ttvideoengine.preRender.a
            @Override // com.ss.ttvideoengine.preRender.SourceCacheListener
            public final void onCacheSize(Source source, long j10) {
                PreRenderAlgorithmDefault.this.lambda$checkSourceCache$0(source, j10);
            }
        };
        SourceCache sourceCache = new SourceCache(TimerDefault.instance());
        this.mSourceCache = sourceCache;
        sourceCache.setSource(this.mSource);
        this.mSourceCache.addSourceCacheListener(this.mSourceCacheListener);
        this.mSourceCache.start();
    }

    @Override // com.ss.ttvideoengine.preRender.PreRenderAlgorithm
    public int getAutoRange() {
        return this.mAutoRangeKB * 1024;
    }

    @Override // com.ss.ttvideoengine.preRender.PreRenderAlgorithm
    public void shouldStartPreRender(@NonNull Source source, @NonNull PreRenderTriggerListener preRenderTriggerListener) {
        TTVideoEngineLog.d(TAG, this.mTraceId + " shouldStartPreRender " + source);
        updateSettingsInfo();
        this.mSourceCacheEnough = false;
        this.mTriggered = false;
        this.mStop = false;
        this.mListener = preRenderTriggerListener;
        this.mSource = source;
        checkPlayBuffer();
        checkSourceCache();
    }

    @Override // com.ss.ttvideoengine.preRender.PreRenderAlgorithm
    public void stop() {
        this.mStop = true;
        PlayBufferManager.instance().removeListener(this.mBufferListener);
        SourceCache sourceCache = this.mSourceCache;
        if (sourceCache != null) {
            sourceCache.removeSourceCacheListener(this.mSourceCacheListener);
            this.mSourceCache.stop();
            this.mSourceCache = null;
        }
    }
}
