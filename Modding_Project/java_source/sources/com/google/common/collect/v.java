package com.google.common.collect;

import com.google.common.base.Predicates;
import com.google.common.collect.e;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
/* compiled from: Sets.java */
/* loaded from: classes5.dex */
public final class v {

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* compiled from: Sets.java */
    /* loaded from: classes5.dex */
    class a<E> extends f<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f20286a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f20287b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Sets.java */
        /* renamed from: com.google.common.collect.v$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0303a extends AbstractIterator<E> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<? extends E> f20288c;

            /* renamed from: d  reason: collision with root package name */
            final Iterator<? extends E> f20289d;

            C0303a() {
                this.f20288c = a.this.f20286a.iterator();
                this.f20289d = a.this.f20287b.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            protected E a() {
                if (this.f20288c.hasNext()) {
                    return this.f20288c.next();
                }
                while (this.f20289d.hasNext()) {
                    E next = this.f20289d.next();
                    if (!a.this.f20286a.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Set set, Set set2) {
            super(null);
            this.f20286a = set;
            this.f20287b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public y<E> iterator() {
            return new C0303a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!this.f20286a.contains(obj) && !this.f20287b.contains(obj)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            if (this.f20286a.isEmpty() && this.f20287b.isEmpty()) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int size = this.f20286a.size();
            for (E e10 : this.f20287b) {
                if (!this.f20286a.contains(e10)) {
                    size++;
                }
            }
            return size;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* compiled from: Sets.java */
    /* loaded from: classes5.dex */
    class b<E> extends f<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f20291a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f20292b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Sets.java */
        /* loaded from: classes5.dex */
        public class a extends AbstractIterator<E> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<E> f20293c;

            a() {
                this.f20293c = b.this.f20291a.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            protected E a() {
                while (this.f20293c.hasNext()) {
                    E next = this.f20293c.next();
                    if (b.this.f20292b.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Set set, Set set2) {
            super(null);
            this.f20291a = set;
            this.f20292b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public y<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (this.f20291a.contains(obj) && this.f20292b.contains(obj)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            if (this.f20291a.containsAll(collection) && this.f20292b.containsAll(collection)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.f20292b, this.f20291a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i10 = 0;
            for (E e10 : this.f20291a) {
                if (this.f20292b.contains(e10)) {
                    i10++;
                }
            }
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Sets.java */
    /* loaded from: classes5.dex */
    public static class c<E> extends e.a<E> implements Set<E> {
        c(Set<E> set, h7.l<? super E> lVar) {
            super(set, lVar);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return v.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return v.d(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Sets.java */
    /* loaded from: classes5.dex */
    public static class d<E> extends c<E> implements SortedSet<E> {
        d(SortedSet<E> sortedSet, h7.l<? super E> lVar) {
            super(sortedSet, lVar);
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.f20274a).comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) Iterators.h(this.f20274a.iterator(), this.f20275b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e10) {
            return new d(((SortedSet) this.f20274a).headSet(e10), this.f20275b);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [E, java.lang.Object] */
        @Override // java.util.SortedSet
        public E last() {
            SortedSet sortedSet = (SortedSet) this.f20274a;
            while (true) {
                ?? r12 = (Object) sortedSet.last();
                if (this.f20275b.apply(r12)) {
                    return r12;
                }
                sortedSet = sortedSet.headSet(r12);
            }
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e10, E e11) {
            return new d(((SortedSet) this.f20274a).subSet(e10, e11), this.f20275b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e10) {
            return new d(((SortedSet) this.f20274a).tailSet(e10), this.f20275b);
        }
    }

    /* compiled from: Sets.java */
    /* loaded from: classes5.dex */
    static abstract class e<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return v.i(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) h7.k.j(collection));
        }
    }

    /* compiled from: Sets.java */
    /* loaded from: classes5.dex */
    public static abstract class f<E> extends AbstractSet<E> {
        /* synthetic */ f(a aVar) {
            this();
        }

        public abstract y<E> a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean add(E e10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        private f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <E> Set<E> b(Set<E> set, h7.l<? super E> lVar) {
        if (set instanceof SortedSet) {
            return c((SortedSet) set, lVar);
        }
        if (set instanceof c) {
            c cVar = (c) set;
            return new c((Set) cVar.f20274a, Predicates.b(cVar.f20275b, lVar));
        }
        return new c((Set) h7.k.j(set), (h7.l) h7.k.j(lVar));
    }

    public static <E> SortedSet<E> c(SortedSet<E> sortedSet, h7.l<? super E> lVar) {
        if (sortedSet instanceof c) {
            c cVar = (c) sortedSet;
            return new d((SortedSet) cVar.f20274a, Predicates.b(cVar.f20275b, lVar));
        }
        return new d((SortedSet) h7.k.j(sortedSet), (h7.l) h7.k.j(lVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(Set<?> set) {
        int i10;
        int i11 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i11 = ~(~(i11 + i10));
        }
        return i11;
    }

    public static <E> f<E> e(Set<E> set, Set<?> set2) {
        h7.k.k(set, "set1");
        h7.k.k(set2, "set2");
        return new b(set, set2);
    }

    public static <E> HashSet<E> f() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> g(int i10) {
        return new HashSet<>(Maps.a(i10));
    }

    public static <E> Set<E> h() {
        return Collections.newSetFromMap(Maps.f());
    }

    static boolean i(Set<?> set, Collection<?> collection) {
        h7.k.j(collection);
        if (collection instanceof q) {
            collection = ((q) collection).k();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return Iterators.o(set.iterator(), collection);
        }
        return j(set, collection.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean j(Set<?> set, Iterator<?> it) {
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= set.remove(it.next());
        }
        return z10;
    }

    public static <E> f<E> k(Set<? extends E> set, Set<? extends E> set2) {
        h7.k.k(set, "set1");
        h7.k.k(set2, "set2");
        return new a(set, set2);
    }
}
