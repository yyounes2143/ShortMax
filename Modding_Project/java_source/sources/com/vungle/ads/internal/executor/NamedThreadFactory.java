package com.vungle.ads.internal.executor;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NamedThreadFactory.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NamedThreadFactory implements ThreadFactory {
    @NotNull
    private final AtomicInteger atomicInteger;
    @NotNull
    private final String name;
    private final ThreadFactory threadFactory;

    public NamedThreadFactory(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.threadFactory = java.util.concurrent.Executors.defaultThreadFactory();
        this.atomicInteger = new AtomicInteger(0);
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Override // java.util.concurrent.ThreadFactory
    @NotNull
    public Thread newThread(@NotNull Runnable r10) {
        Intrinsics.checkNotNullParameter(r10, "r");
        Thread t10 = this.threadFactory.newThread(r10);
        t10.setName(this.name + "-th-" + this.atomicInteger.incrementAndGet());
        Intrinsics.checkNotNullExpressionValue(t10, "t");
        return t10;
    }
}
