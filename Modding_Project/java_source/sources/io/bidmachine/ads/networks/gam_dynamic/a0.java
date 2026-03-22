package io.bidmachine.ads.networks.gam_dynamic;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: TaskExecutorImpl.java */
/* loaded from: classes7.dex */
class a0 implements hm.u {

    /* renamed from: b  reason: collision with root package name */
    private static final int f53735b = Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4));
    @NonNull
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final ScheduledExecutorService f53736a;

    public a0() {
        this(Executors.newScheduledThreadPool(f53735b));
    }

    @Override // hm.u
    public boolean a(@NonNull Runnable runnable, long j10) {
        try {
            this.f53736a.schedule(runnable, j10, TimeUnit.MILLISECONDS);
            return true;
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            return false;
        }
    }

    @Override // hm.u
    public boolean execute(@NonNull Runnable runnable) {
        return a(runnable, 0L);
    }

    public a0(@NonNull ScheduledExecutorService scheduledExecutorService) {
        this.f53736a = scheduledExecutorService;
    }
}
