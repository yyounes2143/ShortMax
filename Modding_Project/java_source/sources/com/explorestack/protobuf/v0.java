package com.explorestack.protobuf;

import com.explorestack.protobuf.t0;
import java.util.Map;
/* compiled from: MapFieldSchemaFull.java */
/* loaded from: classes3.dex */
class v0 implements u0 {
    v0() {
    }

    private static <K, V> int a(int i10, Object obj, Object obj2) {
        int i11 = 0;
        if (obj == null) {
            return 0;
        }
        Map<K, V> i12 = ((MapField) obj).i();
        s0 s0Var = (s0) obj2;
        if (i12.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : i12.entrySet()) {
            i11 += CodedOutputStream.X(i10) + CodedOutputStream.E(t0.b(s0Var.i(), entry.getKey(), entry.getValue()));
        }
        return i11;
    }

    private static <K, V> Object b(Object obj, Object obj2) {
        MapField mapField = (MapField) obj;
        MapField<K, V> mapField2 = (MapField) obj2;
        if (!mapField.m()) {
            mapField.f();
        }
        mapField.o(mapField2);
        return mapField;
    }

    @Override // com.explorestack.protobuf.u0
    public Map<?, ?> forMapData(Object obj) {
        return ((MapField) obj).i();
    }

    @Override // com.explorestack.protobuf.u0
    public t0.b<?, ?> forMapMetadata(Object obj) {
        return ((s0) obj).i();
    }

    @Override // com.explorestack.protobuf.u0
    public Map<?, ?> forMutableMapData(Object obj) {
        return ((MapField) obj).l();
    }

    @Override // com.explorestack.protobuf.u0
    public int getSerializedSize(int i10, Object obj, Object obj2) {
        return a(i10, obj, obj2);
    }

    @Override // com.explorestack.protobuf.u0
    public boolean isImmutable(Object obj) {
        return !((MapField) obj).m();
    }

    @Override // com.explorestack.protobuf.u0
    public Object mergeFrom(Object obj, Object obj2) {
        return b(obj, obj2);
    }

    @Override // com.explorestack.protobuf.u0
    public Object newMapField(Object obj) {
        return MapField.p((s0) obj);
    }

    @Override // com.explorestack.protobuf.u0
    public Object toImmutable(Object obj) {
        ((MapField) obj).n();
        return obj;
    }
}
