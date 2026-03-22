package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatLongMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatLongMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatLongMap.kt\nandroidx/collection/FloatLongMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1036:1\n1#2:1037\n*E\n"})
/* loaded from: classes.dex */
public final class FloatLongMapKt {
    @NotNull
    private static final MutableFloatLongMap EmptyFloatLongMap = new MutableFloatLongMap(0);

    @NotNull
    public static final FloatLongMap buildFloatLongMap(@NotNull Function1<? super MutableFloatLongMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        builderAction.invoke(mutableFloatLongMap);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final FloatLongMap emptyFloatLongMap() {
        return EmptyFloatLongMap;
    }

    @NotNull
    public static final FloatLongMap floatLongMapOf() {
        return EmptyFloatLongMap;
    }

    @NotNull
    public static final MutableFloatLongMap mutableFloatLongMapOf() {
        return new MutableFloatLongMap(0, 1, null);
    }

    @NotNull
    public static final FloatLongMap buildFloatLongMap(int i10, @NotNull Function1<? super MutableFloatLongMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(i10);
        builderAction.invoke(mutableFloatLongMap);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final FloatLongMap floatLongMapOf(float f10, long j10) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final MutableFloatLongMap mutableFloatLongMapOf(float f10, long j10) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final FloatLongMap floatLongMapOf(float f10, long j10, float f11, long j11) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        mutableFloatLongMap.set(f11, j11);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final MutableFloatLongMap mutableFloatLongMapOf(float f10, long j10, float f11, long j11) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        mutableFloatLongMap.set(f11, j11);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final FloatLongMap floatLongMapOf(float f10, long j10, float f11, long j11, float f12, long j12) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        mutableFloatLongMap.set(f11, j11);
        mutableFloatLongMap.set(f12, j12);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final MutableFloatLongMap mutableFloatLongMapOf(float f10, long j10, float f11, long j11, float f12, long j12) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        mutableFloatLongMap.set(f11, j11);
        mutableFloatLongMap.set(f12, j12);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final FloatLongMap floatLongMapOf(float f10, long j10, float f11, long j11, float f12, long j12, float f13, long j13) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        mutableFloatLongMap.set(f11, j11);
        mutableFloatLongMap.set(f12, j12);
        mutableFloatLongMap.set(f13, j13);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final MutableFloatLongMap mutableFloatLongMapOf(float f10, long j10, float f11, long j11, float f12, long j12, float f13, long j13) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        mutableFloatLongMap.set(f11, j11);
        mutableFloatLongMap.set(f12, j12);
        mutableFloatLongMap.set(f13, j13);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final FloatLongMap floatLongMapOf(float f10, long j10, float f11, long j11, float f12, long j12, float f13, long j13, float f14, long j14) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        mutableFloatLongMap.set(f11, j11);
        mutableFloatLongMap.set(f12, j12);
        mutableFloatLongMap.set(f13, j13);
        mutableFloatLongMap.set(f14, j14);
        return mutableFloatLongMap;
    }

    @NotNull
    public static final MutableFloatLongMap mutableFloatLongMapOf(float f10, long j10, float f11, long j11, float f12, long j12, float f13, long j13, float f14, long j14) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f10, j10);
        mutableFloatLongMap.set(f11, j11);
        mutableFloatLongMap.set(f12, j12);
        mutableFloatLongMap.set(f13, j13);
        mutableFloatLongMap.set(f14, j14);
        return mutableFloatLongMap;
    }
}
