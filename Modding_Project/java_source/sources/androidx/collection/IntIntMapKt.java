package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntIntMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntIntMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntIntMap.kt\nandroidx/collection/IntIntMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1034:1\n1#2:1035\n*E\n"})
/* loaded from: classes.dex */
public final class IntIntMapKt {
    @NotNull
    private static final MutableIntIntMap EmptyIntIntMap = new MutableIntIntMap(0);

    @NotNull
    public static final IntIntMap buildIntIntMap(@NotNull Function1<? super MutableIntIntMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        builderAction.invoke(mutableIntIntMap);
        return mutableIntIntMap;
    }

    @NotNull
    public static final IntIntMap emptyIntIntMap() {
        return EmptyIntIntMap;
    }

    @NotNull
    public static final IntIntMap intIntMapOf() {
        return EmptyIntIntMap;
    }

    @NotNull
    public static final MutableIntIntMap mutableIntIntMapOf() {
        return new MutableIntIntMap(0, 1, null);
    }

    @NotNull
    public static final IntIntMap buildIntIntMap(int i10, @NotNull Function1<? super MutableIntIntMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(i10);
        builderAction.invoke(mutableIntIntMap);
        return mutableIntIntMap;
    }

    @NotNull
    public static final IntIntMap intIntMapOf(int i10, int i11) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        return mutableIntIntMap;
    }

    @NotNull
    public static final MutableIntIntMap mutableIntIntMapOf(int i10, int i11) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        return mutableIntIntMap;
    }

    @NotNull
    public static final IntIntMap intIntMapOf(int i10, int i11, int i12, int i13) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        mutableIntIntMap.set(i12, i13);
        return mutableIntIntMap;
    }

    @NotNull
    public static final MutableIntIntMap mutableIntIntMapOf(int i10, int i11, int i12, int i13) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        mutableIntIntMap.set(i12, i13);
        return mutableIntIntMap;
    }

    @NotNull
    public static final IntIntMap intIntMapOf(int i10, int i11, int i12, int i13, int i14, int i15) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        mutableIntIntMap.set(i12, i13);
        mutableIntIntMap.set(i14, i15);
        return mutableIntIntMap;
    }

    @NotNull
    public static final MutableIntIntMap mutableIntIntMapOf(int i10, int i11, int i12, int i13, int i14, int i15) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        mutableIntIntMap.set(i12, i13);
        mutableIntIntMap.set(i14, i15);
        return mutableIntIntMap;
    }

    @NotNull
    public static final IntIntMap intIntMapOf(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        mutableIntIntMap.set(i12, i13);
        mutableIntIntMap.set(i14, i15);
        mutableIntIntMap.set(i16, i17);
        return mutableIntIntMap;
    }

    @NotNull
    public static final MutableIntIntMap mutableIntIntMapOf(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        mutableIntIntMap.set(i12, i13);
        mutableIntIntMap.set(i14, i15);
        mutableIntIntMap.set(i16, i17);
        return mutableIntIntMap;
    }

    @NotNull
    public static final IntIntMap intIntMapOf(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        mutableIntIntMap.set(i12, i13);
        mutableIntIntMap.set(i14, i15);
        mutableIntIntMap.set(i16, i17);
        mutableIntIntMap.set(i18, i19);
        return mutableIntIntMap;
    }

    @NotNull
    public static final MutableIntIntMap mutableIntIntMapOf(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        MutableIntIntMap mutableIntIntMap = new MutableIntIntMap(0, 1, null);
        mutableIntIntMap.set(i10, i11);
        mutableIntIntMap.set(i12, i13);
        mutableIntIntMap.set(i14, i15);
        mutableIntIntMap.set(i16, i17);
        mutableIntIntMap.set(i18, i19);
        return mutableIntIntMap;
    }
}
