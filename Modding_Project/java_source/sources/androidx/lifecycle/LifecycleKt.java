package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import gt.q0;
import gt.r1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Lifecycle.kt */
@Metadata
/* loaded from: classes2.dex */
public final class LifecycleKt {
    @NotNull
    public static final LifecycleCoroutineScope getCoroutineScope(@NotNull Lifecycle lifecycle) {
        LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl;
        Intrinsics.checkNotNullParameter(lifecycle, "<this>");
        do {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = (LifecycleCoroutineScopeImpl) lifecycle.getInternalScopeRef().get();
            if (lifecycleCoroutineScopeImpl2 != null) {
                return lifecycleCoroutineScopeImpl2;
            }
            lifecycleCoroutineScopeImpl = new LifecycleCoroutineScopeImpl(lifecycle, r1.b(null, 1, null).plus(q0.c().m()));
        } while (!lifecycle.getInternalScopeRef().compareAndSet(null, lifecycleCoroutineScopeImpl));
        lifecycleCoroutineScopeImpl.register();
        return lifecycleCoroutineScopeImpl;
    }

    @NotNull
    public static final kt.b<Lifecycle.Event> getEventFlow(@NotNull Lifecycle lifecycle) {
        Intrinsics.checkNotNullParameter(lifecycle, "<this>");
        return kotlinx.coroutines.flow.c.I(kotlinx.coroutines.flow.c.g(new LifecycleKt$eventFlow$1(lifecycle, null)), q0.c().m());
    }
}
