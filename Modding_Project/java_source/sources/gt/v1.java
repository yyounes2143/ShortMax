package gt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Unconfined.kt */
@Metadata
/* loaded from: classes8.dex */
public final class v1 extends c0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final v1 f52572a = new v1();

    private v1() {
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        z1 z1Var = (z1) coroutineContext.get(z1.f52579b);
        if (z1Var != null) {
            z1Var.f52580a = true;
            return;
        }
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // gt.c0
    public boolean isDispatchNeeded(@NotNull CoroutineContext coroutineContext) {
        return false;
    }

    @Override // gt.c0
    @NotNull
    public c0 limitedParallelism(int i10, @Nullable String str) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // gt.c0
    @NotNull
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
