package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatFloatMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatFloatMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatFloatMap.kt\nandroidx/collection/FloatFloatMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1036:1\n1#2:1037\n*E\n"})
/* loaded from: classes.dex */
public final class FloatFloatMapKt {
    @NotNull
    private static final MutableFloatFloatMap EmptyFloatFloatMap = new MutableFloatFloatMap(0);

    @NotNull
    public static final FloatFloatMap buildFloatFloatMap(@NotNull Function1<? super MutableFloatFloatMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        builderAction.invoke(mutableFloatFloatMap);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final FloatFloatMap emptyFloatFloatMap() {
        return EmptyFloatFloatMap;
    }

    @NotNull
    public static final FloatFloatMap floatFloatMapOf() {
        return EmptyFloatFloatMap;
    }

    @NotNull
    public static final MutableFloatFloatMap mutableFloatFloatMapOf() {
        return new MutableFloatFloatMap(0, 1, null);
    }

    @NotNull
    public static final FloatFloatMap buildFloatFloatMap(int i10, @NotNull Function1<? super MutableFloatFloatMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(i10);
        builderAction.invoke(mutableFloatFloatMap);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final FloatFloatMap floatFloatMapOf(float f10, float f11) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f10, float f11) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final FloatFloatMap floatFloatMapOf(float f10, float f11, float f12, float f13) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        mutableFloatFloatMap.set(f12, f13);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f10, float f11, float f12, float f13) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        mutableFloatFloatMap.set(f12, f13);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final FloatFloatMap floatFloatMapOf(float f10, float f11, float f12, float f13, float f14, float f15) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        mutableFloatFloatMap.set(f12, f13);
        mutableFloatFloatMap.set(f14, f15);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f10, float f11, float f12, float f13, float f14, float f15) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        mutableFloatFloatMap.set(f12, f13);
        mutableFloatFloatMap.set(f14, f15);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final FloatFloatMap floatFloatMapOf(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        mutableFloatFloatMap.set(f12, f13);
        mutableFloatFloatMap.set(f14, f15);
        mutableFloatFloatMap.set(f16, f17);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        mutableFloatFloatMap.set(f12, f13);
        mutableFloatFloatMap.set(f14, f15);
        mutableFloatFloatMap.set(f16, f17);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final FloatFloatMap floatFloatMapOf(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        mutableFloatFloatMap.set(f12, f13);
        mutableFloatFloatMap.set(f14, f15);
        mutableFloatFloatMap.set(f16, f17);
        mutableFloatFloatMap.set(f18, f19);
        return mutableFloatFloatMap;
    }

    @NotNull
    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f10, f11);
        mutableFloatFloatMap.set(f12, f13);
        mutableFloatFloatMap.set(f14, f15);
        mutableFloatFloatMap.set(f16, f17);
        mutableFloatFloatMap.set(f18, f19);
        return mutableFloatFloatMap;
    }
}
