package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.tooling.CompositionObserver;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Composition.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class CompositionObserverHolder {
    public static final int $stable = 8;
    @Nullable
    private CompositionObserver observer;
    @NotNull
    private final CompositionContext parent;
    private boolean root;

    public CompositionObserverHolder(@Nullable CompositionObserver compositionObserver, boolean z10, @NotNull CompositionContext compositionContext) {
        this.observer = compositionObserver;
        this.root = z10;
        this.parent = compositionContext;
    }

    @Nullable
    public final CompositionObserver current() {
        CompositionObserver compositionObserver;
        if (this.root) {
            return this.observer;
        }
        CompositionObserverHolder observerHolder$runtime = this.parent.getObserverHolder$runtime();
        if (observerHolder$runtime != null) {
            compositionObserver = observerHolder$runtime.observer;
        } else {
            compositionObserver = null;
        }
        if (!Intrinsics.areEqual(compositionObserver, this.observer)) {
            this.observer = compositionObserver;
            return compositionObserver;
        }
        return compositionObserver;
    }

    @Nullable
    public final CompositionObserver getObserver() {
        return this.observer;
    }

    public final boolean getRoot() {
        return this.root;
    }

    public final void setObserver(@Nullable CompositionObserver compositionObserver) {
        this.observer = compositionObserver;
    }

    public final void setRoot(boolean z10) {
        this.root = z10;
    }

    public /* synthetic */ CompositionObserverHolder(CompositionObserver compositionObserver, boolean z10, CompositionContext compositionContext, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : compositionObserver, (i10 & 2) != 0 ? false : z10, compositionContext);
    }
}
