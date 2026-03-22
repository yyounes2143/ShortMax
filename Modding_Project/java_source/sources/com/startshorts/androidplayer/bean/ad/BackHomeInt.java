package com.startshorts.androidplayer.bean.ad;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdNewConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class BackHomeInt {
    @Nullable
    private final Integer switchValue;

    public BackHomeInt(@Nullable Integer num) {
        this.switchValue = num;
    }

    public static /* synthetic */ BackHomeInt copy$default(BackHomeInt backHomeInt, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = backHomeInt.switchValue;
        }
        return backHomeInt.copy(num);
    }

    @Nullable
    public final Integer component1() {
        return this.switchValue;
    }

    @NotNull
    public final BackHomeInt copy(@Nullable Integer num) {
        return new BackHomeInt(num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof BackHomeInt) && Intrinsics.areEqual(this.switchValue, ((BackHomeInt) obj).switchValue)) {
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
        return "BackHomeInt(switchValue=" + this.switchValue + ')';
    }
}
