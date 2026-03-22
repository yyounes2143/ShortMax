package com.google.common.base;

import com.google.common.base.Suppliers;
import h7.h;
import h7.k;
import h7.n;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public final class Suppliers {

    /* loaded from: classes5.dex */
    static class MemoizingSupplier<T> implements n<T>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private transient Object f20045a = new Object();

        /* renamed from: b  reason: collision with root package name */
        final n<T> f20046b;

        /* renamed from: c  reason: collision with root package name */
        volatile transient boolean f20047c;

        /* renamed from: d  reason: collision with root package name */
        transient T f20048d;

        MemoizingSupplier(n<T> nVar) {
            this.f20046b = (n) k.j(nVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f20045a = new Object();
        }

        @Override // h7.n
        public T get() {
            if (!this.f20047c) {
                synchronized (this.f20045a) {
                    try {
                        if (!this.f20047c) {
                            T t10 = this.f20046b.get();
                            this.f20048d = t10;
                            this.f20047c = true;
                            return t10;
                        }
                    } finally {
                    }
                }
            }
            return (T) com.google.common.base.a.a(this.f20048d);
        }

        public String toString() {
            Object obj;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Suppliers.memoize(");
            if (this.f20047c) {
                obj = "<supplier that returned " + this.f20048d + ">";
            } else {
                obj = this.f20046b;
            }
            sb2.append(obj);
            sb2.append(")");
            return sb2.toString();
        }
    }

    /* loaded from: classes5.dex */
    private static class SupplierOfInstance<T> implements n<T>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        final T f20049a;

        SupplierOfInstance(T t10) {
            this.f20049a = t10;
        }

        public boolean equals(Object obj) {
            if (obj instanceof SupplierOfInstance) {
                return h.a(this.f20049a, ((SupplierOfInstance) obj).f20049a);
            }
            return false;
        }

        @Override // h7.n
        public T get() {
            return this.f20049a;
        }

        public int hashCode() {
            return h.b(this.f20049a);
        }

        public String toString() {
            return "Suppliers.ofInstance(" + this.f20049a + ")";
        }
    }

    /* loaded from: classes5.dex */
    static class a<T> implements n<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final n<Void> f20050d = new n() { // from class: com.google.common.base.c
            @Override // h7.n
            public final Object get() {
                Void b10;
                b10 = Suppliers.a.b();
                return b10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final Object f20051a = new Object();

        /* renamed from: b  reason: collision with root package name */
        private volatile n<T> f20052b;

        /* renamed from: c  reason: collision with root package name */
        private T f20053c;

        a(n<T> nVar) {
            this.f20052b = (n) k.j(nVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Void b() {
            throw new IllegalStateException();
        }

        @Override // h7.n
        public T get() {
            n<T> nVar = this.f20052b;
            n<T> nVar2 = (n<T>) f20050d;
            if (nVar != nVar2) {
                synchronized (this.f20051a) {
                    try {
                        if (this.f20052b != nVar2) {
                            T t10 = this.f20052b.get();
                            this.f20053c = t10;
                            this.f20052b = nVar2;
                            return t10;
                        }
                    } finally {
                    }
                }
            }
            return (T) com.google.common.base.a.a(this.f20053c);
        }

        public String toString() {
            Object obj = this.f20052b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Suppliers.memoize(");
            if (obj == f20050d) {
                obj = "<supplier that returned " + this.f20053c + ">";
            }
            sb2.append(obj);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static <T> n<T> a(n<T> nVar) {
        if (!(nVar instanceof a) && !(nVar instanceof MemoizingSupplier)) {
            if (nVar instanceof Serializable) {
                return new MemoizingSupplier(nVar);
            }
            return new a(nVar);
        }
        return nVar;
    }

    public static <T> n<T> b(T t10) {
        return new SupplierOfInstance(t10);
    }
}
