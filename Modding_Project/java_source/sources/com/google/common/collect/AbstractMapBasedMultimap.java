package com.google.common.collect;

import com.google.common.collect.Maps;
import com.google.common.collect.c;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractMapBasedMultimap<K, V> extends com.google.common.collect.c<K, V> implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private transient Map<K, Collection<V>> f20067e;

    /* renamed from: f  reason: collision with root package name */
    private transient int f20068f;

    /* loaded from: classes5.dex */
    class b extends AbstractMapBasedMultimap<K, V>.d<Map.Entry<K, V>> {
        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.d
        /* renamed from: b */
        public Map.Entry<K, V> a(K k10, V v10) {
            return Maps.d(k10, v10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class c extends Maps.e<K, Collection<V>> {

        /* renamed from: c  reason: collision with root package name */
        final transient Map<K, Collection<V>> f20071c;

        /* loaded from: classes5.dex */
        class a extends Maps.b<K, Collection<V>> {
            a() {
            }

            @Override // com.google.common.collect.Maps.b
            Map<K, Collection<V>> a() {
                return c.this;
            }

            @Override // com.google.common.collect.Maps.b, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return com.google.common.collect.e.c(c.this.f20071c.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AbstractMapBasedMultimap.this.G(entry.getKey());
                return true;
            }
        }

        /* loaded from: classes5.dex */
        class b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<Map.Entry<K, Collection<V>>> f20074a;

            /* renamed from: b  reason: collision with root package name */
            Collection<V> f20075b;

            b() {
                this.f20074a = c.this.f20071c.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.f20074a.next();
                this.f20075b = next.getValue();
                return c.this.e(next);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f20074a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                boolean z10;
                if (this.f20075b != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                h7.k.p(z10, "no calls to next() since the last call to remove()");
                this.f20074a.remove();
                AbstractMapBasedMultimap.y(AbstractMapBasedMultimap.this, this.f20075b.size());
                this.f20075b.clear();
                this.f20075b = null;
            }
        }

        c(Map<K, Collection<V>> map) {
            this.f20071c = map;
        }

        @Override // com.google.common.collect.Maps.e
        protected Set<Map.Entry<K, Collection<V>>> a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: c */
        public Collection<V> get(Object obj) {
            Collection<V> collection = (Collection) Maps.h(this.f20071c, obj);
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.J(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f20071c == AbstractMapBasedMultimap.this.f20067e) {
                AbstractMapBasedMultimap.this.clear();
            } else {
                Iterators.c(new b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return Maps.g(this.f20071c, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Collection<V> remove(Object obj) {
            Collection<V> remove = this.f20071c.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> B = AbstractMapBasedMultimap.this.B();
            B.addAll(remove);
            AbstractMapBasedMultimap.y(AbstractMapBasedMultimap.this, remove.size());
            remove.clear();
            return B;
        }

        Map.Entry<K, Collection<V>> e(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return Maps.d(key, AbstractMapBasedMultimap.this.J(key, entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            if (this != obj && !this.f20071c.equals(obj)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f20071c.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return AbstractMapBasedMultimap.this.n();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f20071c.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f20071c.toString();
        }
    }

    /* loaded from: classes5.dex */
    private abstract class d<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<Map.Entry<K, Collection<V>>> f20077a;

        /* renamed from: b  reason: collision with root package name */
        K f20078b = null;

        /* renamed from: c  reason: collision with root package name */
        Collection<V> f20079c = null;

        /* renamed from: d  reason: collision with root package name */
        Iterator<V> f20080d = Iterators.f();

        d() {
            this.f20077a = (Iterator<Map.Entry<K, V>>) AbstractMapBasedMultimap.this.f20067e.entrySet().iterator();
        }

        abstract T a(K k10, V v10);

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!this.f20077a.hasNext() && !this.f20080d.hasNext()) {
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f20080d.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f20077a.next();
                this.f20078b = next.getKey();
                Collection<V> value = next.getValue();
                this.f20079c = value;
                this.f20080d = value.iterator();
            }
            return a(r.a(this.f20078b), this.f20080d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f20080d.remove();
            Collection<V> collection = this.f20079c;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.f20077a.remove();
            }
            AbstractMapBasedMultimap.u(AbstractMapBasedMultimap.this);
        }
    }

    /* loaded from: classes5.dex */
    private class e extends Maps.c<K, Collection<V>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Iterator<K> {

            /* renamed from: a  reason: collision with root package name */
            Map.Entry<K, Collection<V>> f20083a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Iterator f20084b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ e f20085c;

            a(e eVar, Iterator it) {
                this.f20084b = it;
                this.f20085c = eVar;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f20084b.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.f20084b.next();
                this.f20083a = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                boolean z10;
                if (this.f20083a != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                h7.k.p(z10, "no calls to next() since the last call to remove()");
                Collection<V> value = this.f20083a.getValue();
                this.f20084b.remove();
                AbstractMapBasedMultimap.y(AbstractMapBasedMultimap.this, value.size());
                value.clear();
                this.f20083a = null;
            }
        }

        e(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Iterators.c(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return a().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            if (this != obj && !a().keySet().equals(obj)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return a().keySet().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this, a().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i10;
            Collection<V> remove = a().remove(obj);
            if (remove != null) {
                i10 = remove.size();
                remove.clear();
                AbstractMapBasedMultimap.y(AbstractMapBasedMultimap.this, i10);
            } else {
                i10 = 0;
            }
            if (i10 <= 0) {
                return false;
            }
            return true;
        }
    }

    /* loaded from: classes5.dex */
    private final class f extends AbstractMapBasedMultimap<K, V>.i implements NavigableMap<K, Collection<V>> {
        f(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k10) {
            Map.Entry<K, Collection<V>> ceilingEntry = i().ceilingEntry(k10);
            if (ceilingEntry == null) {
                return null;
            }
            return e(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k10) {
            return i().ceilingKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new f(i().descendingMap());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> firstEntry = i().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return e(firstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k10) {
            Map.Entry<K, Collection<V>> floorEntry = i().floorEntry(k10);
            if (floorEntry == null) {
                return null;
            }
            return e(floorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k10) {
            return i().floorKey(k10);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k10) {
            Map.Entry<K, Collection<V>> higherEntry = i().higherEntry(k10);
            if (higherEntry == null) {
                return null;
            }
            return e(higherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k10) {
            return i().higherKey(k10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.i
        /* renamed from: j */
        public NavigableSet<K> f() {
            return new g(i());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: k */
        public NavigableMap<K, Collection<V>> headMap(K k10) {
            return headMap(k10, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.i, com.google.common.collect.AbstractMapBasedMultimap.c, java.util.AbstractMap, java.util.Map
        /* renamed from: l */
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> lastEntry = i().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return e(lastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k10) {
            Map.Entry<K, Collection<V>> lowerEntry = i().lowerEntry(k10);
            if (lowerEntry == null) {
                return null;
            }
            return e(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k10) {
            return i().lowerKey(k10);
        }

        Map.Entry<K, Collection<V>> m(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it.next();
            Collection<V> B = AbstractMapBasedMultimap.this.B();
            B.addAll(next.getValue());
            it.remove();
            return Maps.d(next.getKey(), AbstractMapBasedMultimap.this.I(B));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.i
        /* renamed from: n */
        public NavigableMap<K, Collection<V>> i() {
            return (NavigableMap) super.i();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return keySet();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: o */
        public NavigableMap<K, Collection<V>> subMap(K k10, K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: p */
        public NavigableMap<K, Collection<V>> tailMap(K k10) {
            return tailMap(k10, true);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return m(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return m(descendingMap().entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k10, boolean z10) {
            return new f(i().headMap(k10, z10));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k10, boolean z10, K k11, boolean z11) {
            return new f(i().subMap(k10, z10, k11, z11));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k10, boolean z10) {
            return new f(i().tailMap(k10, z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class g extends AbstractMapBasedMultimap<K, V>.j implements NavigableSet<K> {
        g(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k10) {
            return c().ceilingKey(k10);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: d */
        public NavigableSet<K> headSet(K k10) {
            return headSet(k10, false);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new g(c().descendingMap());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.j
        /* renamed from: e */
        public NavigableMap<K, Collection<V>> c() {
            return (NavigableMap) super.c();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: f */
        public NavigableSet<K> subSet(K k10, K k11) {
            return subSet(k10, true, k11, false);
        }

        @Override // java.util.NavigableSet
        public K floor(K k10) {
            return c().floorKey(k10);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: g */
        public NavigableSet<K> tailSet(K k10) {
            return tailSet(k10, true);
        }

        @Override // java.util.NavigableSet
        public K higher(K k10) {
            return c().higherKey(k10);
        }

        @Override // java.util.NavigableSet
        public K lower(K k10) {
            return c().lowerKey(k10);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Iterators.n(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Iterators.n(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k10, boolean z10) {
            return new g(c().headMap(k10, z10));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k10, boolean z10, K k11, boolean z11) {
            return new g(c().subMap(k10, z10, k11, z11));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k10, boolean z10) {
            return new g(c().tailMap(k10, z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class h extends AbstractMapBasedMultimap<K, V>.l implements RandomAccess {
        h(K k10, List<V> list, AbstractMapBasedMultimap<K, V>.k kVar) {
            super(k10, list, kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class i extends AbstractMapBasedMultimap<K, V>.c implements SortedMap<K, Collection<V>> {

        /* renamed from: e  reason: collision with root package name */
        SortedSet<K> f20089e;

        i(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return i().comparator();
        }

        SortedSet<K> f() {
            return new j(i());
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return i().firstKey();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.c, java.util.AbstractMap, java.util.Map
        /* renamed from: h */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f20089e;
            if (sortedSet == null) {
                SortedSet<K> f10 = f();
                this.f20089e = f10;
                return f10;
            }
            return sortedSet;
        }

        public SortedMap<K, Collection<V>> headMap(K k10) {
            return new i(i().headMap(k10));
        }

        SortedMap<K, Collection<V>> i() {
            return (SortedMap) this.f20071c;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return i().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k10, K k11) {
            return new i(i().subMap(k10, k11));
        }

        public SortedMap<K, Collection<V>> tailMap(K k10) {
            return new i(i().tailMap(k10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class j extends AbstractMapBasedMultimap<K, V>.e implements SortedSet<K> {
        j(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        SortedMap<K, Collection<V>> c() {
            return (SortedMap) super.a();
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return c().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return c().firstKey();
        }

        public SortedSet<K> headSet(K k10) {
            return new j(c().headMap(k10));
        }

        @Override // java.util.SortedSet
        public K last() {
            return c().lastKey();
        }

        public SortedSet<K> subSet(K k10, K k11) {
            return new j(c().subMap(k10, k11));
        }

        public SortedSet<K> tailSet(K k10) {
            return new j(c().tailMap(k10));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractMapBasedMultimap(Map<K, Collection<V>> map) {
        h7.k.d(map.isEmpty());
        this.f20067e = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Iterator<E> F(Collection<E> collection) {
        if (collection instanceof List) {
            return ((List) collection).listIterator();
        }
        return collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(Object obj) {
        Collection collection = (Collection) Maps.i(this.f20067e, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.f20068f -= size;
        }
    }

    static /* synthetic */ int t(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i10 = abstractMapBasedMultimap.f20068f;
        abstractMapBasedMultimap.f20068f = i10 + 1;
        return i10;
    }

    static /* synthetic */ int u(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i10 = abstractMapBasedMultimap.f20068f;
        abstractMapBasedMultimap.f20068f = i10 - 1;
        return i10;
    }

    static /* synthetic */ int v(AbstractMapBasedMultimap abstractMapBasedMultimap, int i10) {
        int i11 = abstractMapBasedMultimap.f20068f + i10;
        abstractMapBasedMultimap.f20068f = i11;
        return i11;
    }

    static /* synthetic */ int y(AbstractMapBasedMultimap abstractMapBasedMultimap, int i10) {
        int i11 = abstractMapBasedMultimap.f20068f - i10;
        abstractMapBasedMultimap.f20068f = i11;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<K, Collection<V>> A() {
        return this.f20067e;
    }

    abstract Collection<V> B();

    Collection<V> C(K k10) {
        return B();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, Collection<V>> D() {
        Map<K, Collection<V>> map = this.f20067e;
        if (map instanceof NavigableMap) {
            return new f((NavigableMap) this.f20067e);
        }
        if (map instanceof SortedMap) {
            return new i((SortedMap) this.f20067e);
        }
        return new c(this.f20067e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<K> E() {
        Map<K, Collection<V>> map = this.f20067e;
        if (map instanceof NavigableMap) {
            return new g((NavigableMap) this.f20067e);
        }
        if (map instanceof SortedMap) {
            return new j((SortedMap) this.f20067e);
        }
        return new e(this.f20067e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void H(Map<K, Collection<V>> map) {
        this.f20067e = map;
        this.f20068f = 0;
        for (Collection<V> collection : map.values()) {
            h7.k.d(!collection.isEmpty());
            this.f20068f += collection.size();
        }
    }

    abstract <E> Collection<E> I(Collection<E> collection);

    abstract Collection<V> J(K k10, Collection<V> collection);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<V> K(K k10, List<V> list, AbstractMapBasedMultimap<K, V>.k kVar) {
        if (list instanceof RandomAccess) {
            return new h(k10, list, kVar);
        }
        return new l(k10, list, kVar);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.p
    public Collection<Map.Entry<K, V>> b() {
        return super.b();
    }

    @Override // com.google.common.collect.p
    public void clear() {
        for (Collection<V> collection : this.f20067e.values()) {
            collection.clear();
        }
        this.f20067e.clear();
        this.f20068f = 0;
    }

    @Override // com.google.common.collect.p
    public Collection<V> get(K k10) {
        Collection<V> collection = this.f20067e.get(k10);
        if (collection == null) {
            collection = C(k10);
        }
        return J(k10, collection);
    }

    @Override // com.google.common.collect.c
    Collection<Map.Entry<K, V>> h() {
        return new c.a();
    }

    @Override // com.google.common.collect.c
    Collection<V> j() {
        return new c.b();
    }

    @Override // com.google.common.collect.c
    Iterator<Map.Entry<K, V>> k() {
        return new b();
    }

    @Override // com.google.common.collect.p
    public boolean put(K k10, V v10) {
        Collection<V> collection = this.f20067e.get(k10);
        if (collection == null) {
            Collection<V> C = C(k10);
            if (C.add(v10)) {
                this.f20068f++;
                this.f20067e.put(k10, C);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (collection.add(v10)) {
            this.f20068f++;
            return true;
        } else {
            return false;
        }
    }

    @Override // com.google.common.collect.c
    Iterator<V> q() {
        return new a();
    }

    @Override // com.google.common.collect.p
    public int size() {
        return this.f20068f;
    }

    @Override // com.google.common.collect.c, com.google.common.collect.p
    public Collection<V> values() {
        return super.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class k extends AbstractCollection<V> {

        /* renamed from: a  reason: collision with root package name */
        final K f20092a;

        /* renamed from: b  reason: collision with root package name */
        Collection<V> f20093b;

        /* renamed from: c  reason: collision with root package name */
        final AbstractMapBasedMultimap<K, V>.k f20094c;

        /* renamed from: d  reason: collision with root package name */
        final Collection<V> f20095d;

        k(K k10, Collection<V> collection, AbstractMapBasedMultimap<K, V>.k kVar) {
            Collection<V> d10;
            this.f20092a = k10;
            this.f20093b = collection;
            this.f20094c = kVar;
            if (kVar == null) {
                d10 = null;
            } else {
                d10 = kVar.d();
            }
            this.f20095d = d10;
        }

        void a() {
            AbstractMapBasedMultimap<K, V>.k kVar = this.f20094c;
            if (kVar != null) {
                kVar.a();
            } else {
                AbstractMapBasedMultimap.this.f20067e.put(this.f20092a, this.f20093b);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v10) {
            f();
            boolean isEmpty = this.f20093b.isEmpty();
            boolean add = this.f20093b.add(v10);
            if (add) {
                AbstractMapBasedMultimap.t(AbstractMapBasedMultimap.this);
                if (isEmpty) {
                    a();
                }
            }
            return add;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.f20093b.addAll(collection);
            if (addAll) {
                AbstractMapBasedMultimap.v(AbstractMapBasedMultimap.this, this.f20093b.size() - size);
                if (size == 0) {
                    a();
                }
            }
            return addAll;
        }

        AbstractMapBasedMultimap<K, V>.k c() {
            return this.f20094c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f20093b.clear();
            AbstractMapBasedMultimap.y(AbstractMapBasedMultimap.this, size);
            g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            f();
            return this.f20093b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            f();
            return this.f20093b.containsAll(collection);
        }

        Collection<V> d() {
            return this.f20093b;
        }

        K e() {
            return this.f20092a;
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            f();
            return this.f20093b.equals(obj);
        }

        void f() {
            Collection<V> collection;
            AbstractMapBasedMultimap<K, V>.k kVar = this.f20094c;
            if (kVar != null) {
                kVar.f();
                if (this.f20094c.d() != this.f20095d) {
                    throw new ConcurrentModificationException();
                }
            } else if (this.f20093b.isEmpty() && (collection = (Collection) AbstractMapBasedMultimap.this.f20067e.get(this.f20092a)) != null) {
                this.f20093b = collection;
            }
        }

        void g() {
            AbstractMapBasedMultimap<K, V>.k kVar = this.f20094c;
            if (kVar != null) {
                kVar.g();
            } else if (this.f20093b.isEmpty()) {
                AbstractMapBasedMultimap.this.f20067e.remove(this.f20092a);
            }
        }

        @Override // java.util.Collection
        public int hashCode() {
            f();
            return this.f20093b.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            f();
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            f();
            boolean remove = this.f20093b.remove(obj);
            if (remove) {
                AbstractMapBasedMultimap.u(AbstractMapBasedMultimap.this);
                g();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f20093b.removeAll(collection);
            if (removeAll) {
                AbstractMapBasedMultimap.v(AbstractMapBasedMultimap.this, this.f20093b.size() - size);
                g();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            h7.k.j(collection);
            int size = size();
            boolean retainAll = this.f20093b.retainAll(collection);
            if (retainAll) {
                AbstractMapBasedMultimap.v(AbstractMapBasedMultimap.this, this.f20093b.size() - size);
                g();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            f();
            return this.f20093b.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            f();
            return this.f20093b.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Iterator<V> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<V> f20097a;

            /* renamed from: b  reason: collision with root package name */
            final Collection<V> f20098b;

            a() {
                Collection<V> collection = k.this.f20093b;
                this.f20098b = collection;
                this.f20097a = AbstractMapBasedMultimap.F(collection);
            }

            Iterator<V> a() {
                b();
                return this.f20097a;
            }

            void b() {
                k.this.f();
                if (k.this.f20093b == this.f20098b) {
                    return;
                }
                throw new ConcurrentModificationException();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                b();
                return this.f20097a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                b();
                return this.f20097a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f20097a.remove();
                AbstractMapBasedMultimap.u(AbstractMapBasedMultimap.this);
                k.this.g();
            }

            a(Iterator<V> it) {
                this.f20098b = k.this.f20093b;
                this.f20097a = it;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class l extends AbstractMapBasedMultimap<K, V>.k implements List<V> {

        /* loaded from: classes5.dex */
        private class a extends AbstractMapBasedMultimap<K, V>.k.a implements ListIterator<V> {
            a() {
                super();
            }

            private ListIterator<V> c() {
                return (ListIterator) a();
            }

            @Override // java.util.ListIterator
            public void add(V v10) {
                boolean isEmpty = l.this.isEmpty();
                c().add(v10);
                AbstractMapBasedMultimap.t(AbstractMapBasedMultimap.this);
                if (isEmpty) {
                    l.this.a();
                }
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return c().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return c().nextIndex();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return c().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return c().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v10) {
                c().set(v10);
            }

            public a(int i10) {
                super(l.this.h().listIterator(i10));
            }
        }

        l(K k10, List<V> list, AbstractMapBasedMultimap<K, V>.k kVar) {
            super(k10, list, kVar);
        }

        @Override // java.util.List
        public void add(int i10, V v10) {
            f();
            boolean isEmpty = d().isEmpty();
            h().add(i10, v10);
            AbstractMapBasedMultimap.t(AbstractMapBasedMultimap.this);
            if (isEmpty) {
                a();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i10, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = h().addAll(i10, collection);
            if (addAll) {
                AbstractMapBasedMultimap.v(AbstractMapBasedMultimap.this, d().size() - size);
                if (size == 0) {
                    a();
                }
            }
            return addAll;
        }

        @Override // java.util.List
        public V get(int i10) {
            f();
            return h().get(i10);
        }

        List<V> h() {
            return (List) d();
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            f();
            return h().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            f();
            return h().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            f();
            return new a();
        }

        @Override // java.util.List
        public V remove(int i10) {
            f();
            V remove = h().remove(i10);
            AbstractMapBasedMultimap.u(AbstractMapBasedMultimap.this);
            g();
            return remove;
        }

        @Override // java.util.List
        public V set(int i10, V v10) {
            f();
            return h().set(i10, v10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public List<V> subList(int i10, int i11) {
            AbstractMapBasedMultimap<K, V>.k c10;
            f();
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object e10 = e();
            List<V> subList = h().subList(i10, i11);
            if (c() == null) {
                c10 = this;
            } else {
                c10 = c();
            }
            return abstractMapBasedMultimap.K(e10, subList, c10);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i10) {
            f();
            return new a(i10);
        }
    }

    /* loaded from: classes5.dex */
    class a extends AbstractMapBasedMultimap<K, V>.d<V> {
        a() {
            super();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.d
        V a(K k10, V v10) {
            return v10;
        }
    }
}
