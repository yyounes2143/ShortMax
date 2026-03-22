package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LongFloatMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongFloatMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongFloatMap.kt\nandroidx/collection/LongFloatMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1036:1\n1#2:1037\n*E\n"})
/* loaded from: classes.dex */
public final class LongFloatMapKt {
    @NotNull
    private static final MutableLongFloatMap EmptyLongFloatMap = new MutableLongFloatMap(0);

    @NotNull
    public static final LongFloatMap buildLongFloatMap(@NotNull Function1<? super MutableLongFloatMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        builderAction.invoke(mutableLongFloatMap);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final LongFloatMap emptyLongFloatMap() {
        return EmptyLongFloatMap;
    }

    @NotNull
    public static final LongFloatMap longFloatMapOf() {
        return EmptyLongFloatMap;
    }

    @NotNull
    public static final MutableLongFloatMap mutableLongFloatMapOf() {
        return new MutableLongFloatMap(0, 1, null);
    }

    @NotNull
    public static final LongFloatMap buildLongFloatMap(int i10, @NotNull Function1<? super MutableLongFloatMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(i10);
        builderAction.invoke(mutableLongFloatMap);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final LongFloatMap longFloatMapOf(long j10, float f10) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final MutableLongFloatMap mutableLongFloatMapOf(long j10, float f10) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final LongFloatMap longFloatMapOf(long j10, float f10, long j11, float f11) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        mutableLongFloatMap.set(j11, f11);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final MutableLongFloatMap mutableLongFloatMapOf(long j10, float f10, long j11, float f11) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        mutableLongFloatMap.set(j11, f11);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final LongFloatMap longFloatMapOf(long j10, float f10, long j11, float f11, long j12, float f12) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        mutableLongFloatMap.set(j11, f11);
        mutableLongFloatMap.set(j12, f12);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final MutableLongFloatMap mutableLongFloatMapOf(long j10, float f10, long j11, float f11, long j12, float f12) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        mutableLongFloatMap.set(j11, f11);
        mutableLongFloatMap.set(j12, f12);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final LongFloatMap longFloatMapOf(long j10, float f10, long j11, float f11, long j12, float f12, long j13, float f13) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        mutableLongFloatMap.set(j11, f11);
        mutableLongFloatMap.set(j12, f12);
        mutableLongFloatMap.set(j13, f13);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final MutableLongFloatMap mutableLongFloatMapOf(long j10, float f10, long j11, float f11, long j12, float f12, long j13, float f13) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        mutableLongFloatMap.set(j11, f11);
        mutableLongFloatMap.set(j12, f12);
        mutableLongFloatMap.set(j13, f13);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final LongFloatMap longFloatMapOf(long j10, float f10, long j11, float f11, long j12, float f12, long j13, float f13, long j14, float f14) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        mutableLongFloatMap.set(j11, f11);
        mutableLongFloatMap.set(j12, f12);
        mutableLongFloatMap.set(j13, f13);
        mutableLongFloatMap.set(j14, f14);
        return mutableLongFloatMap;
    }

    @NotNull
    public static final MutableLongFloatMap mutableLongFloatMapOf(long j10, float f10, long j11, float f11, long j12, float f12, long j13, float f13, long j14, float f14) {
        MutableLongFloatMap mutableLongFloatMap = new MutableLongFloatMap(0, 1, null);
        mutableLongFloatMap.set(j10, f10);
        mutableLongFloatMap.set(j11, f11);
        mutableLongFloatMap.set(j12, f12);
        mutableLongFloatMap.set(j13, f13);
        mutableLongFloatMap.set(j14, f14);
        return mutableLongFloatMap;
    }
}
