package androidx.core.util;

import android.util.SparseArray;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.m0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SparseArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSparseArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,94:1\n76#1,4:95\n*S KotlinDebug\n*F\n+ 1 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n72#1:95,4\n*E\n"})
/* loaded from: classes.dex */
public final class SparseArrayKt {
    public static final <T> boolean contains(@NotNull SparseArray<T> sparseArray, int i10) {
        if (sparseArray.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <T> boolean containsKey(@NotNull SparseArray<T> sparseArray, int i10) {
        if (sparseArray.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <T> boolean containsValue(@NotNull SparseArray<T> sparseArray, T t10) {
        if (sparseArray.indexOfValue(t10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <T> void forEach(@NotNull SparseArray<T> sparseArray, @NotNull Function2<? super Integer, ? super T, Unit> function2) {
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            function2.invoke(Integer.valueOf(sparseArray.keyAt(i10)), sparseArray.valueAt(i10));
        }
    }

    public static final <T> T getOrDefault(@NotNull SparseArray<T> sparseArray, int i10, T t10) {
        T t11 = sparseArray.get(i10);
        if (t11 != null) {
            return t11;
        }
        return t10;
    }

    public static final <T> T getOrElse(@NotNull SparseArray<T> sparseArray, int i10, @NotNull Function0<? extends T> function0) {
        T t10 = sparseArray.get(i10);
        if (t10 == null) {
            return function0.invoke();
        }
        return t10;
    }

    public static final <T> int getSize(@NotNull SparseArray<T> sparseArray) {
        return sparseArray.size();
    }

    public static final <T> boolean isEmpty(@NotNull SparseArray<T> sparseArray) {
        if (sparseArray.size() == 0) {
            return true;
        }
        return false;
    }

    public static final <T> boolean isNotEmpty(@NotNull SparseArray<T> sparseArray) {
        if (sparseArray.size() != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final <T> m0 keyIterator(@NotNull final SparseArray<T> sparseArray) {
        return new m0() { // from class: androidx.core.util.SparseArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.index < sparseArray.size()) {
                    return true;
                }
                return false;
            }

            @Override // kotlin.collections.m0
            public int nextInt() {
                SparseArray<T> sparseArray2 = sparseArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    @NotNull
    public static final <T> SparseArray<T> plus(@NotNull SparseArray<T> sparseArray, @NotNull SparseArray<T> sparseArray2) {
        SparseArray<T> sparseArray3 = new SparseArray<>(sparseArray.size() + sparseArray2.size());
        putAll(sparseArray3, sparseArray);
        putAll(sparseArray3, sparseArray2);
        return sparseArray3;
    }

    public static final <T> void putAll(@NotNull SparseArray<T> sparseArray, @NotNull SparseArray<T> sparseArray2) {
        int size = sparseArray2.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseArray.put(sparseArray2.keyAt(i10), sparseArray2.valueAt(i10));
        }
    }

    public static final <T> boolean remove(@NotNull SparseArray<T> sparseArray, int i10, T t10) {
        int indexOfKey = sparseArray.indexOfKey(i10);
        if (indexOfKey >= 0 && Intrinsics.areEqual(t10, sparseArray.valueAt(indexOfKey))) {
            sparseArray.removeAt(indexOfKey);
            return true;
        }
        return false;
    }

    public static final <T> void set(@NotNull SparseArray<T> sparseArray, int i10, T t10) {
        sparseArray.put(i10, t10);
    }

    @NotNull
    public static final <T> Iterator<T> valueIterator(@NotNull SparseArray<T> sparseArray) {
        return new SparseArrayKt$valueIterator$1(sparseArray);
    }
}
