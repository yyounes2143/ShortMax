package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatList.kt\nandroidx/collection/FloatListKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/MutableFloatList\n*L\n1#1,976:1\n1#2:977\n675#3,2:978\n715#3,2:980\n715#3,2:982\n715#3,2:984\n715#3,2:986\n715#3,2:988\n715#3,2:990\n675#3,2:992\n*S KotlinDebug\n*F\n+ 1 FloatList.kt\nandroidx/collection/FloatListKt\n*L\n909#1:978,2\n917#1:980,2\n924#1:982,2\n925#1:984,2\n935#1:986,2\n936#1:988,2\n937#1:990,2\n943#1:992,2\n*E\n"})
/* loaded from: classes.dex */
public final class FloatListKt {
    @NotNull
    private static final FloatList EmptyFloatList = new MutableFloatList(0);

    @NotNull
    public static final FloatList buildFloatList(@NotNull Function1<? super MutableFloatList, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatList mutableFloatList = new MutableFloatList(0, 1, null);
        builderAction.invoke(mutableFloatList);
        return mutableFloatList;
    }

    @NotNull
    public static final FloatList emptyFloatList() {
        return EmptyFloatList;
    }

    @NotNull
    public static final FloatList floatListOf() {
        return EmptyFloatList;
    }

    @NotNull
    public static final MutableFloatList mutableFloatListOf() {
        return new MutableFloatList(0, 1, null);
    }

    @NotNull
    public static final FloatList buildFloatList(int i10, @NotNull Function1<? super MutableFloatList, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableFloatList mutableFloatList = new MutableFloatList(i10);
        builderAction.invoke(mutableFloatList);
        return mutableFloatList;
    }

    @NotNull
    public static final FloatList floatListOf(float f10) {
        return mutableFloatListOf(f10);
    }

    @NotNull
    public static final MutableFloatList mutableFloatListOf(float f10) {
        MutableFloatList mutableFloatList = new MutableFloatList(1);
        mutableFloatList.add(f10);
        return mutableFloatList;
    }

    @NotNull
    public static final FloatList floatListOf(float f10, float f11) {
        return mutableFloatListOf(f10, f11);
    }

    @NotNull
    public static final FloatList floatListOf(float f10, float f11, float f12) {
        return mutableFloatListOf(f10, f11, f12);
    }

    @NotNull
    public static final MutableFloatList mutableFloatListOf(float f10, float f11) {
        MutableFloatList mutableFloatList = new MutableFloatList(2);
        mutableFloatList.add(f10);
        mutableFloatList.add(f11);
        return mutableFloatList;
    }

    @NotNull
    public static final FloatList floatListOf(@NotNull float... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableFloatList mutableFloatList = new MutableFloatList(elements.length);
        mutableFloatList.addAll(mutableFloatList._size, elements);
        return mutableFloatList;
    }

    @NotNull
    public static final MutableFloatList mutableFloatListOf(float f10, float f11, float f12) {
        MutableFloatList mutableFloatList = new MutableFloatList(3);
        mutableFloatList.add(f10);
        mutableFloatList.add(f11);
        mutableFloatList.add(f12);
        return mutableFloatList;
    }

    @NotNull
    public static final MutableFloatList mutableFloatListOf(@NotNull float... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableFloatList mutableFloatList = new MutableFloatList(elements.length);
        mutableFloatList.addAll(mutableFloatList._size, elements);
        return mutableFloatList;
    }
}
