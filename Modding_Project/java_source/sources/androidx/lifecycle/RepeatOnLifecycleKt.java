package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RepeatOnLifecycle.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RepeatOnLifecycleKt {
    @Nullable
    public static final Object repeatOnLifecycle(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State state, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> function2, @NotNull rs.c<? super Unit> cVar) {
        if (state != Lifecycle.State.INITIALIZED) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                return Unit.f60915a;
            }
            Object f10 = kotlinx.coroutines.i.f(new RepeatOnLifecycleKt$repeatOnLifecycle$3(lifecycle, state, function2, null), cVar);
            return f10 == kotlin.coroutines.intrinsics.a.f() ? f10 : Unit.f60915a;
        }
        throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
    }

    @Nullable
    public static final Object repeatOnLifecycle(@NotNull LifecycleOwner lifecycleOwner, @NotNull Lifecycle.State state, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> function2, @NotNull rs.c<? super Unit> cVar) {
        Object repeatOnLifecycle = repeatOnLifecycle(lifecycleOwner.getLifecycle(), state, function2, cVar);
        return repeatOnLifecycle == kotlin.coroutines.intrinsics.a.f() ? repeatOnLifecycle : Unit.f60915a;
    }
}
