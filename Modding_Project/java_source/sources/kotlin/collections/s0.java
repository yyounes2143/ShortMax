package kotlin.collections;

import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Maps.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMaps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,813:1\n412#1:823\n423#1:828\n520#1,6:833\n545#1,6:839\n1#2:814\n1246#3,4:815\n1246#3,4:819\n1246#3,4:824\n1246#3,4:829\n*S KotlinDebug\n*F\n+ 1 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n462#1:823\n477#1:828\n535#1:833,6\n560#1:839,6\n412#1:815,4\n423#1:819,4\n462#1:824,4\n477#1:829,4\n*E\n"})
/* loaded from: classes8.dex */
public class s0 extends r0 {
    @NotNull
    public static <K, V> Map<K, V> A(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return new LinkedHashMap(map);
    }

    @NotNull
    public static <K, V> Map<K, V> i() {
        EmptyMap emptyMap = EmptyMap.f60925a;
        Intrinsics.checkNotNull(emptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return emptyMap;
    }

    public static <K, V> V j(@NotNull Map<K, ? extends V> map, K k10) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return (V) p0.a(map, k10);
    }

    @NotNull
    public static <K, V> HashMap<K, V> k(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        HashMap<K, V> hashMap = new HashMap<>(p0.e(pairs.length));
        p0.u(hashMap, pairs);
        return hashMap;
    }

    @NotNull
    public static <K, V> LinkedHashMap<K, V> l(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        return (LinkedHashMap) z(pairs, new LinkedHashMap(p0.e(pairs.length)));
    }

    @NotNull
    public static <K, V> Map<K, V> m(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        if (pairs.length > 0) {
            return z(pairs, new LinkedHashMap(p0.e(pairs.length)));
        }
        return p0.i();
    }

    @NotNull
    public static <K, V> Map<K, V> n(@NotNull Map<? extends K, ? extends V> map, K k10) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Map A = p0.A(map);
        A.remove(k10);
        return p(A);
    }

    @NotNull
    public static <K, V> Map<K, V> o(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(p0.e(pairs.length));
        p0.u(linkedHashMap, pairs);
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> p(@NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        int size = map.size();
        if (size != 0) {
            if (size == 1) {
                return r0.g(map);
            }
            return map;
        }
        return p0.i();
    }

    @NotNull
    public static <K, V> Map<K, V> q(@NotNull Map<? extends K, ? extends V> map, @NotNull Map<? extends K, ? extends V> map2) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(map2, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    @NotNull
    public static <K, V> Map<K, V> r(@NotNull Map<? extends K, ? extends V> map, @NotNull Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(pair, "pair");
        if (map.isEmpty()) {
            return p0.f(pair);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(pair.e(), pair.f());
        return linkedHashMap;
    }

    public static <K, V> void s(@NotNull Map<? super K, ? super V> map, @NotNull Iterable<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            map.put((K) pair.b(), (V) pair.d());
        }
    }

    public static <K, V> void t(@NotNull Map<? super K, ? super V> map, @NotNull Sequence<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            map.put((K) pair.b(), (V) pair.d());
        }
    }

    public static <K, V> void u(@NotNull Map<? super K, ? super V> map, @NotNull Pair<? extends K, ? extends V>[] pairs) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            map.put((K) pair.b(), (V) pair.d());
        }
    }

    @NotNull
    public static <K, V> Map<K, V> v(@NotNull Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
        Object next;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    return w(iterable, new LinkedHashMap(p0.e(collection.size())));
                }
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = collection.iterator().next();
                }
                return p0.f((Pair) next);
            }
            return p0.i();
        }
        return p(w(iterable, new LinkedHashMap()));
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M w(@NotNull Iterable<? extends Pair<? extends K, ? extends V>> iterable, @NotNull M destination) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        p0.s(destination, iterable);
        return destination;
    }

    @NotNull
    public static <K, V> Map<K, V> x(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        int size = map.size();
        if (size != 0) {
            if (size != 1) {
                return p0.A(map);
            }
            return r0.g(map);
        }
        return p0.i();
    }

    @NotNull
    public static <K, V> Map<K, V> y(@NotNull Pair<? extends K, ? extends V>[] pairArr) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        int length = pairArr.length;
        if (length != 0) {
            if (length != 1) {
                return z(pairArr, new LinkedHashMap(p0.e(pairArr.length)));
            }
            return p0.f(pairArr[0]);
        }
        return p0.i();
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M z(@NotNull Pair<? extends K, ? extends V>[] pairArr, @NotNull M destination) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        p0.u(destination, pairArr);
        return destination;
    }
}
