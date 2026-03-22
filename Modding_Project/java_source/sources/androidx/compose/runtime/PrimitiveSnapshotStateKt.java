package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateFactoryMarker;
import kotlin.Metadata;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotFloatState.kt */
@Metadata
/* loaded from: classes.dex */
public final class PrimitiveSnapshotStateKt {
    public static final float getValue(@NotNull FloatState floatState, @Nullable Object obj, @NotNull KProperty<?> kProperty) {
        return PrimitiveSnapshotStateKt__SnapshotFloatStateKt.getValue(floatState, obj, kProperty);
    }

    @StateFactoryMarker
    @NotNull
    public static final MutableFloatState mutableFloatStateOf(float f10) {
        return PrimitiveSnapshotStateKt__SnapshotFloatStateKt.mutableFloatStateOf(f10);
    }

    public static final void setValue(@NotNull MutableFloatState mutableFloatState, @Nullable Object obj, @NotNull KProperty<?> kProperty, float f10) {
        PrimitiveSnapshotStateKt__SnapshotFloatStateKt.setValue(mutableFloatState, obj, kProperty, f10);
    }
}
