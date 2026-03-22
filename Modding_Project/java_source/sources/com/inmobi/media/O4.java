package com.inmobi.media;

import com.adjust.sdk.Constants;
import com.inmobi.media.O4;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class O4 extends Fa {

    /* renamed from: g  reason: collision with root package name */
    public final Object f23930g;

    /* renamed from: h  reason: collision with root package name */
    public ScheduledExecutorService f23931h;

    /* renamed from: i  reason: collision with root package name */
    public ScheduledFuture f23932i;

    /* renamed from: j  reason: collision with root package name */
    public ExecutorService f23933j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O4(Pa dao, C2866a5 listener, Ka networkHandler) {
        super(dao, listener, networkHandler);
        Intrinsics.checkNotNullParameter(dao, "dao");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(networkHandler, "networkHandler");
        this.f23930g = new Object();
    }

    public static final void a(O4 this$0, long j10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue("O4", "TAG");
        int high = this$0.f23659f.getMaxBatchSize().getHigh();
        Pa pa2 = this$0.f23654a;
        Integer valueOf = Integer.valueOf(high);
        Intrinsics.checkNotNullParameter(Constants.HIGH, HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
        List<C3274za> o02 = CollectionsKt.o0(T1.a(pa2, "priority = ? AND retry_count = 0 AND time_created < ?", new String[]{Constants.HIGH, String.valueOf(j10)}, null, null, "time_created ASC", valueOf, 12));
        while (!o02.isEmpty() && this$0.f23657d != Ca.f23536a) {
            Intrinsics.checkNotNullExpressionValue("O4", "TAG");
            o02.size();
            for (C3274za c3274za : o02) {
                this$0.a(c3274za, this$0.f23933j, new N4(this$0));
            }
            Pa pa3 = this$0.f23654a;
            Intrinsics.checkNotNullParameter(Constants.HIGH, HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
            List o03 = CollectionsKt.o0(T1.a(pa3, "priority = ? AND retry_count = 0 AND time_created < ?", new String[]{Constants.HIGH, String.valueOf(j10)}, null, null, "time_created ASC", null, 12));
            ArrayList arrayList = new ArrayList();
            for (Object obj : o03) {
                if (!this$0.f23658e.containsKey(((C3274za) obj).f25505b)) {
                    arrayList.add(obj);
                }
            }
            o02 = CollectionsKt.V0(arrayList, high);
        }
    }

    public static final Thread b(Runnable runnable) {
        Thread thread = new Thread(runnable, "TIM-HighPriorityParallelPing");
        thread.setDaemon(true);
        return thread;
    }

    public final void c() {
        final long currentTimeMillis = System.currentTimeMillis();
        ExecutorService executorService = this.f23933j;
        if (executorService != null) {
            executorService.execute(new Runnable() { // from class: ub.i1
                @Override // java.lang.Runnable
                public final void run() {
                    O4.a(O4.this, currentTimeMillis);
                }
            });
        }
    }

    public final void d() {
        ScheduledFuture<?> scheduledFuture;
        synchronized (this.f23930g) {
            ScheduledFuture scheduledFuture2 = this.f23932i;
            if (scheduledFuture2 != null) {
                Intrinsics.checkNotNull(scheduledFuture2);
                if (!scheduledFuture2.isDone()) {
                    return;
                }
            }
            long high = this.f23659f.getInterval().getHigh();
            if (high <= 0) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("O4", "TAG");
            ScheduledExecutorService scheduledExecutorService = this.f23931h;
            if (scheduledExecutorService != null) {
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(new Runnable() { // from class: ub.l1
                    @Override // java.lang.Runnable
                    public final void run() {
                        O4.a(O4.this);
                    }
                }, 0L, high, TimeUnit.SECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f23932i = scheduledFuture;
            Unit unit = Unit.f60915a;
        }
    }

    public final void e() {
        synchronized (this.f23930g) {
            try {
                ScheduledFuture scheduledFuture = this.f23932i;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                this.f23932i = null;
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        ExecutorService executorService = this.f23933j;
        if (executorService != null) {
            executorService.shutdownNow();
        }
    }

    public final void b() {
        Intrinsics.checkNotNullExpressionValue("O4", "TAG");
        Ca ca2 = Ca.f23537b;
        if (a(ca2)) {
            this.f23657d = ca2;
        }
        synchronized (this.f23930g) {
            try {
                ScheduledFuture scheduledFuture = this.f23932i;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.f23932i = null;
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
        if (r1.isShutdown() != false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0022 A[Catch: all -> 0x0011, TryCatch #0 {all -> 0x0011, blocks: (B:4:0x0003, B:6:0x0007, B:12:0x001e, B:14:0x0022, B:17:0x0036, B:16:0x002b, B:11:0x0013), top: B:22:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r2 = this;
            java.lang.Object r0 = r2.f23930g
            monitor-enter(r0)
            java.util.concurrent.ScheduledExecutorService r1 = r2.f23931h     // Catch: java.lang.Throwable -> L11
            if (r1 == 0) goto L13
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)     // Catch: java.lang.Throwable -> L11
            boolean r1 = r1.isShutdown()     // Catch: java.lang.Throwable -> L11
            if (r1 == 0) goto L1e
            goto L13
        L11:
            r1 = move-exception
            goto L3a
        L13:
            ub.j1 r1 = new ub.j1     // Catch: java.lang.Throwable -> L11
            r1.<init>()     // Catch: java.lang.Throwable -> L11
            java.util.concurrent.ScheduledExecutorService r1 = java.util.concurrent.Executors.newSingleThreadScheduledExecutor(r1)     // Catch: java.lang.Throwable -> L11
            r2.f23931h = r1     // Catch: java.lang.Throwable -> L11
        L1e:
            java.util.concurrent.ExecutorService r1 = r2.f23933j     // Catch: java.lang.Throwable -> L11
            if (r1 == 0) goto L2b
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)     // Catch: java.lang.Throwable -> L11
            boolean r1 = r1.isShutdown()     // Catch: java.lang.Throwable -> L11
            if (r1 == 0) goto L36
        L2b:
            ub.k1 r1 = new ub.k1     // Catch: java.lang.Throwable -> L11
            r1.<init>()     // Catch: java.lang.Throwable -> L11
            java.util.concurrent.ExecutorService r1 = java.util.concurrent.Executors.newCachedThreadPool(r1)     // Catch: java.lang.Throwable -> L11
            r2.f23933j = r1     // Catch: java.lang.Throwable -> L11
        L36:
            kotlin.Unit r1 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L11
            monitor-exit(r0)
            return
        L3a:
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.O4.a():void");
    }

    public static final Thread a(Runnable runnable) {
        Thread thread = new Thread(runnable, "TIM-HighPriorityPollingPing");
        thread.setDaemon(true);
        return thread;
    }

    public static final void a(O4 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getClass();
        try {
            Intrinsics.checkNotNullExpressionValue("O4", "TAG");
            if (this$0.f23657d != Ca.f23536a) {
                int high = this$0.f23659f.getMaxBatchSize().getHigh();
                this$0.f23654a.a("time_created < ?", new String[]{String.valueOf(System.currentTimeMillis() - (this$0.f23659f.getExpiry().getHigh() * 1000))});
                List<C3274za> o02 = CollectionsKt.o0(this$0.f23654a.a(Integer.valueOf(high)));
                if (o02.isEmpty()) {
                    Pa pa2 = this$0.f23654a;
                    Intrinsics.checkNotNullParameter(Constants.HIGH, HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
                    if (T1.a(pa2, "priority = ?", new String[]{Constants.HIGH}, 12) == 0) {
                        this$0.b();
                        return;
                    }
                }
                Intrinsics.checkNotNullExpressionValue("O4", "TAG");
                o02.size();
                for (C3274za c3274za : o02) {
                    this$0.a(c3274za, this$0.f23933j, new M4(this$0));
                }
            }
        } catch (Error unused) {
            Intrinsics.checkNotNullExpressionValue("O4", "TAG");
        } catch (Exception unused2) {
            Intrinsics.checkNotNullExpressionValue("O4", "TAG");
        }
    }
}
