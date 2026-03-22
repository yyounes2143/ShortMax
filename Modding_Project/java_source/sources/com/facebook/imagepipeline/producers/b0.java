package com.facebook.imagepipeline.producers;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExperimentalThreadHandoffProducerQueueImpl.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b0 implements n1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Executor f15736a;

    public b0(@Nullable Executor executor) {
        if (executor != null) {
            this.f15736a = executor;
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public void a(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public void b() {
        throw new UnsupportedOperationException();
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public void c(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.f15736a.execute(runnable);
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public void d() {
        throw new UnsupportedOperationException();
    }

    @Override // com.facebook.imagepipeline.producers.n1
    public boolean e() {
        return false;
    }
}
