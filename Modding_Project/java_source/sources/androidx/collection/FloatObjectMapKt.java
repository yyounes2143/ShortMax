package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatObjectMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatObjectMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatObjectMap.kt\nandroidx/collection/FloatObjectMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1017:1\n1#2:1018\n*E\n"})
/* loaded from: classes.dex */
public final class FloatObjectMapKt {
    @NotNull
    private static final MutableFloatObjectMap EmptyFloatObjectMap = new MutableFloatObjectMap(0);

    @NotNull
    public static final <V> FloatObjectMap<V> buildFloatObjectMap(@NotNull Function1<? super MutableFloatObjectMap<V>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatObjectMap mutableFloatObjectMap = new MutableFloatObjectMap(0, 1, null);
        builderAction.invoke(mutableFloatObjectMap);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> FloatObjectMap<V> emptyFloatObjectMap() {
        MutableFloatObjectMap mutableFloatObjectMap = EmptyFloatObjectMap;
        Intrinsics.checkNotNull(mutableFloatObjectMap, "null cannot be cast to non-null type androidx.collection.FloatObjectMap<V of androidx.collection.FloatObjectMapKt.emptyFloatObjectMap>");
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> FloatObjectMap<V> floatObjectMapOf() {
        MutableFloatObjectMap mutableFloatObjectMap = EmptyFloatObjectMap;
        Intrinsics.checkNotNull(mutableFloatObjectMap, "null cannot be cast to non-null type androidx.collection.FloatObjectMap<V of androidx.collection.FloatObjectMapKt.floatObjectMapOf>");
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> MutableFloatObjectMap<V> mutableFloatObjectMapOf() {
        return new MutableFloatObjectMap<>(0, 1, null);
    }

    @NotNull
    public static final <V> FloatObjectMap<V> buildFloatObjectMap(int i10, @NotNull Function1<? super MutableFloatObjectMap<V>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatObjectMap mutableFloatObjectMap = new MutableFloatObjectMap(i10);
        builderAction.invoke(mutableFloatObjectMap);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> FloatObjectMap<V> floatObjectMapOf(float f10, V v10) {
        MutableFloatObjectMap mutableFloatObjectMap = new MutableFloatObjectMap(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> MutableFloatObjectMap<V> mutableFloatObjectMapOf(float f10, V v10) {
        MutableFloatObjectMap<V> mutableFloatObjectMap = new MutableFloatObjectMap<>(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> FloatObjectMap<V> floatObjectMapOf(float f10, V v10, float f11, V v11) {
        MutableFloatObjectMap mutableFloatObjectMap = new MutableFloatObjectMap(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        mutableFloatObjectMap.set(f11, v11);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> MutableFloatObjectMap<V> mutableFloatObjectMapOf(float f10, V v10, float f11, V v11) {
        MutableFloatObjectMap<V> mutableFloatObjectMap = new MutableFloatObjectMap<>(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        mutableFloatObjectMap.set(f11, v11);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> FloatObjectMap<V> floatObjectMapOf(float f10, V v10, float f11, V v11, float f12, V v12) {
        MutableFloatObjectMap mutableFloatObjectMap = new MutableFloatObjectMap(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        mutableFloatObjectMap.set(f11, v11);
        mutableFloatObjectMap.set(f12, v12);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> MutableFloatObjectMap<V> mutableFloatObjectMapOf(float f10, V v10, float f11, V v11, float f12, V v12) {
        MutableFloatObjectMap<V> mutableFloatObjectMap = new MutableFloatObjectMap<>(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        mutableFloatObjectMap.set(f11, v11);
        mutableFloatObjectMap.set(f12, v12);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> FloatObjectMap<V> floatObjectMapOf(float f10, V v10, float f11, V v11, float f12, V v12, float f13, V v13) {
        MutableFloatObjectMap mutableFloatObjectMap = new MutableFloatObjectMap(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        mutableFloatObjectMap.set(f11, v11);
        mutableFloatObjectMap.set(f12, v12);
        mutableFloatObjectMap.set(f13, v13);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> MutableFloatObjectMap<V> mutableFloatObjectMapOf(float f10, V v10, float f11, V v11, float f12, V v12, float f13, V v13) {
        MutableFloatObjectMap<V> mutableFloatObjectMap = new MutableFloatObjectMap<>(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        mutableFloatObjectMap.set(f11, v11);
        mutableFloatObjectMap.set(f12, v12);
        mutableFloatObjectMap.set(f13, v13);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> FloatObjectMap<V> floatObjectMapOf(float f10, V v10, float f11, V v11, float f12, V v12, float f13, V v13, float f14, V v14) {
        MutableFloatObjectMap mutableFloatObjectMap = new MutableFloatObjectMap(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        mutableFloatObjectMap.set(f11, v11);
        mutableFloatObjectMap.set(f12, v12);
        mutableFloatObjectMap.set(f13, v13);
        mutableFloatObjectMap.set(f14, v14);
        return mutableFloatObjectMap;
    }

    @NotNull
    public static final <V> MutableFloatObjectMap<V> mutableFloatObjectMapOf(float f10, V v10, float f11, V v11, float f12, V v12, float f13, V v13, float f14, V v14) {
        MutableFloatObjectMap<V> mutableFloatObjectMap = new MutableFloatObjectMap<>(0, 1, null);
        mutableFloatObjectMap.set(f10, v10);
        mutableFloatObjectMap.set(f11, v11);
        mutableFloatObjectMap.set(f12, v12);
        mutableFloatObjectMap.set(f13, v13);
        mutableFloatObjectMap.set(f14, v14);
        return mutableFloatObjectMap;
    }
}
