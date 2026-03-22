package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ObjectList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nObjectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectList.kt\nandroidx/collection/ObjectListKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ObjectList.kt\nandroidx/collection/MutableObjectList\n*L\n1#1,1548:1\n1#2:1549\n919#3,2:1550\n919#3,2:1552\n919#3,2:1554\n919#3,2:1556\n919#3,2:1558\n919#3,2:1560\n*S KotlinDebug\n*F\n+ 1 ObjectList.kt\nandroidx/collection/ObjectListKt\n*L\n1521#1:1550,2\n1528#1:1552,2\n1529#1:1554,2\n1539#1:1556,2\n1540#1:1558,2\n1541#1:1560,2\n*E\n"})
/* loaded from: classes.dex */
public final class ObjectListKt {
    @NotNull
    private static final Object[] EmptyArray = new Object[0];
    @NotNull
    private static final ObjectList<Object> EmptyObjectList = new MutableObjectList(0);

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkIndex(List<?> list, int i10) {
        int size = list.size();
        if (i10 < 0 || i10 >= size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index " + i10 + " is out of bounds. The list has " + size + " elements.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkSubIndex(List<?> list, int i10, int i11) {
        int size = list.size();
        if (i10 > i11) {
            RuntimeHelpersKt.throwIllegalArgumentException("Indices are out of order. fromIndex (" + i10 + ") is greater than toIndex (" + i11 + ").");
        }
        if (i10 < 0) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("fromIndex (" + i10 + ") is less than 0.");
        }
        if (i11 > size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("toIndex (" + i11 + ") is more than than the list size (" + size + ')');
        }
    }

    @NotNull
    public static final <E> ObjectList<E> emptyObjectList() {
        ObjectList<E> objectList = (ObjectList<E>) EmptyObjectList;
        Intrinsics.checkNotNull(objectList, "null cannot be cast to non-null type androidx.collection.ObjectList<E of androidx.collection.ObjectListKt.emptyObjectList>");
        return objectList;
    }

    @NotNull
    public static final <E> MutableObjectList<E> mutableObjectListOf() {
        return new MutableObjectList<>(0, 1, null);
    }

    @NotNull
    public static final <E> ObjectList<E> objectListOf() {
        ObjectList<E> objectList = (ObjectList<E>) EmptyObjectList;
        Intrinsics.checkNotNull(objectList, "null cannot be cast to non-null type androidx.collection.ObjectList<E of androidx.collection.ObjectListKt.objectListOf>");
        return objectList;
    }

    @NotNull
    public static final <E> MutableObjectList<E> mutableObjectListOf(E e10) {
        MutableObjectList<E> mutableObjectList = new MutableObjectList<>(1);
        mutableObjectList.add(e10);
        return mutableObjectList;
    }

    @NotNull
    public static final <E> ObjectList<E> objectListOf(E e10) {
        return mutableObjectListOf(e10);
    }

    @NotNull
    public static final <E> ObjectList<E> objectListOf(E e10, E e11) {
        return mutableObjectListOf(e10, e11);
    }

    @NotNull
    public static final <E> MutableObjectList<E> mutableObjectListOf(E e10, E e11) {
        MutableObjectList<E> mutableObjectList = new MutableObjectList<>(2);
        mutableObjectList.add(e10);
        mutableObjectList.add(e11);
        return mutableObjectList;
    }

    @NotNull
    public static final <E> ObjectList<E> objectListOf(E e10, E e11, E e12) {
        return mutableObjectListOf(e10, e11, e12);
    }

    @NotNull
    public static final <E> ObjectList<E> objectListOf(@NotNull E... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableObjectList mutableObjectList = new MutableObjectList(elements.length);
        mutableObjectList.plusAssign((Object[]) elements);
        return mutableObjectList;
    }

    @NotNull
    public static final <E> MutableObjectList<E> mutableObjectListOf(E e10, E e11, E e12) {
        MutableObjectList<E> mutableObjectList = new MutableObjectList<>(3);
        mutableObjectList.add(e10);
        mutableObjectList.add(e11);
        mutableObjectList.add(e12);
        return mutableObjectList;
    }

    @NotNull
    public static final <E> MutableObjectList<E> mutableObjectListOf(@NotNull E... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        MutableObjectList<E> mutableObjectList = new MutableObjectList<>(elements.length);
        mutableObjectList.plusAssign((Object[]) elements);
        return mutableObjectList;
    }
}
