package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OpaqueKey.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class OpaqueKey {
    public static final int $stable = 0;
    @NotNull
    private final String key;

    public OpaqueKey(@NotNull String str) {
        this.key = str;
    }

    public static /* synthetic */ OpaqueKey copy$default(OpaqueKey opaqueKey, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = opaqueKey.key;
        }
        return opaqueKey.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    @NotNull
    public final OpaqueKey copy(@NotNull String str) {
        return new OpaqueKey(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof OpaqueKey) && Intrinsics.areEqual(this.key, ((OpaqueKey) obj).key)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    @NotNull
    public String toString() {
        return "OpaqueKey(key=" + this.key + ')';
    }
}
