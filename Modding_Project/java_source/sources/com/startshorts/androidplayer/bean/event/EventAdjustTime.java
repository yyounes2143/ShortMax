package com.startshorts.androidplayer.bean.event;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventAdjustTime.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EventAdjustTime {
    private long diffTimeLong;

    public EventAdjustTime(long j10) {
        this.diffTimeLong = j10;
    }

    public static /* synthetic */ EventAdjustTime copy$default(EventAdjustTime eventAdjustTime, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = eventAdjustTime.diffTimeLong;
        }
        return eventAdjustTime.copy(j10);
    }

    public final long component1() {
        return this.diffTimeLong;
    }

    @NotNull
    public final EventAdjustTime copy(long j10) {
        return new EventAdjustTime(j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof EventAdjustTime) && this.diffTimeLong == ((EventAdjustTime) obj).diffTimeLong) {
            return true;
        }
        return false;
    }

    public final long getDiffTimeLong() {
        return this.diffTimeLong;
    }

    public int hashCode() {
        return Long.hashCode(this.diffTimeLong);
    }

    public final void setDiffTimeLong(long j10) {
        this.diffTimeLong = j10;
    }

    @NotNull
    public String toString() {
        return "EventAdjustTime(diffTimeLong=" + this.diffTimeLong + ')';
    }
}
