package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes5.dex */
public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    private static final z<Object> f20135b = new b(RegularImmutableList.f20239e, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class SerializedForm implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Object[] f20136a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SerializedForm(Object[] objArr) {
            this.f20136a = objArr;
        }

        Object readResolve() {
            return ImmutableList.v(this.f20136a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class SubList extends ImmutableList<E> {

        /* renamed from: c  reason: collision with root package name */
        final transient int f20137c;

        /* renamed from: d  reason: collision with root package name */
        final transient int f20138d;

        SubList(int i10, int i11) {
            this.f20137c = i10;
            this.f20138d = i11;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* renamed from: I */
        public ImmutableList<E> subList(int i10, int i11) {
            h7.k.n(i10, i11, this.f20138d);
            ImmutableList immutableList = ImmutableList.this;
            int i12 = this.f20137c;
            return immutableList.subList(i10 + i12, i11 + i12);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public Object[] f() {
            return ImmutableList.this.f();
        }

        @Override // com.google.common.collect.ImmutableCollection
        int g() {
            return ImmutableList.this.h() + this.f20137c + this.f20138d;
        }

        @Override // java.util.List
        public E get(int i10) {
            h7.k.h(i10, this.f20138d);
            return ImmutableList.this.get(i10 + this.f20137c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public int h() {
            return ImmutableList.this.h() + this.f20137c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean i() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f20138d;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i10) {
            return super.listIterator(i10);
        }
    }

    /* loaded from: classes5.dex */
    public static final class a<E> extends ImmutableCollection.a<E> {
        public a() {
            this(4);
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        /* renamed from: h */
        public a<E> a(E e10) {
            super.d(e10);
            return this;
        }

        public a<E> i(E... eArr) {
            super.e(eArr);
            return this;
        }

        public a<E> j(Iterable<? extends E> iterable) {
            super.b(iterable);
            return this;
        }

        public ImmutableList<E> k() {
            this.f20132c = true;
            return ImmutableList.q(this.f20130a, this.f20131b);
        }

        a(int i10) {
            super(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b<E> extends com.google.common.collect.a<E> {

        /* renamed from: c  reason: collision with root package name */
        private final ImmutableList<E> f20140c;

        b(ImmutableList<E> immutableList, int i10) {
            super(immutableList.size(), i10);
            this.f20140c = immutableList;
        }

        @Override // com.google.common.collect.a
        protected E a(int i10) {
            return this.f20140c.get(i10);
        }
    }

    public static <E> ImmutableList<E> A() {
        return (ImmutableList<E>) RegularImmutableList.f20239e;
    }

    public static <E> ImmutableList<E> B(E e10) {
        return t(e10);
    }

    public static <E> ImmutableList<E> C(E e10, E e11) {
        return t(e10, e11);
    }

    public static <E> ImmutableList<E> D(E e10, E e11, E e12) {
        return t(e10, e11, e12);
    }

    public static <E> ImmutableList<E> E(E e10, E e11, E e12, E e13, E e14) {
        return t(e10, e11, e12, e13, e14);
    }

    public static <E> ImmutableList<E> F(E e10, E e11, E e12, E e13, E e14, E e15, E e16) {
        return t(e10, e11, e12, e13, e14, e15, e16);
    }

    @SafeVarargs
    public static <E> ImmutableList<E> G(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20, E e21, E... eArr) {
        boolean z10;
        if (eArr.length <= 2147483635) {
            z10 = true;
        } else {
            z10 = false;
        }
        h7.k.e(z10, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e10;
        objArr[1] = e11;
        objArr[2] = e12;
        objArr[3] = e13;
        objArr[4] = e14;
        objArr[5] = e15;
        objArr[6] = e16;
        objArr[7] = e17;
        objArr[8] = e18;
        objArr[9] = e19;
        objArr[10] = e20;
        objArr[11] = e21;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return t(objArr);
    }

    public static <E> ImmutableList<E> H(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        h7.k.j(comparator);
        Object[] k10 = l.k(iterable);
        s.b(k10);
        Arrays.sort(k10, comparator);
        return n(k10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableList<E> n(Object[] objArr) {
        return q(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableList<E> q(Object[] objArr, int i10) {
        if (i10 == 0) {
            return A();
        }
        return new RegularImmutableList(objArr, i10);
    }

    public static <E> a<E> r() {
        return new a<>();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E> a<E> s(int i10) {
        d.b(i10, "expectedSize");
        return new a<>(i10);
    }

    private static <E> ImmutableList<E> t(Object... objArr) {
        return n(s.b(objArr));
    }

    public static <E> ImmutableList<E> u(Collection<? extends E> collection) {
        if (collection instanceof ImmutableCollection) {
            ImmutableList<E> d10 = ((ImmutableCollection) collection).d();
            if (d10.i()) {
                return n(d10.toArray());
            }
            return d10;
        }
        return t(collection.toArray());
    }

    public static <E> ImmutableList<E> v(E[] eArr) {
        if (eArr.length == 0) {
            return A();
        }
        return t((Object[]) eArr.clone());
    }

    @Override // java.util.List
    /* renamed from: I */
    public ImmutableList<E> subList(int i10, int i11) {
        h7.k.n(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == size()) {
            return this;
        }
        if (i12 == 0) {
            return A();
        }
        return J(i10, i11);
    }

    ImmutableList<E> J(int i10, int i11) {
        return new SubList(i10, i11 - i10);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int e(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return Lists.c(this, obj);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = ~(~((i10 * 31) + get(i11).hashCode()));
        }
        return i10;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return Lists.d(this, obj);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: j */
    public y<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return Lists.f(this, obj);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(toArray());
    }

    @Override // java.util.List
    /* renamed from: y */
    public z<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: z */
    public z<E> listIterator(int i10) {
        h7.k.l(i10, size());
        if (isEmpty()) {
            return (z<E>) f20135b;
        }
        return new b(this, i10);
    }

    @Override // com.google.common.collect.ImmutableCollection
    @Deprecated
    public final ImmutableList<E> d() {
        return this;
    }
}
