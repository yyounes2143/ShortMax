package com.mbridge.msdk.thrid.okhttp;

import com.mbridge.msdk.thrid.okhttp.internal.connection.g;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: ConnectionPool.java */
/* loaded from: classes6.dex */
public final class h {

    /* renamed from: g  reason: collision with root package name */
    private static final Executor f29576g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp ConnectionPool", true));

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ boolean f29577h = true;

    /* renamed from: a  reason: collision with root package name */
    private final int f29578a;

    /* renamed from: b  reason: collision with root package name */
    private final long f29579b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f29580c;

    /* renamed from: d  reason: collision with root package name */
    private final Deque<com.mbridge.msdk.thrid.okhttp.internal.connection.c> f29581d;

    /* renamed from: e  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.connection.d f29582e;

    /* renamed from: f  reason: collision with root package name */
    boolean f29583f;

    /* compiled from: ConnectionPool.java */
    /* loaded from: classes6.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                long a10 = h.this.a(System.nanoTime());
                if (a10 == -1) {
                    return;
                }
                if (a10 > 0) {
                    long j10 = a10 / 1000000;
                    long j11 = a10 - (1000000 * j10);
                    synchronized (h.this) {
                        try {
                            h.this.wait(j10, (int) j11);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public h() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.mbridge.msdk.thrid.okhttp.internal.connection.c a(com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, a0 a0Var) {
        if (f29577h || Thread.holdsLock(this)) {
            for (com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar : this.f29581d) {
                if (cVar.a(aVar, a0Var)) {
                    gVar.a(cVar, true);
                    return cVar;
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
        if (!f29577h && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f29583f) {
            this.f29583f = true;
            f29576g.execute(this.f29580c);
        }
        this.f29581d.add(cVar);
    }

    public h(int i10, long j10, TimeUnit timeUnit) {
        this.f29580c = new a();
        this.f29581d = new ArrayDeque();
        this.f29582e = new com.mbridge.msdk.thrid.okhttp.internal.connection.d();
        this.f29578a = i10;
        this.f29579b = timeUnit.toNanos(j10);
        if (j10 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Socket a(com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar) {
        if (f29577h || Thread.holdsLock(this)) {
            for (com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar : this.f29581d) {
                if (cVar.a(aVar, null) && cVar.f() && cVar != gVar.c()) {
                    return gVar.b(cVar);
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
        if (f29577h || Thread.holdsLock(this)) {
            if (!cVar.f29650k && this.f29578a != 0) {
                notifyAll();
                return false;
            }
            this.f29581d.remove(cVar);
            return true;
        }
        throw new AssertionError();
    }

    long a(long j10) {
        synchronized (this) {
            try {
                com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar = null;
                long j11 = Long.MIN_VALUE;
                int i10 = 0;
                int i11 = 0;
                for (com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar2 : this.f29581d) {
                    if (a(cVar2, j10) > 0) {
                        i11++;
                    } else {
                        i10++;
                        long j12 = j10 - cVar2.f29654o;
                        if (j12 > j11) {
                            cVar = cVar2;
                            j11 = j12;
                        }
                    }
                }
                long j13 = this.f29579b;
                if (j11 < j13 && i10 <= this.f29578a) {
                    if (i10 > 0) {
                        return j13 - j11;
                    } else if (i11 > 0) {
                        return j13;
                    } else {
                        this.f29583f = false;
                        return -1L;
                    }
                }
                this.f29581d.remove(cVar);
                com.mbridge.msdk.thrid.okhttp.internal.c.a(cVar.g());
                return 0L;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private int a(com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar, long j10) {
        List<Reference<com.mbridge.msdk.thrid.okhttp.internal.connection.g>> list = cVar.f29653n;
        int i10 = 0;
        while (i10 < list.size()) {
            Reference<com.mbridge.msdk.thrid.okhttp.internal.connection.g> reference = list.get(i10);
            if (reference.get() != null) {
                i10++;
            } else {
                com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a("A connection to " + cVar.c().a().k() + " was leaked. Did you forget to close a response body?", ((g.a) reference).f29683a);
                list.remove(i10);
                cVar.f29650k = true;
                if (list.isEmpty()) {
                    cVar.f29654o = j10 - this.f29579b;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
