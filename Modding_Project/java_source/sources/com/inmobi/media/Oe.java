package com.inmobi.media;

import com.inmobi.media.Oe;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Oe {

    /* renamed from: d  reason: collision with root package name */
    public static final int f23954d;

    /* renamed from: e  reason: collision with root package name */
    public static final int f23955e;

    /* renamed from: f  reason: collision with root package name */
    public static final Ne f23956f;

    /* renamed from: g  reason: collision with root package name */
    public static final LinkedBlockingQueue f23957g;

    /* renamed from: h  reason: collision with root package name */
    public static ThreadPoolExecutor f23958h;

    /* renamed from: a  reason: collision with root package name */
    public final CountDownLatch f23959a;

    /* renamed from: b  reason: collision with root package name */
    public final N9 f23960b;

    /* renamed from: c  reason: collision with root package name */
    public final WeakReference f23961c;

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f23954d = Math.max(2, Math.min(availableProcessors - 1, 4));
        f23955e = (availableProcessors * 2) + 1;
        f23956f = new Ne();
        f23957g = new LinkedBlockingQueue(128);
    }

    public Oe(Me vastMediaFile, int i10, CountDownLatch countDownLatch) {
        Intrinsics.checkNotNullParameter(vastMediaFile, "vastMediaFile");
        N9 n92 = new N9(vastMediaFile.f23862a, null);
        this.f23960b = n92;
        n92.f23904t = false;
        n92.f23905u = false;
        n92.f23908x = false;
        n92.f23900p = i10;
        n92.f23903s = true;
        this.f23961c = new WeakReference(vastMediaFile);
        this.f23959a = countDownLatch;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f23954d, f23955e, 30L, TimeUnit.SECONDS, f23957g, f23956f);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f23958h = threadPoolExecutor;
    }

    public final void a() {
        ThreadPoolExecutor threadPoolExecutor = f23958h;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(new Runnable() { // from class: ub.m1
                @Override // java.lang.Runnable
                public final void run() {
                    Oe.a(Oe.this);
                }
            });
        }
    }

    public static final void a(Oe this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            P9 b10 = this$0.f23960b.b();
            if (b10.b()) {
                CountDownLatch countDownLatch = this$0.f23959a;
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                }
            } else {
                this$0.a(b10);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Oe", "TAG");
            EnumC3093o4 errorCode = EnumC3093o4.f25091e;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            this$0.getClass();
            CountDownLatch countDownLatch2 = this$0.f23959a;
            if (countDownLatch2 != null) {
                countDownLatch2.countDown();
            }
        }
    }

    public final void a(P9 p92) {
        CountDownLatch countDownLatch;
        try {
            try {
                Me me2 = (Me) this.f23961c.get();
                if (me2 != null) {
                    me2.f23864c = (p92.f23983e * 1.0d) / 1048576;
                }
                countDownLatch = this.f23959a;
                if (countDownLatch == null) {
                    return;
                }
            } catch (Exception e10) {
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                countDownLatch = this.f23959a;
                if (countDownLatch == null) {
                    return;
                }
            }
            countDownLatch.countDown();
        } catch (Throwable th2) {
            CountDownLatch countDownLatch2 = this.f23959a;
            if (countDownLatch2 != null) {
                countDownLatch2.countDown();
            }
            throw th2;
        }
    }
}
