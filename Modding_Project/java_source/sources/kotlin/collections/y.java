package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Collections.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collections.kt\nkotlin/collections/CollectionsKt__CollectionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,526:1\n1#2:527\n*E\n"})
/* loaded from: classes8.dex */
public class y extends x {
    @NotNull
    public static <T> ArrayList<T> h(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length == 0) {
            return new ArrayList<>();
        }
        return new ArrayList<>(new l(elements, true));
    }

    @NotNull
    public static final <T> Collection<T> i(@NotNull T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        return new l(tArr, false);
    }

    public static final <T> int j(@NotNull List<? extends T> list, int i10, int i11, @NotNull Function1<? super T, Integer> comparison) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(comparison, "comparison");
        v(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int intValue = comparison.invoke((T) list.get(i13)).intValue();
            if (intValue < 0) {
                i10 = i13 + 1;
            } else if (intValue > 0) {
                i12 = i13 - 1;
            } else {
                return i13;
            }
        }
        return -(i10 + 1);
    }

    public static final <T extends Comparable<? super T>> int k(@NotNull List<? extends T> list, @Nullable T t10, int i10, int i11) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        v(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int a10 = ps.a.a(list.get(i13), t10);
            if (a10 < 0) {
                i10 = i13 + 1;
            } else if (a10 > 0) {
                i12 = i13 - 1;
            } else {
                return i13;
            }
        }
        return -(i10 + 1);
    }

    public static /* synthetic */ int l(List list, int i10, int i11, Function1 function1, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = list.size();
        }
        return j(list, i10, i11, function1);
    }

    public static /* synthetic */ int m(List list, Comparable comparable, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = list.size();
        }
        return k(list, comparable, i10, i11);
    }

    @NotNull
    public static <T> List<T> n() {
        return EmptyList.f60924a;
    }

    @NotNull
    public static IntRange o(@NotNull Collection<?> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        return new IntRange(0, collection.size() - 1);
    }

    public static <T> int p(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return list.size() - 1;
    }

    @NotNull
    public static <T> List<T> q(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length > 0) {
            return n.g(elements);
        }
        return CollectionsKt.n();
    }

    @NotNull
    public static <T> List<T> r(@Nullable T t10) {
        if (t10 != null) {
            return CollectionsKt.e(t10);
        }
        return CollectionsKt.n();
    }

    @NotNull
    public static <T> List<T> s(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return n.h0(elements);
    }

    @NotNull
    public static <T> List<T> t(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length == 0) {
            return new ArrayList();
        }
        return new ArrayList(new l(elements, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> List<T> u(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        int size = list.size();
        if (size != 0) {
            if (size == 1) {
                return CollectionsKt.e(list.get(0));
            }
            return list;
        }
        return CollectionsKt.n();
    }

    private static final void v(int i10, int i11, int i12) {
        if (i11 <= i12) {
            if (i11 >= 0) {
                if (i12 <= i10) {
                    return;
                }
                throw new IndexOutOfBoundsException("toIndex (" + i12 + ") is greater than size (" + i10 + ").");
            }
            throw new IndexOutOfBoundsException("fromIndex (" + i11 + ") is less than zero.");
        }
        throw new IllegalArgumentException("fromIndex (" + i11 + ") is greater than toIndex (" + i12 + ").");
    }

    @NotNull
    public static <T> List<T> w(@NotNull Iterable<? extends T> iterable, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        List<T> f12 = CollectionsKt___CollectionsKt.f1(iterable);
        CollectionsKt___CollectionsKt.O0(f12, random);
        return f12;
    }

    public static void x() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void y() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
