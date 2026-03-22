package androidx.compose.foundation;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TempListUtils.kt */
@Metadata
/* loaded from: classes.dex */
public final class TempListUtilsKt {
    @NotNull
    public static final <T> List<T> fastFilter(@NotNull List<? extends T> list, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = (T) list.get(i10);
            if (predicate.invoke(obj).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T, R> R fastFold(@NotNull List<? extends T> list, R r10, @NotNull Function2<? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            r10 = operation.invoke(r10, (T) list.get(i10));
        }
        return r10;
    }

    @NotNull
    public static final <T, R> List<R> fastMapIndexedNotNull(@NotNull List<? extends T> list, @NotNull Function2<? super Integer, ? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            R invoke = transform.invoke(Integer.valueOf(i10), (T) list.get(i10));
            if (invoke != null) {
                arrayList.add(invoke);
            }
        }
        return arrayList;
    }

    @Nullable
    public static final <T, R extends Comparable<? super R>> R fastMaxOfOrNull(@NotNull List<? extends T> list, @NotNull Function1<? super T, ? extends R> selector) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (list.isEmpty()) {
            return null;
        }
        R invoke = selector.invoke((T) list.get(0));
        int p10 = CollectionsKt.p(list);
        int i10 = 1;
        if (1 <= p10) {
            while (true) {
                R invoke2 = selector.invoke((T) list.get(i10));
                if (invoke2.compareTo(invoke) > 0) {
                    invoke = invoke2;
                }
                if (i10 == p10) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }
}
