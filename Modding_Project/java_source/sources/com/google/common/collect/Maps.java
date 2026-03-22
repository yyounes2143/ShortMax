package com.google.common.collect;

import com.google.common.collect.v;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5.dex */
public final class Maps {

    /* loaded from: classes5.dex */
    private enum EntryFunction implements h7.e<Map.Entry<?, ?>, Object> {
        KEY { // from class: com.google.common.collect.Maps.EntryFunction.1
            @Override // com.google.common.collect.Maps.EntryFunction, h7.e
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        },
        VALUE { // from class: com.google.common.collect.Maps.EntryFunction.2
            @Override // com.google.common.collect.Maps.EntryFunction, h7.e
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        };

        @Override // h7.e
        public abstract /* synthetic */ Object apply(Map.Entry<?, ?> entry);

        /* synthetic */ EntryFunction(o oVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* loaded from: classes5.dex */
    public class a<K, V> extends w<Map.Entry<K, V>, V> {
        a(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.w
        /* renamed from: b */
        public V a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    /* loaded from: classes5.dex */
    static abstract class b<K, V> extends v.e<Map.Entry<K, V>> {
        abstract Map<K, V> a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public abstract boolean contains(Object obj);

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // com.google.common.collect.v.e, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) h7.k.j(collection));
            } catch (UnsupportedOperationException unused) {
                return v.j(this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.v.e, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) h7.k.j(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet g10 = v.g(collection.size());
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        g10.add(((Map.Entry) obj).getKey());
                    }
                }
                return a().keySet().retainAll(g10);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().size();
        }
    }

    /* loaded from: classes5.dex */
    static class c<K, V> extends v.e<K> {

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f20228a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Map<K, V> map) {
            this.f20228a = (Map) h7.k.j(map);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map<K, V> a() {
            return this.f20228a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return a().containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class d<K, V> extends AbstractCollection<V> {

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f20229a;

        d(Map<K, V> map) {
            this.f20229a = (Map) h7.k.j(map);
        }

        final Map<K, V> a() {
            return this.f20229a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return a().containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Maps.l(a().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (h7.h.a(obj, entry.getValue())) {
                        a().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) h7.k.j(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet f10 = v.f();
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        f10.add(entry.getKey());
                    }
                }
                return a().keySet().removeAll(f10);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) h7.k.j(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet f10 = v.f();
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        f10.add(entry.getKey());
                    }
                }
                return a().keySet().retainAll(f10);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a().size();
        }
    }

    /* loaded from: classes5.dex */
    static abstract class e<K, V> extends AbstractMap<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private transient Set<Map.Entry<K, V>> f20230a;

        /* renamed from: b  reason: collision with root package name */
        private transient Collection<V> f20231b;

        abstract Set<Map.Entry<K, V>> a();

        Collection<V> b() {
            return new d(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f20230a;
            if (set == null) {
                Set<Map.Entry<K, V>> a10 = a();
                this.f20230a = a10;
                return a10;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.f20231b;
            if (collection == null) {
                Collection<V> b10 = b();
                this.f20231b = b10;
                return b10;
            }
            return collection;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i10) {
        if (i10 < 3) {
            com.google.common.collect.d.b(i10, "expectedSize");
            return i10 + 1;
        } else if (i10 < 1073741824) {
            return (int) Math.ceil(i10 / 0.75d);
        } else {
            return Integer.MAX_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Map<?, ?> map, Object obj) {
        return Iterators.d(l(map.entrySet().iterator()), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static <K, V> Map.Entry<K, V> d(K k10, V v10) {
        return new ImmutableEntry(k10, v10);
    }

    public static <K, V> HashMap<K, V> e(int i10) {
        return new HashMap<>(a(i10));
    }

    public static <K, V> IdentityHashMap<K, V> f() {
        return new IdentityHashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(Map<?, ?> map, Object obj) {
        h7.k.j(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V h(Map<?, V> map, Object obj) {
        h7.k.j(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V i(Map<?, V> map, Object obj) {
        h7.k.j(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j(Map<?, ?> map) {
        StringBuilder b10 = com.google.common.collect.e.b(map.size());
        b10.append('{');
        boolean z10 = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z10) {
                b10.append(", ");
            }
            b10.append(entry.getKey());
            b10.append('=');
            b10.append(entry.getValue());
            z10 = false;
        }
        b10.append('}');
        return b10.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> h7.e<Map.Entry<?, V>, V> k() {
        return EntryFunction.VALUE;
    }

    static <K, V> Iterator<V> l(Iterator<Map.Entry<K, V>> it) {
        return new a(it);
    }
}
