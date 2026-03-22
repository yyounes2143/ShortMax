package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateFactoryMarker;
import kotlin.Metadata;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotDoubleState.kt */
@Metadata
/* loaded from: classes.dex */
final /* synthetic */ class SnapshotDoubleStateKt__SnapshotDoubleStateKt {
    public static final double getValue(@NotNull DoubleState doubleState, @Nullable Object obj, @NotNull KProperty<?> kProperty) {
        return doubleState.getDoubleValue();
    }

    @StateFactoryMarker
    @NotNull
    public static final MutableDoubleState mutableDoubleStateOf(double d10) {
        return SnapshotDoubleState_androidKt.createSnapshotMutableDoubleState(d10);
    }

    public static final void setValue(@NotNull MutableDoubleState mutableDoubleState, @Nullable Object obj, @NotNull KProperty<?> kProperty, double d10) {
        mutableDoubleState.setDoubleValue(d10);
    }
}
