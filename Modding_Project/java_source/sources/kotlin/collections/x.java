package kotlin.collections;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionsJVM.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCollectionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionsJVM.kt\nkotlin/collections/CollectionsKt__CollectionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n1#2:132\n*E\n"})
/* loaded from: classes8.dex */
public class x {
    @NotNull
    public static <E> List<E> a(@NotNull List<E> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((ListBuilder) builder).u();
    }

    @NotNull
    public static final <T> Object[] b(@NotNull T[] tArr, boolean z10) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (!z10 || !Intrinsics.areEqual(tArr.getClass(), Object[].class)) {
            Object[] copyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            return copyOf;
        }
        return tArr;
    }

    @NotNull
    public static <E> List<E> c() {
        return new ListBuilder(0, 1, null);
    }

    @NotNull
    public static <E> List<E> d(int i10) {
        return new ListBuilder(i10);
    }

    @NotNull
    public static <T> List<T> e(T t10) {
        List<T> singletonList = Collections.singletonList(t10);
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        return singletonList;
    }

    @NotNull
    public static <T> List<T> f(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        List<T> f12 = CollectionsKt___CollectionsKt.f1(iterable);
        Collections.shuffle(f12);
        return f12;
    }

    @NotNull
    public static <T> T[] g(int i10, @NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (i10 < array.length) {
            array[i10] = null;
        }
        return array;
    }
}
