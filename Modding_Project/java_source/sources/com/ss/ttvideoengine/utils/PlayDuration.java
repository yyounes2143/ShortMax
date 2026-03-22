package com.ss.ttvideoengine.utils;

import android.os.SystemClock;
/* loaded from: classes6.dex */
public class PlayDuration {
    private static final int STATE_PLAYING = 1;
    private static final int STATE_STOP = 2;
    private int mState = 2;
    private int mPlayedDuration = 0;
    private long mStartPlayTime = 0;

    public void clear() {
        this.mPlayedDuration = 0;
        if (this.mState == 1) {
            this.mStartPlayTime = SystemClock.elapsedRealtime();
        }
    }

    public int getPlayedDuration() {
        if (this.mState == 1) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j10 = this.mStartPlayTime;
            int i10 = (int) (elapsedRealtime - j10);
            if (i10 >= 0 && j10 > 0) {
                this.mPlayedDuration += i10;
            }
            this.mStartPlayTime = elapsedRealtime;
        }
        return this.mPlayedDuration;
    }

    public void reset() {
        this.mState = 2;
        this.mPlayedDuration = 0;
        this.mStartPlayTime = 0L;
    }

    public void start() {
        if (this.mState == 2) {
            this.mStartPlayTime = SystemClock.elapsedRealtime();
            this.mState = 1;
        }
    }

    public void stop() {
        if (this.mState == 1) {
            this.mState = 2;
            int elapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.mStartPlayTime);
            if (elapsedRealtime >= 0) {
                this.mPlayedDuration += elapsedRealtime;
            }
        }
    }
}
