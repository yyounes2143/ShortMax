package com.ss.ttvideoengine.preload;

import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes6.dex */
public class PreloadUtil {
    private static final String CancelReasonByBuffering = "buffering";
    private static final String CancelReasonByLowPlayBuffer = "low_buffer";
    private static final String TAG = "PreloadUtil";
    private static final int mMaxPlayCount = 2;
    public long mPlayBufferLowerBound = 0;
    public long mPlayBufferUpperBound = 0;
    private final ReentrantLock mPlayInfoLock = new ReentrantLock();
    private final HashMap<String, PlayInfo> mPlayInfoMap = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class PlayInfo {
        long mLastPlayableBuffer = 0;
        long mLastPlayPosition = 0;
        long mDuration = 0;
        String mVideoID = "";
        boolean mCacheEnd = false;
        boolean mTriggered = false;

        PlayInfo() {
        }
    }

    private void cancelPreload(String str, String str2) {
        TTVideoEngineLog.d(TAG, "cancel preload because:" + str + " traceId:" + str2);
        DataLoaderHelper.getDataLoader().cancelAllTasks();
        DataLoaderHelper.getDataLoader().notifyPreloadCancelled(str, str2);
    }

    private void checkPlayBuffer(String str) {
        PlayInfo playInfo = this.mPlayInfoMap.get(str);
        if (playInfo == null) {
            return;
        }
        if (playInfo.mLastPlayableBuffer > this.mPlayBufferUpperBound && !playInfo.mTriggered) {
            TTVideoEngineLog.d(TAG, "trigger preload " + str + " playable buffer is: " + playInfo.mLastPlayableBuffer);
            DataLoaderHelper.getDataLoader().notifyTriggerPreload(playInfo.mLastPlayableBuffer);
            playInfo.mTriggered = true;
        }
        if (!playInfo.mCacheEnd) {
            long j10 = playInfo.mDuration;
            if (j10 <= 0 || playInfo.mLastPlayableBuffer + playInfo.mLastPlayPosition + 1000 < j10) {
                if (playInfo.mLastPlayableBuffer < this.mPlayBufferLowerBound) {
                    long preloadTaskCount = DataLoaderHelper.getDataLoader().getPreloadTaskCount();
                    if (playInfo.mTriggered && preloadTaskCount > 0) {
                        cancelPreload(CancelReasonByLowPlayBuffer, str);
                        playInfo.mTriggered = false;
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (!playInfo.mTriggered) {
            TTVideoEngineLog.d(TAG, "cached video trigger preload " + str + " playable buffer is: " + playInfo.mLastPlayableBuffer);
            DataLoaderHelper.getDataLoader().notifyTriggerPreload(playInfo.mLastPlayableBuffer);
            playInfo.mTriggered = true;
        }
    }

    public void notifyCacheEnd(String str) {
        this.mPlayInfoLock.lock();
        if (!this.mPlayInfoMap.containsKey(str)) {
            if (this.mPlayInfoMap.size() >= 2) {
                this.mPlayInfoMap.clear();
            }
            this.mPlayInfoMap.put(str, new PlayInfo());
        }
        TTVideoEngineLog.d(TAG, "key :" + str + " cache end.");
        PlayInfo playInfo = this.mPlayInfoMap.get(str);
        if (playInfo != null) {
            playInfo.mCacheEnd = true;
            if (!playInfo.mTriggered) {
                TTVideoEngineLog.d(TAG, "cached video trigger preload " + str + " cache end ");
                DataLoaderHelper.getDataLoader().notifyTriggerPreload(playInfo.mLastPlayableBuffer);
                playInfo.mTriggered = true;
            }
        } else {
            TTVideoEngineLog.d(TAG, "key :" + str + " play info null");
        }
        this.mPlayInfoLock.unlock();
    }

    public void removePlayInfo(String str) {
        this.mPlayInfoLock.lock();
        if (this.mPlayInfoMap.containsKey(str)) {
            this.mPlayInfoMap.remove(str);
        }
        this.mPlayInfoLock.unlock();
    }

    public void updatePlayInfo(int i10, String str, String str2, long j10) {
        this.mPlayInfoLock.lock();
        if (!this.mPlayInfoMap.containsKey(str2)) {
            if (this.mPlayInfoMap.size() >= 2) {
                this.mPlayInfoMap.clear();
            }
            PlayInfo playInfo = new PlayInfo();
            playInfo.mVideoID = str2;
            this.mPlayInfoMap.put(str2, playInfo);
        }
        PlayInfo playInfo2 = this.mPlayInfoMap.get(str2);
        if (playInfo2 == null) {
            this.mPlayInfoLock.unlock();
            return;
        }
        if (i10 != 22) {
            if (i10 != 23) {
                if (i10 != 25) {
                    if (i10 == 27) {
                        playInfo2.mLastPlayableBuffer = j10;
                        checkPlayBuffer(str2);
                    }
                } else {
                    cancelPreload(CancelReasonByBuffering, str2);
                }
            } else {
                playInfo2.mLastPlayPosition = j10;
                checkPlayBuffer(str2);
            }
        } else {
            playInfo2.mDuration = j10;
        }
        this.mPlayInfoLock.unlock();
    }
}
