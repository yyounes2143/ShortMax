package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public final class Iterators {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum EmptyModifiableIterator implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            d.c(false);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes5.dex */
    class a<T> extends AbstractIterator<T> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Iterator f20159c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h7.l f20160d;

        a(Iterator it, h7.l lVar) {
            this.f20159c = it;
            this.f20160d = lVar;
        }

        @Override // com.google.common.collect.AbstractIterator
        protected T a() {
            while (this.f20159c.hasNext()) {
                T t10 = (T) this.f20159c.next();
                if (this.f20160d.apply(t10)) {
                    return t10;
                }
            }
            return b();
        }
    }

    /* loaded from: classes5.dex */
    private static final class b<T> extends y<T> {

        /* renamed from: a  reason: collision with root package name */
        private final T f20161a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f20162b;

        b(T t10) {
            this.f20161a = t10;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f20162b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f20162b) {
                this.f20162b = true;
                return this.f20161a;
            }
            throw new NoSuchElementException();
        }
    }

    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it) {
        h7.k.j(collection);
        h7.k.j(it);
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= collection.add(it.next());
        }
        return z10;
    }

    public static <T> boolean b(Iterator<T> it, h7.l<? super T> lVar) {
        if (m(it, lVar) != -1) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Iterator<?> it) {
        h7.k.j(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static boolean d(Iterator<?> it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0006  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean e(java.util.Iterator<?> r3, java.util.Iterator<?> r4) {
        /*
        L0:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L1d
            boolean r0 = r4.hasNext()
            r1 = 0
            if (r0 != 0) goto Le
            return r1
        Le:
            java.lang.Object r0 = r3.next()
            java.lang.Object r2 = r4.next()
            boolean r0 = h7.h.a(r0, r2)
            if (r0 != 0) goto L0
            return r1
        L1d:
            boolean r3 = r4.hasNext()
            r3 = r3 ^ 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Iterators.e(java.util.Iterator, java.util.Iterator):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Iterator<T> f() {
        return EmptyModifiableIterator.INSTANCE;
    }

    public static <T> y<T> g(Iterator<T> it, h7.l<? super T> lVar) {
        h7.k.j(it);
        h7.k.j(lVar);
        return new a(it, lVar);
    }

    public static <T> T h(Iterator<T> it, h7.l<? super T> lVar) {
        h7.k.j(it);
        h7.k.j(lVar);
        while (it.hasNext()) {
            T next = it.next();
            if (lVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    public static <T> T i(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static <T> T j(Iterator<? extends T> it, T t10) {
        if (it.hasNext()) {
            return (T) i(it);
        }
        return t10;
    }

    public static <T> T k(Iterator<? extends T> it, T t10) {
        if (it.hasNext()) {
            return it.next();
        }
        return t10;
    }

    public static <T> T l(Iterator<T> it) {
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("expected one element but was: <");
        sb2.append(next);
        for (int i10 = 0; i10 < 4 && it.hasNext(); i10++) {
            sb2.append(", ");
            sb2.append(it.next());
        }
        if (it.hasNext()) {
            sb2.append(", ...");
        }
        sb2.append('>');
        throw new IllegalArgumentException(sb2.toString());
    }

    public static <T> int m(Iterator<T> it, h7.l<? super T> lVar) {
        h7.k.k(lVar, "predicate");
        int i10 = 0;
        while (it.hasNext()) {
            if (lVar.apply(it.next())) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T n(Iterator<T> it) {
        if (it.hasNext()) {
            T next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    public static boolean o(Iterator<?> it, Collection<?> collection) {
        h7.k.j(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static <T> boolean p(Iterator<T> it, h7.l<? super T> lVar) {
        h7.k.j(lVar);
        boolean z10 = false;
        while (it.hasNext()) {
            if (lVar.apply(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static <T> y<T> q(T t10) {
        return new b(t10);
    }
}
