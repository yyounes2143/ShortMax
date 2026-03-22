package com.ss.texturerender.overlay;

import android.os.SystemClock;
import com.ss.texturerender.TextureRenderLog;
/* loaded from: classes6.dex */
public class NormalClock {
    private static final String TAG = "NormalClock";
    private int mTexType;
    private long mPts = 0;
    private long mUpdateTime = 0;
    private int mStatus = 3;
    private boolean mIsUpdated = false;

    public NormalClock(int i10) {
        this.mTexType = i10;
    }

    public synchronized long getClock() {
        long j10;
        long j11;
        j10 = this.mPts;
        j11 = 0;
        if (this.mUpdateTime > 0 && this.mStatus == 1) {
            j11 = SystemClock.elapsedRealtime() - this.mUpdateTime;
        }
        return j10 + j11;
    }

    public synchronized void pause() {
        this.mStatus = 2;
        this.mUpdateTime = 0L;
    }

    public synchronized void start() {
        this.mStatus = 1;
    }

    public synchronized void stop() {
        this.mStatus = 3;
        this.mUpdateTime = 0L;
        this.mIsUpdated = false;
        this.mPts = 0L;
    }

    public synchronized void updateClock(long j10) {
        try {
            int i10 = this.mTexType;
            TextureRenderLog.d(i10, TAG, "updateClock masetr:" + j10 + " mIsUpdated:" + this.mIsUpdated + " mStatus:" + this.mStatus);
            if (!this.mIsUpdated) {
                this.mIsUpdated = true;
                this.mStatus = 1;
            }
            if (this.mStatus == 1) {
                this.mPts = j10;
                this.mUpdateTime = SystemClock.elapsedRealtime();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
