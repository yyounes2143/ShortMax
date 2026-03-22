package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LongList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongList.kt\nandroidx/collection/LongListKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LongList.kt\nandroidx/collection/MutableLongList\n*L\n1#1,972:1\n1#2:973\n673#3,2:974\n713#3,2:976\n713#3,2:978\n713#3,2:980\n713#3,2:982\n713#3,2:984\n713#3,2:986\n673#3,2:988\n*S KotlinDebug\n*F\n+ 1 LongList.kt\nandroidx/collection/LongListKt\n*L\n905#1:974,2\n913#1:976,2\n920#1:978,2\n921#1:980,2\n931#1:982,2\n932#1:984,2\n933#1:986,2\n939#1:988,2\n*E\n"})
/* loaded from: classes.dex */
public final class LongListKt {
    @NotNull
    private static final LongList EmptyLongList = new MutableLongList(0);

    @NotNull
    public static final LongList buildLongList(@NotNull Function1<? super MutableLongList, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableLongList mutableLongList = new MutableLongList(0, 1, null);
        builderAction.invoke(mutableLongList);
        return mutableLongList;
    }

    @NotNull
    public static final LongList emptyLongList() {
        return EmptyLongList;
    }

    @NotNull
    public static final LongList longListOf() {
        return EmptyLongList;
    }

    @NotNull
    public static final MutableLongList mutableLongListOf() {
        return new MutableLongList(0, 1, null);
    }

    @NotNull
    public static final LongList buildLongList(int i10, @NotNull Function1<? super MutableLongList, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        MutableLongList mutableLongList = new MutableLongList(i10);
        builderAction.invoke(mutableLongList);
        return mutableLongList;
    }

    @NotNull
    public static final LongList longListOf(long j10) {
        return mutableLongListOf(j10);
    }

    @NotNull
    public static final MutableLongList mutableLongListOf(long j10) {
        MutableLongList mutableLongList = new MutableLongList(1);
        mutableLongList.add(j10);
        return mutableLongList;
    }

    @NotNull
    public static final LongList longListOf(long j10, long j11) {
        return mutableLongListOf(j10, j11);
    }

    @NotNull
    public static final LongList longListOf(long j10, long j11, long j12) {
        return mutableLongListOf(j10, j11, j12);
    }

    @NotNull
    public static final MutableLongList mutableLongListOf(long j10, long j11) {
        MutableLongList mutableLongList = new MutableLongList(2);
        mutableLongList.add(j10);
        mutableLongList.add(j11);
        return mutableLongList;
    }

    @NotNull
    public static final LongList longListOf(@NotNull long... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableLongList mutableLongList = new MutableLongList(elements.length);
        mutableLongList.addAll(mutableLongList._size, elements);
        return mutableLongList;
    }

    @NotNull
    public static final MutableLongList mutableLongListOf(long j10, long j11, long j12) {
        MutableLongList mutableLongList = new MutableLongList(3);
        mutableLongList.add(j10);
        mutableLongList.add(j11);
        mutableLongList.add(j12);
        return mutableLongList;
    }

    @NotNull
    public static final MutableLongList mutableLongListOf(@NotNull long... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableLongList mutableLongList = new MutableLongList(elements.length);
        mutableLongList.addAll(mutableLongList._size, elements);
        return mutableLongList;
    }
}
