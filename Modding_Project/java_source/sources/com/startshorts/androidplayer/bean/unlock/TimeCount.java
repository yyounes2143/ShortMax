package com.startshorts.androidplayer.bean.unlock;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TimeCount.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TimeCount {
    private int count;
    private final long time;

    public TimeCount(long j10, int i10) {
        this.time = j10;
        this.count = i10;
    }

    public static /* synthetic */ TimeCount copy$default(TimeCount timeCount, long j10, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j10 = timeCount.time;
        }
        if ((i11 & 2) != 0) {
            i10 = timeCount.count;
        }
        return timeCount.copy(j10, i10);
    }

    public final long component1() {
        return this.time;
    }

    public final int component2() {
        return this.count;
    }

    @NotNull
    public final TimeCount copy(long j10, int i10) {
        return new TimeCount(j10, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeCount)) {
            return false;
        }
        TimeCount timeCount = (TimeCount) obj;
        if (this.time == timeCount.time && this.count == timeCount.count) {
            return true;
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    public final long getTime() {
        return this.time;
    }

    public int hashCode() {
        return (Long.hashCode(this.time) * 31) + Integer.hashCode(this.count);
    }

    public final void setCount(int i10) {
        this.count = i10;
    }

    @NotNull
    public String toString() {
        return "TimeCount(time=" + this.time + ", count=" + this.count + ')';
    }
}
