package com.explorestack.protobuf;

import com.explorestack.protobuf.i0;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public final class MapFieldLite<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b  reason: collision with root package name */
    private static final MapFieldLite f14170b;

    /* renamed from: a  reason: collision with root package name */
    private boolean f14171a;

    static {
        MapFieldLite mapFieldLite = new MapFieldLite();
        f14170b = mapFieldLite;
        mapFieldLite.s();
    }

    private MapFieldLite() {
        this.f14171a = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> int b(Map<K, V> map) {
        int i10 = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            i10 += e(entry.getValue()) ^ e(entry.getKey());
        }
        return i10;
    }

    private static int e(Object obj) {
        if (obj instanceof byte[]) {
            return i0.e((byte[]) obj);
        }
        if (!(obj instanceof i0.c)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    private static void f(Map<?, ?> map) {
        for (Object obj : map.keySet()) {
            i0.a(obj);
            i0.a(map.get(obj));
        }
    }

    private static Object h(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            return Arrays.copyOf(bArr, bArr.length);
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> Map<K, V> i(Map<K, V> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), h(entry.getValue()));
        }
        return linkedHashMap;
    }

    public static <K, V> MapFieldLite<K, V> j() {
        return f14170b;
    }

    private void k() {
        if (r()) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private static boolean n(Object obj, Object obj2) {
        if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        return obj.equals(obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> boolean q(java.util.Map<K, V> r4, java.util.Map<K, V> r5) {
        /*
            r0 = 1
            if (r4 != r5) goto L4
            return r0
        L4:
            int r1 = r4.size()
            int r2 = r5.size()
            r3 = 0
            if (r1 == r2) goto L10
            return r3
        L10:
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L18:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L42
            java.lang.Object r1 = r4.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            boolean r2 = r5.containsKey(r2)
            if (r2 != 0) goto L2f
            return r3
        L2f:
            java.lang.Object r2 = r1.getValue()
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r1 = r5.get(r1)
            boolean r1 = n(r2, r1)
            if (r1 != 0) goto L18
            return r3
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.MapFieldLite.q(java.util.Map, java.util.Map):boolean");
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        k();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (isEmpty()) {
            return Collections.emptySet();
        }
        return super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if ((obj instanceof Map) && q(this, (Map) obj)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return b(this);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        k();
        i0.a(k10);
        i0.a(v10);
        return (V) super.put(k10, v10);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        k();
        f(map);
        super.putAll(map);
    }

    public boolean r() {
        return this.f14171a;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        k();
        return (V) super.remove(obj);
    }

    public void s() {
        this.f14171a = false;
    }

    public void t(MapFieldLite<K, V> mapFieldLite) {
        k();
        if (!mapFieldLite.isEmpty()) {
            putAll(mapFieldLite);
        }
    }

    public MapFieldLite<K, V> u() {
        if (isEmpty()) {
            return new MapFieldLite<>();
        }
        return new MapFieldLite<>(this);
    }

    private MapFieldLite(Map<K, V> map) {
        super(map);
        this.f14171a = true;
    }
}
