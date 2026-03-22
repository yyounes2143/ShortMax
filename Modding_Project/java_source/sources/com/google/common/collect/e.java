package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
/* compiled from: Collections2.java */
/* loaded from: classes5.dex */
public final class e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Collections2.java */
    /* loaded from: classes5.dex */
    public static class a<E> extends AbstractCollection<E> {

        /* renamed from: a  reason: collision with root package name */
        final Collection<E> f20274a;

        /* renamed from: b  reason: collision with root package name */
        final h7.l<? super E> f20275b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Collection<E> collection, h7.l<? super E> lVar) {
            this.f20274a = collection;
            this.f20275b = lVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(E e10) {
            h7.k.d(this.f20275b.apply(e10));
            return this.f20274a.add(e10);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            for (E e10 : collection) {
                h7.k.d(this.f20275b.apply(e10));
            }
            return this.f20274a.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            l.h(this.f20274a, this.f20275b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (e.c(this.f20274a, obj)) {
                return this.f20275b.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return e.a(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !l.a(this.f20274a, this.f20275b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Iterators.g(this.f20274a.iterator(), this.f20275b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (contains(obj) && this.f20274a.remove(obj)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<E> it = this.f20274a.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f20275b.apply(next) && collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = this.f20274a.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f20275b.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i10 = 0;
            for (E e10 : this.f20274a) {
                if (this.f20275b.apply(e10)) {
                    i10++;
                }
            }
            return i10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.i(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Lists.i(iterator()).toArray(tArr);
        }
    }

    static boolean a(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder b(int i10) {
        d.b(i10, "size");
        return new StringBuilder((int) Math.min(i10 * 8, 1073741824L));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Collection<?> collection, Object obj) {
        h7.k.j(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }
}
