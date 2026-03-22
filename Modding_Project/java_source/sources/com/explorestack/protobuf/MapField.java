package com.explorestack.protobuf;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class MapField<K, V> implements d1 {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f14156a;

    /* renamed from: b  reason: collision with root package name */
    private volatile StorageMode f14157b;

    /* renamed from: c  reason: collision with root package name */
    private c<K, V> f14158c;

    /* renamed from: d  reason: collision with root package name */
    private List<Message> f14159d;

    /* renamed from: e  reason: collision with root package name */
    private final a<K, V> f14160e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum StorageMode {
        MAP,
        LIST,
        BOTH
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface a<K, V> {
        Message a(K k10, V v10);

        void b(Message message, Map<K, V> map);

        Message c();
    }

    /* loaded from: classes3.dex */
    private static class b<K, V> implements a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final s0<K, V> f14161a;

        public b(s0<K, V> s0Var) {
            this.f14161a = s0Var;
        }

        @Override // com.explorestack.protobuf.MapField.a
        public Message a(K k10, V v10) {
            return this.f14161a.newBuilderForType().o(k10).r(v10).buildPartial();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.MapField.a
        public void b(Message message, Map<K, V> map) {
            s0 s0Var = (s0) message;
            map.put(s0Var.h(), s0Var.j());
        }

        @Override // com.explorestack.protobuf.MapField.a
        public Message c() {
            return this.f14161a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class c<K, V> implements Map<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final d1 f14162a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<K, V> f14163b;

        /* loaded from: classes3.dex */
        private static class a<E> implements Collection<E> {

            /* renamed from: a  reason: collision with root package name */
            private final d1 f14164a;

            /* renamed from: b  reason: collision with root package name */
            private final Collection<E> f14165b;

            a(d1 d1Var, Collection<E> collection) {
                this.f14164a = d1Var;
                this.f14165b = collection;
            }

            @Override // java.util.Collection
            public boolean add(E e10) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Collection
            public boolean addAll(Collection<? extends E> collection) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Collection
            public void clear() {
                this.f14164a.ensureMutable();
                this.f14165b.clear();
            }

            @Override // java.util.Collection
            public boolean contains(Object obj) {
                return this.f14165b.contains(obj);
            }

            @Override // java.util.Collection
            public boolean containsAll(Collection<?> collection) {
                return this.f14165b.containsAll(collection);
            }

            @Override // java.util.Collection
            public boolean equals(Object obj) {
                return this.f14165b.equals(obj);
            }

            @Override // java.util.Collection
            public int hashCode() {
                return this.f14165b.hashCode();
            }

            @Override // java.util.Collection
            public boolean isEmpty() {
                return this.f14165b.isEmpty();
            }

            @Override // java.util.Collection, java.lang.Iterable
            public Iterator<E> iterator() {
                return new b(this.f14164a, this.f14165b.iterator());
            }

            @Override // java.util.Collection
            public boolean remove(Object obj) {
                this.f14164a.ensureMutable();
                return this.f14165b.remove(obj);
            }

            @Override // java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                this.f14164a.ensureMutable();
                return this.f14165b.removeAll(collection);
            }

            @Override // java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                this.f14164a.ensureMutable();
                return this.f14165b.retainAll(collection);
            }

            @Override // java.util.Collection
            public int size() {
                return this.f14165b.size();
            }

            @Override // java.util.Collection
            public Object[] toArray() {
                return this.f14165b.toArray();
            }

            public String toString() {
                return this.f14165b.toString();
            }

            @Override // java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f14165b.toArray(tArr);
            }
        }

        /* loaded from: classes3.dex */
        private static class b<E> implements Iterator<E> {

            /* renamed from: a  reason: collision with root package name */
            private final d1 f14166a;

            /* renamed from: b  reason: collision with root package name */
            private final Iterator<E> f14167b;

            b(d1 d1Var, Iterator<E> it) {
                this.f14166a = d1Var;
                this.f14167b = it;
            }

            public boolean equals(Object obj) {
                return this.f14167b.equals(obj);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14167b.hasNext();
            }

            public int hashCode() {
                return this.f14167b.hashCode();
            }

            @Override // java.util.Iterator
            public E next() {
                return this.f14167b.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f14166a.ensureMutable();
                this.f14167b.remove();
            }

            public String toString() {
                return this.f14167b.toString();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.explorestack.protobuf.MapField$c$c  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0245c<E> implements Set<E> {

            /* renamed from: a  reason: collision with root package name */
            private final d1 f14168a;

            /* renamed from: b  reason: collision with root package name */
            private final Set<E> f14169b;

            C0245c(d1 d1Var, Set<E> set) {
                this.f14168a = d1Var;
                this.f14169b = set;
            }

            @Override // java.util.Set, java.util.Collection
            public boolean add(E e10) {
                this.f14168a.ensureMutable();
                return this.f14169b.add(e10);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean addAll(Collection<? extends E> collection) {
                this.f14168a.ensureMutable();
                return this.f14169b.addAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public void clear() {
                this.f14168a.ensureMutable();
                this.f14169b.clear();
            }

            @Override // java.util.Set, java.util.Collection
            public boolean contains(Object obj) {
                return this.f14169b.contains(obj);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean containsAll(Collection<?> collection) {
                return this.f14169b.containsAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean equals(Object obj) {
                return this.f14169b.equals(obj);
            }

            @Override // java.util.Set, java.util.Collection
            public int hashCode() {
                return this.f14169b.hashCode();
            }

            @Override // java.util.Set, java.util.Collection
            public boolean isEmpty() {
                return this.f14169b.isEmpty();
            }

            @Override // java.util.Set, java.util.Collection, java.lang.Iterable
            public Iterator<E> iterator() {
                return new b(this.f14168a, this.f14169b.iterator());
            }

            @Override // java.util.Set, java.util.Collection
            public boolean remove(Object obj) {
                this.f14168a.ensureMutable();
                return this.f14169b.remove(obj);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                this.f14168a.ensureMutable();
                return this.f14169b.removeAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                this.f14168a.ensureMutable();
                return this.f14169b.retainAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public int size() {
                return this.f14169b.size();
            }

            @Override // java.util.Set, java.util.Collection
            public Object[] toArray() {
                return this.f14169b.toArray();
            }

            public String toString() {
                return this.f14169b.toString();
            }

            @Override // java.util.Set, java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f14169b.toArray(tArr);
            }
        }

        c(d1 d1Var, Map<K, V> map) {
            this.f14162a = d1Var;
            this.f14163b = map;
        }

        @Override // java.util.Map
        public void clear() {
            this.f14162a.ensureMutable();
            this.f14163b.clear();
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            return this.f14163b.containsKey(obj);
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            return this.f14163b.containsValue(obj);
        }

        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new C0245c(this.f14162a, this.f14163b.entrySet());
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            return this.f14163b.equals(obj);
        }

        @Override // java.util.Map
        public V get(Object obj) {
            return this.f14163b.get(obj);
        }

        @Override // java.util.Map
        public int hashCode() {
            return this.f14163b.hashCode();
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            return this.f14163b.isEmpty();
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            return new C0245c(this.f14162a, this.f14163b.keySet());
        }

        @Override // java.util.Map
        public V put(K k10, V v10) {
            this.f14162a.ensureMutable();
            i0.a(k10);
            i0.a(v10);
            return this.f14163b.put(k10, v10);
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f14162a.ensureMutable();
            for (K k10 : map.keySet()) {
                i0.a(k10);
                i0.a(map.get(k10));
            }
            this.f14163b.putAll(map);
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            this.f14162a.ensureMutable();
            return this.f14163b.remove(obj);
        }

        @Override // java.util.Map
        public int size() {
            return this.f14163b.size();
        }

        public String toString() {
            return this.f14163b.toString();
        }

        @Override // java.util.Map
        public Collection<V> values() {
            return new a(this.f14162a, this.f14163b.values());
        }
    }

    private MapField(a<K, V> aVar, StorageMode storageMode, Map<K, V> map) {
        this.f14160e = aVar;
        this.f14156a = true;
        this.f14157b = storageMode;
        this.f14158c = new c<>(this, map);
        this.f14159d = null;
    }

    private Message b(K k10, V v10) {
        return this.f14160e.a(k10, v10);
    }

    private c<K, V> c(List<Message> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Message message : list) {
            e(message, linkedHashMap);
        }
        return new c<>(this, linkedHashMap);
    }

    private List<Message> d(c<K, V> cVar) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, V> entry : cVar.entrySet()) {
            arrayList.add(b(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    private void e(Message message, Map<K, V> map) {
        this.f14160e.b(message, map);
    }

    public static <K, V> MapField<K, V> g(s0<K, V> s0Var) {
        return new MapField<>(s0Var, StorageMode.MAP, Collections.emptyMap());
    }

    public static <K, V> MapField<K, V> p(s0<K, V> s0Var) {
        return new MapField<>(s0Var, StorageMode.MAP, new LinkedHashMap());
    }

    public void a() {
        this.f14158c = new c<>(this, new LinkedHashMap());
        this.f14157b = StorageMode.MAP;
    }

    @Override // com.explorestack.protobuf.d1
    public void ensureMutable() {
        if (m()) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MapField)) {
            return false;
        }
        return MapFieldLite.q(i(), ((MapField) obj).i());
    }

    public MapField<K, V> f() {
        return new MapField<>(this.f14160e, StorageMode.MAP, MapFieldLite.i(i()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Message> h() {
        StorageMode storageMode = this.f14157b;
        StorageMode storageMode2 = StorageMode.MAP;
        if (storageMode == storageMode2) {
            synchronized (this) {
                try {
                    if (this.f14157b == storageMode2) {
                        this.f14159d = d(this.f14158c);
                        this.f14157b = StorageMode.BOTH;
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableList(this.f14159d);
    }

    public int hashCode() {
        return MapFieldLite.b(i());
    }

    public Map<K, V> i() {
        StorageMode storageMode = this.f14157b;
        StorageMode storageMode2 = StorageMode.LIST;
        if (storageMode == storageMode2) {
            synchronized (this) {
                try {
                    if (this.f14157b == storageMode2) {
                        this.f14158c = c(this.f14159d);
                        this.f14157b = StorageMode.BOTH;
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableMap(this.f14158c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Message j() {
        return this.f14160e.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Message> k() {
        StorageMode storageMode = this.f14157b;
        StorageMode storageMode2 = StorageMode.LIST;
        if (storageMode != storageMode2) {
            if (this.f14157b == StorageMode.MAP) {
                this.f14159d = d(this.f14158c);
            }
            this.f14158c = null;
            this.f14157b = storageMode2;
        }
        return this.f14159d;
    }

    public Map<K, V> l() {
        StorageMode storageMode = this.f14157b;
        StorageMode storageMode2 = StorageMode.MAP;
        if (storageMode != storageMode2) {
            if (this.f14157b == StorageMode.LIST) {
                this.f14158c = c(this.f14159d);
            }
            this.f14159d = null;
            this.f14157b = storageMode2;
        }
        return this.f14158c;
    }

    public boolean m() {
        return this.f14156a;
    }

    public void n() {
        this.f14156a = false;
    }

    public void o(MapField<K, V> mapField) {
        l().putAll(MapFieldLite.i(mapField.i()));
    }

    private MapField(s0<K, V> s0Var, StorageMode storageMode, Map<K, V> map) {
        this(new b(s0Var), storageMode, map);
    }
}
