package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntList.kt\nandroidx/collection/IntListKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 IntList.kt\nandroidx/collection/MutableIntList\n*L\n1#1,968:1\n1#2:969\n672#3,2:970\n712#3,2:972\n712#3,2:974\n712#3,2:976\n712#3,2:978\n712#3,2:980\n712#3,2:982\n672#3,2:984\n*S KotlinDebug\n*F\n+ 1 IntList.kt\nandroidx/collection/IntListKt\n*L\n902#1:970,2\n910#1:972,2\n917#1:974,2\n918#1:976,2\n927#1:978,2\n928#1:980,2\n929#1:982,2\n935#1:984,2\n*E\n"})
/* loaded from: classes.dex */
public final class IntListKt {
    @NotNull
    private static final IntList EmptyIntList = new MutableIntList(0);

    @NotNull
    public static final IntList buildIntList(@NotNull Function1<? super MutableIntList, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntList mutableIntList = new MutableIntList(0, 1, null);
        builderAction.invoke(mutableIntList);
        return mutableIntList;
    }

    @NotNull
    public static final IntList emptyIntList() {
        return EmptyIntList;
    }

    @NotNull
    public static final IntList intListOf() {
        return EmptyIntList;
    }

    @NotNull
    public static final MutableIntList mutableIntListOf() {
        return new MutableIntList(0, 1, null);
    }

    @NotNull
    public static final IntList buildIntList(int i10, @NotNull Function1<? super MutableIntList, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableIntList mutableIntList = new MutableIntList(i10);
        builderAction.invoke(mutableIntList);
        return mutableIntList;
    }

    @NotNull
    public static final IntList intListOf(int i10) {
        return mutableIntListOf(i10);
    }

    @NotNull
    public static final MutableIntList mutableIntListOf(int i10) {
        MutableIntList mutableIntList = new MutableIntList(1);
        mutableIntList.add(i10);
        return mutableIntList;
    }

    @NotNull
    public static final IntList intListOf(int i10, int i11) {
        return mutableIntListOf(i10, i11);
    }

    @NotNull
    public static final IntList intListOf(int i10, int i11, int i12) {
        return mutableIntListOf(i10, i11, i12);
    }

    @NotNull
    public static final MutableIntList mutableIntListOf(int i10, int i11) {
        MutableIntList mutableIntList = new MutableIntList(2);
        mutableIntList.add(i10);
        mutableIntList.add(i11);
        return mutableIntList;
    }

    @NotNull
    public static final IntList intListOf(@NotNull int... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableIntList mutableIntList = new MutableIntList(elements.length);
        mutableIntList.addAll(mutableIntList._size, elements);
        return mutableIntList;
    }

    @NotNull
    public static final MutableIntList mutableIntListOf(int i10, int i11, int i12) {
        MutableIntList mutableIntList = new MutableIntList(3);
        mutableIntList.add(i10);
        mutableIntList.add(i11);
        mutableIntList.add(i12);
        return mutableIntList;
    }

    @NotNull
    public static final MutableIntList mutableIntListOf(@NotNull int... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableIntList mutableIntList = new MutableIntList(elements.length);
        mutableIntList.addAll(mutableIntList._size, elements);
        return mutableIntList;
    }
}
