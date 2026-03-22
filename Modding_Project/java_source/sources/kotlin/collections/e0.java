package kotlin.collections;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReversedViews.kt */
@Metadata
/* loaded from: classes8.dex */
public class e0 extends d0 {
    @NotNull
    public static <T> List<T> Y(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return new w0(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int Z(List<?> list, int i10) {
        if (i10 >= 0 && i10 <= CollectionsKt.p(list)) {
            return CollectionsKt.p(list) - i10;
        }
        throw new IndexOutOfBoundsException("Element index " + i10 + " must be in range [" + new IntRange(0, CollectionsKt.p(list)) + "].");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int a0(List<?> list, int i10) {
        return CollectionsKt.p(list) - i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int b0(List<?> list, int i10) {
        if (i10 >= 0 && i10 <= list.size()) {
            return list.size() - i10;
        }
        throw new IndexOutOfBoundsException("Position index " + i10 + " must be in range [" + new IntRange(0, list.size()) + "].");
    }
}
