package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateFactoryMarker;
import kotlin.Metadata;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotLongState.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotLongStateKt {
    public static final long getValue(@NotNull LongState longState, @Nullable Object obj, @NotNull KProperty<?> kProperty) {
        return SnapshotLongStateKt__SnapshotLongStateKt.getValue(longState, obj, kProperty);
    }

    @StateFactoryMarker
    @NotNull
    public static final MutableLongState mutableLongStateOf(long j10) {
        return SnapshotLongStateKt__SnapshotLongStateKt.mutableLongStateOf(j10);
    }

    public static final void setValue(@NotNull MutableLongState mutableLongState, @Nullable Object obj, @NotNull KProperty<?> kProperty, long j10) {
        SnapshotLongStateKt__SnapshotLongStateKt.setValue(mutableLongState, obj, kProperty, j10);
    }
}
