package com.facebook.datasource;

import java.util.List;
import k2.k;
/* compiled from: FirstAvailableDataSourceSupplier.java */
/* loaded from: classes3.dex */
public class e<T> implements k<b<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final List<k<b<T>>> f15348a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirstAvailableDataSourceSupplier.java */
    /* loaded from: classes3.dex */
    public class a extends AbstractDataSource<T> {

        /* renamed from: h  reason: collision with root package name */
        private int f15349h = 0;

        /* renamed from: i  reason: collision with root package name */
        private b<T> f15350i = null;

        /* renamed from: j  reason: collision with root package name */
        private b<T> f15351j = null;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: FirstAvailableDataSourceSupplier.java */
        /* renamed from: com.facebook.datasource.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0260a implements d<T> {
            @Override // com.facebook.datasource.d
            public void b(b<T> bVar) {
                a.this.q(Math.max(a.this.getProgress(), bVar.getProgress()));
            }

            @Override // com.facebook.datasource.d
            public void c(b<T> bVar) {
                a.this.C(bVar);
            }

            @Override // com.facebook.datasource.d
            public void d(b<T> bVar) {
                if (bVar.a()) {
                    a.this.D(bVar);
                } else if (bVar.e()) {
                    a.this.C(bVar);
                }
            }

            private C0260a() {
            }

            @Override // com.facebook.datasource.d
            public void a(b<T> bVar) {
            }
        }

        public a() {
            if (!F()) {
                n(new RuntimeException("No data source supplier or supplier returned null."));
            }
        }

        private synchronized k<b<T>> A() {
            if (!i() && this.f15349h < e.this.f15348a.size()) {
                List list = e.this.f15348a;
                int i10 = this.f15349h;
                this.f15349h = i10 + 1;
                return (k) list.get(i10);
            }
            return null;
        }

        private void B(b<T> bVar, boolean z10) {
            b<T> bVar2;
            synchronized (this) {
                if (bVar == this.f15350i && bVar != (bVar2 = this.f15351j)) {
                    if (bVar2 != null && !z10) {
                        bVar2 = null;
                        y(bVar2);
                    }
                    this.f15351j = bVar;
                    y(bVar2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void C(b<T> bVar) {
            if (!x(bVar)) {
                return;
            }
            if (bVar != z()) {
                y(bVar);
            }
            if (!F()) {
                o(bVar.b(), bVar.getExtras());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void D(b<T> bVar) {
            B(bVar, bVar.e());
            if (bVar == z()) {
                s(null, bVar.e(), bVar.getExtras());
            }
        }

        private synchronized boolean E(b<T> bVar) {
            if (i()) {
                return false;
            }
            this.f15350i = bVar;
            return true;
        }

        private boolean F() {
            b<T> bVar;
            k<b<T>> A = A();
            if (A != null) {
                bVar = A.get();
            } else {
                bVar = null;
            }
            if (E(bVar) && bVar != null) {
                bVar.c(new C0260a(), i2.a.a());
                return true;
            }
            y(bVar);
            return false;
        }

        private synchronized boolean x(b<T> bVar) {
            if (!i() && bVar == this.f15350i) {
                this.f15350i = null;
                return true;
            }
            return false;
        }

        private void y(b<T> bVar) {
            if (bVar != null) {
                bVar.close();
            }
        }

        private synchronized b<T> z() {
            return this.f15351j;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.b
        public synchronized boolean a() {
            boolean z10;
            b<T> z11 = z();
            if (z11 != null) {
                if (z11.a()) {
                    z10 = true;
                }
            }
            z10 = false;
            return z10;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.b
        public boolean close() {
            synchronized (this) {
                try {
                    if (!super.close()) {
                        return false;
                    }
                    b<T> bVar = this.f15350i;
                    this.f15350i = null;
                    b<T> bVar2 = this.f15351j;
                    this.f15351j = null;
                    y(bVar2);
                    y(bVar);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.b
        public synchronized T getResult() {
            T t10;
            b<T> z10 = z();
            if (z10 != null) {
                t10 = z10.getResult();
            } else {
                t10 = null;
            }
            return t10;
        }
    }

    private e(List<k<b<T>>> list) {
        k2.h.c(!list.isEmpty(), "List of suppliers is empty!");
        this.f15348a = list;
    }

    public static <T> e<T> b(List<k<b<T>>> list) {
        return new e<>(list);
    }

    @Override // k2.k
    /* renamed from: c */
    public b<T> get() {
        return new a();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        return k2.f.a(this.f15348a, ((e) obj).f15348a);
    }

    public int hashCode() {
        return this.f15348a.hashCode();
    }

    public String toString() {
        return k2.f.b(this).c("list", this.f15348a).toString();
    }
}
