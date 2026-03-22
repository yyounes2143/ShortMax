package com.google.common.collect;

import java.io.Serializable;
/* loaded from: classes5.dex */
final class ReverseNaturalOrdering extends t<Comparable<?>> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final ReverseNaturalOrdering f20263a = new ReverseNaturalOrdering();

    private ReverseNaturalOrdering() {
    }

    private Object readResolve() {
        return f20263a;
    }

    @Override // com.google.common.collect.t
    public <S extends Comparable<?>> t<S> g() {
        return t.e();
    }

    @Override // com.google.common.collect.t, java.util.Comparator
    /* renamed from: h */
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        h7.k.j(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }
}
