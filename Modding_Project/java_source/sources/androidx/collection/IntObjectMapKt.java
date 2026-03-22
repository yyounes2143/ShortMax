package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntObjectMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntObjectMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntObjectMap.kt\nandroidx/collection/IntObjectMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1017:1\n1#2:1018\n*E\n"})
/* loaded from: classes.dex */
public final class IntObjectMapKt {
    @NotNull
    private static final MutableIntObjectMap EmptyIntObjectMap = new MutableIntObjectMap(0);

    @NotNull
    public static final <V> IntObjectMap<V> buildIntObjectMap(@NotNull Function1<? super MutableIntObjectMap<V>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        builderAction.invoke(mutableIntObjectMap);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> IntObjectMap<V> emptyIntObjectMap() {
        MutableIntObjectMap mutableIntObjectMap = EmptyIntObjectMap;
        Intrinsics.checkNotNull(mutableIntObjectMap, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.emptyIntObjectMap>");
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> IntObjectMap<V> intObjectMapOf() {
        MutableIntObjectMap mutableIntObjectMap = EmptyIntObjectMap;
        Intrinsics.checkNotNull(mutableIntObjectMap, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>");
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf() {
        return new MutableIntObjectMap<>(0, 1, null);
    }

    @NotNull
    public static final <V> IntObjectMap<V> buildIntObjectMap(int i10, @NotNull Function1<? super MutableIntObjectMap<V>, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(i10);
        builderAction.invoke(mutableIntObjectMap);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> IntObjectMap<V> intObjectMapOf(int i10, V v10) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i10, V v10) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> IntObjectMap<V> intObjectMapOf(int i10, V v10, int i11, V v11) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        mutableIntObjectMap.set(i11, v11);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i10, V v10, int i11, V v11) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        mutableIntObjectMap.set(i11, v11);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> IntObjectMap<V> intObjectMapOf(int i10, V v10, int i11, V v11, int i12, V v12) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        mutableIntObjectMap.set(i11, v11);
        mutableIntObjectMap.set(i12, v12);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i10, V v10, int i11, V v11, int i12, V v12) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        mutableIntObjectMap.set(i11, v11);
        mutableIntObjectMap.set(i12, v12);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> IntObjectMap<V> intObjectMapOf(int i10, V v10, int i11, V v11, int i12, V v12, int i13, V v13) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        mutableIntObjectMap.set(i11, v11);
        mutableIntObjectMap.set(i12, v12);
        mutableIntObjectMap.set(i13, v13);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i10, V v10, int i11, V v11, int i12, V v12, int i13, V v13) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        mutableIntObjectMap.set(i11, v11);
        mutableIntObjectMap.set(i12, v12);
        mutableIntObjectMap.set(i13, v13);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> IntObjectMap<V> intObjectMapOf(int i10, V v10, int i11, V v11, int i12, V v12, int i13, V v13, int i14, V v14) {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        mutableIntObjectMap.set(i11, v11);
        mutableIntObjectMap.set(i12, v12);
        mutableIntObjectMap.set(i13, v13);
        mutableIntObjectMap.set(i14, v14);
        return mutableIntObjectMap;
    }

    @NotNull
    public static final <V> MutableIntObjectMap<V> mutableIntObjectMapOf(int i10, V v10, int i11, V v11, int i12, V v12, int i13, V v13, int i14, V v14) {
        MutableIntObjectMap<V> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        mutableIntObjectMap.set(i10, v10);
        mutableIntObjectMap.set(i11, v11);
        mutableIntObjectMap.set(i12, v12);
        mutableIntObjectMap.set(i13, v13);
        mutableIntObjectMap.set(i14, v14);
        return mutableIntObjectMap;
    }
}
