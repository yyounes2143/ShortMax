package com.startshorts.androidplayer.bean.bundle;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntBundle.kt */
@Metadata
/* loaded from: classes6.dex */
public final class IntBundle implements IFragmentBundle {
    @NotNull
    private String key;
    private int value;

    public IntBundle(@NotNull String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.value = i10;
    }

    public static /* synthetic */ IntBundle copy$default(IntBundle intBundle, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = intBundle.key;
        }
        if ((i11 & 2) != 0) {
            i10 = intBundle.value;
        }
        return intBundle.copy(str, i10);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    public final int component2() {
        return this.value;
    }

    @NotNull
    public final IntBundle copy(@NotNull String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new IntBundle(key, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntBundle)) {
            return false;
        }
        IntBundle intBundle = (IntBundle) obj;
        if (Intrinsics.areEqual(this.key, intBundle.key) && this.value == intBundle.value) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + Integer.hashCode(this.value);
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }

    public final void setValue(int i10) {
        this.value = i10;
    }

    @NotNull
    public String toString() {
        return "IntBundle(key=" + this.key + ", value=" + this.value + ')';
    }
}
