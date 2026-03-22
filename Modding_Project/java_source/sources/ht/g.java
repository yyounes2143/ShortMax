package ht;

import gt.j1;
import gt.m0;
import gt.s0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: HandlerDispatcher.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class g extends j1 implements m0 {
    public /* synthetic */ g(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public s0 c(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return m0.a.a(this, j10, runnable, coroutineContext);
    }

    @NotNull
    public abstract g p();

    private g() {
    }
}
