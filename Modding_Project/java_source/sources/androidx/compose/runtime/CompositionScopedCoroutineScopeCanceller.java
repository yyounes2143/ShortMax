package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Effects.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class CompositionScopedCoroutineScopeCanceller implements RememberObserver {
    public static final int $stable = 8;
    @NotNull
    private final gt.g0 coroutineScope;

    public CompositionScopedCoroutineScopeCanceller(@NotNull gt.g0 g0Var) {
        this.coroutineScope = g0Var;
    }

    @NotNull
    public final gt.g0 getCoroutineScope() {
        return this.coroutineScope;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        gt.g0 g0Var = this.coroutineScope;
        if (g0Var instanceof RememberedCoroutineScope) {
            ((RememberedCoroutineScope) g0Var).cancelIfCreated();
        } else {
            kotlinx.coroutines.i.d(g0Var, new LeftCompositionCancellationException());
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        gt.g0 g0Var = this.coroutineScope;
        if (g0Var instanceof RememberedCoroutineScope) {
            ((RememberedCoroutineScope) g0Var).cancelIfCreated();
        } else {
            kotlinx.coroutines.i.d(g0Var, new LeftCompositionCancellationException());
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }
}
