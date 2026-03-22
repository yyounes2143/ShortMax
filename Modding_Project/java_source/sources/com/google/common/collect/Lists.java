package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes5.dex */
public final class Lists {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class TransformingRandomAccessList<F, T> extends AbstractList<T> implements RandomAccess, Serializable {

        /* renamed from: a  reason: collision with root package name */
        final List<F> f20163a;

        /* renamed from: b  reason: collision with root package name */
        final h7.e<? super F, ? extends T> f20164b;

        /* loaded from: classes5.dex */
        class a extends x<F, T> {
            a(ListIterator listIterator) {
                super(listIterator);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.w
            public T a(F f10) {
                return TransformingRandomAccessList.this.f20164b.apply(f10);
            }
        }

        TransformingRandomAccessList(List<F> list, h7.e<? super F, ? extends T> eVar) {
            this.f20163a = (List) h7.k.j(list);
            this.f20164b = (h7.e) h7.k.j(eVar);
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i10) {
            return this.f20164b.apply((F) this.f20163a.get(i10));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f20163a.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i10) {
            return new a(this.f20163a.listIterator(i10));
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i10) {
            return this.f20164b.apply((F) this.f20163a.remove(i10));
        }

        @Override // java.util.AbstractList
        protected void removeRange(int i10, int i11) {
            this.f20163a.subList(i10, i11).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f20163a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class TransformingSequentialList<F, T> extends AbstractSequentialList<T> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final List<F> f20166a;

        /* renamed from: b  reason: collision with root package name */
        final h7.e<? super F, ? extends T> f20167b;

        /* loaded from: classes5.dex */
        class a extends x<F, T> {
            a(ListIterator listIterator) {
                super(listIterator);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.w
            public T a(F f10) {
                return TransformingSequentialList.this.f20167b.apply(f10);
            }
        }

        TransformingSequentialList(List<F> list, h7.e<? super F, ? extends T> eVar) {
            this.f20166a = (List) h7.k.j(list);
            this.f20167b = (h7.e) h7.k.j(eVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f20166a.isEmpty();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i10) {
            return new a(this.f20166a.listIterator(i10));
        }

        @Override // java.util.AbstractList
        protected void removeRange(int i10, int i11) {
            this.f20166a.subList(i10, i11).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f20166a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<T> a(Iterable<T> iterable) {
        return (List) iterable;
    }

    static int b(int i10) {
        d.b(i10, "arraySize");
        return Ints.l(i10 + 5 + (i10 / 10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(List<?> list, Object obj) {
        if (obj == h7.k.j(list)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if ((list instanceof RandomAccess) && (list2 instanceof RandomAccess)) {
            for (int i10 = 0; i10 < size; i10++) {
                if (!h7.h.a(list.get(i10), list2.get(i10))) {
                    return false;
                }
            }
            return true;
        }
        return Iterators.e(list.iterator(), list2.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return e(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (h7.h.a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    private static int e(List<?> list, Object obj) {
        int size = list.size();
        int i10 = 0;
        if (obj == null) {
            while (i10 < size) {
                if (list.get(i10) == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        while (i10 < size) {
            if (obj.equals(list.get(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return g(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (h7.h.a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    private static int g(List<?> list, Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    public static <E> ArrayList<E> h() {
        return new ArrayList<>();
    }

    public static <E> ArrayList<E> i(Iterator<? extends E> it) {
        ArrayList<E> h10 = h();
        Iterators.a(h10, it);
        return h10;
    }

    @SafeVarargs
    public static <E> ArrayList<E> j(E... eArr) {
        h7.k.j(eArr);
        ArrayList<E> arrayList = new ArrayList<>(b(eArr.length));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    public static <E> ArrayList<E> k(int i10) {
        d.b(i10, "initialArraySize");
        return new ArrayList<>(i10);
    }

    public static <F, T> List<T> l(List<F> list, h7.e<? super F, ? extends T> eVar) {
        if (list instanceof RandomAccess) {
            return new TransformingRandomAccessList(list, eVar);
        }
        return new TransformingSequentialList(list, eVar);
    }
}
