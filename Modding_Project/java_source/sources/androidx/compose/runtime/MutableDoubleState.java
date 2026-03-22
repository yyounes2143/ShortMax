package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.AutoboxingStateValueProperty;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotDoubleState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface MutableDoubleState extends DoubleState, MutableState<Double> {

    /* compiled from: SnapshotDoubleState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @AutoboxingStateValueProperty(preferredPropertyName = "doubleValue")
        @Deprecated
        @NotNull
        public static Double getValue(@NotNull MutableDoubleState mutableDoubleState) {
            return Double.valueOf(MutableDoubleState.access$getValue$jd(mutableDoubleState));
        }

        @AutoboxingStateValueProperty(preferredPropertyName = "doubleValue")
        @Deprecated
        public static void setValue(@NotNull MutableDoubleState mutableDoubleState, double d10) {
            MutableDoubleState.super.setValue(d10);
        }
    }

    static /* synthetic */ double access$getValue$jd(MutableDoubleState mutableDoubleState) {
        return super.getValue().doubleValue();
    }

    @Override // androidx.compose.runtime.DoubleState
    double getDoubleValue();

    void setDoubleValue(double d10);

    @Override // androidx.compose.runtime.MutableState
    /* bridge */ /* synthetic */ default void setValue(Double d10) {
        setValue(d10.doubleValue());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.DoubleState, androidx.compose.runtime.State
    @AutoboxingStateValueProperty(preferredPropertyName = "doubleValue")
    @NotNull
    default Double getValue() {
        return Double.valueOf(getDoubleValue());
    }

    @AutoboxingStateValueProperty(preferredPropertyName = "doubleValue")
    default void setValue(double d10) {
        setDoubleValue(d10);
    }
}
