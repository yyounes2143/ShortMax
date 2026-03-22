package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Utils.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ObjectRef {
    public static final int $stable = 8;
    @Nullable
    private Object value;

    public ObjectRef(@Nullable Object obj) {
        this.value = obj;
    }

    @Nullable
    public final Object getValue() {
        return this.value;
    }

    public final void setValue(@Nullable Object obj) {
        this.value = obj;
    }
}
