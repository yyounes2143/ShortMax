package com.inmobi.media;

import com.adjust.sdk.Constants;
import com.inmobi.media.W9;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class W9 extends Fa {

    /* renamed from: g  reason: collision with root package name */
    public final Object f24335g;

    /* renamed from: h  reason: collision with root package name */
    public ScheduledFuture f24336h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W9(Pa dao, E3 listener, Ka networkHandler) {
        super(dao, listener, networkHandler);
        Intrinsics.checkNotNullParameter(dao, "dao");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(networkHandler, "networkHandler");
        this.f24335g = new Object();
    }

    public final void a() {
        synchronized (this.f24335g) {
            ScheduledFuture scheduledFuture = this.f24336h;
            if (scheduledFuture != null) {
                Intrinsics.checkNotNull(scheduledFuture);
                if (!scheduledFuture.isDone()) {
                    return;
                }
            }
            long normal = this.f23659f.getInterval().getNormal();
            if (normal <= 0) {
                return;
            }
            this.f24336h = ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).scheduleWithFixedDelay(new Runnable() { // from class: ub.r2
                @Override // java.lang.Runnable
                public final void run() {
                    W9.a(W9.this);
                }
            }, 0L, normal, TimeUnit.SECONDS);
            Unit unit = Unit.f60915a;
        }
    }

    public final void b() {
        synchronized (this.f24335g) {
            try {
                ScheduledFuture scheduledFuture = this.f24336h;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                this.f24336h = null;
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void a(W9 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f23657d != Ca.f23536a) {
            int normal = this$0.f23659f.getMaxBatchSize().getNormal();
            this$0.f23654a.a("time_created < ?", new String[]{String.valueOf(System.currentTimeMillis() - (this$0.f23659f.getExpiry().getNormal() * 1000))});
            Pa pa2 = this$0.f23654a;
            Integer valueOf = Integer.valueOf(normal);
            Intrinsics.checkNotNullParameter(Constants.NORMAL, HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
            List<C3274za> o02 = CollectionsKt.o0(T1.a(pa2, "priority = ? AND retryAfter <= ?", new String[]{Constants.NORMAL, String.valueOf(System.currentTimeMillis())}, null, null, "time_created ASC", valueOf, 12));
            if (o02.isEmpty()) {
                Pa pa3 = this$0.f23654a;
                Intrinsics.checkNotNullParameter(Constants.NORMAL, HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
                if (T1.a(pa3, "priority = ?", new String[]{Constants.NORMAL}, 12) == 0) {
                    Ca ca2 = Ca.f23537b;
                    if (this$0.a(ca2)) {
                        this$0.f23657d = ca2;
                    }
                    synchronized (this$0.f24335g) {
                        try {
                            ScheduledFuture scheduledFuture = this$0.f24336h;
                            if (scheduledFuture != null) {
                                scheduledFuture.cancel(false);
                            }
                            this$0.f24336h = null;
                            Unit unit = Unit.f60915a;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    return;
                }
            }
            for (C3274za c3274za : o02) {
                this$0.a(c3274za, (ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue(), new V9(this$0));
            }
        }
    }
}
