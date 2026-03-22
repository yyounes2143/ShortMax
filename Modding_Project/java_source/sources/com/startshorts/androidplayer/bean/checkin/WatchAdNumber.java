package com.startshorts.androidplayer.bean.checkin;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WatchAdNumber.kt */
@Metadata
/* loaded from: classes6.dex */
public final class WatchAdNumber {
    private int count;
    @NotNull
    private final String day;

    public WatchAdNumber(@NotNull String day, int i10) {
        Intrinsics.checkNotNullParameter(day, "day");
        this.day = day;
        this.count = i10;
    }

    public static /* synthetic */ WatchAdNumber copy$default(WatchAdNumber watchAdNumber, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = watchAdNumber.day;
        }
        if ((i11 & 2) != 0) {
            i10 = watchAdNumber.count;
        }
        return watchAdNumber.copy(str, i10);
    }

    @NotNull
    public final String component1() {
        return this.day;
    }

    public final int component2() {
        return this.count;
    }

    @NotNull
    public final WatchAdNumber copy(@NotNull String day, int i10) {
        Intrinsics.checkNotNullParameter(day, "day");
        return new WatchAdNumber(day, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WatchAdNumber)) {
            return false;
        }
        WatchAdNumber watchAdNumber = (WatchAdNumber) obj;
        if (Intrinsics.areEqual(this.day, watchAdNumber.day) && this.count == watchAdNumber.count) {
            return true;
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final String getDay() {
        return this.day;
    }

    public int hashCode() {
        return (this.day.hashCode() * 31) + Integer.hashCode(this.count);
    }

    public final void setCount(int i10) {
        this.count = i10;
    }

    @NotNull
    public String toString() {
        return "WatchAdNumber(day=" + this.day + ", count=" + this.count + ')';
    }
}
