package androidx.collection;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: OrderedScatterSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOrderedScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/OrderedScatterSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1511:1\n1#2:1512\n*E\n"})
/* loaded from: classes.dex */
public final class OrderedScatterSetKt {
    @NotNull
    private static final MutableOrderedScatterSet<Object> EmptyOrderedScatterSet = new MutableOrderedScatterSet<>(0);

    @NotNull
    public static final <E> OrderedScatterSet<E> emptyOrderedScatterSet() {
        MutableOrderedScatterSet<Object> mutableOrderedScatterSet = EmptyOrderedScatterSet;
        Intrinsics.checkNotNull(mutableOrderedScatterSet, "null cannot be cast to non-null type androidx.collection.OrderedScatterSet<E of androidx.collection.OrderedScatterSetKt.emptyOrderedScatterSet>");
        return mutableOrderedScatterSet;
    }

    @NotNull
    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf() {
        return new MutableOrderedScatterSet<>(0, 1, null);
    }

    @NotNull
    public static final <E> OrderedScatterSet<E> orderedScatterSetOf() {
        MutableOrderedScatterSet<Object> mutableOrderedScatterSet = EmptyOrderedScatterSet;
        Intrinsics.checkNotNull(mutableOrderedScatterSet, "null cannot be cast to non-null type androidx.collection.OrderedScatterSet<E of androidx.collection.OrderedScatterSetKt.orderedScatterSetOf>");
        return mutableOrderedScatterSet;
    }

    @NotNull
    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf(E e10) {
        MutableOrderedScatterSet<E> mutableOrderedScatterSet = new MutableOrderedScatterSet<>(1);
        mutableOrderedScatterSet.plusAssign((MutableOrderedScatterSet<E>) e10);
        return mutableOrderedScatterSet;
    }

    @NotNull
    public static final <E> OrderedScatterSet<E> orderedScatterSetOf(E e10) {
        return mutableOrderedScatterSetOf(e10);
    }

    @NotNull
    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf(E e10, E e11) {
        MutableOrderedScatterSet<E> mutableOrderedScatterSet = new MutableOrderedScatterSet<>(2);
        mutableOrderedScatterSet.plusAssign((MutableOrderedScatterSet<E>) e10);
        mutableOrderedScatterSet.plusAssign((MutableOrderedScatterSet<E>) e11);
        return mutableOrderedScatterSet;
    }

    @NotNull
    public static final <E> OrderedScatterSet<E> orderedScatterSetOf(E e10, E e11) {
        return mutableOrderedScatterSetOf(e10, e11);
    }

    @NotNull
    public static final <E> OrderedScatterSet<E> orderedScatterSetOf(E e10, E e11, E e12) {
        return mutableOrderedScatterSetOf(e10, e11, e12);
    }

    @NotNull
    public static final <E> OrderedScatterSet<E> orderedScatterSetOf(@NotNull E... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableOrderedScatterSet mutableOrderedScatterSet = new MutableOrderedScatterSet(elements.length);
        mutableOrderedScatterSet.plusAssign((Object[]) elements);
        return mutableOrderedScatterSet;
    }

    @NotNull
    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf(E e10, E e11, E e12) {
        MutableOrderedScatterSet<E> mutableOrderedScatterSet = new MutableOrderedScatterSet<>(3);
        mutableOrderedScatterSet.plusAssign((MutableOrderedScatterSet<E>) e10);
        mutableOrderedScatterSet.plusAssign((MutableOrderedScatterSet<E>) e11);
        mutableOrderedScatterSet.plusAssign((MutableOrderedScatterSet<E>) e12);
        return mutableOrderedScatterSet;
    }

    @NotNull
    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf(@NotNull E... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableOrderedScatterSet<E> mutableOrderedScatterSet = new MutableOrderedScatterSet<>(elements.length);
        mutableOrderedScatterSet.plusAssign((Object[]) elements);
        return mutableOrderedScatterSet;
    }
}
