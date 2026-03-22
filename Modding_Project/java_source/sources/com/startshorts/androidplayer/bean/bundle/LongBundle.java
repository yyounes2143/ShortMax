package com.startshorts.androidplayer.bean.bundle;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LongBundle.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LongBundle implements IFragmentBundle {
    @NotNull
    private String key;
    private long value;

    public LongBundle(@NotNull String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.value = j10;
    }

    public static /* synthetic */ LongBundle copy$default(LongBundle longBundle, String str, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = longBundle.key;
        }
        if ((i10 & 2) != 0) {
            j10 = longBundle.value;
        }
        return longBundle.copy(str, j10);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    public final long component2() {
        return this.value;
    }

    @NotNull
    public final LongBundle copy(@NotNull String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new LongBundle(key, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LongBundle)) {
            return false;
        }
        LongBundle longBundle = (LongBundle) obj;
        if (Intrinsics.areEqual(this.key, longBundle.key) && this.value == longBundle.value) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + Long.hashCode(this.value);
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }

    public final void setValue(long j10) {
        this.value = j10;
    }

    @NotNull
    public String toString() {
        return "LongBundle(key=" + this.key + ", value=" + this.value + ')';
    }
}
