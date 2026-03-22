package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements m<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractListMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    <E> Collection<E> I(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    Collection<V> J(K k10, Collection<V> collection) {
        return K(k10, (List) collection, null);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.p
    /* renamed from: L */
    public List<V> get(K k10) {
        return (List) super.get(k10);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.p
    public Map<K, Collection<V>> d() {
        return super.d();
    }

    @Override // com.google.common.collect.c
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.p
    public boolean put(K k10, V v10) {
        return super.put(k10, v10);
    }
}
