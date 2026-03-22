package androidx.collection;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ScatterSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/ScatterSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1210:1\n1#2:1211\n*E\n"})
/* loaded from: classes.dex */
public final class ScatterSetKt {
    @NotNull
    private static final MutableScatterSet<Object> EmptyScatterSet = new MutableScatterSet<>(0);

    @NotNull
    public static final <E> ScatterSet<E> emptyScatterSet() {
        MutableScatterSet<Object> mutableScatterSet = EmptyScatterSet;
        Intrinsics.checkNotNull(mutableScatterSet, "null cannot be cast to non-null type androidx.collection.ScatterSet<E of androidx.collection.ScatterSetKt.emptyScatterSet>");
        return mutableScatterSet;
    }

    @NotNull
    public static final <E> MutableScatterSet<E> mutableScatterSetOf() {
        return new MutableScatterSet<>(0, 1, null);
    }

    @NotNull
    public static final <E> ScatterSet<E> scatterSetOf() {
        MutableScatterSet<Object> mutableScatterSet = EmptyScatterSet;
        Intrinsics.checkNotNull(mutableScatterSet, "null cannot be cast to non-null type androidx.collection.ScatterSet<E of androidx.collection.ScatterSetKt.scatterSetOf>");
        return mutableScatterSet;
    }

    @NotNull
    public static final <E> MutableScatterSet<E> mutableScatterSetOf(E e10) {
        MutableScatterSet<E> mutableScatterSet = new MutableScatterSet<>(1);
        mutableScatterSet.plusAssign((MutableScatterSet<E>) e10);
        return mutableScatterSet;
    }

    @NotNull
    public static final <E> ScatterSet<E> scatterSetOf(E e10) {
        return mutableScatterSetOf(e10);
    }

    @NotNull
    public static final <E> MutableScatterSet<E> mutableScatterSetOf(E e10, E e11) {
        MutableScatterSet<E> mutableScatterSet = new MutableScatterSet<>(2);
        mutableScatterSet.plusAssign((MutableScatterSet<E>) e10);
        mutableScatterSet.plusAssign((MutableScatterSet<E>) e11);
        return mutableScatterSet;
    }

    @NotNull
    public static final <E> ScatterSet<E> scatterSetOf(E e10, E e11) {
        return mutableScatterSetOf(e10, e11);
    }

    @NotNull
    public static final <E> ScatterSet<E> scatterSetOf(E e10, E e11, E e12) {
        return mutableScatterSetOf(e10, e11, e12);
    }

    @NotNull
    public static final <E> ScatterSet<E> scatterSetOf(@NotNull E... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableScatterSet mutableScatterSet = new MutableScatterSet(elements.length);
        mutableScatterSet.plusAssign((Object[]) elements);
        return mutableScatterSet;
    }

    @NotNull
    public static final <E> MutableScatterSet<E> mutableScatterSetOf(E e10, E e11, E e12) {
        MutableScatterSet<E> mutableScatterSet = new MutableScatterSet<>(3);
        mutableScatterSet.plusAssign((MutableScatterSet<E>) e10);
        mutableScatterSet.plusAssign((MutableScatterSet<E>) e11);
        mutableScatterSet.plusAssign((MutableScatterSet<E>) e12);
        return mutableScatterSet;
    }

    @NotNull
    public static final <E> MutableScatterSet<E> mutableScatterSetOf(@NotNull E... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableScatterSet<E> mutableScatterSet = new MutableScatterSet<>(elements.length);
        mutableScatterSet.plusAssign((Object[]) elements);
        return mutableScatterSet;
    }
}
