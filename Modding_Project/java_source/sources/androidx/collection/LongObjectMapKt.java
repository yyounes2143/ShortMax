package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LongObjectMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongObjectMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongObjectMap.kt\nandroidx/collection/LongObjectMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1017:1\n1#2:1018\n*E\n"})
/* loaded from: classes.dex */
public final class LongObjectMapKt {
    @NotNull
    private static final MutableLongObjectMap EmptyLongObjectMap = new MutableLongObjectMap(0);

    @NotNull
    public static final <V> LongObjectMap<V> buildLongObjectMap(@NotNull Function1<? super MutableLongObjectMap<V>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        builderAction.invoke(mutableLongObjectMap);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> LongObjectMap<V> emptyLongObjectMap() {
        MutableLongObjectMap mutableLongObjectMap = EmptyLongObjectMap;
        Intrinsics.checkNotNull(mutableLongObjectMap, "null cannot be cast to non-null type androidx.collection.LongObjectMap<V of androidx.collection.LongObjectMapKt.emptyLongObjectMap>");
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> LongObjectMap<V> longObjectMapOf() {
        MutableLongObjectMap mutableLongObjectMap = EmptyLongObjectMap;
        Intrinsics.checkNotNull(mutableLongObjectMap, "null cannot be cast to non-null type androidx.collection.LongObjectMap<V of androidx.collection.LongObjectMapKt.longObjectMapOf>");
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf() {
        return new MutableLongObjectMap<>(0, 1, null);
    }

    @NotNull
    public static final <V> LongObjectMap<V> buildLongObjectMap(int i10, @NotNull Function1<? super MutableLongObjectMap<V>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(i10);
        builderAction.invoke(mutableLongObjectMap);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> LongObjectMap<V> longObjectMapOf(long j10, V v10) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j10, V v10) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> LongObjectMap<V> longObjectMapOf(long j10, V v10, long j11, V v11) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        mutableLongObjectMap.set(j11, v11);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j10, V v10, long j11, V v11) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        mutableLongObjectMap.set(j11, v11);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> LongObjectMap<V> longObjectMapOf(long j10, V v10, long j11, V v11, long j12, V v12) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        mutableLongObjectMap.set(j11, v11);
        mutableLongObjectMap.set(j12, v12);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j10, V v10, long j11, V v11, long j12, V v12) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        mutableLongObjectMap.set(j11, v11);
        mutableLongObjectMap.set(j12, v12);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> LongObjectMap<V> longObjectMapOf(long j10, V v10, long j11, V v11, long j12, V v12, long j13, V v13) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        mutableLongObjectMap.set(j11, v11);
        mutableLongObjectMap.set(j12, v12);
        mutableLongObjectMap.set(j13, v13);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j10, V v10, long j11, V v11, long j12, V v12, long j13, V v13) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        mutableLongObjectMap.set(j11, v11);
        mutableLongObjectMap.set(j12, v12);
        mutableLongObjectMap.set(j13, v13);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> LongObjectMap<V> longObjectMapOf(long j10, V v10, long j11, V v11, long j12, V v12, long j13, V v13, long j14, V v14) {
        MutableLongObjectMap mutableLongObjectMap = new MutableLongObjectMap(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        mutableLongObjectMap.set(j11, v11);
        mutableLongObjectMap.set(j12, v12);
        mutableLongObjectMap.set(j13, v13);
        mutableLongObjectMap.set(j14, v14);
        return mutableLongObjectMap;
    }

    @NotNull
    public static final <V> MutableLongObjectMap<V> mutableLongObjectMapOf(long j10, V v10, long j11, V v11, long j12, V v12, long j13, V v13, long j14, V v14) {
        MutableLongObjectMap<V> mutableLongObjectMap = new MutableLongObjectMap<>(0, 1, null);
        mutableLongObjectMap.set(j10, v10);
        mutableLongObjectMap.set(j11, v11);
        mutableLongObjectMap.set(j12, v12);
        mutableLongObjectMap.set(j13, v13);
        mutableLongObjectMap.set(j14, v14);
        return mutableLongObjectMap;
    }
}
