package com.startshorts.androidplayer.bean.turbolink;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TurboLinkReportBean.kt */
@Metadata
/* loaded from: classes6.dex */
public final class KeyValueParam {
    @NotNull
    private final String key;
    @NotNull
    private final String value;

    public KeyValueParam(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.key = key;
        this.value = value;
    }

    public static /* synthetic */ KeyValueParam copy$default(KeyValueParam keyValueParam, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = keyValueParam.key;
        }
        if ((i10 & 2) != 0) {
            str2 = keyValueParam.value;
        }
        return keyValueParam.copy(str, str2);
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
    public final KeyValueParam copy(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return new KeyValueParam(key, value);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyValueParam)) {
            return false;
        }
        KeyValueParam keyValueParam = (KeyValueParam) obj;
        if (Intrinsics.areEqual(this.key, keyValueParam.key) && Intrinsics.areEqual(this.value, keyValueParam.value)) {
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

    @NotNull
    public String toString() {
        return "KeyValueParam(key=" + this.key + ", value=" + this.value + ')';
    }
}
