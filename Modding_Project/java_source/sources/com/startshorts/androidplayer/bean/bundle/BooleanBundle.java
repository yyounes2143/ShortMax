package com.startshorts.androidplayer.bean.bundle;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BooleanBundle.kt */
@Metadata
/* loaded from: classes6.dex */
public final class BooleanBundle implements IFragmentBundle {
    @NotNull
    private String key;
    private boolean value;

    public BooleanBundle(@NotNull String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.value = z10;
    }

    public static /* synthetic */ BooleanBundle copy$default(BooleanBundle booleanBundle, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = booleanBundle.key;
        }
        if ((i10 & 2) != 0) {
            z10 = booleanBundle.value;
        }
        return booleanBundle.copy(str, z10);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    public final boolean component2() {
        return this.value;
    }

    @NotNull
    public final BooleanBundle copy(@NotNull String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new BooleanBundle(key, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BooleanBundle)) {
            return false;
        }
        BooleanBundle booleanBundle = (BooleanBundle) obj;
        if (Intrinsics.areEqual(this.key, booleanBundle.key) && this.value == booleanBundle.value) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final boolean getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + Boolean.hashCode(this.value);
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }

    public final void setValue(boolean z10) {
        this.value = z10;
    }

    @NotNull
    public String toString() {
        return "BooleanBundle(key=" + this.key + ", value=" + this.value + ')';
    }
}
