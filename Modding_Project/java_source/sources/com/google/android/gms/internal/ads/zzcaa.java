package com.google.android.gms.internal.ads;

import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzcaa extends ScheduledThreadPoolExecutor implements AutoCloseable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcaa(int i10, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        if (this != ForkJoinPool.commonPool() && !isTerminated()) {
            shutdown();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    z10 = awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z11) {
                        shutdownNow();
                    }
                    z11 = true;
                }
            }
            if (z11) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
