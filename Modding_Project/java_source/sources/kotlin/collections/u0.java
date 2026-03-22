package kotlin.collections;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Maps.kt */
@Metadata
@SourceDebugExtension({"SMAP\n_Maps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,595:1\n97#1,5:596\n112#1,5:601\n153#1,3:606\n144#1:609\n216#1:610\n217#1:612\n145#1:613\n216#1:614\n217#1:616\n1#2:611\n1#2:615\n1948#3,14:617\n1971#3,14:631\n2318#3,14:645\n2341#3,14:659\n1872#3,3:673\n*S KotlinDebug\n*F\n+ 1 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n77#1:596,5\n90#1:601,5\n126#1:606,3\n136#1:609\n136#1:610\n136#1:612\n136#1:613\n144#1:614\n144#1:616\n136#1:611\n231#1:617,14\n242#1:631,14\n391#1:645,14\n402#1:659,14\n575#1:673,3\n*E\n"})
/* loaded from: classes8.dex */
public class u0 extends t0 {
    @NotNull
    public static <K, V> Sequence<Map.Entry<K, V>> B(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return CollectionsKt.e0(map.entrySet());
    }

    @NotNull
    public static <K, V> List<Pair<K, V>> C(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map.size() == 0) {
            return CollectionsKt.n();
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return CollectionsKt.n();
        }
        Map.Entry<? extends K, ? extends V> next = it.next();
        if (!it.hasNext()) {
            return CollectionsKt.e(new Pair(next.getKey(), next.getValue()));
        }
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.add(new Pair(next.getKey(), next.getValue()));
        do {
            Map.Entry<? extends K, ? extends V> next2 = it.next();
            arrayList.add(new Pair(next2.getKey(), next2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }
}
