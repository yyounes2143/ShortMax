package kotlin.collections;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
/* compiled from: MapWithDefault.kt */
@Metadata
/* loaded from: classes8.dex */
interface o0<K, V> extends Map<K, V>, KMappedMarker {
    V g(K k10);
}
