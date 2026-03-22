package com.google.protobuf;

import com.google.protobuf.MapEntryLite;
import java.util.Map;
/* compiled from: MapFieldSchemaLite.java */
/* loaded from: classes5.dex */
class v implements u {
    private static <K, V> int getSerializedSizeLite(int i10, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapEntryLite mapEntryLite = (MapEntryLite) obj2;
        int i11 = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            i11 += mapEntryLite.computeMessageSize(i10, entry.getKey(), entry.getValue());
        }
        return i11;
    }

    private static <K, V> MapFieldLite<K, V> mergeFromLite(Object obj, Object obj2) {
        MapFieldLite<K, V> mapFieldLite = (MapFieldLite) obj;
        MapFieldLite<K, V> mapFieldLite2 = (MapFieldLite) obj2;
        if (!mapFieldLite2.isEmpty()) {
            if (!mapFieldLite.isMutable()) {
                mapFieldLite = mapFieldLite.mutableCopy();
            }
            mapFieldLite.mergeFrom(mapFieldLite2);
        }
        return mapFieldLite;
    }

    @Override // com.google.protobuf.u
    public Map<?, ?> forMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.protobuf.u
    public MapEntryLite.b<?, ?> forMapMetadata(Object obj) {
        return ((MapEntryLite) obj).getMetadata();
    }

    @Override // com.google.protobuf.u
    public Map<?, ?> forMutableMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.protobuf.u
    public int getSerializedSize(int i10, Object obj, Object obj2) {
        return getSerializedSizeLite(i10, obj, obj2);
    }

    @Override // com.google.protobuf.u
    public boolean isImmutable(Object obj) {
        return !((MapFieldLite) obj).isMutable();
    }

    @Override // com.google.protobuf.u
    public Object mergeFrom(Object obj, Object obj2) {
        return mergeFromLite(obj, obj2);
    }

    @Override // com.google.protobuf.u
    public Object newMapField(Object obj) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override // com.google.protobuf.u
    public Object toImmutable(Object obj) {
        ((MapFieldLite) obj).makeImmutable();
        return obj;
    }
}
