package com.facebook.fresco.animation.bitmap.preparation.loadframe;

import com.facebook.fresco.animation.bitmap.preparation.loadframe.AnimationLoaderExecutor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationLoaderExecutor.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimationLoaderExecutor {
    @NotNull
    public static final AnimationLoaderExecutor INSTANCE = new AnimationLoaderExecutor();
    private static final ExecutorService executor;
    @NotNull
    private static final ThreadFactory frameThreadFactory;

    static {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: i3.a
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread frameThreadFactory$lambda$0;
                frameThreadFactory$lambda$0 = AnimationLoaderExecutor.frameThreadFactory$lambda$0(runnable);
                return frameThreadFactory$lambda$0;
            }
        };
        frameThreadFactory = threadFactory;
        executor = Executors.newCachedThreadPool(threadFactory);
    }

    private AnimationLoaderExecutor() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread frameThreadFactory$lambda$0(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(1);
        return thread;
    }

    public final void execute(@NotNull Runnable task) {
        Intrinsics.checkNotNullParameter(task, "task");
        executor.execute(task);
    }
}
