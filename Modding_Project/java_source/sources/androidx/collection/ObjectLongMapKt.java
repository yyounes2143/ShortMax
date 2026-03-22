package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ObjectLongMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nObjectLongMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectLongMap.kt\nandroidx/collection/ObjectLongMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1051:1\n1#2:1052\n*E\n"})
/* loaded from: classes.dex */
public final class ObjectLongMapKt {
    @NotNull
    private static final MutableObjectLongMap<Object> EmptyObjectLongMap = new MutableObjectLongMap<>(0);

    @NotNull
    public static final <K> ObjectLongMap<K> buildObjectLongMap(@NotNull Function1<? super MutableObjectLongMap<K>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableObjectLongMap mutableObjectLongMap = new MutableObjectLongMap(0, 1, null);
        builderAction.invoke(mutableObjectLongMap);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> ObjectLongMap<K> emptyObjectLongMap() {
        MutableObjectLongMap<Object> mutableObjectLongMap = EmptyObjectLongMap;
        Intrinsics.checkNotNull(mutableObjectLongMap, "null cannot be cast to non-null type androidx.collection.ObjectLongMap<K of androidx.collection.ObjectLongMapKt.emptyObjectLongMap>");
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> MutableObjectLongMap<K> mutableObjectLongMapOf() {
        return new MutableObjectLongMap<>(0, 1, null);
    }

    @NotNull
    public static final <K> ObjectLongMap<K> objectLongMap() {
        MutableObjectLongMap<Object> mutableObjectLongMap = EmptyObjectLongMap;
        Intrinsics.checkNotNull(mutableObjectLongMap, "null cannot be cast to non-null type androidx.collection.ObjectLongMap<K of androidx.collection.ObjectLongMapKt.objectLongMap>");
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> ObjectLongMap<K> objectLongMapOf(K k10, long j10) {
        MutableObjectLongMap mutableObjectLongMap = new MutableObjectLongMap(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> ObjectLongMap<K> buildObjectLongMap(int i10, @NotNull Function1<? super MutableObjectLongMap<K>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableObjectLongMap mutableObjectLongMap = new MutableObjectLongMap(i10);
        builderAction.invoke(mutableObjectLongMap);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> MutableObjectLongMap<K> mutableObjectLongMapOf(K k10, long j10) {
        MutableObjectLongMap<K> mutableObjectLongMap = new MutableObjectLongMap<>(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> ObjectLongMap<K> objectLongMapOf(K k10, long j10, K k11, long j11) {
        MutableObjectLongMap mutableObjectLongMap = new MutableObjectLongMap(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        mutableObjectLongMap.set(k11, j11);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> MutableObjectLongMap<K> mutableObjectLongMapOf(K k10, long j10, K k11, long j11) {
        MutableObjectLongMap<K> mutableObjectLongMap = new MutableObjectLongMap<>(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        mutableObjectLongMap.set(k11, j11);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> ObjectLongMap<K> objectLongMapOf(K k10, long j10, K k11, long j11, K k12, long j12) {
        MutableObjectLongMap mutableObjectLongMap = new MutableObjectLongMap(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        mutableObjectLongMap.set(k11, j11);
        mutableObjectLongMap.set(k12, j12);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> MutableObjectLongMap<K> mutableObjectLongMapOf(K k10, long j10, K k11, long j11, K k12, long j12) {
        MutableObjectLongMap<K> mutableObjectLongMap = new MutableObjectLongMap<>(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        mutableObjectLongMap.set(k11, j11);
        mutableObjectLongMap.set(k12, j12);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> ObjectLongMap<K> objectLongMapOf(K k10, long j10, K k11, long j11, K k12, long j12, K k13, long j13) {
        MutableObjectLongMap mutableObjectLongMap = new MutableObjectLongMap(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        mutableObjectLongMap.set(k11, j11);
        mutableObjectLongMap.set(k12, j12);
        mutableObjectLongMap.set(k13, j13);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> MutableObjectLongMap<K> mutableObjectLongMapOf(K k10, long j10, K k11, long j11, K k12, long j12, K k13, long j13) {
        MutableObjectLongMap<K> mutableObjectLongMap = new MutableObjectLongMap<>(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        mutableObjectLongMap.set(k11, j11);
        mutableObjectLongMap.set(k12, j12);
        mutableObjectLongMap.set(k13, j13);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> ObjectLongMap<K> objectLongMapOf(K k10, long j10, K k11, long j11, K k12, long j12, K k13, long j13, K k14, long j14) {
        MutableObjectLongMap mutableObjectLongMap = new MutableObjectLongMap(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        mutableObjectLongMap.set(k11, j11);
        mutableObjectLongMap.set(k12, j12);
        mutableObjectLongMap.set(k13, j13);
        mutableObjectLongMap.set(k14, j14);
        return mutableObjectLongMap;
    }

    @NotNull
    public static final <K> MutableObjectLongMap<K> mutableObjectLongMapOf(K k10, long j10, K k11, long j11, K k12, long j12, K k13, long j13, K k14, long j14) {
        MutableObjectLongMap<K> mutableObjectLongMap = new MutableObjectLongMap<>(0, 1, null);
        mutableObjectLongMap.set(k10, j10);
        mutableObjectLongMap.set(k11, j11);
        mutableObjectLongMap.set(k12, j12);
        mutableObjectLongMap.set(k13, j13);
        mutableObjectLongMap.set(k14, j14);
        return mutableObjectLongMap;
    }
}
