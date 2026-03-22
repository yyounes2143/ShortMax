package com.startshorts.androidplayer.bean.push;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PushTime.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PushTime {
    private final long beginTime;
    private final long endTime;
    private final long interval;
    private final int maxCount;

    public PushTime(long j10, long j11, long j12, int i10) {
        this.beginTime = j10;
        this.endTime = j11;
        this.interval = j12;
        this.maxCount = i10;
    }

    public static /* synthetic */ PushTime copy$default(PushTime pushTime, long j10, long j11, long j12, int i10, int i11, Object obj) {
        long j13;
        long j14;
        long j15;
        int i12;
        if ((i11 & 1) != 0) {
            j13 = pushTime.beginTime;
        } else {
            j13 = j10;
        }
        if ((i11 & 2) != 0) {
            j14 = pushTime.endTime;
        } else {
            j14 = j11;
        }
        if ((i11 & 4) != 0) {
            j15 = pushTime.interval;
        } else {
            j15 = j12;
        }
        if ((i11 & 8) != 0) {
            i12 = pushTime.maxCount;
        } else {
            i12 = i10;
        }
        return pushTime.copy(j13, j14, j15, i12);
    }

    public final long component1() {
        return this.beginTime;
    }

    public final long component2() {
        return this.endTime;
    }

    public final long component3() {
        return this.interval;
    }

    public final int component4() {
        return this.maxCount;
    }

    @NotNull
    public final PushTime copy(long j10, long j11, long j12, int i10) {
        return new PushTime(j10, j11, j12, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PushTime)) {
            return false;
        }
        PushTime pushTime = (PushTime) obj;
        if (this.beginTime == pushTime.beginTime && this.endTime == pushTime.endTime && this.interval == pushTime.interval && this.maxCount == pushTime.maxCount) {
            return true;
        }
        return false;
    }

    public final long getBeginTime() {
        return this.beginTime;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    public final long getInterval() {
        return this.interval;
    }

    public final int getMaxCount() {
        return this.maxCount;
    }

    public int hashCode() {
        return (((((Long.hashCode(this.beginTime) * 31) + Long.hashCode(this.endTime)) * 31) + Long.hashCode(this.interval)) * 31) + Integer.hashCode(this.maxCount);
    }

    @NotNull
    public String toString() {
        return "PushTime(beginTime=" + this.beginTime + ", endTime=" + this.endTime + ", interval=" + this.interval + ", maxCount=" + this.maxCount + ')';
    }
}
