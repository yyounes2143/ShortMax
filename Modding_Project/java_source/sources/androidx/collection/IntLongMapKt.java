package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntLongMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntLongMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntLongMap.kt\nandroidx/collection/IntLongMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1034:1\n1#2:1035\n*E\n"})
/* loaded from: classes.dex */
public final class IntLongMapKt {
    @NotNull
    private static final MutableIntLongMap EmptyIntLongMap = new MutableIntLongMap(0);

    @NotNull
    public static final IntLongMap buildIntLongMap(@NotNull Function1<? super MutableIntLongMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        builderAction.invoke(mutableIntLongMap);
        return mutableIntLongMap;
    }

    @NotNull
    public static final IntLongMap emptyIntLongMap() {
        return EmptyIntLongMap;
    }

    @NotNull
    public static final IntLongMap intLongMapOf() {
        return EmptyIntLongMap;
    }

    @NotNull
    public static final MutableIntLongMap mutableIntLongMapOf() {
        return new MutableIntLongMap(0, 1, null);
    }

    @NotNull
    public static final IntLongMap buildIntLongMap(int i10, @NotNull Function1<? super MutableIntLongMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(i10);
        builderAction.invoke(mutableIntLongMap);
        return mutableIntLongMap;
    }

    @NotNull
    public static final IntLongMap intLongMapOf(int i10, long j10) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        return mutableIntLongMap;
    }

    @NotNull
    public static final MutableIntLongMap mutableIntLongMapOf(int i10, long j10) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        return mutableIntLongMap;
    }

    @NotNull
    public static final IntLongMap intLongMapOf(int i10, long j10, int i11, long j11) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        mutableIntLongMap.set(i11, j11);
        return mutableIntLongMap;
    }

    @NotNull
    public static final MutableIntLongMap mutableIntLongMapOf(int i10, long j10, int i11, long j11) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        mutableIntLongMap.set(i11, j11);
        return mutableIntLongMap;
    }

    @NotNull
    public static final IntLongMap intLongMapOf(int i10, long j10, int i11, long j11, int i12, long j12) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        mutableIntLongMap.set(i11, j11);
        mutableIntLongMap.set(i12, j12);
        return mutableIntLongMap;
    }

    @NotNull
    public static final MutableIntLongMap mutableIntLongMapOf(int i10, long j10, int i11, long j11, int i12, long j12) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        mutableIntLongMap.set(i11, j11);
        mutableIntLongMap.set(i12, j12);
        return mutableIntLongMap;
    }

    @NotNull
    public static final IntLongMap intLongMapOf(int i10, long j10, int i11, long j11, int i12, long j12, int i13, long j13) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        mutableIntLongMap.set(i11, j11);
        mutableIntLongMap.set(i12, j12);
        mutableIntLongMap.set(i13, j13);
        return mutableIntLongMap;
    }

    @NotNull
    public static final MutableIntLongMap mutableIntLongMapOf(int i10, long j10, int i11, long j11, int i12, long j12, int i13, long j13) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        mutableIntLongMap.set(i11, j11);
        mutableIntLongMap.set(i12, j12);
        mutableIntLongMap.set(i13, j13);
        return mutableIntLongMap;
    }

    @NotNull
    public static final IntLongMap intLongMapOf(int i10, long j10, int i11, long j11, int i12, long j12, int i13, long j13, int i14, long j14) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        mutableIntLongMap.set(i11, j11);
        mutableIntLongMap.set(i12, j12);
        mutableIntLongMap.set(i13, j13);
        mutableIntLongMap.set(i14, j14);
        return mutableIntLongMap;
    }

    @NotNull
    public static final MutableIntLongMap mutableIntLongMapOf(int i10, long j10, int i11, long j11, int i12, long j12, int i13, long j13, int i14, long j14) {
        MutableIntLongMap mutableIntLongMap = new MutableIntLongMap(0, 1, null);
        mutableIntLongMap.set(i10, j10);
        mutableIntLongMap.set(i11, j11);
        mutableIntLongMap.set(i12, j12);
        mutableIntLongMap.set(i13, j13);
        mutableIntLongMap.set(i14, j14);
        return mutableIntLongMap;
    }
}
