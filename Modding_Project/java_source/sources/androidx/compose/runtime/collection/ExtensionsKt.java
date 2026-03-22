package androidx.compose.runtime.collection;

import androidx.collection.MutableObjectList;
import androidx.collection.ObjectList;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import ps.a;
/* compiled from: Extensions.kt */
@Metadata
@SourceDebugExtension({"SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\nandroidx/compose/runtime/collection/ExtensionsKt\n+ 2 ObjectList.kt\nandroidx/collection/ObjectList\n+ 3 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n36#1:80\n37#1:87\n287#2,4:73\n292#2:79\n287#2,6:81\n287#2,4:88\n292#2:94\n287#2,6:95\n287#2,4:101\n292#2:107\n919#3,2:77\n919#3,2:92\n919#3,2:105\n1#4:108\n1010#5,2:109\n*S KotlinDebug\n*F\n+ 1 Extensions.kt\nandroidx/compose/runtime/collection/ExtensionsKt\n*L\n29#1:80\n29#1:87\n24#1:73,4\n24#1:79\n29#1:81,6\n31#1:88,4\n31#1:94\n36#1:95,6\n42#1:101,4\n42#1:107\n24#1:77,2\n31#1:92,2\n42#1:105,2\n64#1:109,2\n*E\n"})
/* loaded from: classes.dex */
public final class ExtensionsKt {
    public static final <T> boolean all(@NotNull ObjectList<T> objectList, @NotNull Function1<? super T, Boolean> function1) {
        Object[] objArr = objectList.content;
        int i10 = objectList._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (!function1.invoke(objArr[i11]).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <T> ObjectList<T> fastFilter(@NotNull ObjectList<T> objectList, @NotNull Function1<? super T, Boolean> function1) {
        Object[] objArr = objectList.content;
        int i10 = objectList._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (!function1.invoke(objArr[i11]).booleanValue()) {
                MutableObjectList mutableObjectList = new MutableObjectList(0, 1, null);
                Object[] objArr2 = objectList.content;
                int i12 = objectList._size;
                for (int i13 = 0; i13 < i12; i13++) {
                    Object obj = objArr2[i13];
                    if (function1.invoke(obj).booleanValue()) {
                        mutableObjectList.add(obj);
                    }
                }
                return mutableObjectList;
            }
        }
        return objectList;
    }

    @NotNull
    public static final <T, R> ObjectList<R> fastMap(@NotNull ObjectList<T> objectList, @NotNull Function1<? super T, ? extends R> function1) {
        MutableObjectList mutableObjectList = new MutableObjectList(objectList.getSize());
        Object[] objArr = objectList.content;
        int i10 = objectList._size;
        for (int i11 = 0; i11 < i10; i11++) {
            mutableObjectList.add(function1.invoke(objArr[i11]));
        }
        return mutableObjectList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Comparable] */
    public static final <T, K extends Comparable<? super K>> boolean isSorted(@NotNull ObjectList<T> objectList, @NotNull Function1<? super T, ? extends K> function1) {
        if (objectList.getSize() <= 1) {
            return true;
        }
        K invoke = function1.invoke(objectList.get(0));
        if (invoke == null) {
            return false;
        }
        int size = objectList.getSize();
        int i10 = 1;
        while (i10 < size) {
            K invoke2 = function1.invoke(objectList.get(i10));
            if (invoke2 == null || invoke.compareTo(invoke2) > 0) {
                return false;
            }
            i10++;
            invoke = invoke2;
        }
        return true;
    }

    public static final <T> T removeLast(@NotNull MutableObjectList<T> mutableObjectList) {
        if (!mutableObjectList.isEmpty()) {
            int size = mutableObjectList.getSize() - 1;
            T t10 = mutableObjectList.get(size);
            mutableObjectList.removeAt(size);
            return t10;
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static final <T, K extends Comparable<? super K>> void sortBy(@NotNull MutableObjectList<T> mutableObjectList, @NotNull final Function1<? super T, ? extends K> function1) {
        List<T> asMutableList = mutableObjectList.asMutableList();
        if (asMutableList.size() > 1) {
            CollectionsKt.D(asMutableList, new Comparator() { // from class: androidx.compose.runtime.collection.ExtensionsKt$sortBy$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t10, T t11) {
                    Function1 function12 = Function1.this;
                    return a.a((Comparable) function12.invoke(t10), (Comparable) function12.invoke(t11));
                }
            });
        }
    }

    @NotNull
    public static final <T, K extends Comparable<? super K>> ObjectList<T> sortedBy(@NotNull ObjectList<T> objectList, @NotNull Function1<? super T, ? extends K> function1) {
        if (!isSorted(objectList, function1)) {
            MutableObjectList mutableObjectList = toMutableObjectList(objectList);
            sortBy(mutableObjectList, function1);
            return mutableObjectList;
        }
        return objectList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> MutableObjectList<T> toMutableObjectList(@NotNull ObjectList<T> objectList) {
        MutableObjectList<T> mutableObjectList = (MutableObjectList<T>) new MutableObjectList(objectList.getSize());
        Object[] objArr = objectList.content;
        int i10 = objectList._size;
        for (int i11 = 0; i11 < i10; i11++) {
            mutableObjectList.add(objArr[i11]);
        }
        return mutableObjectList;
    }
}
