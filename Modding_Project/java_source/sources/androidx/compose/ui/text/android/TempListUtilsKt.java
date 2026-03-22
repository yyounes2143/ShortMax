package androidx.compose.ui.text.android;

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
/* compiled from: TempListUtils.kt */
@Metadata
/* loaded from: classes.dex */
public final class TempListUtilsKt {
    public static final <T> void fastForEach(@NotNull List<? extends T> list, @NotNull Function1<? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke((T) list.get(i10));
        }
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

    @NotNull
    public static final <T, R> List<R> fastZipWithNext(@NotNull List<? extends T> list, @NotNull Function2<? super T, ? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        if (list.size() != 0 && list.size() != 1) {
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            T t10 = list.get(0);
            int p10 = CollectionsKt.p(list);
            while (i10 < p10) {
                i10++;
                T t11 = list.get(i10);
                arrayList.add(transform.invoke(t10, t11));
                t10 = (Object) t11;
            }
            return arrayList;
        }
        return CollectionsKt.n();
    }
}
