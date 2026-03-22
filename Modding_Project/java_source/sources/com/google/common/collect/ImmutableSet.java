package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
/* loaded from: classes5.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {

    /* renamed from: b  reason: collision with root package name */
    private transient ImmutableList<E> f20155b;

    /* loaded from: classes5.dex */
    private static class SerializedForm implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Object[] f20156a;

        SerializedForm(Object[] objArr) {
            this.f20156a = objArr;
        }

        Object readResolve() {
            return ImmutableSet.u(this.f20156a);
        }
    }

    /* loaded from: classes5.dex */
    public static class a<E> extends ImmutableCollection.a<E> {

        /* renamed from: d  reason: collision with root package name */
        Object[] f20157d;

        /* renamed from: e  reason: collision with root package name */
        private int f20158e;

        public a() {
            super(4);
        }

        private void k(E e10) {
            Objects.requireNonNull(this.f20157d);
            int length = this.f20157d.length - 1;
            int hashCode = e10.hashCode();
            int b10 = k.b(hashCode);
            while (true) {
                int i10 = b10 & length;
                Object[] objArr = this.f20157d;
                Object obj = objArr[i10];
                if (obj == null) {
                    objArr[i10] = e10;
                    this.f20158e += hashCode;
                    super.d(e10);
                    return;
                } else if (obj.equals(e10)) {
                    return;
                } else {
                    b10 = i10 + 1;
                }
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        /* renamed from: h */
        public a<E> a(E e10) {
            h7.k.j(e10);
            if (this.f20157d != null && ImmutableSet.r(this.f20131b) <= this.f20157d.length) {
                k(e10);
                return this;
            }
            this.f20157d = null;
            super.d(e10);
            return this;
        }

        public a<E> i(E... eArr) {
            if (this.f20157d != null) {
                for (E e10 : eArr) {
                    a(e10);
                }
            } else {
                super.e(eArr);
            }
            return this;
        }

        public a<E> j(Iterable<? extends E> iterable) {
            h7.k.j(iterable);
            if (this.f20157d != null) {
                for (E e10 : iterable) {
                    a(e10);
                }
            } else {
                super.b(iterable);
            }
            return this;
        }

        public ImmutableSet<E> l() {
            ImmutableSet<E> s10;
            Object[] objArr;
            int i10 = this.f20131b;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (this.f20157d == null || ImmutableSet.r(i10) != this.f20157d.length) {
                        s10 = ImmutableSet.s(this.f20131b, this.f20130a);
                        this.f20131b = s10.size();
                    } else {
                        if (ImmutableSet.F(this.f20131b, this.f20130a.length)) {
                            objArr = Arrays.copyOf(this.f20130a, this.f20131b);
                        } else {
                            objArr = this.f20130a;
                        }
                        Object[] objArr2 = objArr;
                        int i11 = this.f20158e;
                        Object[] objArr3 = this.f20157d;
                        s10 = new RegularImmutableSet<>(objArr2, i11, objArr3, objArr3.length - 1, this.f20131b);
                    }
                    this.f20132c = true;
                    this.f20157d = null;
                    return s10;
                }
                Object obj = this.f20130a[0];
                Objects.requireNonNull(obj);
                return ImmutableSet.A(obj);
            }
            return ImmutableSet.z();
        }
    }

    public static <E> ImmutableSet<E> A(E e10) {
        return new SingletonImmutableSet(e10);
    }

    public static <E> ImmutableSet<E> B(E e10, E e11) {
        return s(2, e10, e11);
    }

    public static <E> ImmutableSet<E> C(E e10, E e11, E e12) {
        return s(3, e10, e11, e12);
    }

    public static <E> ImmutableSet<E> D(E e10, E e11, E e12, E e13, E e14) {
        return s(5, e10, e11, e12, e13, e14);
    }

    @SafeVarargs
    public static <E> ImmutableSet<E> E(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        boolean z10;
        if (eArr.length <= 2147483641) {
            z10 = true;
        } else {
            z10 = false;
        }
        h7.k.e(z10, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e10;
        objArr[1] = e11;
        objArr[2] = e12;
        objArr[3] = e13;
        objArr[4] = e14;
        objArr[5] = e15;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return s(length, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean F(int i10, int i11) {
        if (i10 < (i11 >> 1) + (i11 >> 2)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(int i10) {
        int max = Math.max(i10, 2);
        boolean z10 = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (highestOneBit * 0.7d < max) {
                highestOneBit <<= 1;
            }
            return highestOneBit;
        }
        if (max >= 1073741824) {
            z10 = false;
        }
        h7.k.e(z10, "collection too large");
        return 1073741824;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ImmutableSet<E> s(int i10, Object... objArr) {
        if (i10 != 0) {
            if (i10 != 1) {
                int r10 = r(i10);
                Object[] objArr2 = new Object[r10];
                int i11 = r10 - 1;
                int i12 = 0;
                int i13 = 0;
                for (int i14 = 0; i14 < i10; i14++) {
                    Object a10 = s.a(objArr[i14], i14);
                    int hashCode = a10.hashCode();
                    int b10 = k.b(hashCode);
                    while (true) {
                        int i15 = b10 & i11;
                        Object obj = objArr2[i15];
                        if (obj == null) {
                            objArr[i13] = a10;
                            objArr2[i15] = a10;
                            i12 += hashCode;
                            i13++;
                            break;
                        } else if (obj.equals(a10)) {
                            break;
                        } else {
                            b10++;
                        }
                    }
                }
                Arrays.fill(objArr, i13, i10, (Object) null);
                if (i13 == 1) {
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    return new SingletonImmutableSet(obj2);
                } else if (r(i13) < r10 / 2) {
                    return s(i13, objArr);
                } else {
                    if (F(i13, objArr.length)) {
                        objArr = Arrays.copyOf(objArr, i13);
                    }
                    return new RegularImmutableSet(objArr, i12, objArr2, i11, i13);
                }
            }
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            return A(obj3);
        }
        return z();
    }

    public static <E> ImmutableSet<E> t(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.i()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return s(array.length, array);
    }

    public static <E> ImmutableSet<E> u(E[] eArr) {
        int length = eArr.length;
        if (length != 0) {
            if (length != 1) {
                return s(eArr.length, (Object[]) eArr.clone());
            }
            return A(eArr[0]);
        }
        return z();
    }

    public static <E> ImmutableSet<E> z() {
        return RegularImmutableSet.f20257i;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> d() {
        ImmutableList<E> immutableList = this.f20155b;
        if (immutableList == null) {
            ImmutableList<E> v10 = v();
            this.f20155b = v10;
            return v10;
        }
        return immutableList;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && y() && ((ImmutableSet) obj).y() && hashCode() != obj.hashCode()) {
            return false;
        }
        return v.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return v.d(this);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: j */
    public abstract y<E> iterator();

    ImmutableList<E> v() {
        return ImmutableList.n(toArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(toArray());
    }

    boolean y() {
        return false;
    }
}
