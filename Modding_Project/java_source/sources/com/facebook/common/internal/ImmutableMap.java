package com.facebook.common.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class ImmutableMap<K, V> extends HashMap<K, V> {
    private ImmutableMap(Map<? extends K, ? extends V> map) {
        super(map);
    }

    public static <K, V> ImmutableMap<K, V> b(Map<? extends K, ? extends V> map) {
        return new ImmutableMap<>(map);
    }

    public static <K, V> Map<K, V> of(K k10, V v10) {
        HashMap hashMap = new HashMap(1);
        hashMap.put(k10, v10);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k10, V v10, K k11, V v11) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(k10, v10);
        hashMap.put(k11, v11);
        return Collections.unmodifiableMap(hashMap);
    }
}
