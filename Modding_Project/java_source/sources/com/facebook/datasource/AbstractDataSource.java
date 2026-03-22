package com.facebook.datasource;

import android.util.Pair;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
public abstract class AbstractDataSource<T> implements com.facebook.datasource.b<T> {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f15334a;

    /* renamed from: d  reason: collision with root package name */
    private T f15337d = null;

    /* renamed from: e  reason: collision with root package name */
    private Throwable f15338e = null;

    /* renamed from: f  reason: collision with root package name */
    private float f15339f = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15336c = false;

    /* renamed from: b  reason: collision with root package name */
    private DataSourceStatus f15335b = DataSourceStatus.IN_PROGRESS;

    /* renamed from: g  reason: collision with root package name */
    private final ConcurrentLinkedQueue<Pair<d<T>, Executor>> f15340g = new ConcurrentLinkedQueue<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum DataSourceStatus {
        IN_PROGRESS,
        SUCCESS,
        FAILURE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f15341a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f15342b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f15343c;

        a(boolean z10, d dVar, boolean z11) {
            this.f15341a = z10;
            this.f15342b = dVar;
            this.f15343c = z11;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f15341a) {
                this.f15342b.c(AbstractDataSource.this);
            } else if (this.f15343c) {
                this.f15342b.a(AbstractDataSource.this);
            } else {
                this.f15342b.d(AbstractDataSource.this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f15345a;

        b(d dVar) {
            this.f15345a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15345a.b(AbstractDataSource.this);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
    }

    public static c g() {
        return null;
    }

    private void k() {
        boolean h10 = h();
        boolean u10 = u();
        Iterator<Pair<d<T>, Executor>> it = this.f15340g.iterator();
        while (it.hasNext()) {
            Pair<d<T>, Executor> next = it.next();
            j((d) next.first, (Executor) next.second, h10, u10);
        }
    }

    private synchronized boolean p(Throwable th2, Map<String, Object> map) {
        if (!this.f15336c && this.f15335b == DataSourceStatus.IN_PROGRESS) {
            this.f15335b = DataSourceStatus.FAILURE;
            this.f15338e = th2;
            this.f15334a = map;
            return true;
        }
        return false;
    }

    private synchronized boolean r(float f10) {
        if (!this.f15336c && this.f15335b == DataSourceStatus.IN_PROGRESS) {
            if (f10 < this.f15339f) {
                return false;
            }
            this.f15339f = f10;
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x002c, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0033, code lost:
        if (r4 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0035, code lost:
        f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0038, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:?, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
        return false;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0019 -> B:32:0x003a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean t(T r4, boolean r5) {
        /*
            r3 = this;
            r0 = 0
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L3c
            boolean r1 = r3.f15336c     // Catch: java.lang.Throwable -> L18
            if (r1 != 0) goto L32
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r1 = r3.f15335b     // Catch: java.lang.Throwable -> L18
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r2 = com.facebook.datasource.AbstractDataSource.DataSourceStatus.IN_PROGRESS     // Catch: java.lang.Throwable -> L18
            if (r1 == r2) goto Ld
            goto L32
        Ld:
            if (r5 == 0) goto L1a
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r5 = com.facebook.datasource.AbstractDataSource.DataSourceStatus.SUCCESS     // Catch: java.lang.Throwable -> L18
            r3.f15335b = r5     // Catch: java.lang.Throwable -> L18
            r5 = 1065353216(0x3f800000, float:1.0)
            r3.f15339f = r5     // Catch: java.lang.Throwable -> L18
            goto L1a
        L18:
            r4 = move-exception
            goto L3a
        L1a:
            T r5 = r3.f15337d     // Catch: java.lang.Throwable -> L18
            if (r5 == r4) goto L25
            r3.f15337d = r4     // Catch: java.lang.Throwable -> L22
            r4 = r5
            goto L26
        L22:
            r4 = move-exception
            r0 = r5
            goto L3a
        L25:
            r4 = r0
        L26:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L2e
            if (r4 == 0) goto L2c
            r3.f(r4)
        L2c:
            r4 = 1
            return r4
        L2e:
            r5 = move-exception
            r0 = r4
            r4 = r5
            goto L3a
        L32:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L2e
            if (r4 == 0) goto L38
            r3.f(r4)
        L38:
            r4 = 0
            return r4
        L3a:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L18
            throw r4     // Catch: java.lang.Throwable -> L3c
        L3c:
            r4 = move-exception
            if (r0 == 0) goto L42
            r3.f(r0)
        L42:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.datasource.AbstractDataSource.t(java.lang.Object, boolean):boolean");
    }

    private synchronized boolean u() {
        boolean z10;
        if (i()) {
            if (!e()) {
                z10 = true;
            }
        }
        z10 = false;
        return z10;
    }

    @Override // com.facebook.datasource.b
    public synchronized boolean a() {
        boolean z10;
        if (this.f15337d != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    @Override // com.facebook.datasource.b
    public synchronized Throwable b() {
        return this.f15338e;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    @Override // com.facebook.datasource.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(com.facebook.datasource.d<T> r3, java.util.concurrent.Executor r4) {
        /*
            r2 = this;
            k2.h.g(r3)
            k2.h.g(r4)
            monitor-enter(r2)
            boolean r0 = r2.f15336c     // Catch: java.lang.Throwable -> Ld
            if (r0 == 0) goto Lf
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Ld
            return
        Ld:
            r3 = move-exception
            goto L43
        Lf:
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r0 = r2.f15335b     // Catch: java.lang.Throwable -> Ld
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r1 = com.facebook.datasource.AbstractDataSource.DataSourceStatus.IN_PROGRESS     // Catch: java.lang.Throwable -> Ld
            if (r0 != r1) goto L1e
            java.util.concurrent.ConcurrentLinkedQueue<android.util.Pair<com.facebook.datasource.d<T>, java.util.concurrent.Executor>> r0 = r2.f15340g     // Catch: java.lang.Throwable -> Ld
            android.util.Pair r1 = android.util.Pair.create(r3, r4)     // Catch: java.lang.Throwable -> Ld
            r0.add(r1)     // Catch: java.lang.Throwable -> Ld
        L1e:
            boolean r0 = r2.a()     // Catch: java.lang.Throwable -> Ld
            if (r0 != 0) goto L33
            boolean r0 = r2.e()     // Catch: java.lang.Throwable -> Ld
            if (r0 != 0) goto L33
            boolean r0 = r2.u()     // Catch: java.lang.Throwable -> Ld
            if (r0 == 0) goto L31
            goto L33
        L31:
            r0 = 0
            goto L34
        L33:
            r0 = 1
        L34:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Ld
            if (r0 == 0) goto L42
            boolean r0 = r2.h()
            boolean r1 = r2.u()
            r2.j(r3, r4, r0, r1)
        L42:
            return
        L43:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Ld
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.datasource.AbstractDataSource.c(com.facebook.datasource.d, java.util.concurrent.Executor):void");
    }

    @Override // com.facebook.datasource.b
    public boolean close() {
        synchronized (this) {
            try {
                if (this.f15336c) {
                    return false;
                }
                this.f15336c = true;
                T t10 = this.f15337d;
                this.f15337d = null;
                if (t10 != null) {
                    f(t10);
                }
                if (!e()) {
                    k();
                }
                synchronized (this) {
                    this.f15340g.clear();
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.facebook.datasource.b
    public boolean d() {
        return false;
    }

    @Override // com.facebook.datasource.b
    public synchronized boolean e() {
        boolean z10;
        if (this.f15335b != DataSourceStatus.IN_PROGRESS) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    @Override // com.facebook.datasource.b
    public Map<String, Object> getExtras() {
        return this.f15334a;
    }

    @Override // com.facebook.datasource.b
    public synchronized float getProgress() {
        return this.f15339f;
    }

    @Override // com.facebook.datasource.b
    public synchronized T getResult() {
        return this.f15337d;
    }

    public synchronized boolean h() {
        boolean z10;
        if (this.f15335b == DataSourceStatus.FAILURE) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    public synchronized boolean i() {
        return this.f15336c;
    }

    protected void j(d<T> dVar, Executor executor, boolean z10, boolean z11) {
        a aVar = new a(z10, dVar, z11);
        g();
        executor.execute(aVar);
    }

    protected void l() {
        Iterator<Pair<d<T>, Executor>> it = this.f15340g.iterator();
        while (it.hasNext()) {
            Pair<d<T>, Executor> next = it.next();
            ((Executor) next.second).execute(new b((d) next.first));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m(Map<String, Object> map) {
        this.f15334a = map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean n(Throwable th2) {
        return o(th2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean o(Throwable th2, Map<String, Object> map) {
        boolean p10 = p(th2, map);
        if (p10) {
            k();
        }
        return p10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean q(float f10) {
        boolean r10 = r(f10);
        if (r10) {
            l();
        }
        return r10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean s(T t10, boolean z10, Map<String, Object> map) {
        m(map);
        boolean t11 = t(t10, z10);
        if (t11) {
            k();
        }
        return t11;
    }

    protected void f(T t10) {
    }
}
