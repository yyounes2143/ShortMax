package com.startshorts.androidplayer.bean.bundle;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SerializableBundle.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SerializableBundle implements IFragmentBundle {
    @NotNull
    private String key;
    @NotNull
    private Serializable value;

    public SerializableBundle(@NotNull String key, @NotNull Serializable value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.key = key;
        this.value = value;
    }

    public static /* synthetic */ SerializableBundle copy$default(SerializableBundle serializableBundle, String str, Serializable serializable, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = serializableBundle.key;
        }
        if ((i10 & 2) != 0) {
            serializable = serializableBundle.value;
        }
        return serializableBundle.copy(str, serializable);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    @NotNull
    public final Serializable component2() {
        return this.value;
    }

    @NotNull
    public final SerializableBundle copy(@NotNull String key, @NotNull Serializable value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return new SerializableBundle(key, value);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SerializableBundle)) {
            return false;
        }
        SerializableBundle serializableBundle = (SerializableBundle) obj;
        if (Intrinsics.areEqual(this.key, serializableBundle.key) && Intrinsics.areEqual(this.value, serializableBundle.value)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final Serializable getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + this.value.hashCode();
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }

    public final void setValue(@NotNull Serializable serializable) {
        Intrinsics.checkNotNullParameter(serializable, "<set-?>");
        this.value = serializable;
    }

    @NotNull
    public String toString() {
        return "SerializableBundle(key=" + this.key + ", value=" + this.value + ')';
    }
}
