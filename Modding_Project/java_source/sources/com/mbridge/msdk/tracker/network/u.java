package com.mbridge.msdk.tracker.network;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: RequestQueue.java */
/* loaded from: classes6.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    private volatile ThreadPoolExecutor f30379a;

    /* renamed from: e  reason: collision with root package name */
    private final int f30383e;

    /* renamed from: f  reason: collision with root package name */
    private final com.mbridge.msdk.tracker.network.b f30384f;

    /* renamed from: g  reason: collision with root package name */
    private final m f30385g;

    /* renamed from: h  reason: collision with root package name */
    private final w f30386h;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f30380b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    private final Set<t<?>> f30381c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private final PriorityBlockingQueue<t<?>> f30382d = new PriorityBlockingQueue<>();

    /* renamed from: i  reason: collision with root package name */
    private final List<c> f30387i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private boolean f30388j = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequestQueue.java */
    /* loaded from: classes6.dex */
    public class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "NetworkDispatcher");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequestQueue.java */
    /* loaded from: classes6.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                new n(u.this.f30382d, u.this.f30385g, u.this.f30384f, u.this.f30386h).run();
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: RequestQueue.java */
    /* loaded from: classes6.dex */
    public interface c {
        void a(t<?> tVar, int i10);
    }

    public u(m mVar, w wVar, int i10, com.mbridge.msdk.tracker.network.b bVar) {
        this.f30383e = i10;
        this.f30384f = bVar;
        this.f30385g = mVar;
        this.f30386h = wVar;
    }

    private void a(int i10) {
        if (this.f30379a != null) {
            return;
        }
        try {
            b(i10);
        } catch (Throwable unused) {
            try {
                b(5);
            } catch (Exception unused2) {
                this.f30379a = null;
            }
        }
    }

    public void b() {
        if (!this.f30388j || this.f30379a == null) {
            a(this.f30383e);
            this.f30388j = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> void c(t<T> tVar) {
        synchronized (this.f30381c) {
            this.f30381c.remove(tVar);
        }
        a(tVar, 5);
    }

    <T> void d(t<T> tVar) {
        this.f30382d.add(tVar);
    }

    private void b(int i10) {
        this.f30379a = new ThreadPoolExecutor(i10, i10, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }

    public int a() {
        return this.f30380b.incrementAndGet();
    }

    <T> void b(t<T> tVar) {
        d(tVar);
    }

    public <T> t<T> a(t<T> tVar) {
        tVar.a(this);
        synchronized (this.f30381c) {
            this.f30381c.add(tVar);
        }
        tVar.b(a());
        tVar.a("add-to-queue");
        a(tVar, 0);
        b(tVar);
        if (this.f30379a == null) {
            a(this.f30383e);
        }
        if (!this.f30379a.isShutdown()) {
            this.f30379a.execute(new b());
        }
        return tVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(t<?> tVar, int i10) {
        synchronized (this.f30387i) {
            try {
                for (c cVar : this.f30387i) {
                    cVar.a(tVar, i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
