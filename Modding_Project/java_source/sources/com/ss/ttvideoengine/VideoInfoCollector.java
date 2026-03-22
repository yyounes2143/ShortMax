package com.ss.ttvideoengine;

import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class VideoInfoCollector {
    private static final String TAG = "VideoInfoCollecor";
    private static final VideoInfoCollector ourInstance = new VideoInfoCollector();
    private long mWastedDataSize = 0;
    private long mPlayConsumedSize = 0;
    private final HashMap<Long, WeakReference<TTVideoEngine>> mActiveEngines = new HashMap<>();

    /* loaded from: classes6.dex */
    public static class myVideoCollectorAddConsumeSize implements Runnable {
        long mConsumeSize;

        public myVideoCollectorAddConsumeSize(long j10) {
            this.mConsumeSize = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoInfoCollector videoInfoCollector = VideoInfoCollector.getInstance();
            if (videoInfoCollector != null) {
                videoInfoCollector.addPlayConsumedSize(this.mConsumeSize);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class myVideoCollectorRegister implements Runnable {
        long mSerial;
        private final WeakReference<TTVideoEngine> mVideoEngineRef;

        public myVideoCollectorRegister(TTVideoEngine tTVideoEngine, long j10) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngine);
            this.mSerial = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoInfoCollector videoInfoCollector;
            TTVideoEngine tTVideoEngine = this.mVideoEngineRef.get();
            if (tTVideoEngine != null && (videoInfoCollector = VideoInfoCollector.getInstance()) != null) {
                videoInfoCollector.registEngine(this.mSerial, tTVideoEngine);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class myVideoCollectorUnregister implements Runnable {
        long mSerial;

        public myVideoCollectorUnregister(long j10) {
            this.mSerial = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoInfoCollector videoInfoCollector = VideoInfoCollector.getInstance();
            if (videoInfoCollector != null) {
                videoInfoCollector.unregistEngine(this.mSerial);
            }
        }
    }

    private VideoInfoCollector() {
    }

    public static VideoInfoCollector getInstance() {
        return ourInstance;
    }

    public synchronized void addPlayConsumedSize(long j10) {
        if (j10 > 0) {
            this.mPlayConsumedSize += j10;
        }
    }

    public synchronized long getPlayConsumedSize() {
        long j10;
        j10 = this.mPlayConsumedSize;
        this.mPlayConsumedSize = 0L;
        return j10;
    }

    public synchronized long getPlayWastDataSize() {
        long j10;
        j10 = this.mWastedDataSize;
        this.mWastedDataSize = 0L;
        try {
            for (WeakReference<TTVideoEngine> weakReference : this.mActiveEngines.values()) {
                TTVideoEngine tTVideoEngine = weakReference.get();
                if (tTVideoEngine != null) {
                    long longOption = tTVideoEngine.getLongOption(81);
                    if (longOption > 0) {
                        j10 += longOption;
                    }
                }
            }
            TTVideoEngineLog.d(TAG, "get play waste data size: " + j10);
        } catch (Exception unused) {
            return j10;
        }
        return j10;
    }

    public synchronized void registEngine(long j10, TTVideoEngine tTVideoEngine) {
        if (!this.mActiveEngines.containsKey(Long.valueOf(j10)) && tTVideoEngine != null) {
            this.mActiveEngines.put(Long.valueOf(j10), new WeakReference<>(tTVideoEngine));
            TTVideoEngineLog.d(TAG, "new engine: " + j10);
        }
    }

    public synchronized void unregistEngine(long j10) {
        try {
            if (this.mActiveEngines.containsKey(Long.valueOf(j10))) {
                TTVideoEngine tTVideoEngine = this.mActiveEngines.get(Long.valueOf(j10)).get();
                if (tTVideoEngine == null) {
                    return;
                }
                long longOption = tTVideoEngine.getLongOption(81);
                if (longOption > 0) {
                    this.mWastedDataSize += longOption;
                }
                this.mActiveEngines.remove(Long.valueOf(j10));
                TTVideoEngineLog.d(TAG, "delete engine: " + j10 + ", waste data: " + longOption);
            }
        } catch (Exception unused) {
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
