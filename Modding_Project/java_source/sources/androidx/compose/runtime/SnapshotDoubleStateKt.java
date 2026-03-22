package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateFactoryMarker;
import kotlin.Metadata;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotDoubleState.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotDoubleStateKt {
    public static final double getValue(@NotNull DoubleState doubleState, @Nullable Object obj, @NotNull KProperty<?> kProperty) {
        return SnapshotDoubleStateKt__SnapshotDoubleStateKt.getValue(doubleState, obj, kProperty);
    }

    @StateFactoryMarker
    @NotNull
    public static final MutableDoubleState mutableDoubleStateOf(double d10) {
        return SnapshotDoubleStateKt__SnapshotDoubleStateKt.mutableDoubleStateOf(d10);
    }

    public static final void setValue(@NotNull MutableDoubleState mutableDoubleState, @Nullable Object obj, @NotNull KProperty<?> kProperty, double d10) {
        SnapshotDoubleStateKt__SnapshotDoubleStateKt.setValue(mutableDoubleState, obj, kProperty, d10);
    }
}
