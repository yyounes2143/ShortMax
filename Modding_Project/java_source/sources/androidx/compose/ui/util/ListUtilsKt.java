package androidx.compose.ui.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListUtils.kt */
@Metadata
/* loaded from: classes.dex */
public final class ListUtilsKt {
    public static final <T> boolean fastAll(@NotNull List<? extends T> list, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!predicate.invoke((T) list.get(i10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <T> boolean fastAny(@NotNull List<? extends T> list, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (predicate.invoke((T) list.get(i10)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
    @Nullable
    public static final <T> T fastFirstOrNull(@NotNull List<? extends T> list, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            T t10 = list.get(i10);
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        return null;
    }

    public static final <T> void fastForEach(@NotNull List<? extends T> list, @NotNull Function1<? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke((T) list.get(i10));
        }
    }

    public static final <T> void fastForEachIndexed(@NotNull List<? extends T> list, @NotNull Function2<? super Integer, ? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Integer.valueOf(i10), (T) list.get(i10));
        }
    }

    @NotNull
    public static final <T, R> List<R> fastMap(@NotNull List<? extends T> list, @NotNull Function1<? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(transform.invoke((T) list.get(i10)));
        }
        return arrayList;
    }

    @NotNull
    public static final <T, R, C extends Collection<? super R>> C fastMapTo(@NotNull List<? extends T> list, @NotNull C destination, @NotNull Function1<? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(transform, "transform");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            destination.add(transform.invoke((T) list.get(i10)));
        }
        return destination;
    }

    @Nullable
    public static final <T, R extends Comparable<? super R>> T fastMaxBy(@NotNull List<? extends T> list, @NotNull Function1<? super T, ? extends R> selector) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (list.isEmpty()) {
            return null;
        }
        T t10 = list.get(0);
        R invoke = selector.invoke(t10);
        int p10 = CollectionsKt.p(list);
        int i10 = 1;
        if (1 <= p10) {
            while (true) {
                T t11 = list.get(i10);
                R invoke2 = selector.invoke(t11);
                if (invoke.compareTo(invoke2) < 0) {
                    t10 = t11;
                    invoke = invoke2;
                }
                if (i10 == p10) {
                    break;
                }
                i10++;
            }
        }
        return (T) t10;
    }

    public static final <T> int fastSumBy(@NotNull List<? extends T> list, @NotNull Function1<? super T, Integer> selector) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(selector, "selector");
        int size = list.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += selector.invoke((T) list.get(i11)).intValue();
        }
        return i10;
    }
}
