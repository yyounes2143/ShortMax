package ot;

import gt.b1;
import gt.c0;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import mt.b0;
import mt.d0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Dispatcher.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a extends b1 implements Executor {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f64386b = new a();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final c0 f64387c;

    static {
        int e10;
        j jVar = j.f64404a;
        e10 = d0.e("kotlinx.coroutines.io.parallelism", kotlin.ranges.e.e(64, b0.a()), 0, 0, 12, null);
        f64387c = c0.limitedParallelism$default(jVar, e10, null, 2, null);
    }

    private a() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        f64387c.dispatch(coroutineContext, runnable);
    }

    @Override // gt.c0
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        f64387c.dispatchYield(coroutineContext, runnable);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        dispatch(EmptyCoroutineContext.f61040a, runnable);
    }

    @Override // gt.c0
    @NotNull
    public c0 limitedParallelism(int i10, @Nullable String str) {
        return j.f64404a.limitedParallelism(i10, str);
    }

    @Override // gt.c0
    @NotNull
    public String toString() {
        return "Dispatchers.IO";
    }

    @Override // gt.b1
    @NotNull
    public Executor m() {
        return this;
    }
}
