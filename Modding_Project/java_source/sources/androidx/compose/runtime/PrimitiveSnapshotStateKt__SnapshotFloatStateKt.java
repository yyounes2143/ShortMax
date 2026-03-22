package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateFactoryMarker;
import kotlin.Metadata;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotFloatState.kt */
@Metadata
/* loaded from: classes.dex */
final /* synthetic */ class PrimitiveSnapshotStateKt__SnapshotFloatStateKt {
    public static final float getValue(@NotNull FloatState floatState, @Nullable Object obj, @NotNull KProperty<?> kProperty) {
        return floatState.getFloatValue();
    }

    @StateFactoryMarker
    @NotNull
    public static final MutableFloatState mutableFloatStateOf(float f10) {
        return SnapshotFloatState_androidKt.createSnapshotMutableFloatState(f10);
    }

    public static final void setValue(@NotNull MutableFloatState mutableFloatState, @Nullable Object obj, @NotNull KProperty<?> kProperty, float f10) {
        mutableFloatState.setFloatValue(f10);
    }
}
