package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.AutoboxingStateValueProperty;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotFloatState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface MutableFloatState extends FloatState, MutableState<Float> {

    /* compiled from: SnapshotFloatState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @AutoboxingStateValueProperty(preferredPropertyName = "floatValue")
        @Deprecated
        @NotNull
        public static Float getValue(@NotNull MutableFloatState mutableFloatState) {
            return Float.valueOf(MutableFloatState.access$getValue$jd(mutableFloatState));
        }

        @AutoboxingStateValueProperty(preferredPropertyName = "floatValue")
        @Deprecated
        public static void setValue(@NotNull MutableFloatState mutableFloatState, float f10) {
            MutableFloatState.super.setValue(f10);
        }
    }

    static /* synthetic */ float access$getValue$jd(MutableFloatState mutableFloatState) {
        return super.getValue().floatValue();
    }

    @Override // androidx.compose.runtime.FloatState
    float getFloatValue();

    void setFloatValue(float f10);

    @Override // androidx.compose.runtime.MutableState
    /* bridge */ /* synthetic */ default void setValue(Float f10) {
        setValue(f10.floatValue());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.FloatState, androidx.compose.runtime.State
    @AutoboxingStateValueProperty(preferredPropertyName = "floatValue")
    @NotNull
    default Float getValue() {
        return Float.valueOf(getFloatValue());
    }

    @AutoboxingStateValueProperty(preferredPropertyName = "floatValue")
    default void setValue(float f10) {
        setFloatValue(f10);
    }
}
