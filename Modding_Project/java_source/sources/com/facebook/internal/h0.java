package com.facebook.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LockOnGetVariable.kt */
@Metadata
/* loaded from: classes3.dex */
public final class h0<T> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private T f16199a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private CountDownLatch f16200b;

    public h0(@NotNull final Callable<T> callable) {
        Intrinsics.checkNotNullParameter(callable, "callable");
        this.f16200b = new CountDownLatch(1);
        com.facebook.v.u().execute(new FutureTask(new Callable() { // from class: com.facebook.internal.g0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void b10;
                b10 = h0.b(h0.this, callable);
                return b10;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void b(h0 this$0, Callable callable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callable, "$callable");
        try {
            this$0.f16199a = (T) callable.call();
        } finally {
            CountDownLatch countDownLatch = this$0.f16200b;
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }
    }

    private final void d() {
        CountDownLatch countDownLatch = this.f16200b;
        if (countDownLatch == null) {
            return;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
        }
    }

    @Nullable
    public final T c() {
        d();
        return this.f16199a;
    }
}
