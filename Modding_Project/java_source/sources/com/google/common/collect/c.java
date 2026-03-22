package com.google.common.collect;

import com.google.common.collect.Multimaps;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractMultimap.java */
/* loaded from: classes5.dex */
public abstract class c<K, V> implements p<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private transient Collection<Map.Entry<K, V>> f20268a;

    /* renamed from: b  reason: collision with root package name */
    private transient Set<K> f20269b;

    /* renamed from: c  reason: collision with root package name */
    private transient Collection<V> f20270c;

    /* renamed from: d  reason: collision with root package name */
    private transient Map<K, Collection<V>> f20271d;

    /* compiled from: AbstractMultimap.java */
    /* loaded from: classes5.dex */
    class a extends Multimaps.a<K, V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        @Override // com.google.common.collect.Multimaps.a
        p<K, V> a() {
            return c.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return c.this.k();
        }
    }

    /* compiled from: AbstractMultimap.java */
    /* loaded from: classes5.dex */
    class b extends AbstractCollection<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            c.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return c.this.f(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return c.this.q();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return c.this.size();
        }
    }

    @Override // com.google.common.collect.p
    public Collection<Map.Entry<K, V>> b() {
        Collection<Map.Entry<K, V>> collection = this.f20268a;
        if (collection == null) {
            Collection<Map.Entry<K, V>> h10 = h();
            this.f20268a = h10;
            return h10;
        }
        return collection;
    }

    @Override // com.google.common.collect.p
    public Map<K, Collection<V>> d() {
        Map<K, Collection<V>> map = this.f20271d;
        if (map == null) {
            Map<K, Collection<V>> g10 = g();
            this.f20271d = g10;
            return g10;
        }
        return map;
    }

    @Override // com.google.common.collect.p
    public boolean e(Object obj, Object obj2) {
        Collection<V> collection = d().get(obj);
        if (collection != null && collection.contains(obj2)) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        return Multimaps.a(this, obj);
    }

    public boolean f(Object obj) {
        for (Collection<V> collection : d().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    abstract Map<K, Collection<V>> g();

    abstract Collection<Map.Entry<K, V>> h();

    public int hashCode() {
        return d().hashCode();
    }

    abstract Set<K> i();

    abstract Collection<V> j();

    abstract Iterator<Map.Entry<K, V>> k();

    public Set<K> n() {
        Set<K> set = this.f20269b;
        if (set == null) {
            Set<K> i10 = i();
            this.f20269b = i10;
            return i10;
        }
        return set;
    }

    abstract Iterator<V> q();

    @Override // com.google.common.collect.p
    public boolean remove(Object obj, Object obj2) {
        Collection<V> collection = d().get(obj);
        if (collection != null && collection.remove(obj2)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return d().toString();
    }

    @Override // com.google.common.collect.p
    public Collection<V> values() {
        Collection<V> collection = this.f20270c;
        if (collection == null) {
            Collection<V> j10 = j();
            this.f20270c = j10;
            return j10;
        }
        return collection;
    }
}
