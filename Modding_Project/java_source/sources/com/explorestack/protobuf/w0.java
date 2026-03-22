package com.explorestack.protobuf;

import com.explorestack.protobuf.t0;
import java.util.Map;
/* compiled from: MapFieldSchemaLite.java */
/* loaded from: classes3.dex */
class w0 implements u0 {
    private static <K, V> int a(int i10, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        t0 t0Var = (t0) obj2;
        int i11 = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            i11 += t0Var.a(i10, entry.getKey(), entry.getValue());
        }
        return i11;
    }

    private static <K, V> MapFieldLite<K, V> b(Object obj, Object obj2) {
        MapFieldLite<K, V> mapFieldLite = (MapFieldLite) obj;
        MapFieldLite<K, V> mapFieldLite2 = (MapFieldLite) obj2;
        if (!mapFieldLite2.isEmpty()) {
            if (!mapFieldLite.r()) {
                mapFieldLite = mapFieldLite.u();
            }
            mapFieldLite.t(mapFieldLite2);
        }
        return mapFieldLite;
    }

    @Override // com.explorestack.protobuf.u0
    public Map<?, ?> forMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.explorestack.protobuf.u0
    public t0.b<?, ?> forMapMetadata(Object obj) {
        return ((t0) obj).c();
    }

    @Override // com.explorestack.protobuf.u0
    public Map<?, ?> forMutableMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.explorestack.protobuf.u0
    public int getSerializedSize(int i10, Object obj, Object obj2) {
        return a(i10, obj, obj2);
    }

    @Override // com.explorestack.protobuf.u0
    public boolean isImmutable(Object obj) {
        return !((MapFieldLite) obj).r();
    }

    @Override // com.explorestack.protobuf.u0
    public Object mergeFrom(Object obj, Object obj2) {
        return b(obj, obj2);
    }

    @Override // com.explorestack.protobuf.u0
    public Object newMapField(Object obj) {
        return MapFieldLite.j().u();
    }

    @Override // com.explorestack.protobuf.u0
    public Object toImmutable(Object obj) {
        ((MapFieldLite) obj).s();
        return obj;
    }
}
