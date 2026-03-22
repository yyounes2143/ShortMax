package com.mbridge.msdk.thrid.okhttp;

import com.mbridge.msdk.thrid.okhttp.v;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Dispatcher.java */
/* loaded from: classes6.dex */
public final class l {

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ boolean f29973h = true;

    /* renamed from: c  reason: collision with root package name */
    private Runnable f29976c;

    /* renamed from: d  reason: collision with root package name */
    private ExecutorService f29977d;

    /* renamed from: a  reason: collision with root package name */
    private int f29974a = 64;

    /* renamed from: b  reason: collision with root package name */
    private int f29975b = 5;

    /* renamed from: e  reason: collision with root package name */
    private final Deque<v.b> f29978e = new ArrayDeque();

    /* renamed from: f  reason: collision with root package name */
    private final Deque<v.b> f29979f = new ArrayDeque();

    /* renamed from: g  reason: collision with root package name */
    private final Deque<v> f29980g = new ArrayDeque();

    public l(ExecutorService executorService) {
        this.f29977d = executorService;
    }

    public synchronized ExecutorService a() {
        try {
            if (this.f29977d == null) {
                this.f29977d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp Dispatcher", false));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f29977d;
    }

    public void b(int i10) {
        if (i10 >= 1) {
            synchronized (this) {
                this.f29975b = i10;
            }
            b();
            return;
        }
        throw new IllegalArgumentException("max < 1: " + i10);
    }

    public synchronized int c() {
        return this.f29979f.size() + this.f29980g.size();
    }

    public void a(int i10) {
        if (i10 >= 1) {
            synchronized (this) {
                this.f29974a = i10;
            }
            b();
            return;
        }
        throw new IllegalArgumentException("max < 1: " + i10);
    }

    private boolean b() {
        int i10;
        boolean z10;
        if (f29973h || !Thread.holdsLock(this)) {
            ArrayList arrayList = new ArrayList();
            synchronized (this) {
                try {
                    Iterator<v.b> it = this.f29978e.iterator();
                    while (it.hasNext()) {
                        v.b next = it.next();
                        if (this.f29979f.size() >= this.f29974a) {
                            break;
                        } else if (b(next) < this.f29975b) {
                            it.remove();
                            arrayList.add(next);
                            this.f29979f.add(next);
                        }
                    }
                    z10 = c() > 0;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            int size = arrayList.size();
            for (i10 = 0; i10 < size; i10++) {
                ((v.b) arrayList.get(i10)).a(a());
            }
            return z10;
        }
        throw new AssertionError();
    }

    public l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(v vVar) {
        this.f29980g.add(vVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(v.b bVar) {
        a(this.f29979f, bVar);
    }

    private <T> void a(Deque<T> deque, T t10) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t10)) {
                runnable = this.f29976c;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (b() || runnable == null) {
            return;
        }
        runnable.run();
    }

    private int b(v.b bVar) {
        int i10 = 0;
        for (v.b bVar2 : this.f29979f) {
            if (!bVar2.c().f30072f && bVar2.d().equals(bVar.d())) {
                i10++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(v vVar) {
        a(this.f29980g, vVar);
    }
}
