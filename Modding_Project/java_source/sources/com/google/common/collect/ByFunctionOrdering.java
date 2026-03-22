package com.google.common.collect;

import java.io.Serializable;
/* loaded from: classes5.dex */
final class ByFunctionOrdering<F, T> extends t<F> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final h7.e<F, ? extends T> f20102a;

    /* renamed from: b  reason: collision with root package name */
    final t<T> f20103b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByFunctionOrdering(h7.e<F, ? extends T> eVar, t<T> tVar) {
        this.f20102a = (h7.e) h7.k.j(eVar);
        this.f20103b = (t) h7.k.j(tVar);
    }

    @Override // com.google.common.collect.t, java.util.Comparator
    public int compare(F f10, F f11) {
        return this.f20103b.compare(this.f20102a.apply(f10), this.f20102a.apply(f11));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByFunctionOrdering)) {
            return false;
        }
        ByFunctionOrdering byFunctionOrdering = (ByFunctionOrdering) obj;
        if (this.f20102a.equals(byFunctionOrdering.f20102a) && this.f20103b.equals(byFunctionOrdering.f20103b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return h7.h.b(this.f20102a, this.f20103b);
    }

    public String toString() {
        return this.f20103b + ".onResultOf(" + this.f20102a + ")";
    }
}
