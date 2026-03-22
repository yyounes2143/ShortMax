package com.facebook.datasource;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import k2.k;
/* compiled from: IncreasingQualityDataSourceSupplier.java */
/* loaded from: classes3.dex */
public class g<T> implements k<b<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final List<k<b<T>>> f15354a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f15355b;

    private g(List<k<b<T>>> list, boolean z10) {
        k2.h.c(!list.isEmpty(), "List of suppliers is empty!");
        this.f15354a = list;
        this.f15355b = z10;
    }

    public static <T> g<T> c(List<k<b<T>>> list, boolean z10) {
        return new g<>(list, z10);
    }

    @Override // k2.k
    /* renamed from: d */
    public b<T> get() {
        return new a();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        return k2.f.a(this.f15354a, ((g) obj).f15354a);
    }

    public int hashCode() {
        return this.f15354a.hashCode();
    }

    public String toString() {
        return k2.f.b(this).c("list", this.f15354a).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IncreasingQualityDataSourceSupplier.java */
    /* loaded from: classes3.dex */
    public class a extends AbstractDataSource<T> {

        /* renamed from: h  reason: collision with root package name */
        private ArrayList<b<T>> f15356h;

        /* renamed from: i  reason: collision with root package name */
        private int f15357i;

        /* renamed from: j  reason: collision with root package name */
        private int f15358j;

        /* renamed from: k  reason: collision with root package name */
        private AtomicInteger f15359k;

        /* renamed from: l  reason: collision with root package name */
        private Throwable f15360l;

        /* renamed from: m  reason: collision with root package name */
        private Map<String, Object> f15361m;

        public a() {
            if (!g.this.f15355b) {
                y();
            }
        }

        private synchronized b<T> A(int i10) {
            b<T> bVar;
            ArrayList<b<T>> arrayList = this.f15356h;
            if (arrayList != null && i10 < arrayList.size()) {
                bVar = this.f15356h.get(i10);
            } else {
                bVar = null;
            }
            return bVar;
        }

        private synchronized b<T> B() {
            return A(this.f15357i);
        }

        private void C() {
            Throwable th2;
            if (this.f15359k.incrementAndGet() == this.f15358j && (th2 = this.f15360l) != null) {
                o(th2, this.f15361m);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0024 A[LOOP:0: B:19:0x0022->B:20:0x0024, LOOP_END] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void D(int r3, com.facebook.datasource.b<T> r4, boolean r5) {
            /*
                r2 = this;
                monitor-enter(r2)
                int r0 = r2.f15357i     // Catch: java.lang.Throwable -> L1b
                com.facebook.datasource.b r1 = r2.A(r3)     // Catch: java.lang.Throwable -> L1b
                if (r4 != r1) goto L2f
                int r4 = r2.f15357i     // Catch: java.lang.Throwable -> L1b
                if (r3 != r4) goto Le
                goto L2f
            Le:
                com.facebook.datasource.b r4 = r2.B()     // Catch: java.lang.Throwable -> L1b
                if (r4 == 0) goto L1f
                if (r5 == 0) goto L1d
                int r4 = r2.f15357i     // Catch: java.lang.Throwable -> L1b
                if (r3 >= r4) goto L1d
                goto L1f
            L1b:
                r3 = move-exception
                goto L31
            L1d:
                r3 = r0
                goto L21
            L1f:
                r2.f15357i = r3     // Catch: java.lang.Throwable -> L1b
            L21:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1b
            L22:
                if (r0 <= r3) goto L2e
                com.facebook.datasource.b r4 = r2.z(r0)
                r2.x(r4)
                int r0 = r0 + (-1)
                goto L22
            L2e:
                return
            L2f:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1b
                return
            L31:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1b
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.datasource.g.a.D(int, com.facebook.datasource.b, boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void E(int i10, b<T> bVar) {
            x(G(i10, bVar));
            if (i10 == 0) {
                this.f15360l = bVar.b();
                this.f15361m = bVar.getExtras();
            }
            C();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void F(int i10, b<T> bVar) {
            boolean z10;
            D(i10, bVar, bVar.e());
            if (bVar == B()) {
                if (i10 == 0 && bVar.e()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                s(null, z10, bVar.getExtras());
            }
            C();
        }

        private synchronized b<T> G(int i10, b<T> bVar) {
            if (bVar == B()) {
                return null;
            }
            if (bVar == A(i10)) {
                return z(i10);
            }
            return bVar;
        }

        private void x(b<T> bVar) {
            if (bVar != null) {
                bVar.close();
            }
        }

        private void y() {
            if (this.f15359k != null) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.f15359k == null) {
                        this.f15359k = new AtomicInteger(0);
                        int size = g.this.f15354a.size();
                        this.f15358j = size;
                        this.f15357i = size;
                        this.f15356h = new ArrayList<>(size);
                        for (int i10 = 0; i10 < size; i10++) {
                            b<T> bVar = (b) ((k) g.this.f15354a.get(i10)).get();
                            this.f15356h.add(bVar);
                            bVar.c(new C0261a(i10), i2.a.a());
                            if (!bVar.a()) {
                            }
                        }
                    }
                } finally {
                }
            }
        }

        private synchronized b<T> z(int i10) {
            b<T> bVar;
            ArrayList<b<T>> arrayList = this.f15356h;
            bVar = null;
            if (arrayList != null && i10 < arrayList.size()) {
                bVar = this.f15356h.set(i10, null);
            }
            return bVar;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.b
        public synchronized boolean a() {
            boolean z10;
            try {
                if (g.this.f15355b) {
                    y();
                }
                b<T> B = B();
                if (B != null) {
                    if (B.a()) {
                        z10 = true;
                    }
                }
                z10 = false;
            } catch (Throwable th2) {
                throw th2;
            }
            return z10;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.b
        public boolean close() {
            if (g.this.f15355b) {
                y();
            }
            synchronized (this) {
                try {
                    if (!super.close()) {
                        return false;
                    }
                    ArrayList<b<T>> arrayList = this.f15356h;
                    this.f15356h = null;
                    if (arrayList != null) {
                        for (int i10 = 0; i10 < arrayList.size(); i10++) {
                            x(arrayList.get(i10));
                        }
                        return true;
                    }
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.b
        public synchronized T getResult() {
            T t10;
            try {
                if (g.this.f15355b) {
                    y();
                }
                b<T> B = B();
                if (B != null) {
                    t10 = B.getResult();
                } else {
                    t10 = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return t10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IncreasingQualityDataSourceSupplier.java */
        /* renamed from: com.facebook.datasource.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0261a implements d<T> {

            /* renamed from: a  reason: collision with root package name */
            private int f15363a;

            public C0261a(int i10) {
                this.f15363a = i10;
            }

            @Override // com.facebook.datasource.d
            public void b(b<T> bVar) {
                if (this.f15363a == 0) {
                    a.this.q(bVar.getProgress());
                }
            }

            @Override // com.facebook.datasource.d
            public void c(b<T> bVar) {
                a.this.E(this.f15363a, bVar);
            }

            @Override // com.facebook.datasource.d
            public void d(b<T> bVar) {
                if (bVar.a()) {
                    a.this.F(this.f15363a, bVar);
                } else if (bVar.e()) {
                    a.this.E(this.f15363a, bVar);
                }
            }

            @Override // com.facebook.datasource.d
            public void a(b<T> bVar) {
            }
        }
    }
}
