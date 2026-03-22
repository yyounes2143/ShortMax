package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatSet.kt\nandroidx/collection/FloatSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,886:1\n1#2:887\n*E\n"})
/* loaded from: classes.dex */
public final class FloatSetKt {
    @NotNull
    private static final MutableFloatSet EmptyFloatSet = new MutableFloatSet(0);
    @NotNull
    private static final float[] EmptyFloatArray = new float[0];

    @NotNull
    public static final FloatSet buildFloatSet(@NotNull Function1<? super MutableFloatSet, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatSet mutableFloatSet = new MutableFloatSet(0, 1, null);
        builderAction.invoke(mutableFloatSet);
        return mutableFloatSet;
    }

    @NotNull
    public static final FloatSet emptyFloatSet() {
        return EmptyFloatSet;
    }

    @NotNull
    public static final FloatSet floatSetOf() {
        return EmptyFloatSet;
    }

    @NotNull
    public static final float[] getEmptyFloatArray() {
        return EmptyFloatArray;
    }

    public static final int hash(float f10) {
        int hashCode = Float.hashCode(f10) * ScatterMapKt.MurmurHashC1;
        return hashCode ^ (hashCode << 16);
    }

    @NotNull
    public static final MutableFloatSet mutableFloatSetOf() {
        return new MutableFloatSet(0, 1, null);
    }

    @NotNull
    public static final FloatSet buildFloatSet(int i10, @NotNull Function1<? super MutableFloatSet, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatSet mutableFloatSet = new MutableFloatSet(i10);
        builderAction.invoke(mutableFloatSet);
        return mutableFloatSet;
    }

    @NotNull
    public static final FloatSet floatSetOf(float f10) {
        return mutableFloatSetOf(f10);
    }

    @NotNull
    public static final MutableFloatSet mutableFloatSetOf(float f10) {
        MutableFloatSet mutableFloatSet = new MutableFloatSet(1);
        mutableFloatSet.plusAssign(f10);
        return mutableFloatSet;
    }

    @NotNull
    public static final FloatSet floatSetOf(float f10, float f11) {
        return mutableFloatSetOf(f10, f11);
    }

    @NotNull
    public static final MutableFloatSet mutableFloatSetOf(float f10, float f11) {
        MutableFloatSet mutableFloatSet = new MutableFloatSet(2);
        mutableFloatSet.plusAssign(f10);
        mutableFloatSet.plusAssign(f11);
        return mutableFloatSet;
    }

    @NotNull
    public static final FloatSet floatSetOf(float f10, float f11, float f12) {
        return mutableFloatSetOf(f10, f11, f12);
    }

    @NotNull
    public static final FloatSet floatSetOf(@NotNull float... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableFloatSet mutableFloatSet = new MutableFloatSet(elements.length);
        mutableFloatSet.plusAssign(elements);
        return mutableFloatSet;
    }

    @NotNull
    public static final MutableFloatSet mutableFloatSetOf(float f10, float f11, float f12) {
        MutableFloatSet mutableFloatSet = new MutableFloatSet(3);
        mutableFloatSet.plusAssign(f10);
        mutableFloatSet.plusAssign(f11);
        mutableFloatSet.plusAssign(f12);
        return mutableFloatSet;
    }

    @NotNull
    public static final MutableFloatSet mutableFloatSetOf(@NotNull float... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableFloatSet mutableFloatSet = new MutableFloatSet(elements.length);
        mutableFloatSet.plusAssign(elements);
        return mutableFloatSet;
    }
}
