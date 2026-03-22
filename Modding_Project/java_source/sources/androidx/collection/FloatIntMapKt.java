package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatIntMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatIntMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatIntMap.kt\nandroidx/collection/FloatIntMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1034:1\n1#2:1035\n*E\n"})
/* loaded from: classes.dex */
public final class FloatIntMapKt {
    @NotNull
    private static final MutableFloatIntMap EmptyFloatIntMap = new MutableFloatIntMap(0);

    @NotNull
    public static final FloatIntMap buildFloatIntMap(@NotNull Function1<? super MutableFloatIntMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        builderAction.invoke(mutableFloatIntMap);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final FloatIntMap emptyFloatIntMap() {
        return EmptyFloatIntMap;
    }

    @NotNull
    public static final FloatIntMap floatIntMapOf() {
        return EmptyFloatIntMap;
    }

    @NotNull
    public static final MutableFloatIntMap mutableFloatIntMapOf() {
        return new MutableFloatIntMap(0, 1, null);
    }

    @NotNull
    public static final FloatIntMap buildFloatIntMap(int i10, @NotNull Function1<? super MutableFloatIntMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(i10);
        builderAction.invoke(mutableFloatIntMap);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final FloatIntMap floatIntMapOf(float f10, int i10) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final MutableFloatIntMap mutableFloatIntMapOf(float f10, int i10) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final FloatIntMap floatIntMapOf(float f10, int i10, float f11, int i11) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        mutableFloatIntMap.set(f11, i11);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final MutableFloatIntMap mutableFloatIntMapOf(float f10, int i10, float f11, int i11) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        mutableFloatIntMap.set(f11, i11);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final FloatIntMap floatIntMapOf(float f10, int i10, float f11, int i11, float f12, int i12) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        mutableFloatIntMap.set(f11, i11);
        mutableFloatIntMap.set(f12, i12);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final MutableFloatIntMap mutableFloatIntMapOf(float f10, int i10, float f11, int i11, float f12, int i12) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        mutableFloatIntMap.set(f11, i11);
        mutableFloatIntMap.set(f12, i12);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final FloatIntMap floatIntMapOf(float f10, int i10, float f11, int i11, float f12, int i12, float f13, int i13) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        mutableFloatIntMap.set(f11, i11);
        mutableFloatIntMap.set(f12, i12);
        mutableFloatIntMap.set(f13, i13);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final MutableFloatIntMap mutableFloatIntMapOf(float f10, int i10, float f11, int i11, float f12, int i12, float f13, int i13) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        mutableFloatIntMap.set(f11, i11);
        mutableFloatIntMap.set(f12, i12);
        mutableFloatIntMap.set(f13, i13);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final FloatIntMap floatIntMapOf(float f10, int i10, float f11, int i11, float f12, int i12, float f13, int i13, float f14, int i14) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        mutableFloatIntMap.set(f11, i11);
        mutableFloatIntMap.set(f12, i12);
        mutableFloatIntMap.set(f13, i13);
        mutableFloatIntMap.set(f14, i14);
        return mutableFloatIntMap;
    }

    @NotNull
    public static final MutableFloatIntMap mutableFloatIntMapOf(float f10, int i10, float f11, int i11, float f12, int i12, float f13, int i13, float f14, int i14) {
        MutableFloatIntMap mutableFloatIntMap = new MutableFloatIntMap(0, 1, null);
        mutableFloatIntMap.set(f10, i10);
        mutableFloatIntMap.set(f11, i11);
        mutableFloatIntMap.set(f12, i12);
        mutableFloatIntMap.set(f13, i13);
        mutableFloatIntMap.set(f14, i14);
        return mutableFloatIntMap;
    }
}
