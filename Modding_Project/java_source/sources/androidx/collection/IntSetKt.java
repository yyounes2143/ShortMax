package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntSet.kt\nandroidx/collection/IntSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,884:1\n1#2:885\n*E\n"})
/* loaded from: classes.dex */
public final class IntSetKt {
    @NotNull
    private static final MutableIntSet EmptyIntSet = new MutableIntSet(0);
    @NotNull
    private static final int[] EmptyIntArray = new int[0];

    @NotNull
    public static final IntSet buildIntSet(@NotNull Function1<? super MutableIntSet, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntSet mutableIntSet = new MutableIntSet(0, 1, null);
        builderAction.invoke(mutableIntSet);
        return mutableIntSet;
    }

    @NotNull
    public static final IntSet emptyIntSet() {
        return EmptyIntSet;
    }

    @NotNull
    public static final int[] getEmptyIntArray() {
        return EmptyIntArray;
    }

    public static final int hash(int i10) {
        int hashCode = Integer.hashCode(i10) * ScatterMapKt.MurmurHashC1;
        return hashCode ^ (hashCode << 16);
    }

    @NotNull
    public static final IntSet intSetOf() {
        return EmptyIntSet;
    }

    @NotNull
    public static final MutableIntSet mutableIntSetOf() {
        return new MutableIntSet(0, 1, null);
    }

    @NotNull
    public static final IntSet buildIntSet(int i10, @NotNull Function1<? super MutableIntSet, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntSet mutableIntSet = new MutableIntSet(i10);
        builderAction.invoke(mutableIntSet);
        return mutableIntSet;
    }

    @NotNull
    public static final IntSet intSetOf(int i10) {
        return mutableIntSetOf(i10);
    }

    @NotNull
    public static final MutableIntSet mutableIntSetOf(int i10) {
        MutableIntSet mutableIntSet = new MutableIntSet(1);
        mutableIntSet.plusAssign(i10);
        return mutableIntSet;
    }

    @NotNull
    public static final IntSet intSetOf(int i10, int i11) {
        return mutableIntSetOf(i10, i11);
    }

    @NotNull
    public static final MutableIntSet mutableIntSetOf(int i10, int i11) {
        MutableIntSet mutableIntSet = new MutableIntSet(2);
        mutableIntSet.plusAssign(i10);
        mutableIntSet.plusAssign(i11);
        return mutableIntSet;
    }

    @NotNull
    public static final IntSet intSetOf(int i10, int i11, int i12) {
        return mutableIntSetOf(i10, i11, i12);
    }

    @NotNull
    public static final IntSet intSetOf(@NotNull int... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableIntSet mutableIntSet = new MutableIntSet(elements.length);
        mutableIntSet.plusAssign(elements);
        return mutableIntSet;
    }

    @NotNull
    public static final MutableIntSet mutableIntSetOf(int i10, int i11, int i12) {
        MutableIntSet mutableIntSet = new MutableIntSet(3);
        mutableIntSet.plusAssign(i10);
        mutableIntSet.plusAssign(i11);
        mutableIntSet.plusAssign(i12);
        return mutableIntSet;
    }

    @NotNull
    public static final MutableIntSet mutableIntSetOf(@NotNull int... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableIntSet mutableIntSet = new MutableIntSet(elements.length);
        mutableIntSet.plusAssign(elements);
        return mutableIntSet;
    }
}
