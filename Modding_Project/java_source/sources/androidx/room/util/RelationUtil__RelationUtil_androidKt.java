package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RelationUtil.android.kt */
@Metadata
/* loaded from: classes2.dex */
final /* synthetic */ class RelationUtil__RelationUtil_androidKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final <K, V> void recursiveFetchArrayMap(@NotNull ArrayMap<K, V> map, boolean z10, @NotNull Function1<? super ArrayMap<K, V>, Unit> fetchBlock) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(fetchBlock, "fetchBlock");
        ArrayMap arrayMap = new ArrayMap(999);
        int size = map.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            if (z10) {
                arrayMap.put(map.keyAt(i10), map.valueAt(i10));
            } else {
                arrayMap.put(map.keyAt(i10), null);
            }
            i10++;
            i11++;
            if (i11 == 999) {
                fetchBlock.invoke(arrayMap);
                if (!z10) {
                    map.putAll((Map) arrayMap);
                }
                arrayMap.clear();
                i11 = 0;
            }
        }
        if (i11 > 0) {
            fetchBlock.invoke(arrayMap);
            if (!z10) {
                map.putAll((Map) arrayMap);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final <K, V> void recursiveFetchHashMap(@NotNull HashMap<K, V> map, boolean z10, @NotNull Function1<? super HashMap<K, V>, Unit> fetchBlock) {
        int i10;
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(fetchBlock, "fetchBlock");
        HashMap hashMap = new HashMap(999);
        loop0: while (true) {
            i10 = 0;
            for (K k10 : map.keySet()) {
                Intrinsics.checkNotNullExpressionValue(k10, "next(...)");
                if (z10) {
                    hashMap.put(k10, map.get(k10));
                } else {
                    hashMap.put(k10, null);
                }
                i10++;
                if (i10 == 999) {
                    fetchBlock.invoke(hashMap);
                    if (!z10) {
                        map.putAll(hashMap);
                    }
                    hashMap.clear();
                }
            }
            break loop0;
        }
        if (i10 > 0) {
            fetchBlock.invoke(hashMap);
            if (!z10) {
                map.putAll(hashMap);
            }
        }
    }
}
