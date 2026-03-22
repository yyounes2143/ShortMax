package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Spliterator;
import java.util.Spliterators;
/* loaded from: classes5.dex */
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object[] f20129a = new Object[0];

    /* loaded from: classes5.dex */
    static abstract class a<E> extends b<E> {

        /* renamed from: a  reason: collision with root package name */
        Object[] f20130a;

        /* renamed from: b  reason: collision with root package name */
        int f20131b;

        /* renamed from: c  reason: collision with root package name */
        boolean f20132c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i10) {
            d.b(i10, "initialCapacity");
            this.f20130a = new Object[i10];
            this.f20131b = 0;
        }

        private void g(int i10) {
            Object[] objArr = this.f20130a;
            int c10 = b.c(objArr.length, this.f20131b + i10);
            if (c10 > objArr.length || this.f20132c) {
                this.f20130a = Arrays.copyOf(this.f20130a, c10);
                this.f20132c = false;
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        public b<E> b(Iterable<? extends E> iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                g(collection.size());
                if (collection instanceof ImmutableCollection) {
                    this.f20131b = ((ImmutableCollection) collection).e(this.f20130a, this.f20131b);
                    return this;
                }
            }
            super.b(iterable);
            return this;
        }

        public a<E> d(E e10) {
            h7.k.j(e10);
            g(1);
            Object[] objArr = this.f20130a;
            int i10 = this.f20131b;
            this.f20131b = i10 + 1;
            objArr[i10] = e10;
            return this;
        }

        public b<E> e(E... eArr) {
            f(eArr, eArr.length);
            return this;
        }

        final void f(Object[] objArr, int i10) {
            s.c(objArr, i10);
            g(i10);
            System.arraycopy(objArr, 0, this.f20130a, this.f20131b, i10);
            this.f20131b += i10;
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class b<E> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int c(int i10, int i11) {
            if (i11 >= 0) {
                if (i11 <= i10) {
                    return i10;
                }
                int i12 = i10 + (i10 >> 1) + 1;
                if (i12 < i11) {
                    i12 = Integer.highestOneBit(i11 - 1) << 1;
                }
                if (i12 < 0) {
                    return Integer.MAX_VALUE;
                }
                return i12;
            }
            throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
        }

        public abstract b<E> a(E e10);

        public b<E> b(Iterable<? extends E> iterable) {
            for (E e10 : iterable) {
                a(e10);
            }
            return this;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(Object obj);

    public ImmutableList<E> d() {
        if (isEmpty()) {
            return ImmutableList.A();
        }
        return ImmutableList.n(toArray());
    }

    int e(Object[] objArr, int i10) {
        y<E> it = iterator();
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] f() {
        return null;
    }

    int g() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean i();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: j */
    public abstract y<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return Spliterators.spliterator(this, 1296);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f20129a);
    }

    Object writeReplace() {
        return new ImmutableList.SerializedForm(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        h7.k.j(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] f10 = f();
            if (f10 != null) {
                return (T[]) u.a(f10, h(), g(), tArr);
            }
            tArr = (T[]) s.d(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        e(tArr, 0);
        return tArr;
    }
}
