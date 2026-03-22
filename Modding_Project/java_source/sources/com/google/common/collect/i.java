package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* compiled from: ForwardingMap.java */
/* loaded from: classes5.dex */
public abstract class i<K, V> extends j implements Map<K, V> {
    @Override // java.util.Map
    public void clear() {
        d().clear();
    }

    public boolean containsKey(Object obj) {
        return d().containsKey(obj);
    }

    public boolean containsValue(Object obj) {
        return d().containsValue(obj);
    }

    protected abstract Map<K, V> d();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean e(Object obj) {
        return Maps.b(this, obj);
    }

    public Set<Map.Entry<K, V>> entrySet() {
        return d().entrySet();
    }

    public boolean equals(Object obj) {
        if (obj != this && !d().equals(obj)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean f(Object obj) {
        return Maps.c(this, obj);
    }

    public V get(Object obj) {
        return d().get(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int h() {
        return v.d(entrySet());
    }

    public int hashCode() {
        return d().hashCode();
    }

    public boolean isEmpty() {
        return d().isEmpty();
    }

    public Set<K> keySet() {
        return d().keySet();
    }

    @Override // java.util.Map
    public V put(K k10, V v10) {
        return d().put(k10, v10);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        d().putAll(map);
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        return d().remove(obj);
    }

    public int size() {
        return d().size();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return d().values();
    }
}
