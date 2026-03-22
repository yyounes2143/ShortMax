package androidx.lifecycle.viewmodel.internal;

import gt.g0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: CloseableCoroutineScope.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CloseableCoroutineScope implements AutoCloseable, g0 {
    @NotNull
    private final CoroutineContext coroutineContext;

    public CloseableCoroutineScope(@NotNull CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        this.coroutineContext = coroutineContext;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        JobKt__JobKt.e(getCoroutineContext(), null, 1, null);
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CloseableCoroutineScope(@NotNull g0 coroutineScope) {
        this(coroutineScope.getCoroutineContext());
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
    }
}
