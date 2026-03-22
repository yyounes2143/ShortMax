package com.ss.texturerender.overlay;

import java.io.Serializable;
import java.util.LinkedList;
/* loaded from: classes6.dex */
public class FrameTimeQueue {
    private LinkedList<FrameTime> mTimeQueue = new LinkedList<>();

    /* loaded from: classes6.dex */
    public static class FrameTime implements Serializable {
        public long pts;
        public long updateClockTime;

        public FrameTime(long j10, long j11) {
            this.pts = j10;
            this.updateClockTime = j11;
        }
    }

    public void add(FrameTime frameTime) {
        this.mTimeQueue.offer(frameTime);
    }

    public void clear() {
        this.mTimeQueue.clear();
    }

    public FrameTime getLast() {
        return this.mTimeQueue.getLast();
    }

    public int getSize() {
        return this.mTimeQueue.size();
    }

    public FrameTime poll(long j10) {
        FrameTime frameTime = null;
        while (!this.mTimeQueue.isEmpty()) {
            long j11 = this.mTimeQueue.element().updateClockTime;
            if (j10 <= j11) {
                if (frameTime == null) {
                    return this.mTimeQueue.poll();
                }
                long j12 = frameTime.updateClockTime;
                if (j10 > j12) {
                    if (j10 - j12 < j11 - j10) {
                        return frameTime;
                    }
                    return this.mTimeQueue.poll();
                }
            }
            frameTime = this.mTimeQueue.poll();
            if (this.mTimeQueue.isEmpty()) {
                return frameTime;
            }
        }
        return null;
    }

    public String toString() {
        String str = "";
        for (int i10 = 0; i10 < this.mTimeQueue.size(); i10++) {
            str = str + "pts[" + i10 + "]:" + this.mTimeQueue.get(i10).pts + ";";
        }
        return str;
    }
}
