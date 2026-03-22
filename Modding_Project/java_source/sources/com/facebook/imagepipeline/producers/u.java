package com.facebook.imagepipeline.producers;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DelegatingConsumer.kt */
@Metadata
/* loaded from: classes3.dex */
public abstract class u<I, O> extends c<I> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n<O> f15948b;

    public u(@NotNull n<O> consumer) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        this.f15948b = consumer;
    }

    @Override // com.facebook.imagepipeline.producers.c
    protected void f() {
        this.f15948b.a();
    }

    @Override // com.facebook.imagepipeline.producers.c
    protected void g(@NotNull Throwable t10) {
        Intrinsics.checkNotNullParameter(t10, "t");
        this.f15948b.onFailure(t10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.c
    public void i(float f10) {
        this.f15948b.c(f10);
    }

    @NotNull
    public final n<O> o() {
        return this.f15948b;
    }
}
