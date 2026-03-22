package com.google.common.collect;

import java.util.concurrent.ConcurrentMap;
/* compiled from: ForwardingConcurrentMap.java */
/* loaded from: classes5.dex */
public abstract class h<K, V> extends i<K, V> implements ConcurrentMap<K, V> {
    protected abstract ConcurrentMap<K, V> i();

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k10, V v10) {
        return i().putIfAbsent(k10, v10);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        return i().remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k10, V v10) {
        return i().replace(k10, v10);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k10, V v10, V v11) {
        return i().replace(k10, v10, v11);
    }
}
