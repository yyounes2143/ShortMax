package com.startshorts.androidplayer.bean.ad;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdNewConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class HotSplash {
    @Nullable
    private final Integer switchValue;

    public HotSplash(@Nullable Integer num) {
        this.switchValue = num;
    }

    public static /* synthetic */ HotSplash copy$default(HotSplash hotSplash, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = hotSplash.switchValue;
        }
        return hotSplash.copy(num);
    }

    @Nullable
    public final Integer component1() {
        return this.switchValue;
    }

    @NotNull
    public final HotSplash copy(@Nullable Integer num) {
        return new HotSplash(num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof HotSplash) && Intrinsics.areEqual(this.switchValue, ((HotSplash) obj).switchValue)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getSwitchValue() {
        return this.switchValue;
    }

    public int hashCode() {
        Integer num = this.switchValue;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
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
        return "HotSplash(switchValue=" + this.switchValue + ')';
    }
}
