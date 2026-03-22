package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MutableCollections.kt */
@Metadata
/* loaded from: classes8.dex */
public class d0 extends c0 {
    public static <T> boolean E(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements instanceof Collection) {
            return collection.addAll((Collection) elements);
        }
        Iterator<? extends T> it = elements.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.add((T) it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public static <T> boolean F(@NotNull Collection<? super T> collection, @NotNull Sequence<? extends T> elements) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<? extends T> it = elements.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.add((T) it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public static <T> boolean G(@NotNull Collection<? super T> collection, @NotNull T[] elements) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        return collection.addAll(n.g(elements));
    }

    @NotNull
    public static final <T> Collection<T> H(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            iterable = CollectionsKt.d1(iterable);
        }
        return (Collection) iterable;
    }

    private static final <T> boolean I(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1, boolean z10) {
        Iterator<? extends T> it = iterable.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            if (function1.invoke((T) it.next()).booleanValue() == z10) {
                it.remove();
                z11 = true;
            }
        }
        return z11;
    }

    private static final <T> boolean J(List<T> list, Function1<? super T, Boolean> function1, boolean z10) {
        int i10;
        if (!(list instanceof RandomAccess)) {
            Intrinsics.checkNotNull(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T of kotlin.collections.CollectionsKt__MutableCollectionsKt.filterInPlace>");
            return I(TypeIntrinsics.asMutableIterable(list), function1, z10);
        }
        int p10 = CollectionsKt.p(list);
        if (p10 >= 0) {
            int i11 = 0;
            i10 = 0;
            while (true) {
                T t10 = list.get(i11);
                if (function1.invoke(t10).booleanValue() != z10) {
                    if (i10 != i11) {
                        list.set(i10, t10);
                    }
                    i10++;
                }
                if (i11 == p10) {
                    break;
                }
                i11++;
            }
        } else {
            i10 = 0;
        }
        if (i10 >= list.size()) {
            return false;
        }
        int p11 = CollectionsKt.p(list);
        if (i10 > p11) {
            return true;
        }
        while (true) {
            list.remove(p11);
            if (p11 != i10) {
                p11--;
            } else {
                return true;
            }
        }
    }

    public static <T> boolean K(@NotNull Iterable<? extends T> iterable, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return I(iterable, predicate, true);
    }

    public static <T> boolean L(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        return collection.removeAll(H(elements));
    }

    public static <T> boolean M(@NotNull Collection<? super T> collection, @NotNull Sequence<? extends T> elements) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        List P = kotlin.sequences.j.P(elements);
        if (!P.isEmpty() && collection.removeAll(P)) {
            return true;
        }
        return false;
    }

    public static <T> boolean N(@NotNull Collection<? super T> collection, @NotNull T[] elements) {
        boolean z10;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 || !collection.removeAll(n.g(elements))) {
            return false;
        }
        return true;
    }

    public static <T> boolean O(@NotNull List<T> list, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return J(list, predicate, true);
    }

    public static <T> T P(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (!list.isEmpty()) {
            return list.remove(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    @Nullable
    public static <T> T Q(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(0);
    }

    public static <T> T R(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (!list.isEmpty()) {
            return list.remove(CollectionsKt.p(list));
        }
        throw new NoSuchElementException("List is empty.");
    }

    @Nullable
    public static <T> T S(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(CollectionsKt.p(list));
    }

    public static <T> boolean T(@NotNull Iterable<? extends T> iterable, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return I(iterable, predicate, false);
    }

    public static <T> boolean U(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        return collection.retainAll(H(elements));
    }
}
