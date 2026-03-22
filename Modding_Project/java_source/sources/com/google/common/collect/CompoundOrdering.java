package com.google.common.collect;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes5.dex */
final class CompoundOrdering<T> extends t<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final Comparator<? super T>[] f20128a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompoundOrdering(Comparator<? super T> comparator, Comparator<? super T> comparator2) {
        this.f20128a = new Comparator[]{comparator, comparator2};
    }

    @Override // com.google.common.collect.t, java.util.Comparator
    public int compare(T t10, T t11) {
        int i10 = 0;
        while (true) {
            Comparator<? super T>[] comparatorArr = this.f20128a;
            if (i10 >= comparatorArr.length) {
                return 0;
            }
            int compare = comparatorArr[i10].compare(t10, t11);
            if (compare != 0) {
                return compare;
            }
            i10++;
        }
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CompoundOrdering) {
            return Arrays.equals(this.f20128a, ((CompoundOrdering) obj).f20128a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f20128a);
    }

    public String toString() {
        return "Ordering.compound(" + Arrays.toString(this.f20128a) + ")";
    }
}
