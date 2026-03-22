package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
/* compiled from: Iterables.java */
/* loaded from: classes5.dex */
public final class l {
    public static <T> boolean a(Iterable<T> iterable, h7.l<? super T> lVar) {
        return Iterators.b(iterable.iterator(), lVar);
    }

    private static <E> Collection<E> b(Iterable<E> iterable) {
        if (iterable instanceof Collection) {
            return (Collection) iterable;
        }
        return Lists.i(iterable.iterator());
    }

    public static <T> T c(Iterable<? extends T> iterable, T t10) {
        return (T) Iterators.k(iterable.iterator(), t10);
    }

    public static <T> T d(Iterable<T> iterable) {
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (!list.isEmpty()) {
                return (T) f(list);
            }
            throw new NoSuchElementException();
        }
        return (T) Iterators.i(iterable.iterator());
    }

    public static <T> T e(Iterable<? extends T> iterable, T t10) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return t10;
            }
            if (iterable instanceof List) {
                return (T) f(Lists.a(iterable));
            }
        }
        return (T) Iterators.j(iterable.iterator(), t10);
    }

    private static <T> T f(List<T> list) {
        return list.get(list.size() - 1);
    }

    public static <T> T g(Iterable<T> iterable) {
        return (T) Iterators.l(iterable.iterator());
    }

    public static <T> boolean h(Iterable<T> iterable, h7.l<? super T> lVar) {
        if ((iterable instanceof RandomAccess) && (iterable instanceof List)) {
            return i((List) iterable, (h7.l) h7.k.j(lVar));
        }
        return Iterators.p(iterable.iterator(), lVar);
    }

    private static <T> boolean i(List<T> list, h7.l<? super T> lVar) {
        int i10 = 0;
        int i11 = 0;
        while (i10 < list.size()) {
            T t10 = list.get(i10);
            if (!lVar.apply(t10)) {
                if (i10 > i11) {
                    try {
                        list.set(i11, t10);
                    } catch (IllegalArgumentException unused) {
                        j(list, lVar, i11, i10);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        j(list, lVar, i11, i10);
                        return true;
                    }
                }
                i11++;
            }
            i10++;
        }
        list.subList(i11, list.size()).clear();
        if (i10 == i11) {
            return false;
        }
        return true;
    }

    private static <T> void j(List<T> list, h7.l<? super T> lVar, int i10, int i11) {
        for (int size = list.size() - 1; size > i11; size--) {
            if (lVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            list.remove(i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] k(Iterable<?> iterable) {
        return b(iterable).toArray();
    }
}
