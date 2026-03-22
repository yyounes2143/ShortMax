package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateFactoryMarker;
import kotlin.Metadata;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotIntState.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotIntStateKt {
    public static final int getValue(@NotNull IntState intState, @Nullable Object obj, @NotNull KProperty<?> kProperty) {
        return SnapshotIntStateKt__SnapshotIntStateKt.getValue(intState, obj, kProperty);
    }

    @StateFactoryMarker
    @NotNull
    public static final MutableIntState mutableIntStateOf(int i10) {
        return SnapshotIntStateKt__SnapshotIntStateKt.mutableIntStateOf(i10);
    }

    public static final void setValue(@NotNull MutableIntState mutableIntState, @Nullable Object obj, @NotNull KProperty<?> kProperty, int i10) {
        SnapshotIntStateKt__SnapshotIntStateKt.setValue(mutableIntState, obj, kProperty, i10);
    }
}
