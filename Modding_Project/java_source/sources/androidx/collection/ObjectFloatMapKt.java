package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ObjectFloatMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nObjectFloatMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectFloatMap.kt\nandroidx/collection/ObjectFloatMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1051:1\n1#2:1052\n*E\n"})
/* loaded from: classes.dex */
public final class ObjectFloatMapKt {
    @NotNull
    private static final MutableObjectFloatMap<Object> EmptyObjectFloatMap = new MutableObjectFloatMap<>(0);

    @NotNull
    public static final <K> ObjectFloatMap<K> buildObjectFloatMap(@NotNull Function1<? super MutableObjectFloatMap<K>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableObjectFloatMap mutableObjectFloatMap = new MutableObjectFloatMap(0, 1, null);
        builderAction.invoke(mutableObjectFloatMap);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> ObjectFloatMap<K> emptyObjectFloatMap() {
        MutableObjectFloatMap<Object> mutableObjectFloatMap = EmptyObjectFloatMap;
        Intrinsics.checkNotNull(mutableObjectFloatMap, "null cannot be cast to non-null type androidx.collection.ObjectFloatMap<K of androidx.collection.ObjectFloatMapKt.emptyObjectFloatMap>");
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> MutableObjectFloatMap<K> mutableObjectFloatMapOf() {
        return new MutableObjectFloatMap<>(0, 1, null);
    }

    @NotNull
    public static final <K> ObjectFloatMap<K> objectFloatMap() {
        MutableObjectFloatMap<Object> mutableObjectFloatMap = EmptyObjectFloatMap;
        Intrinsics.checkNotNull(mutableObjectFloatMap, "null cannot be cast to non-null type androidx.collection.ObjectFloatMap<K of androidx.collection.ObjectFloatMapKt.objectFloatMap>");
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> ObjectFloatMap<K> objectFloatMapOf(K k10, float f10) {
        MutableObjectFloatMap mutableObjectFloatMap = new MutableObjectFloatMap(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> ObjectFloatMap<K> buildObjectFloatMap(int i10, @NotNull Function1<? super MutableObjectFloatMap<K>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableObjectFloatMap mutableObjectFloatMap = new MutableObjectFloatMap(i10);
        builderAction.invoke(mutableObjectFloatMap);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> MutableObjectFloatMap<K> mutableObjectFloatMapOf(K k10, float f10) {
        MutableObjectFloatMap<K> mutableObjectFloatMap = new MutableObjectFloatMap<>(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> ObjectFloatMap<K> objectFloatMapOf(K k10, float f10, K k11, float f11) {
        MutableObjectFloatMap mutableObjectFloatMap = new MutableObjectFloatMap(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        mutableObjectFloatMap.set(k11, f11);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> MutableObjectFloatMap<K> mutableObjectFloatMapOf(K k10, float f10, K k11, float f11) {
        MutableObjectFloatMap<K> mutableObjectFloatMap = new MutableObjectFloatMap<>(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        mutableObjectFloatMap.set(k11, f11);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> ObjectFloatMap<K> objectFloatMapOf(K k10, float f10, K k11, float f11, K k12, float f12) {
        MutableObjectFloatMap mutableObjectFloatMap = new MutableObjectFloatMap(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        mutableObjectFloatMap.set(k11, f11);
        mutableObjectFloatMap.set(k12, f12);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> MutableObjectFloatMap<K> mutableObjectFloatMapOf(K k10, float f10, K k11, float f11, K k12, float f12) {
        MutableObjectFloatMap<K> mutableObjectFloatMap = new MutableObjectFloatMap<>(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        mutableObjectFloatMap.set(k11, f11);
        mutableObjectFloatMap.set(k12, f12);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> ObjectFloatMap<K> objectFloatMapOf(K k10, float f10, K k11, float f11, K k12, float f12, K k13, float f13) {
        MutableObjectFloatMap mutableObjectFloatMap = new MutableObjectFloatMap(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        mutableObjectFloatMap.set(k11, f11);
        mutableObjectFloatMap.set(k12, f12);
        mutableObjectFloatMap.set(k13, f13);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> MutableObjectFloatMap<K> mutableObjectFloatMapOf(K k10, float f10, K k11, float f11, K k12, float f12, K k13, float f13) {
        MutableObjectFloatMap<K> mutableObjectFloatMap = new MutableObjectFloatMap<>(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        mutableObjectFloatMap.set(k11, f11);
        mutableObjectFloatMap.set(k12, f12);
        mutableObjectFloatMap.set(k13, f13);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> ObjectFloatMap<K> objectFloatMapOf(K k10, float f10, K k11, float f11, K k12, float f12, K k13, float f13, K k14, float f14) {
        MutableObjectFloatMap mutableObjectFloatMap = new MutableObjectFloatMap(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        mutableObjectFloatMap.set(k11, f11);
        mutableObjectFloatMap.set(k12, f12);
        mutableObjectFloatMap.set(k13, f13);
        mutableObjectFloatMap.set(k14, f14);
        return mutableObjectFloatMap;
    }

    @NotNull
    public static final <K> MutableObjectFloatMap<K> mutableObjectFloatMapOf(K k10, float f10, K k11, float f11, K k12, float f12, K k13, float f13, K k14, float f14) {
        MutableObjectFloatMap<K> mutableObjectFloatMap = new MutableObjectFloatMap<>(0, 1, null);
        mutableObjectFloatMap.set(k10, f10);
        mutableObjectFloatMap.set(k11, f11);
        mutableObjectFloatMap.set(k12, f12);
        mutableObjectFloatMap.set(k13, f13);
        mutableObjectFloatMap.set(k14, f14);
        return mutableObjectFloatMap;
    }
}
