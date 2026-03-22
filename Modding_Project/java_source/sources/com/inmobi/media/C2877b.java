package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.media.C2877b;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.b  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2877b extends G3 {

    /* renamed from: b  reason: collision with root package name */
    public final long f24507b;

    /* renamed from: c  reason: collision with root package name */
    public final RunnableC2860a f24508c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f24509d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicBoolean f24510e;

    /* renamed from: f  reason: collision with root package name */
    public final Handler f24511f;

    /* renamed from: g  reason: collision with root package name */
    public ScheduledExecutorService f24512g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2877b(long j10, H3 listener) {
        super(listener);
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f24507b = j10;
        this.f24508c = new RunnableC2860a(this);
        this.f24509d = new AtomicBoolean(false);
        this.f24510e = new AtomicBoolean(false);
        this.f24511f = new Handler(Looper.getMainLooper());
    }

    public static final StackTraceElement[] a(C2877b c2877b) {
        c2877b.getClass();
        return Looper.getMainLooper().getThread().getStackTrace();
    }

    public static final void b(C2877b this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f24509d.getAndSet(true)) {
            return;
        }
        ScheduledExecutorService scheduledExecutorService = this$0.f24512g;
        if (scheduledExecutorService == null || scheduledExecutorService.scheduleAtFixedRate(this$0.f24508c, 0L, this$0.f24507b, TimeUnit.MILLISECONDS) == null) {
            ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new K5("ANRWatchDog"));
            this$0.f24512g = newSingleThreadScheduledExecutor;
            if (newSingleThreadScheduledExecutor != null) {
                newSingleThreadScheduledExecutor.scheduleAtFixedRate(this$0.f24508c, 0L, this$0.f24507b, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // com.inmobi.media.G3
    public final void a() {
        Runnable runnable = new Runnable() { // from class: ub.q3
            @Override // java.lang.Runnable
            public final void run() {
                C2877b.b(C2877b.this);
            }
        };
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Ie.f23745a.execute(runnable);
    }

    @Override // com.inmobi.media.G3
    public final void b() {
        if (this.f24509d.getAndSet(false)) {
            this.f24509d.set(false);
            this.f24510e.set(false);
            ScheduledExecutorService scheduledExecutorService = this.f24512g;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
            }
            this.f24512g = null;
        }
    }
}
