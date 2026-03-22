package com.ss.ttvideoengine.preRender;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.VideoEngineCallback;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class PreRenderController implements PreRenderTriggerListener, VideoEngineCallback {
    private static final int STATE_CHECK = 1;
    private static final int STATE_ERROR = 4;
    private static final int STATE_FINISH = 3;
    private static final int STATE_PRERENDER = 2;
    private static final int STATE_STOP = 0;
    private static final String TAG = "PreRender_Controller";
    private final PreRenderAlgorithm mAlgorithm;
    private final EngineFactory mEngineFactory;
    private PreRenderListener mListener;
    private TTVideoEngine mPreRenderEngine;
    private Source mPreRenderSource;
    private int mState;
    private final String mTraceId;

    public PreRenderController(@NonNull EngineFactory engineFactory) {
        this(engineFactory, new PreRenderAlgorithmDefault());
    }

    private void callbackError(final int i10, final Error error) {
        TTVideoEngineLog.d(TAG, this.mTraceId + " prerender error errorType:" + i10 + "， error:" + error);
        this.mAlgorithm.stop();
        this.mState = 4;
        runOnMainThread(new Runnable() { // from class: com.ss.ttvideoengine.preRender.d
            @Override // java.lang.Runnable
            public final void run() {
                PreRenderController.this.lambda$callbackError$2(i10, error);
            }
        });
    }

    private void callbackPreRenderStart() {
        runOnMainThread(new Runnable() { // from class: com.ss.ttvideoengine.preRender.b
            @Override // java.lang.Runnable
            public final void run() {
                PreRenderController.this.lambda$callbackPreRenderStart$0();
            }
        });
    }

    private void callbackSuccess(final TTVideoEngine tTVideoEngine) {
        TTVideoEngineLog.d(TAG, this.mTraceId + " prerender success engine:" + tTVideoEngine);
        this.mAlgorithm.stop();
        this.mState = 3;
        runOnMainThread(new Runnable() { // from class: com.ss.ttvideoengine.preRender.c
            @Override // java.lang.Runnable
            public final void run() {
                PreRenderController.this.lambda$callbackSuccess$1(tTVideoEngine);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callbackError$2(int i10, Error error) {
        PreRenderListener preRenderListener = this.mListener;
        if (preRenderListener != null) {
            preRenderListener.onPreRenderError(this.mPreRenderEngine, this.mPreRenderSource, i10, error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callbackPreRenderStart$0() {
        PreRenderListener preRenderListener = this.mListener;
        if (preRenderListener != null) {
            preRenderListener.onPreRenderStart(this.mPreRenderEngine, this.mPreRenderSource);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callbackSuccess$1(TTVideoEngine tTVideoEngine) {
        PreRenderListener preRenderListener = this.mListener;
        if (preRenderListener != null) {
            preRenderListener.onPreRenderSuccess(tTVideoEngine, this.mPreRenderSource);
        }
    }

    private void runOnMainThread(Runnable runnable) {
        Looper mainLooper = Looper.getMainLooper();
        if (Looper.myLooper() == mainLooper) {
            runnable.run();
        } else {
            new Handler(mainLooper).post(runnable);
        }
    }

    private void startPreRender() {
        TTVideoEngineLog.d(TAG, this.mTraceId + " startPreRender");
        TTVideoEngine tTVideoEngine = this.mPreRenderEngine;
        if (tTVideoEngine != null && tTVideoEngine.isPrepared()) {
            callbackSuccess(this.mPreRenderEngine);
            return;
        }
        if (this.mPreRenderEngine == null) {
            this.mPreRenderEngine = this.mEngineFactory.createEngine(this.mPreRenderSource);
        }
        TTVideoEngine tTVideoEngine2 = this.mPreRenderEngine;
        if (tTVideoEngine2 == null) {
            callbackError(2, null);
            return;
        }
        tTVideoEngine2.setAutoRangeRead(2, this.mAlgorithm.getAutoRange());
        this.mPreRenderEngine.addVideoEngineCallback(this);
        this.mPreRenderEngine.prepare();
        callbackPreRenderStart();
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onError(Error error) {
        TTVideoEngine tTVideoEngine = this.mPreRenderEngine;
        if (tTVideoEngine != null) {
            tTVideoEngine.removeVideoEngineCallback(this);
        }
        callbackError(3, error);
    }

    @Override // com.ss.ttvideoengine.preRender.PreRenderTriggerListener
    public synchronized void onPausePreRender() {
        TTVideoEngine tTVideoEngine = this.mPreRenderEngine;
        if (tTVideoEngine != null && !tTVideoEngine.isPrepared()) {
            TTVideoEngineLog.d(TAG, this.mTraceId + " pausePreRender");
            PreRenderListener preRenderListener = this.mListener;
            if (preRenderListener == null) {
                return;
            }
            if (preRenderListener.onPreRenderPause(this.mPreRenderEngine, this.mPreRenderSource)) {
                this.mState = 1;
            }
        }
    }

    @Override // com.ss.ttvideoengine.VideoEngineCallback
    public void onPrepared(TTVideoEngine tTVideoEngine) {
        tTVideoEngine.removeVideoEngineCallback(this);
        callbackSuccess(tTVideoEngine);
    }

    @Override // com.ss.ttvideoengine.preRender.PreRenderTriggerListener
    public synchronized void onTriggerPreRender() {
        if (this.mState != 1) {
            return;
        }
        this.mState = 2;
        startPreRender();
    }

    public void setListener(PreRenderListener preRenderListener) {
        this.mListener = preRenderListener;
    }

    public void setSource(Source source) {
        this.mPreRenderSource = source;
    }

    public synchronized boolean start() {
        TTVideoEngineLog.d(TAG, this.mTraceId + " start");
        int i10 = this.mState;
        if (i10 != 1 && i10 != 2) {
            Source source = this.mPreRenderSource;
            if (source == null) {
                callbackError(1, null);
                return false;
            }
            this.mState = 1;
            this.mAlgorithm.shouldStartPreRender(source, this);
            return true;
        }
        callbackError(0, null);
        return false;
    }

    public synchronized void stop() {
        try {
            TTVideoEngineLog.d(TAG, this.mTraceId + " stop");
            this.mState = 0;
            this.mPreRenderSource = null;
            TTVideoEngine tTVideoEngine = this.mPreRenderEngine;
            if (tTVideoEngine != null) {
                tTVideoEngine.removeVideoEngineCallback(this);
            }
            this.mPreRenderEngine = null;
            this.mAlgorithm.stop();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public PreRenderController(@NonNull EngineFactory engineFactory, @NonNull PreRenderAlgorithm preRenderAlgorithm) {
        this.mTraceId = "@" + hashCode();
        this.mState = 0;
        this.mEngineFactory = engineFactory;
        this.mAlgorithm = preRenderAlgorithm;
    }
}
