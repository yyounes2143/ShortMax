package com.google.common.collect;

import java.io.Serializable;
/* loaded from: classes5.dex */
final class NaturalOrdering extends t<Comparable<?>> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final NaturalOrdering f20238a = new NaturalOrdering();

    private NaturalOrdering() {
    }

    private Object readResolve() {
        return f20238a;
    }

    @Override // com.google.common.collect.t
    public <S extends Comparable<?>> t<S> g() {
        return ReverseNaturalOrdering.f20263a;
    }

    @Override // com.google.common.collect.t, java.util.Comparator
    /* renamed from: h */
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        h7.k.j(comparable);
        h7.k.j(comparable2);
        return comparable.compareTo(comparable2);
    }

    public String toString() {
        return "Ordering.natural()";
    }
}
