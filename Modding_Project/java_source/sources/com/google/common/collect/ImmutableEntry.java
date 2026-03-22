package com.google.common.collect;

import java.io.Serializable;
/* loaded from: classes5.dex */
class ImmutableEntry<K, V> extends b<K, V> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final K f20133a;

    /* renamed from: b  reason: collision with root package name */
    final V f20134b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableEntry(K k10, V v10) {
        this.f20133a = k10;
        this.f20134b = v10;
    }

    @Override // com.google.common.collect.b, java.util.Map.Entry
    public final K getKey() {
        return this.f20133a;
    }

    @Override // com.google.common.collect.b, java.util.Map.Entry
    public final V getValue() {
        return this.f20134b;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v10) {
        throw new UnsupportedOperationException();
    }
}
