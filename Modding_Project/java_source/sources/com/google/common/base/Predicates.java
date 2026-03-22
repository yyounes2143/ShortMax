package com.google.common.base;

import h7.k;
import h7.l;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes5.dex */
public final class Predicates {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class AndPredicate<T> implements l<T>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final List<? extends l<? super T>> f20043a;

        @Override // h7.l
        public boolean apply(T t10) {
            for (int i10 = 0; i10 < this.f20043a.size(); i10++) {
                if (!this.f20043a.get(i10).apply(t10)) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            if (obj instanceof AndPredicate) {
                return this.f20043a.equals(((AndPredicate) obj).f20043a);
            }
            return false;
        }

        public int hashCode() {
            return this.f20043a.hashCode() + 306654252;
        }

        public String toString() {
            return Predicates.d("and", this.f20043a);
        }

        private AndPredicate(List<? extends l<? super T>> list) {
            this.f20043a = list;
        }
    }

    public static <T> l<T> b(l<? super T> lVar, l<? super T> lVar2) {
        return new AndPredicate(c((l) k.j(lVar), (l) k.j(lVar2)));
    }

    private static <T> List<l<? super T>> c(l<? super T> lVar, l<? super T> lVar2) {
        return Arrays.asList(lVar, lVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, Iterable<?> iterable) {
        StringBuilder sb2 = new StringBuilder("Predicates.");
        sb2.append(str);
        sb2.append('(');
        boolean z10 = true;
        for (Object obj : iterable) {
            if (!z10) {
                sb2.append(',');
            }
            sb2.append(obj);
            z10 = false;
        }
        sb2.append(')');
        return sb2.toString();
    }
}
