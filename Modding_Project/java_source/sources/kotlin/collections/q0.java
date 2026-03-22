package kotlin.collections;

import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapWithDefault.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMapWithDefault.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapWithDefault.kt\nkotlin/collections/MapsKt__MapWithDefaultKt\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,104:1\n350#2,6:105\n*S KotlinDebug\n*F\n+ 1 MapWithDefault.kt\nkotlin/collections/MapsKt__MapWithDefaultKt\n*L\n24#1:105,6\n*E\n"})
/* loaded from: classes8.dex */
public class q0 {
    public static <K, V> V a(@NotNull Map<K, ? extends V> map, K k10) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map instanceof o0) {
            return (V) ((o0) map).g(k10);
        }
        V v10 = map.get(k10);
        if (v10 == null && !map.containsKey(k10)) {
            throw new NoSuchElementException("Key " + k10 + " is missing in the map.");
        }
        return v10;
    }
}
