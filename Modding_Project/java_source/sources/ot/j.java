package ot;

import gt.c0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import mt.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Dispatcher.kt */
@Metadata
/* loaded from: classes8.dex */
final class j extends c0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j f64404a = new j();

    private j() {
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        b.f64388g.p(runnable, true, false);
    }

    @Override // gt.c0
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        b.f64388g.p(runnable, true, true);
    }

    @Override // gt.c0
    @NotNull
    public c0 limitedParallelism(int i10, @Nullable String str) {
        l.a(i10);
        if (i10 >= i.f64401d) {
            return l.b(this, str);
        }
        return super.limitedParallelism(i10, str);
    }

    @Override // gt.c0
    @NotNull
    public String toString() {
        return "Dispatchers.IO";
    }
}
