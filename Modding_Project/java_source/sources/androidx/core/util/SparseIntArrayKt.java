package androidx.core.util;

import android.util.SparseIntArray;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.m0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SparseIntArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSparseIntArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseIntArray.kt\nandroidx/core/util/SparseIntArrayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n75#1,4:95\n1#2:94\n*S KotlinDebug\n*F\n+ 1 SparseIntArray.kt\nandroidx/core/util/SparseIntArrayKt\n*L\n71#1:95,4\n*E\n"})
/* loaded from: classes.dex */
public final class SparseIntArrayKt {
    public static final boolean contains(@NotNull SparseIntArray sparseIntArray, int i10) {
        if (sparseIntArray.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final boolean containsKey(@NotNull SparseIntArray sparseIntArray, int i10) {
        if (sparseIntArray.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final boolean containsValue(@NotNull SparseIntArray sparseIntArray, int i10) {
        if (sparseIntArray.indexOfValue(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final void forEach(@NotNull SparseIntArray sparseIntArray, @NotNull Function2<? super Integer, ? super Integer, Unit> function2) {
        int size = sparseIntArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            function2.invoke(Integer.valueOf(sparseIntArray.keyAt(i10)), Integer.valueOf(sparseIntArray.valueAt(i10)));
        }
    }

    public static final int getOrDefault(@NotNull SparseIntArray sparseIntArray, int i10, int i11) {
        return sparseIntArray.get(i10, i11);
    }

    public static final int getOrElse(@NotNull SparseIntArray sparseIntArray, int i10, @NotNull Function0<Integer> function0) {
        int indexOfKey = sparseIntArray.indexOfKey(i10);
        if (indexOfKey >= 0) {
            return sparseIntArray.valueAt(indexOfKey);
        }
        return function0.invoke().intValue();
    }

    public static final int getSize(@NotNull SparseIntArray sparseIntArray) {
        return sparseIntArray.size();
    }

    public static final boolean isEmpty(@NotNull SparseIntArray sparseIntArray) {
        if (sparseIntArray.size() == 0) {
            return true;
        }
        return false;
    }

    public static final boolean isNotEmpty(@NotNull SparseIntArray sparseIntArray) {
        if (sparseIntArray.size() != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final m0 keyIterator(@NotNull final SparseIntArray sparseIntArray) {
        return new m0() { // from class: androidx.core.util.SparseIntArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.index < sparseIntArray.size()) {
                    return true;
                }
                return false;
            }

            @Override // kotlin.collections.m0
            public int nextInt() {
                SparseIntArray sparseIntArray2 = sparseIntArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseIntArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    @NotNull
    public static final SparseIntArray plus(@NotNull SparseIntArray sparseIntArray, @NotNull SparseIntArray sparseIntArray2) {
        SparseIntArray sparseIntArray3 = new SparseIntArray(sparseIntArray.size() + sparseIntArray2.size());
        putAll(sparseIntArray3, sparseIntArray);
        putAll(sparseIntArray3, sparseIntArray2);
        return sparseIntArray3;
    }

    public static final void putAll(@NotNull SparseIntArray sparseIntArray, @NotNull SparseIntArray sparseIntArray2) {
        int size = sparseIntArray2.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseIntArray.put(sparseIntArray2.keyAt(i10), sparseIntArray2.valueAt(i10));
        }
    }

    public static final boolean remove(@NotNull SparseIntArray sparseIntArray, int i10, int i11) {
        int indexOfKey = sparseIntArray.indexOfKey(i10);
        if (indexOfKey >= 0 && i11 == sparseIntArray.valueAt(indexOfKey)) {
            sparseIntArray.removeAt(indexOfKey);
            return true;
        }
        return false;
    }

    public static final void set(@NotNull SparseIntArray sparseIntArray, int i10, int i11) {
        sparseIntArray.put(i10, i11);
    }

    @NotNull
    public static final m0 valueIterator(@NotNull final SparseIntArray sparseIntArray) {
        return new m0() { // from class: androidx.core.util.SparseIntArrayKt$valueIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.index < sparseIntArray.size()) {
                    return true;
                }
                return false;
            }

            @Override // kotlin.collections.m0
            public int nextInt() {
                SparseIntArray sparseIntArray2 = sparseIntArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseIntArray2.valueAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }
}
