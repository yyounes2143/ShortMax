package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ObjectIntMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nObjectIntMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectIntMap.kt\nandroidx/collection/ObjectIntMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1051:1\n1#2:1052\n*E\n"})
/* loaded from: classes.dex */
public final class ObjectIntMapKt {
    @NotNull
    private static final MutableObjectIntMap<Object> EmptyObjectIntMap = new MutableObjectIntMap<>(0);

    @NotNull
    public static final <K> ObjectIntMap<K> buildObjectIntMap(@NotNull Function1<? super MutableObjectIntMap<K>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        builderAction.invoke(mutableObjectIntMap);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> ObjectIntMap<K> emptyObjectIntMap() {
        MutableObjectIntMap<Object> mutableObjectIntMap = EmptyObjectIntMap;
        Intrinsics.checkNotNull(mutableObjectIntMap, "null cannot be cast to non-null type androidx.collection.ObjectIntMap<K of androidx.collection.ObjectIntMapKt.emptyObjectIntMap>");
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf() {
        return new MutableObjectIntMap<>(0, 1, null);
    }

    @NotNull
    public static final <K> ObjectIntMap<K> objectIntMap() {
        MutableObjectIntMap<Object> mutableObjectIntMap = EmptyObjectIntMap;
        Intrinsics.checkNotNull(mutableObjectIntMap, "null cannot be cast to non-null type androidx.collection.ObjectIntMap<K of androidx.collection.ObjectIntMapKt.objectIntMap>");
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> ObjectIntMap<K> objectIntMapOf(K k10, int i10) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> ObjectIntMap<K> buildObjectIntMap(int i10, @NotNull Function1<? super MutableObjectIntMap<K>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(i10);
        builderAction.invoke(mutableObjectIntMap);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k10, int i10) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> ObjectIntMap<K> objectIntMapOf(K k10, int i10, K k11, int i11) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        mutableObjectIntMap.set(k11, i11);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k10, int i10, K k11, int i11) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        mutableObjectIntMap.set(k11, i11);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> ObjectIntMap<K> objectIntMapOf(K k10, int i10, K k11, int i11, K k12, int i12) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        mutableObjectIntMap.set(k11, i11);
        mutableObjectIntMap.set(k12, i12);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k10, int i10, K k11, int i11, K k12, int i12) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        mutableObjectIntMap.set(k11, i11);
        mutableObjectIntMap.set(k12, i12);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> ObjectIntMap<K> objectIntMapOf(K k10, int i10, K k11, int i11, K k12, int i12, K k13, int i13) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        mutableObjectIntMap.set(k11, i11);
        mutableObjectIntMap.set(k12, i12);
        mutableObjectIntMap.set(k13, i13);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k10, int i10, K k11, int i11, K k12, int i12, K k13, int i13) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        mutableObjectIntMap.set(k11, i11);
        mutableObjectIntMap.set(k12, i12);
        mutableObjectIntMap.set(k13, i13);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> ObjectIntMap<K> objectIntMapOf(K k10, int i10, K k11, int i11, K k12, int i12, K k13, int i13, K k14, int i14) {
        MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        mutableObjectIntMap.set(k11, i11);
        mutableObjectIntMap.set(k12, i12);
        mutableObjectIntMap.set(k13, i13);
        mutableObjectIntMap.set(k14, i14);
        return mutableObjectIntMap;
    }

    @NotNull
    public static final <K> MutableObjectIntMap<K> mutableObjectIntMapOf(K k10, int i10, K k11, int i11, K k12, int i12, K k13, int i13, K k14, int i14) {
        MutableObjectIntMap<K> mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
        mutableObjectIntMap.set(k10, i10);
        mutableObjectIntMap.set(k11, i11);
        mutableObjectIntMap.set(k12, i12);
        mutableObjectIntMap.set(k13, i13);
        mutableObjectIntMap.set(k14, i14);
        return mutableObjectIntMap;
    }
}
