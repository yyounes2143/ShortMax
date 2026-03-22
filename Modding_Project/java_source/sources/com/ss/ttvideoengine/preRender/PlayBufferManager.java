package com.ss.ttvideoengine.preRender;

import android.text.TextUtils;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.VideoEngineStateListener;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public final class PlayBufferManager implements PlayBufferListener, VideoEngineStateListener {
    public static final String AUTO_RANGE_K_KEY = "auto_range_k";
    public static final int DEFAULT_AUTO_RANGE_K = 500;
    public static final int DEFAULT_START_BUFFER_S = 14;
    public static final int DEFAULT_STOP_BUFFER_S = 3;
    public static final String PRERENDER_KEY = "prerender";
    public static final String START_BUFFER_S_KEY = "start_buffer_s";
    public static final String STOP_BUFFER_S_KEY = "stop_buffer_s";
    private static final String TAG = "PreRender_PlayBufferManager";
    private int mCustomStartBufferInS;
    private int mCustomStopBufferInS;
    private String mEngineHash;
    private final CopyOnWriteArrayList<PreRenderTriggerListener> mListeners;
    private PlayBuffer mPlayBuffer;
    private int mStartBufferInS;
    private int mStopBufferInS;
    private final Timer mTimer;
    private volatile boolean mTriggered;

    /* loaded from: classes6.dex */
    private static class Holder {
        private static final PlayBufferManager PLAY_BUFFER_MANAGER = new PlayBufferManager();

        private Holder() {
        }
    }

    public static PlayBufferManager instance() {
        return Holder.PLAY_BUFFER_MANAGER;
    }

    private void pausePreRender(String str) {
        if (!this.mTriggered) {
            return;
        }
        TTVideoEngineLog.d(TAG, "pause PreRender " + str);
        this.mTriggered = false;
        Iterator<PreRenderTriggerListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onPausePreRender();
        }
    }

    private void triggerPreRender(String str) {
        if (this.mTriggered) {
            return;
        }
        TTVideoEngineLog.d(TAG, "trigger PreRender " + str);
        this.mTriggered = true;
        Iterator<PreRenderTriggerListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onTriggerPreRender();
        }
    }

    private void updateSettingsInfo() {
        JSONObject vodJsonObject = SettingsHelper.helper().getVodJsonObject(PRERENDER_KEY);
        if (vodJsonObject == null) {
            return;
        }
        if (this.mCustomStartBufferInS <= 0) {
            this.mStartBufferInS = vodJsonObject.optInt(START_BUFFER_S_KEY, 14);
        }
        if (this.mCustomStopBufferInS <= 0) {
            this.mStopBufferInS = vodJsonObject.optInt(STOP_BUFFER_S_KEY, 3);
        }
    }

    public void addListener(PreRenderTriggerListener preRenderTriggerListener) {
        TTVideoEngineLog.d(TAG, "addListener triggered " + this.mTriggered);
        updateSettingsInfo();
        if (preRenderTriggerListener == null) {
            return;
        }
        this.mListeners.addIfAbsent(preRenderTriggerListener);
        if (this.mTriggered) {
            preRenderTriggerListener.onTriggerPreRender();
        } else {
            preRenderTriggerListener.onPausePreRender();
        }
    }

    public synchronized void enginePlay(TTVideoEngine tTVideoEngine) {
        try {
            TTVideoEngineLog.d(TAG, "enginePlay " + tTVideoEngine);
            if (tTVideoEngine == null) {
                return;
            }
            pausePreRender("new enginePlay");
            this.mEngineHash = tTVideoEngine.getHash();
            if (this.mPlayBuffer == null) {
                PlayBuffer playBuffer = new PlayBuffer(this.mTimer);
                this.mPlayBuffer = playBuffer;
                playBuffer.addPlayBufferListener(this);
            }
            this.mPlayBuffer.setEngine(tTVideoEngine);
            this.mPlayBuffer.start();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void engineStop(TTVideoEngine tTVideoEngine) {
        try {
            TTVideoEngineLog.d(TAG, "engineStop " + tTVideoEngine);
            if (tTVideoEngine == null) {
                return;
            }
            if (TextUtils.equals(tTVideoEngine.getHash(), this.mEngineHash)) {
                PlayBuffer playBuffer = this.mPlayBuffer;
                if (playBuffer != null) {
                    playBuffer.removePlayBufferListener(this);
                    this.mPlayBuffer.stop();
                    this.mPlayBuffer = null;
                }
                triggerPreRender("engineStop");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.ss.ttvideoengine.preRender.PlayBufferListener
    public void onCacheEnd(TTVideoEngine tTVideoEngine) {
        triggerPreRender("cache end");
    }

    @Override // com.ss.ttvideoengine.preRender.PlayBufferListener
    public void onCacheSize(TTVideoEngine tTVideoEngine, long j10) {
        if (j10 >= this.mStartBufferInS * 1000) {
            triggerPreRender("high buffer " + j10);
        }
        if (j10 <= this.mStopBufferInS * 1000) {
            pausePreRender("low buffer " + j10);
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineStateListener
    public void onEnginePlay(TTVideoEngine tTVideoEngine) {
        enginePlay(tTVideoEngine);
    }

    @Override // com.ss.ttvideoengine.VideoEngineStateListener
    public void onEngineStop(TTVideoEngine tTVideoEngine) {
        engineStop(tTVideoEngine);
    }

    public void removeListener(PreRenderTriggerListener preRenderTriggerListener) {
        if (preRenderTriggerListener == null) {
            return;
        }
        this.mListeners.remove(preRenderTriggerListener);
    }

    public void setStartBufferInS(int i10) {
        this.mCustomStartBufferInS = i10;
        this.mStartBufferInS = i10;
    }

    public void setStopBufferInS(int i10) {
        this.mCustomStopBufferInS = i10;
        this.mStopBufferInS = i10;
    }

    public void useDefaultEngineState(boolean z10) {
        if (z10) {
            TTVideoEngine.addEngineStateListener(this);
        } else {
            TTVideoEngine.removeEngineStateListener(this);
        }
    }

    private PlayBufferManager() {
        this.mStartBufferInS = 14;
        this.mStopBufferInS = 3;
        this.mTimer = TimerDefault.instance();
        this.mListeners = new CopyOnWriteArrayList<>();
    }
}
