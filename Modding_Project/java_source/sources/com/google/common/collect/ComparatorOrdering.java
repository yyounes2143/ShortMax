package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
/* loaded from: classes5.dex */
final class ComparatorOrdering<T> extends t<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final Comparator<T> f20127a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComparatorOrdering(Comparator<T> comparator) {
        this.f20127a = (Comparator) h7.k.j(comparator);
    }

    @Override // com.google.common.collect.t, java.util.Comparator
    public int compare(T t10, T t11) {
        return this.f20127a.compare(t10, t11);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ComparatorOrdering) {
            return this.f20127a.equals(((ComparatorOrdering) obj).f20127a);
        }
        return false;
    }

    public int hashCode() {
        return this.f20127a.hashCode();
    }

    public String toString() {
        return this.f20127a.toString();
    }
}
