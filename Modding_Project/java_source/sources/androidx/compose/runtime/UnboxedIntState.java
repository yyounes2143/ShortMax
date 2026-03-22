package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateExtensions.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class UnboxedIntState implements IntState {
    public static final int $stable = 0;
    @NotNull
    private final State<Integer> baseState;

    public UnboxedIntState(@NotNull State<Integer> state) {
        this.baseState = state;
    }

    @Override // androidx.compose.runtime.IntState
    public int getIntValue() {
        return this.baseState.getValue().intValue();
    }

    @NotNull
    public String toString() {
        return "UnboxedIntState(baseState=" + this.baseState + ")@" + hashCode();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.IntState, androidx.compose.runtime.State
    @NotNull
    public Integer getValue() {
        return this.baseState.getValue();
    }
}
