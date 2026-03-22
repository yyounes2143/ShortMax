package com.startshorts.androidplayer.bean.bundle;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringBundle.kt */
@Metadata
/* loaded from: classes6.dex */
public final class StringBundle implements IFragmentBundle {
    @NotNull
    private String key;
    @NotNull
    private String value;

    public StringBundle(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.key = key;
        this.value = value;
    }

    public static /* synthetic */ StringBundle copy$default(StringBundle stringBundle, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = stringBundle.key;
        }
        if ((i10 & 2) != 0) {
            str2 = stringBundle.value;
        }
        return stringBundle.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    @NotNull
    public final String component2() {
        return this.value;
    }

    @NotNull
    public final StringBundle copy(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return new StringBundle(key, value);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StringBundle)) {
            return false;
        }
        StringBundle stringBundle = (StringBundle) obj;
        if (Intrinsics.areEqual(this.key, stringBundle.key) && Intrinsics.areEqual(this.value, stringBundle.value)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + this.value.hashCode();
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }

    public final void setValue(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.value = str;
    }

    @NotNull
    public String toString() {
        return "StringBundle(key=" + this.key + ", value=" + this.value + ')';
    }
}
