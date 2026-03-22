package com.startshorts.androidplayer.bean.ad;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdNewConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class FreeEpisodeInt {
    @Nullable
    private final Integer interval;
    @Nullable
    private final Integer switchValue;

    public FreeEpisodeInt(@Nullable Integer num, @Nullable Integer num2) {
        this.switchValue = num;
        this.interval = num2;
    }

    public static /* synthetic */ FreeEpisodeInt copy$default(FreeEpisodeInt freeEpisodeInt, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = freeEpisodeInt.switchValue;
        }
        if ((i10 & 2) != 0) {
            num2 = freeEpisodeInt.interval;
        }
        return freeEpisodeInt.copy(num, num2);
    }

    @Nullable
    public final Integer component1() {
        return this.switchValue;
    }

    @Nullable
    public final Integer component2() {
        return this.interval;
    }

    @NotNull
    public final FreeEpisodeInt copy(@Nullable Integer num, @Nullable Integer num2) {
        return new FreeEpisodeInt(num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FreeEpisodeInt)) {
            return false;
        }
        FreeEpisodeInt freeEpisodeInt = (FreeEpisodeInt) obj;
        if (Intrinsics.areEqual(this.switchValue, freeEpisodeInt.switchValue) && Intrinsics.areEqual(this.interval, freeEpisodeInt.interval)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getInterval() {
        return this.interval;
    }

    @Nullable
    public final Integer getSwitchValue() {
        return this.switchValue;
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.switchValue;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        Integer num2 = this.interval;
        if (num2 != null) {
            i10 = num2.hashCode();
        }
        return i11 + i10;
    }

    public final boolean isEnableShow() {
        Integer num = this.switchValue;
        if (num != null && num.intValue() == 1) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return "FreeEpisodeInt(switchValue=" + this.switchValue + ", interval=" + this.interval + ')';
    }
}
