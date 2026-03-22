package com.ss.ttvideoengine.strategy.utils;

import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes6.dex */
public class BufferCheckUtil {
    private static final String TAG = "Strategy CheckUtil";
    private WeakReference<TTVideoEngine> mEngine;
    private ScheduledExecutorService mExecutor;
    private int mInternal;
    private BufferCheckListener mListener;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class Holder {
        private static final BufferCheckUtil instance = new BufferCheckUtil();

        private Holder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBuffer() {
        TTVideoEngine engine = getEngine();
        if (engine != null && !engine.isReleased()) {
            long min = Math.min(engine.getLongOption(62), engine.getLongOption(61));
            boolean isCacheEnd = isCacheEnd(engine, min);
            engine.getVideoID();
            if (isCacheEnd) {
                BufferCheckListener bufferCheckListener = this.mListener;
                if (bufferCheckListener != null) {
                    bufferCheckListener.onCacheEnd(engine);
                    return;
                }
                return;
            }
            BufferCheckListener bufferCheckListener2 = this.mListener;
            if (bufferCheckListener2 != null) {
                bufferCheckListener2.onCacheSize(engine, min);
                return;
            }
            return;
        }
        stop();
    }

    private TTVideoEngine getEngine() {
        WeakReference<TTVideoEngine> weakReference = this.mEngine;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static BufferCheckUtil instance() {
        return Holder.instance;
    }

    private boolean isCacheEnd(TTVideoEngine tTVideoEngine, long j10) {
        if (isMdlCacheEnd(tTVideoEngine)) {
            return true;
        }
        int duration = tTVideoEngine.getDuration();
        int currentPlaybackTime = tTVideoEngine.getCurrentPlaybackTime();
        if (duration > 0 && j10 + currentPlaybackTime + 1000 >= duration) {
            return true;
        }
        return false;
    }

    private boolean isMdlCacheEnd(TTVideoEngine tTVideoEngine) {
        List<String> cacheKeys;
        if (tTVideoEngine == null || (cacheKeys = tTVideoEngine.getCacheKeys()) == null || cacheKeys.size() <= 0) {
            return false;
        }
        boolean z10 = true;
        for (String str : cacheKeys) {
            DataLoaderHelper.DataLoaderCacheInfo cacheInfo = TTVideoEngine.getCacheInfo(str);
            if (cacheInfo == null || cacheInfo.mMediaSize > cacheInfo.mCacheSizeFromZero) {
                z10 = false;
            }
        }
        return z10;
    }

    public void setInternal(int i10) {
        this.mInternal = i10;
    }

    public void start(TTVideoEngine tTVideoEngine, BufferCheckListener bufferCheckListener) {
        if (tTVideoEngine == null) {
            return;
        }
        stop();
        TTVideoEngineLog.d(TAG, "start");
        this.mEngine = new WeakReference<>(tTVideoEngine);
        this.mListener = bufferCheckListener;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        this.mExecutor = scheduledThreadPoolExecutor;
        scheduledThreadPoolExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.ss.ttvideoengine.strategy.utils.a
            @Override // java.lang.Runnable
            public final void run() {
                BufferCheckUtil.this.checkBuffer();
            }
        }, 0L, this.mInternal, TimeUnit.MILLISECONDS);
    }

    public void stop() {
        if (this.mExecutor != null) {
            TTVideoEngineLog.d(TAG, "stop");
            this.mExecutor.shutdownNow();
            this.mExecutor = null;
        }
        this.mEngine = null;
    }

    private BufferCheckUtil() {
        this.mInternal = 300;
    }
}
