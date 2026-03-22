package com.google.common.collect;

import java.util.Comparator;
/* compiled from: Ordering.java */
/* loaded from: classes5.dex */
public abstract class t<T> implements Comparator<T> {
    public static <T> t<T> d(Comparator<T> comparator) {
        if (comparator instanceof t) {
            return (t) comparator;
        }
        return new ComparatorOrdering(comparator);
    }

    public static <C extends Comparable> t<C> e() {
        return NaturalOrdering.f20238a;
    }

    public <U extends T> t<U> b(Comparator<? super U> comparator) {
        return new CompoundOrdering(this, (Comparator) h7.k.j(comparator));
    }

    @Override // java.util.Comparator
    public abstract int compare(T t10, T t11);

    public <F> t<F> f(h7.e<F, ? extends T> eVar) {
        return new ByFunctionOrdering(eVar, this);
    }

    public <S extends T> t<S> g() {
        return new ReverseOrdering(this);
    }
}
