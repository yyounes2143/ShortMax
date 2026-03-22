package androidx.lifecycle;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Lifecycle.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class LifecycleCoroutineScope implements g0 {
    @Override // gt.g0
    @NotNull
    public abstract /* synthetic */ CoroutineContext getCoroutineContext();

    @NotNull
    public abstract Lifecycle getLifecycle$lifecycle_common();

    @ms.c
    @NotNull
    public final kotlinx.coroutines.r launchWhenCreated(@NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> block) {
        kotlinx.coroutines.r d10;
        Intrinsics.checkNotNullParameter(block, "block");
        d10 = gt.g.d(this, null, null, new LifecycleCoroutineScope$launchWhenCreated$1(this, block, null), 3, null);
        return d10;
    }

    @ms.c
    @NotNull
    public final kotlinx.coroutines.r launchWhenResumed(@NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> block) {
        kotlinx.coroutines.r d10;
        Intrinsics.checkNotNullParameter(block, "block");
        d10 = gt.g.d(this, null, null, new LifecycleCoroutineScope$launchWhenResumed$1(this, block, null), 3, null);
        return d10;
    }

    @ms.c
    @NotNull
    public final kotlinx.coroutines.r launchWhenStarted(@NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> block) {
        kotlinx.coroutines.r d10;
        Intrinsics.checkNotNullParameter(block, "block");
        d10 = gt.g.d(this, null, null, new LifecycleCoroutineScope$launchWhenStarted$1(this, block, null), 3, null);
        return d10;
    }
}
