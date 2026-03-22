package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DoubleList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDoubleList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DoubleList.kt\nandroidx/collection/DoubleListKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DoubleList.kt\nandroidx/collection/MutableDoubleList\n*L\n1#1,983:1\n1#2:984\n678#3,2:985\n718#3,2:987\n718#3,2:989\n718#3,2:991\n718#3,2:993\n718#3,2:995\n718#3,2:997\n678#3,2:999\n*S KotlinDebug\n*F\n+ 1 DoubleList.kt\nandroidx/collection/DoubleListKt\n*L\n912#1:985,2\n920#1:987,2\n927#1:989,2\n928#1:991,2\n942#1:993,2\n943#1:995,2\n944#1:997,2\n950#1:999,2\n*E\n"})
/* loaded from: classes.dex */
public final class DoubleListKt {
    @NotNull
    private static final DoubleList EmptyDoubleList = new MutableDoubleList(0);

    @NotNull
    public static final DoubleList buildDoubleList(@NotNull Function1<? super MutableDoubleList, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableDoubleList mutableDoubleList = new MutableDoubleList(0, 1, null);
        builderAction.invoke(mutableDoubleList);
        return mutableDoubleList;
    }

    @NotNull
    public static final DoubleList doubleListOf() {
        return EmptyDoubleList;
    }

    @NotNull
    public static final DoubleList emptyDoubleList() {
        return EmptyDoubleList;
    }

    @NotNull
    public static final MutableDoubleList mutableDoubleListOf() {
        return new MutableDoubleList(0, 1, null);
    }

    @NotNull
    public static final DoubleList buildDoubleList(int i10, @NotNull Function1<? super MutableDoubleList, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableDoubleList mutableDoubleList = new MutableDoubleList(i10);
        builderAction.invoke(mutableDoubleList);
        return mutableDoubleList;
    }

    @NotNull
    public static final DoubleList doubleListOf(double d10) {
        return mutableDoubleListOf(d10);
    }

    @NotNull
    public static final MutableDoubleList mutableDoubleListOf(double d10) {
        MutableDoubleList mutableDoubleList = new MutableDoubleList(1);
        mutableDoubleList.add(d10);
        return mutableDoubleList;
    }

    @NotNull
    public static final DoubleList doubleListOf(double d10, double d11) {
        return mutableDoubleListOf(d10, d11);
    }

    @NotNull
    public static final DoubleList doubleListOf(double d10, double d11, double d12) {
        return mutableDoubleListOf(d10, d11, d12);
    }

    @NotNull
    public static final MutableDoubleList mutableDoubleListOf(double d10, double d11) {
        MutableDoubleList mutableDoubleList = new MutableDoubleList(2);
        mutableDoubleList.add(d10);
        mutableDoubleList.add(d11);
        return mutableDoubleList;
    }

    @NotNull
    public static final DoubleList doubleListOf(@NotNull double... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableDoubleList mutableDoubleList = new MutableDoubleList(elements.length);
        mutableDoubleList.addAll(mutableDoubleList._size, elements);
        return mutableDoubleList;
    }

    @NotNull
    public static final MutableDoubleList mutableDoubleListOf(double d10, double d11, double d12) {
        MutableDoubleList mutableDoubleList = new MutableDoubleList(3);
        mutableDoubleList.add(d10);
        mutableDoubleList.add(d11);
        mutableDoubleList.add(d12);
        return mutableDoubleList;
    }

    @NotNull
    public static final MutableDoubleList mutableDoubleListOf(@NotNull double... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableDoubleList mutableDoubleList = new MutableDoubleList(elements.length);
        mutableDoubleList.addAll(mutableDoubleList._size, elements);
        return mutableDoubleList;
    }
}
