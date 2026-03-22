package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Iterables.kt */
@Metadata
/* loaded from: classes8.dex */
public class z extends y {
    @Nullable
    public static final <T> Integer A(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            return Integer.valueOf(((Collection) iterable).size());
        }
        return null;
    }

    @NotNull
    public static <T> List<T> B(@NotNull Iterable<? extends Iterable<? extends T>> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Iterable<? extends T> iterable2 : iterable) {
            CollectionsKt.E(arrayList, iterable2);
        }
        return arrayList;
    }

    public static <T> int z(@NotNull Iterable<? extends T> iterable, int i10) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return i10;
    }
}
