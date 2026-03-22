package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntFloatMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntFloatMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntFloatMap.kt\nandroidx/collection/IntFloatMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1034:1\n1#2:1035\n*E\n"})
/* loaded from: classes.dex */
public final class IntFloatMapKt {
    @NotNull
    private static final MutableIntFloatMap EmptyIntFloatMap = new MutableIntFloatMap(0);

    @NotNull
    public static final IntFloatMap buildIntFloatMap(@NotNull Function1<? super MutableIntFloatMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        builderAction.invoke(mutableIntFloatMap);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final IntFloatMap emptyIntFloatMap() {
        return EmptyIntFloatMap;
    }

    @NotNull
    public static final IntFloatMap intFloatMapOf() {
        return EmptyIntFloatMap;
    }

    @NotNull
    public static final MutableIntFloatMap mutableIntFloatMapOf() {
        return new MutableIntFloatMap(0, 1, null);
    }

    @NotNull
    public static final IntFloatMap buildIntFloatMap(int i10, @NotNull Function1<? super MutableIntFloatMap, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(i10);
        builderAction.invoke(mutableIntFloatMap);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final IntFloatMap intFloatMapOf(int i10, float f10) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f10) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final IntFloatMap intFloatMapOf(int i10, float f10, int i11, float f11) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        mutableIntFloatMap.set(i11, f11);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f10, int i11, float f11) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        mutableIntFloatMap.set(i11, f11);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final IntFloatMap intFloatMapOf(int i10, float f10, int i11, float f11, int i12, float f12) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        mutableIntFloatMap.set(i11, f11);
        mutableIntFloatMap.set(i12, f12);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f10, int i11, float f11, int i12, float f12) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        mutableIntFloatMap.set(i11, f11);
        mutableIntFloatMap.set(i12, f12);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final IntFloatMap intFloatMapOf(int i10, float f10, int i11, float f11, int i12, float f12, int i13, float f13) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        mutableIntFloatMap.set(i11, f11);
        mutableIntFloatMap.set(i12, f12);
        mutableIntFloatMap.set(i13, f13);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f10, int i11, float f11, int i12, float f12, int i13, float f13) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        mutableIntFloatMap.set(i11, f11);
        mutableIntFloatMap.set(i12, f12);
        mutableIntFloatMap.set(i13, f13);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final IntFloatMap intFloatMapOf(int i10, float f10, int i11, float f11, int i12, float f12, int i13, float f13, int i14, float f14) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        mutableIntFloatMap.set(i11, f11);
        mutableIntFloatMap.set(i12, f12);
        mutableIntFloatMap.set(i13, f13);
        mutableIntFloatMap.set(i14, f14);
        return mutableIntFloatMap;
    }

    @NotNull
    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f10, int i11, float f11, int i12, float f12, int i13, float f13, int i14, float f14) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f10);
        mutableIntFloatMap.set(i11, f11);
        mutableIntFloatMap.set(i12, f12);
        mutableIntFloatMap.set(i13, f13);
        mutableIntFloatMap.set(i14, f14);
        return mutableIntFloatMap;
    }
}
