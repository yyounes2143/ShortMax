package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import gt.q0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Lifecycle.kt */
@Metadata
/* loaded from: classes2.dex */
public final class LifecycleCoroutineScopeImpl extends LifecycleCoroutineScope implements LifecycleEventObserver {
    @NotNull
    private final CoroutineContext coroutineContext;
    @NotNull
    private final Lifecycle lifecycle;

    public LifecycleCoroutineScopeImpl(@NotNull Lifecycle lifecycle, @NotNull CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        this.lifecycle = lifecycle;
        this.coroutineContext = coroutineContext;
        if (getLifecycle$lifecycle_common().getCurrentState() == Lifecycle.State.DESTROYED) {
            JobKt__JobKt.e(getCoroutineContext(), null, 1, null);
        }
    }

    @Override // androidx.lifecycle.LifecycleCoroutineScope, gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.lifecycle.LifecycleCoroutineScope
    @NotNull
    public Lifecycle getLifecycle$lifecycle_common() {
        return this.lifecycle;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (getLifecycle$lifecycle_common().getCurrentState().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            getLifecycle$lifecycle_common().removeObserver(this);
            JobKt__JobKt.e(getCoroutineContext(), null, 1, null);
        }
    }

    public final void register() {
        gt.g.d(this, q0.c().m(), null, new LifecycleCoroutineScopeImpl$register$1(this, null), 2, null);
    }
}
