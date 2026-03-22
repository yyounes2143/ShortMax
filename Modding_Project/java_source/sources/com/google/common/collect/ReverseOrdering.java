package com.google.common.collect;

import java.io.Serializable;
/* loaded from: classes5.dex */
final class ReverseOrdering<T> extends t<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final t<? super T> f20264a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReverseOrdering(t<? super T> tVar) {
        this.f20264a = (t) h7.k.j(tVar);
    }

    @Override // com.google.common.collect.t, java.util.Comparator
    public int compare(T t10, T t11) {
        return this.f20264a.compare(t11, t10);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReverseOrdering) {
            return this.f20264a.equals(((ReverseOrdering) obj).f20264a);
        }
        return false;
    }

    @Override // com.google.common.collect.t
    public <S extends T> t<S> g() {
        return (t<? super T>) this.f20264a;
    }

    public int hashCode() {
        return -this.f20264a.hashCode();
    }

    public String toString() {
        return this.f20264a + ".reverse()";
    }
}
