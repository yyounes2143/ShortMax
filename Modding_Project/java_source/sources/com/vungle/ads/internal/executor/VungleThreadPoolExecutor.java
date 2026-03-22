package com.vungle.ads.internal.executor;

import com.vungle.ads.OutOfMemory;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.task.PriorityRunnable;
import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleThreadPoolExecutor.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleThreadPoolExecutor extends ThreadPoolExecutor {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "VungleThreadPool";
    @Nullable
    private final NamedThreadFactory threadFactory;

    /* compiled from: VungleThreadPoolExecutor.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final <T> Callable<T> getWrappedCallableWithFallback(final Callable<T> callable, final Function0<Unit> function0) {
            return new Callable() { // from class: com.vungle.ads.internal.executor.d
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Object m4800getWrappedCallableWithFallback$lambda0;
                    m4800getWrappedCallableWithFallback$lambda0 = VungleThreadPoolExecutor.Companion.m4800getWrappedCallableWithFallback$lambda0(callable, function0);
                    return m4800getWrappedCallableWithFallback$lambda0;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getWrappedCallableWithFallback$lambda-0  reason: not valid java name */
        public static final Object m4800getWrappedCallableWithFallback$lambda0(Callable command, Function0 failFallback) {
            Intrinsics.checkNotNullParameter(command, "$command");
            Intrinsics.checkNotNullParameter(failFallback, "$failFallback");
            try {
                return command.call();
            } catch (OutOfMemoryError unused) {
                failFallback.invoke();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ComparableRunnable getWrappedRunnableWithFail(final Runnable runnable, final Runnable runnable2) {
            if (runnable instanceof PriorityRunnable) {
                return new PriorityRunnable() { // from class: com.vungle.ads.internal.executor.VungleThreadPoolExecutor$Companion$getWrappedRunnableWithFail$1
                    @Override // com.vungle.ads.internal.task.PriorityRunnable, java.lang.Comparable
                    public int compareTo(@NotNull Object other) {
                        Intrinsics.checkNotNullParameter(other, "other");
                        if (other instanceof PriorityRunnable) {
                            return Intrinsics.compare(((PriorityRunnable) other).getPriority(), getPriority());
                        }
                        return 0;
                    }

                    @Override // com.vungle.ads.internal.task.PriorityRunnable
                    public int getPriority() {
                        return ((PriorityRunnable) runnable).getPriority();
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        VungleThreadPoolExecutor.Companion.wrapRunnableWithFail(runnable, runnable2);
                    }
                };
            }
            return new ComparableRunnable() { // from class: com.vungle.ads.internal.executor.VungleThreadPoolExecutor$Companion$getWrappedRunnableWithFail$2
                @Override // java.lang.Comparable
                public int compareTo(@NotNull Object other) {
                    Intrinsics.checkNotNullParameter(other, "other");
                    Runnable runnable3 = runnable;
                    if (runnable3 instanceof PriorityRunnable) {
                        return ((PriorityRunnable) runnable3).compareTo(other);
                    }
                    return 0;
                }

                @Override // java.lang.Runnable
                public void run() {
                    VungleThreadPoolExecutor.Companion.wrapRunnableWithFail(runnable, runnable2);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void wrapRunnableWithFail(Runnable runnable, Runnable runnable2) {
            try {
                runnable.run();
            } catch (OutOfMemoryError unused) {
                runnable2.run();
            }
        }

        private Companion() {
        }
    }

    /* compiled from: VungleThreadPoolExecutor.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface ComparableRunnable extends Comparable<Object>, Runnable {
    }

    public VungleThreadPoolExecutor(int i10, int i11, long j10, @Nullable TimeUnit timeUnit, @Nullable BlockingQueue<Runnable> blockingQueue, @Nullable NamedThreadFactory namedThreadFactory) {
        super(i10, i11, j10, timeUnit, blockingQueue, namedThreadFactory);
        this.threadFactory = namedThreadFactory;
        allowCoreThreadTimeOut(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: execute$lambda-0  reason: not valid java name */
    public static final void m4797execute$lambda0(VungleThreadPoolExecutor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new OutOfMemory("execute error in " + this$0.executorName()).logErrorNoReturnValue$vungle_ads_release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String executorName() {
        String name;
        NamedThreadFactory namedThreadFactory = this.threadFactory;
        if (namedThreadFactory == null || (name = namedThreadFactory.getName()) == null) {
            return "VungleThreadPoolExecutor";
        }
        return name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: submit$lambda-1  reason: not valid java name */
    public static final void m4798submit$lambda1(VungleThreadPoolExecutor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new OutOfMemory("submit error in " + this$0.executorName()).logErrorNoReturnValue$vungle_ads_release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: submit$lambda-2  reason: not valid java name */
    public static final void m4799submit$lambda2(VungleThreadPoolExecutor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new OutOfMemory("submit error with result in " + this$0.executorName()).logErrorNoReturnValue$vungle_ads_release();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(@NotNull Runnable command) {
        Intrinsics.checkNotNullParameter(command, "command");
        try {
            super.execute(Companion.getWrappedRunnableWithFail(command, new Runnable() { // from class: com.vungle.ads.internal.executor.b
                @Override // java.lang.Runnable
                public final void run() {
                    VungleThreadPoolExecutor.m4797execute$lambda0(VungleThreadPoolExecutor.this);
                }
            }));
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "execute exception", e10);
        } catch (OutOfMemoryError e11) {
            String str = "execute error in " + executorName() + ": " + e11.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    @Nullable
    public final NamedThreadFactory getThreadFactory() {
        return this.threadFactory;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    @NotNull
    public Future<?> submit(@NotNull Runnable task) {
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            Future<?> submit = super.submit(Companion.getWrappedRunnableWithFail(task, new Runnable() { // from class: com.vungle.ads.internal.executor.c
                @Override // java.lang.Runnable
                public final void run() {
                    VungleThreadPoolExecutor.m4798submit$lambda1(VungleThreadPoolExecutor.this);
                }
            }));
            Intrinsics.checkNotNullExpressionValue(submit, "{\n            super.subm…\n            })\n        }");
            return submit;
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "submit exception", e10);
            return new FutureResult(null);
        } catch (OutOfMemoryError e11) {
            String str = "submit error in " + executorName() + ": " + e11.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            return new FutureResult(null);
        }
    }

    @NotNull
    public final Future<?> submit$vungle_ads_release(@NotNull Runnable task, @NotNull Runnable fail) {
        Intrinsics.checkNotNullParameter(task, "task");
        Intrinsics.checkNotNullParameter(fail, "fail");
        try {
            Future<?> submit = super.submit(Companion.getWrappedRunnableWithFail(task, fail));
            Intrinsics.checkNotNullExpressionValue(submit, "{\n            super.subm…il(task, fail))\n        }");
            return submit;
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "submit exception with fail", e10);
            fail.run();
            return new FutureResult(null);
        } catch (OutOfMemoryError e11) {
            String str = "submit error with fail in " + executorName() + ": " + e11.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            fail.run();
            return new FutureResult(null);
        }
    }

    public final void execute(@NotNull Runnable command, @NotNull Runnable fail) {
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(fail, "fail");
        try {
            super.execute(Companion.getWrappedRunnableWithFail(command, fail));
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "execute exception with fail", e10);
            fail.run();
        } catch (OutOfMemoryError e11) {
            String str = "execute error with fail in " + executorName() + ": " + e11.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            fail.run();
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    @NotNull
    public <T> Future<T> submit(@NotNull Runnable task, T t10) {
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            Future<T> submit = super.submit(Companion.getWrappedRunnableWithFail(task, new Runnable() { // from class: com.vungle.ads.internal.executor.a
                @Override // java.lang.Runnable
                public final void run() {
                    VungleThreadPoolExecutor.m4799submit$lambda2(VungleThreadPoolExecutor.this);
                }
            }), t10);
            Intrinsics.checkNotNullExpressionValue(submit, "{\n            super.subm…     }, result)\n        }");
            return submit;
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "submit exception with result", e10);
            return new FutureResult(null);
        } catch (OutOfMemoryError e11) {
            String str = "submit error with result in " + executorName() + ": " + e11.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            return new FutureResult(null);
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    @NotNull
    public <T> Future<T> submit(@NotNull Callable<T> task) {
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            Future<T> submit = super.submit(Companion.getWrappedCallableWithFallback(task, new Function0<Unit>() { // from class: com.vungle.ads.internal.executor.VungleThreadPoolExecutor$submit$3
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    String executorName;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("submit callable error in ");
                    executorName = VungleThreadPoolExecutor.this.executorName();
                    sb2.append(executorName);
                    new OutOfMemory(sb2.toString()).logErrorNoReturnValue$vungle_ads_release();
                }
            }));
            Intrinsics.checkNotNullExpressionValue(submit, "override fun <T> submit(…Future<T>\n        }\n    }");
            return submit;
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "submit exception callable: " + e10);
            return new FutureResult(null);
        } catch (OutOfMemoryError e11) {
            String str = "submit error callable in " + executorName() + ": " + e11.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e11);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            return new FutureResult(null);
        }
    }
}
