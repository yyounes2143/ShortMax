package kotlin.collections;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Sets.kt */
@Metadata
@SourceDebugExtension({"SMAP\n_Sets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Sets.kt\nkotlin/collections/SetsKt___SetsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n865#2,2:141\n855#2,2:143\n1#3:145\n*S KotlinDebug\n*F\n+ 1 _Sets.kt\nkotlin/collections/SetsKt___SetsKt\n*L\n29#1:141,2\n53#1:143,2\n*E\n"})
/* loaded from: classes8.dex */
public class b1 extends a1 {
    @NotNull
    public static <T> Set<T> k(@NotNull Set<? extends T> set, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<?> H = d0.H(elements);
        if (H.isEmpty()) {
            return CollectionsKt.i1(set);
        }
        if (H instanceof Set) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (T t10 : set) {
                if (!((Set) H).contains(t10)) {
                    linkedHashSet.add(t10);
                }
            }
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(set);
        linkedHashSet2.removeAll(H);
        return linkedHashSet2;
    }

    @NotNull
    public static <T> Set<T> l(@NotNull Set<? extends T> set, T t10) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(p0.e(set.size()));
        boolean z10 = false;
        for (T t11 : set) {
            boolean z11 = true;
            if (!z10 && Intrinsics.areEqual(t11, t10)) {
                z10 = true;
                z11 = false;
            }
            if (z11) {
                linkedHashSet.add(t11);
            }
        }
        return linkedHashSet;
    }

    @NotNull
    public static <T> Set<T> m(@NotNull Set<? extends T> set, @NotNull Iterable<? extends T> elements) {
        int size;
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Integer A = z.A(elements);
        if (A != null) {
            size = set.size() + A.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(p0.e(size));
        linkedHashSet.addAll(set);
        CollectionsKt.E(linkedHashSet, elements);
        return linkedHashSet;
    }

    @NotNull
    public static <T> Set<T> n(@NotNull Set<? extends T> set, T t10) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(p0.e(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(t10);
        return linkedHashSet;
    }
}
