package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateExtensions.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class UnboxedDoubleState implements DoubleState {
    public static final int $stable = 0;
    @NotNull
    private final State<Double> baseState;

    public UnboxedDoubleState(@NotNull State<Double> state) {
        this.baseState = state;
    }

    @Override // androidx.compose.runtime.DoubleState
    public double getDoubleValue() {
        return this.baseState.getValue().doubleValue();
    }

    @NotNull
    public String toString() {
        return "UnboxedDoubleState(baseState=" + this.baseState + ")@" + hashCode();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.DoubleState, androidx.compose.runtime.State
    @NotNull
    public Double getValue() {
        return this.baseState.getValue();
    }
}
