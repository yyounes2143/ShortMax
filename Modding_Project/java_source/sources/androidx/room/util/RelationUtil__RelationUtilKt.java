package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RelationUtil.kt */
@Metadata
/* loaded from: classes2.dex */
final /* synthetic */ class RelationUtil__RelationUtilKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final <V> void recursiveFetchLongSparseArray(@NotNull LongSparseArray<V> map, boolean z10, @NotNull Function1<? super LongSparseArray<V>, Unit> fetchBlock) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(fetchBlock, "fetchBlock");
        LongSparseArray<? extends V> longSparseArray = new LongSparseArray<>(999);
        int size = map.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            if (z10) {
                longSparseArray.put(map.keyAt(i10), (V) map.valueAt(i10));
            } else {
                longSparseArray.put(map.keyAt(i10), null);
            }
            i10++;
            i11++;
            if (i11 == 999) {
                fetchBlock.invoke(longSparseArray);
                if (!z10) {
                    map.putAll(longSparseArray);
                }
                longSparseArray.clear();
                i11 = 0;
            }
        }
        if (i11 > 0) {
            fetchBlock.invoke(longSparseArray);
            if (!z10) {
                map.putAll(longSparseArray);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final <K, V> void recursiveFetchMap(@NotNull Map<K, V> map, boolean z10, @NotNull Function1<? super Map<K, V>, Unit> fetchBlock) {
        int i10;
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(fetchBlock, "fetchBlock");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        loop0: while (true) {
            i10 = 0;
            for (K k10 : map.keySet()) {
                if (z10) {
                    linkedHashMap.put(k10, map.get(k10));
                } else {
                    linkedHashMap.put(k10, null);
                }
                i10++;
                if (i10 == 999) {
                    fetchBlock.invoke(linkedHashMap);
                    if (!z10) {
                        map.putAll(linkedHashMap);
                    }
                    linkedHashMap.clear();
                }
            }
            break loop0;
        }
        if (i10 > 0) {
            fetchBlock.invoke(linkedHashMap);
            if (!z10) {
                map.putAll(linkedHashMap);
            }
        }
    }
}
