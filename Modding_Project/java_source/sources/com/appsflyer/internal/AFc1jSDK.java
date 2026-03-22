package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.util.Queue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFc1jSDK extends ThreadPoolExecutor {
    @NotNull
    private final Queue<Runnable> getMonetizationNetwork;

    public /* synthetic */ AFc1jSDK(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue blockingQueue, Queue queue, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, j10, timeUnit, blockingQueue, (i12 & 32) != 0 ? new ConcurrentLinkedQueue() : queue);
    }

    private final void getCurrencyIso4217Code() {
        synchronized (this) {
            try {
                int size = this.getMonetizationNetwork.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Runnable poll = this.getMonetizationNetwork.poll();
                    if (poll == null) {
                        break;
                    }
                    execute(poll);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMonetizationNetwork(Queue queue, Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        Intrinsics.checkNotNullParameter(queue, "");
        Intrinsics.checkNotNullParameter(runnable, "");
        Intrinsics.checkNotNullParameter(threadPoolExecutor, "");
        queue.add(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void afterExecute(@NotNull Runnable runnable, @Nullable Throwable th2) {
        Intrinsics.checkNotNullParameter(runnable, "");
        super.afterExecute(runnable, th2);
        Intrinsics.checkNotNullParameter(runnable, "");
        if (th2 == null) {
            try {
                getCurrencyIso4217Code();
                return;
            } catch (Throwable th3) {
                AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.AF_EXECUTOR, "Error while executing rejected tasks", th3, true, true, true, false, 64, null);
                return;
            }
        }
        AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.AF_EXECUTOR, "Error while executing task: " + runnable, th2, true, true, true, false, 64, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private AFc1jSDK(int i10, int i11, long j10, @NotNull TimeUnit timeUnit, @NotNull BlockingQueue<Runnable> blockingQueue, @NotNull final Queue<Runnable> queue) {
        super(i10, i11, j10, timeUnit, blockingQueue, new RejectedExecutionHandler() { // from class: com.appsflyer.internal.o
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                AFc1jSDK.getMonetizationNetwork(queue, runnable, threadPoolExecutor);
            }
        });
        Intrinsics.checkNotNullParameter(timeUnit, "");
        Intrinsics.checkNotNullParameter(blockingQueue, "");
        Intrinsics.checkNotNullParameter(queue, "");
        this.getMonetizationNetwork = queue;
    }
}
