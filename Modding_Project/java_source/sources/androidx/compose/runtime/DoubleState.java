package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.AutoboxingStateValueProperty;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotDoubleState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface DoubleState extends State<Double> {

    /* compiled from: SnapshotDoubleState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @AutoboxingStateValueProperty(preferredPropertyName = "doubleValue")
        @Deprecated
        @NotNull
        public static Double getValue(@NotNull DoubleState doubleState) {
            return Double.valueOf(DoubleState.access$getValue$jd(doubleState));
        }
    }

    static /* synthetic */ double access$getValue$jd(DoubleState doubleState) {
        return super.getValue().doubleValue();
    }

    double getDoubleValue();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.State
    @AutoboxingStateValueProperty(preferredPropertyName = "doubleValue")
    @NotNull
    default Double getValue() {
        return Double.valueOf(getDoubleValue());
    }
}
