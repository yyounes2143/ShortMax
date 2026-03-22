package androidx.lifecycle;

import gt.c0;
import gt.q0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PausingDispatcher.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PausingDispatcher extends c0 {
    @NotNull
    public final DispatchQueue dispatchQueue = new DispatchQueue();

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext context, @NotNull Runnable block) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        this.dispatchQueue.dispatchAndEnqueue(context, block);
    }

    @Override // gt.c0
    public boolean isDispatchNeeded(@NotNull CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (q0.c().m().isDispatchNeeded(context)) {
            return true;
        }
        return !this.dispatchQueue.canRun();
    }
}
