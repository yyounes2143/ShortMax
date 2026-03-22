package com.facebook.imagepipeline.producers;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ThreadHandoffProducerQueueImpl.kt */
@Metadata
/* loaded from: classes3.dex */
public final class o1 implements n1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Executor f15863a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f15864b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Deque<Runnable> f15865c;

    public o1(@NotNull Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.f15863a = executor;
        this.f15865c = new ArrayDeque();
    }

    private final void f() {
        while (!this.f15865c.isEmpty()) {
            this.f15863a.execute(this.f15865c.pop());
        }
        this.f15865c.clear();
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public synchronized void a(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.f15865c.remove(runnable);
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public synchronized void b() {
        this.f15864b = true;
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public synchronized void c(@NotNull Runnable runnable) {
        try {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            if (this.f15864b) {
                this.f15865c.add(runnable);
            } else {
                this.f15863a.execute(runnable);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public synchronized void d() {
        this.f15864b = false;
        f();
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public synchronized boolean e() {
        return this.f15864b;
    }
}
