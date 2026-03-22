package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateExtensions.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class UnboxedFloatState implements FloatState {
    public static final int $stable = 0;
    @NotNull
    private final State<Float> baseState;

    public UnboxedFloatState(@NotNull State<Float> state) {
        this.baseState = state;
    }

    @Override // androidx.compose.runtime.FloatState
    public float getFloatValue() {
        return this.baseState.getValue().floatValue();
    }

    @NotNull
    public String toString() {
        return "UnboxedFloatState(baseState=" + this.baseState + ")@" + hashCode();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.FloatState, androidx.compose.runtime.State
    @NotNull
    public Float getValue() {
        return this.baseState.getValue();
    }
}
