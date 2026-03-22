package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
/* compiled from: Multimap.java */
/* loaded from: classes5.dex */
public interface p<K, V> {
    Collection<Map.Entry<K, V>> b();

    void clear();

    Map<K, Collection<V>> d();

    boolean e(Object obj, Object obj2);

    Collection<V> get(K k10);

    boolean put(K k10, V v10);

    boolean remove(Object obj, Object obj2);

    int size();

    Collection<V> values();
}
