package ai.turbolink.sdk.deeplink;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LinkDataProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkDataProperties {
    @Nullable
    private String _key;
    @Nullable
    private String _value;

    @Nullable
    public final String getKey() {
        return this._key;
    }

    @Nullable
    public final String getValue() {
        return this._value;
    }

    @NotNull
    public final LinkDataProperties setKey(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this._key = key;
        return this;
    }

    @NotNull
    public final LinkDataProperties setValue(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._value = value;
        return this;
    }
}
