package com.explorestack.protobuf;

import com.explorestack.protobuf.t0;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapFieldSchema.java */
/* loaded from: classes3.dex */
public interface u0 {
    Map<?, ?> forMapData(Object obj);

    t0.b<?, ?> forMapMetadata(Object obj);

    Map<?, ?> forMutableMapData(Object obj);

    int getSerializedSize(int i10, Object obj, Object obj2);

    boolean isImmutable(Object obj);

    Object mergeFrom(Object obj, Object obj2);

    Object newMapField(Object obj);

    Object toImmutable(Object obj);
}
