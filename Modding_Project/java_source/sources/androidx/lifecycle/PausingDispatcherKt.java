package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import gt.g0;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PausingDispatcher.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PausingDispatcherKt {
    @ms.c
    @Nullable
    public static final <T> Object whenCreated(@NotNull LifecycleOwner lifecycleOwner, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return whenCreated(lifecycleOwner.getLifecycle(), function2, cVar);
    }

    @ms.c
    @Nullable
    public static final <T> Object whenResumed(@NotNull LifecycleOwner lifecycleOwner, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return whenResumed(lifecycleOwner.getLifecycle(), function2, cVar);
    }

    @ms.c
    @Nullable
    public static final <T> Object whenStarted(@NotNull LifecycleOwner lifecycleOwner, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return whenStarted(lifecycleOwner.getLifecycle(), function2, cVar);
    }

    @ms.c
    @Nullable
    public static final <T> Object whenStateAtLeast(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State state, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return gt.e.g(q0.c().m(), new PausingDispatcherKt$whenStateAtLeast$2(lifecycle, state, function2, null), cVar);
    }

    @ms.c
    @Nullable
    public static final <T> Object whenCreated(@NotNull Lifecycle lifecycle, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.CREATED, function2, cVar);
    }

    @ms.c
    @Nullable
    public static final <T> Object whenResumed(@NotNull Lifecycle lifecycle, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.RESUMED, function2, cVar);
    }

    @ms.c
    @Nullable
    public static final <T> Object whenStarted(@NotNull Lifecycle lifecycle, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.STARTED, function2, cVar);
    }
}
