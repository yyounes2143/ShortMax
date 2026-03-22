package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LongSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongSet.kt\nandroidx/collection/LongSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,885:1\n1#2:886\n*E\n"})
/* loaded from: classes.dex */
public final class LongSetKt {
    @NotNull
    private static final MutableLongSet EmptyLongSet = new MutableLongSet(0);
    @NotNull
    private static final long[] EmptyLongArray = new long[0];

    @NotNull
    public static final LongSet buildLongSet(@NotNull Function1<? super MutableLongSet, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableLongSet mutableLongSet = new MutableLongSet(0, 1, null);
        builderAction.invoke(mutableLongSet);
        return mutableLongSet;
    }

    @NotNull
    public static final LongSet emptyLongSet() {
        return EmptyLongSet;
    }

    @NotNull
    public static final long[] getEmptyLongArray() {
        return EmptyLongArray;
    }

    public static final int hash(long j10) {
        int hashCode = Long.hashCode(j10) * ScatterMapKt.MurmurHashC1;
        return hashCode ^ (hashCode << 16);
    }

    @NotNull
    public static final LongSet longSetOf() {
        return EmptyLongSet;
    }

    @NotNull
    public static final MutableLongSet mutableLongSetOf() {
        return new MutableLongSet(0, 1, null);
    }

    @NotNull
    public static final LongSet buildLongSet(int i10, @NotNull Function1<? super MutableLongSet, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableLongSet mutableLongSet = new MutableLongSet(i10);
        builderAction.invoke(mutableLongSet);
        return mutableLongSet;
    }

    @NotNull
    public static final LongSet longSetOf(long j10) {
        return mutableLongSetOf(j10);
    }

    @NotNull
    public static final MutableLongSet mutableLongSetOf(long j10) {
        MutableLongSet mutableLongSet = new MutableLongSet(1);
        mutableLongSet.plusAssign(j10);
        return mutableLongSet;
    }

    @NotNull
    public static final LongSet longSetOf(long j10, long j11) {
        return mutableLongSetOf(j10, j11);
    }

    @NotNull
    public static final MutableLongSet mutableLongSetOf(long j10, long j11) {
        MutableLongSet mutableLongSet = new MutableLongSet(2);
        mutableLongSet.plusAssign(j10);
        mutableLongSet.plusAssign(j11);
        return mutableLongSet;
    }

    @NotNull
    public static final LongSet longSetOf(long j10, long j11, long j12) {
        return mutableLongSetOf(j10, j11, j12);
    }

    @NotNull
    public static final LongSet longSetOf(@NotNull long... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableLongSet mutableLongSet = new MutableLongSet(elements.length);
        mutableLongSet.plusAssign(elements);
        return mutableLongSet;
    }

    @NotNull
    public static final MutableLongSet mutableLongSetOf(long j10, long j11, long j12) {
        MutableLongSet mutableLongSet = new MutableLongSet(3);
        mutableLongSet.plusAssign(j10);
        mutableLongSet.plusAssign(j11);
        mutableLongSet.plusAssign(j12);
        return mutableLongSet;
    }

    @NotNull
    public static final MutableLongSet mutableLongSetOf(@NotNull long... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableLongSet mutableLongSet = new MutableLongSet(elements.length);
        mutableLongSet.plusAssign(elements);
        return mutableLongSet;
    }
}
