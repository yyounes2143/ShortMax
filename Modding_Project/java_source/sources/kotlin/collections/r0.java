package kotlin.collections;

import java.util.Collections;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapsJVM.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMapsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1#2:158\n*E\n"})
/* loaded from: classes8.dex */
public class r0 extends q0 {
    @NotNull
    public static <K, V> Map<K, V> b(@NotNull Map<K, V> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((MapBuilder) builder).r();
    }

    @NotNull
    public static <K, V> Map<K, V> c() {
        return new MapBuilder();
    }

    @NotNull
    public static <K, V> Map<K, V> d(int i10) {
        return new MapBuilder(i10);
    }

    public static int e(int i10) {
        if (i10 >= 0) {
            if (i10 < 3) {
                return i10 + 1;
            }
            if (i10 < 1073741824) {
                return (int) ((i10 / 0.75f) + 1.0f);
            }
            return Integer.MAX_VALUE;
        }
        return i10;
    }

    @NotNull
    public static <K, V> Map<K, V> f(@NotNull Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(pair, "pair");
        Map<K, V> singletonMap = Collections.singletonMap(pair.e(), pair.f());
        Intrinsics.checkNotNullExpressionValue(singletonMap, "singletonMap(...)");
        return singletonMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> g(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> singletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        Intrinsics.checkNotNullExpressionValue(singletonMap, "with(...)");
        return singletonMap;
    }

    @NotNull
    public static <K extends Comparable<? super K>, V> SortedMap<K, V> h(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return new TreeMap(map);
    }
}
