package androidx.lifecycle.viewmodel.internal;

import gt.g0;
import gt.q0;
import gt.r1;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CloseableCoroutineScope.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CloseableCoroutineScopeKt {
    @NotNull
    public static final String VIEW_MODEL_SCOPE_KEY = "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY";

    @NotNull
    public static final CloseableCoroutineScope asCloseable(@NotNull g0 g0Var) {
        Intrinsics.checkNotNullParameter(g0Var, "<this>");
        return new CloseableCoroutineScope(g0Var);
    }

    @NotNull
    public static final CloseableCoroutineScope createViewModelScope() {
        CoroutineContext coroutineContext;
        try {
            coroutineContext = q0.c().m();
        } catch (IllegalStateException unused) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        } catch (NotImplementedError unused2) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        return new CloseableCoroutineScope(coroutineContext.plus(r1.b(null, 1, null)));
    }
}
