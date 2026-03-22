package com.facebook.imagepipeline.memory;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.VisibleForTesting;
import b4.e0;
import b4.f0;
import java.util.Set;
import k2.h;
import k2.j;
import k2.m;
/* loaded from: classes3.dex */
public abstract class BasePool<V> implements n2.e<V> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f15658a;

    /* renamed from: b  reason: collision with root package name */
    final n2.c f15659b;

    /* renamed from: c  reason: collision with root package name */
    final e0 f15660c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final SparseArray<com.facebook.imagepipeline.memory.a<V>> f15661d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    final Set<V> f15662e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f15663f;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    final a f15664g;
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    final a f15665h;

    /* renamed from: i  reason: collision with root package name */
    private final f0 f15666i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f15667j;

    /* loaded from: classes3.dex */
    public static class InvalidSizeException extends RuntimeException {
        public InvalidSizeException(Object obj) {
            super("Invalid size: " + obj.toString());
        }
    }

    /* loaded from: classes3.dex */
    public static class InvalidValueException extends RuntimeException {
    }

    /* loaded from: classes3.dex */
    public static class PoolSizeViolationException extends RuntimeException {
        public PoolSizeViolationException(int i10, int i11, int i12, int i13) {
            super("Pool hard cap violation? Hard cap = " + i10 + " Used size = " + i11 + " Free size = " + i12 + " Request size = " + i13);
        }
    }

    /* loaded from: classes3.dex */
    public static class SizeTooLargeException extends InvalidSizeException {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f15668a;

        /* renamed from: b  reason: collision with root package name */
        int f15669b;

        a() {
        }

        public void a(int i10) {
            int i11;
            int i12 = this.f15669b;
            if (i12 >= i10 && (i11 = this.f15668a) > 0) {
                this.f15668a = i11 - 1;
                this.f15669b = i12 - i10;
                return;
            }
            l2.a.B("com.facebook.imagepipeline.memory.BasePool.Counter", "Unexpected decrement of %d. Current numBytes = %d, count = %d", Integer.valueOf(i10), Integer.valueOf(this.f15669b), Integer.valueOf(this.f15668a));
        }

        public void b(int i10) {
            this.f15668a++;
            this.f15669b += i10;
        }
    }

    public BasePool(n2.c cVar, e0 e0Var, f0 f0Var) {
        this.f15658a = getClass();
        this.f15659b = (n2.c) h.g(cVar);
        e0 e0Var2 = (e0) h.g(e0Var);
        this.f15660c = e0Var2;
        this.f15666i = (f0) h.g(f0Var);
        this.f15661d = new SparseArray<>();
        if (e0Var2.f2216f) {
            q();
        } else {
            u(new SparseIntArray(0));
        }
        this.f15662e = j.b();
        this.f15665h = new a();
        this.f15664g = new a();
    }

    private synchronized void h() {
        boolean z10;
        try {
            if (s() && this.f15665h.f15669b != 0) {
                z10 = false;
                h.i(z10);
            }
            z10 = true;
            h.i(z10);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void i(SparseIntArray sparseIntArray) {
        this.f15661d.clear();
        for (int i10 = 0; i10 < sparseIntArray.size(); i10++) {
            int keyAt = sparseIntArray.keyAt(i10);
            this.f15661d.put(keyAt, new com.facebook.imagepipeline.memory.a<>(o(keyAt), sparseIntArray.valueAt(i10), 0, this.f15660c.f2216f));
        }
    }

    private synchronized com.facebook.imagepipeline.memory.a<V> l(int i10) {
        return this.f15661d.get(i10);
    }

    private synchronized void q() {
        try {
            SparseIntArray sparseIntArray = this.f15660c.f2213c;
            if (sparseIntArray != null) {
                i(sparseIntArray);
                this.f15663f = false;
            } else {
                this.f15663f = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void u(SparseIntArray sparseIntArray) {
        try {
            h.g(sparseIntArray);
            this.f15661d.clear();
            SparseIntArray sparseIntArray2 = this.f15660c.f2213c;
            if (sparseIntArray2 != null) {
                for (int i10 = 0; i10 < sparseIntArray2.size(); i10++) {
                    int keyAt = sparseIntArray2.keyAt(i10);
                    this.f15661d.put(keyAt, new com.facebook.imagepipeline.memory.a<>(o(keyAt), sparseIntArray2.valueAt(i10), sparseIntArray.get(keyAt, 0), this.f15660c.f2216f));
                }
                this.f15663f = false;
            } else {
                this.f15663f = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @SuppressLint({"InvalidAccessToGuardedField"})
    private void v() {
        if (l2.a.n(2)) {
            l2.a.s(this.f15658a, "Used = (%d, %d); Free = (%d, %d)", Integer.valueOf(this.f15664g.f15668a), Integer.valueOf(this.f15664g.f15669b), Integer.valueOf(this.f15665h.f15668a), Integer.valueOf(this.f15665h.f15669b));
        }
    }

    protected abstract V f(int i10);

    @VisibleForTesting
    synchronized boolean g(int i10) {
        if (this.f15667j) {
            return true;
        }
        e0 e0Var = this.f15660c;
        int i11 = e0Var.f2211a;
        int i12 = this.f15664g.f15669b;
        if (i10 > i11 - i12) {
            this.f15666i.c();
            return false;
        }
        int i13 = e0Var.f2212b;
        if (i10 > i13 - (i12 + this.f15665h.f15669b)) {
            x(i13 - i10);
        }
        if (i10 <= i11 - (this.f15664g.f15669b + this.f15665h.f15669b)) {
            return true;
        }
        this.f15666i.c();
        return false;
    }

    @Override // n2.e
    public V get(int i10) {
        V v10;
        V p10;
        h();
        int m10 = m(i10);
        synchronized (this) {
            try {
                com.facebook.imagepipeline.memory.a<V> k10 = k(m10);
                if (k10 != null && (p10 = p(k10)) != null) {
                    h.i(this.f15662e.add(p10));
                    int n10 = n(p10);
                    int o10 = o(n10);
                    this.f15664g.b(o10);
                    this.f15665h.a(o10);
                    this.f15666i.b(o10);
                    v();
                    if (l2.a.n(2)) {
                        l2.a.q(this.f15658a, "get (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(p10)), Integer.valueOf(n10));
                    }
                    return p10;
                }
                int o11 = o(m10);
                if (g(o11)) {
                    this.f15664g.b(o11);
                    if (k10 != null) {
                        k10.e();
                    }
                    try {
                        v10 = f(m10);
                    } catch (Throwable th2) {
                        synchronized (this) {
                            try {
                                this.f15664g.a(o11);
                                com.facebook.imagepipeline.memory.a<V> k11 = k(m10);
                                if (k11 != null) {
                                    k11.b();
                                }
                                m.c(th2);
                                v10 = null;
                            } finally {
                            }
                        }
                    }
                    synchronized (this) {
                        try {
                            h.i(this.f15662e.add(v10));
                            y();
                            this.f15666i.a(o11);
                            v();
                            if (l2.a.n(2)) {
                                l2.a.q(this.f15658a, "get (alloc) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v10)), Integer.valueOf(m10));
                            }
                        } finally {
                        }
                    }
                    return v10;
                }
                throw new PoolSizeViolationException(this.f15660c.f2211a, this.f15664g.f15669b, this.f15665h.f15669b, o11);
            } finally {
            }
        }
    }

    @VisibleForTesting
    protected abstract void j(V v10);

    @VisibleForTesting
    synchronized com.facebook.imagepipeline.memory.a<V> k(int i10) {
        try {
            com.facebook.imagepipeline.memory.a<V> aVar = this.f15661d.get(i10);
            if (aVar == null && this.f15663f) {
                if (l2.a.n(2)) {
                    l2.a.p(this.f15658a, "creating new bucket %s", Integer.valueOf(i10));
                }
                com.facebook.imagepipeline.memory.a<V> w10 = w(i10);
                this.f15661d.put(i10, w10);
                return w10;
            }
            return aVar;
        } finally {
        }
    }

    protected abstract int m(int i10);

    protected abstract int n(V v10);

    protected abstract int o(int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized V p(com.facebook.imagepipeline.memory.a<V> aVar) {
        return aVar.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r() {
        this.f15659b.a(this);
        this.f15666i.g(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
        r2.b();
     */
    @Override // n2.e, o2.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void release(V r6) {
        /*
            r5 = this;
            k2.h.g(r6)
            int r0 = r5.n(r6)
            int r1 = r5.o(r0)
            monitor-enter(r5)
            com.facebook.imagepipeline.memory.a r2 = r5.l(r0)     // Catch: java.lang.Throwable -> L38
            java.util.Set<V> r3 = r5.f15662e     // Catch: java.lang.Throwable -> L38
            boolean r3 = r3.remove(r6)     // Catch: java.lang.Throwable -> L38
            if (r3 != 0) goto L3b
            java.lang.Class<?> r2 = r5.f15658a     // Catch: java.lang.Throwable -> L38
            java.lang.String r3 = "release (free, value unrecognized) (object, size) = (%x, %s)"
            int r4 = java.lang.System.identityHashCode(r6)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L38
            java.lang.Object[] r0 = new java.lang.Object[]{r4, r0}     // Catch: java.lang.Throwable -> L38
            l2.a.g(r2, r3, r0)     // Catch: java.lang.Throwable -> L38
            r5.j(r6)     // Catch: java.lang.Throwable -> L38
            b4.f0 r6 = r5.f15666i     // Catch: java.lang.Throwable -> L38
            r6.e(r1)     // Catch: java.lang.Throwable -> L38
            goto La8
        L38:
            r6 = move-exception
            goto Lad
        L3b:
            r3 = 2
            if (r2 == 0) goto L7d
            boolean r4 = r2.f()     // Catch: java.lang.Throwable -> L38
            if (r4 != 0) goto L7d
            boolean r4 = r5.s()     // Catch: java.lang.Throwable -> L38
            if (r4 != 0) goto L7d
            boolean r4 = r5.t(r6)     // Catch: java.lang.Throwable -> L38
            if (r4 != 0) goto L51
            goto L7d
        L51:
            r2.h(r6)     // Catch: java.lang.Throwable -> L38
            com.facebook.imagepipeline.memory.BasePool$a r2 = r5.f15665h     // Catch: java.lang.Throwable -> L38
            r2.b(r1)     // Catch: java.lang.Throwable -> L38
            com.facebook.imagepipeline.memory.BasePool$a r2 = r5.f15664g     // Catch: java.lang.Throwable -> L38
            r2.a(r1)     // Catch: java.lang.Throwable -> L38
            b4.f0 r2 = r5.f15666i     // Catch: java.lang.Throwable -> L38
            r2.f(r1)     // Catch: java.lang.Throwable -> L38
            boolean r1 = l2.a.n(r3)     // Catch: java.lang.Throwable -> L38
            if (r1 == 0) goto La8
            java.lang.Class<?> r1 = r5.f15658a     // Catch: java.lang.Throwable -> L38
            java.lang.String r2 = "release (reuse) (object, size) = (%x, %s)"
            int r6 = java.lang.System.identityHashCode(r6)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L38
            l2.a.q(r1, r2, r6, r0)     // Catch: java.lang.Throwable -> L38
            goto La8
        L7d:
            if (r2 == 0) goto L82
            r2.b()     // Catch: java.lang.Throwable -> L38
        L82:
            boolean r2 = l2.a.n(r3)     // Catch: java.lang.Throwable -> L38
            if (r2 == 0) goto L9b
            java.lang.Class<?> r2 = r5.f15658a     // Catch: java.lang.Throwable -> L38
            java.lang.String r3 = "release (free) (object, size) = (%x, %s)"
            int r4 = java.lang.System.identityHashCode(r6)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L38
            l2.a.q(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> L38
        L9b:
            r5.j(r6)     // Catch: java.lang.Throwable -> L38
            com.facebook.imagepipeline.memory.BasePool$a r6 = r5.f15664g     // Catch: java.lang.Throwable -> L38
            r6.a(r1)     // Catch: java.lang.Throwable -> L38
            b4.f0 r6 = r5.f15666i     // Catch: java.lang.Throwable -> L38
            r6.e(r1)     // Catch: java.lang.Throwable -> L38
        La8:
            r5.v()     // Catch: java.lang.Throwable -> L38
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L38
            return
        Lad:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L38
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.memory.BasePool.release(java.lang.Object):void");
    }

    @VisibleForTesting
    synchronized boolean s() {
        boolean z10;
        if (this.f15664g.f15669b + this.f15665h.f15669b > this.f15660c.f2212b) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f15666i.d();
        }
        return z10;
    }

    protected boolean t(V v10) {
        h.g(v10);
        return true;
    }

    com.facebook.imagepipeline.memory.a<V> w(int i10) {
        return new com.facebook.imagepipeline.memory.a<>(o(i10), Integer.MAX_VALUE, 0, this.f15660c.f2216f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    synchronized void x(int i10) {
        try {
            int i11 = this.f15664g.f15669b;
            int i12 = this.f15665h.f15669b;
            int min = Math.min((i11 + i12) - i10, i12);
            if (min <= 0) {
                return;
            }
            if (l2.a.n(2)) {
                l2.a.r(this.f15658a, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d", Integer.valueOf(i10), Integer.valueOf(this.f15664g.f15669b + this.f15665h.f15669b), Integer.valueOf(min));
            }
            v();
            for (int i13 = 0; i13 < this.f15661d.size() && min > 0; i13++) {
                com.facebook.imagepipeline.memory.a aVar = (com.facebook.imagepipeline.memory.a) h.g(this.f15661d.valueAt(i13));
                while (min > 0) {
                    Object g10 = aVar.g();
                    if (g10 == null) {
                        break;
                    }
                    j(g10);
                    int i14 = aVar.f15676a;
                    min -= i14;
                    this.f15665h.a(i14);
                }
            }
            v();
            if (l2.a.n(2)) {
                l2.a.q(this.f15658a, "trimToSize: TargetSize = %d; Final Size = %d", Integer.valueOf(i10), Integer.valueOf(this.f15664g.f15669b + this.f15665h.f15669b));
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @VisibleForTesting
    synchronized void y() {
        if (s()) {
            x(this.f15660c.f2212b);
        }
    }

    public BasePool(n2.c cVar, e0 e0Var, f0 f0Var, boolean z10) {
        this(cVar, e0Var, f0Var);
        this.f15667j = z10;
    }
}
