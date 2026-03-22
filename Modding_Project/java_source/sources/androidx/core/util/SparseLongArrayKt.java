package androidx.core.util;

import android.util.SparseLongArray;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.m0;
import kotlin.collections.n0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SparseLongArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSparseLongArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseLongArray.kt\nandroidx/core/util/SparseLongArrayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n75#1,4:95\n1#2:94\n*S KotlinDebug\n*F\n+ 1 SparseLongArray.kt\nandroidx/core/util/SparseLongArrayKt\n*L\n71#1:95,4\n*E\n"})
/* loaded from: classes.dex */
public final class SparseLongArrayKt {
    public static final boolean contains(@NotNull SparseLongArray sparseLongArray, int i10) {
        if (sparseLongArray.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final boolean containsKey(@NotNull SparseLongArray sparseLongArray, int i10) {
        if (sparseLongArray.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final boolean containsValue(@NotNull SparseLongArray sparseLongArray, long j10) {
        if (sparseLongArray.indexOfValue(j10) >= 0) {
            return true;
        }
        return false;
    }

    public static final void forEach(@NotNull SparseLongArray sparseLongArray, @NotNull Function2<? super Integer, ? super Long, Unit> function2) {
        int size = sparseLongArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            function2.invoke(Integer.valueOf(sparseLongArray.keyAt(i10)), Long.valueOf(sparseLongArray.valueAt(i10)));
        }
    }

    public static final long getOrDefault(@NotNull SparseLongArray sparseLongArray, int i10, long j10) {
        return sparseLongArray.get(i10, j10);
    }

    public static final long getOrElse(@NotNull SparseLongArray sparseLongArray, int i10, @NotNull Function0<Long> function0) {
        int indexOfKey = sparseLongArray.indexOfKey(i10);
        if (indexOfKey >= 0) {
            return sparseLongArray.valueAt(indexOfKey);
        }
        return function0.invoke().longValue();
    }

    public static final int getSize(@NotNull SparseLongArray sparseLongArray) {
        return sparseLongArray.size();
    }

    public static final boolean isEmpty(@NotNull SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() == 0) {
            return true;
        }
        return false;
    }

    public static final boolean isNotEmpty(@NotNull SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final m0 keyIterator(@NotNull final SparseLongArray sparseLongArray) {
        return new m0() { // from class: androidx.core.util.SparseLongArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.index < sparseLongArray.size()) {
                    return true;
                }
                return false;
            }

            @Override // kotlin.collections.m0
            public int nextInt() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseLongArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    @NotNull
    public static final SparseLongArray plus(@NotNull SparseLongArray sparseLongArray, @NotNull SparseLongArray sparseLongArray2) {
        SparseLongArray sparseLongArray3 = new SparseLongArray(sparseLongArray.size() + sparseLongArray2.size());
        putAll(sparseLongArray3, sparseLongArray);
        putAll(sparseLongArray3, sparseLongArray2);
        return sparseLongArray3;
    }

    public static final void putAll(@NotNull SparseLongArray sparseLongArray, @NotNull SparseLongArray sparseLongArray2) {
        int size = sparseLongArray2.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseLongArray.put(sparseLongArray2.keyAt(i10), sparseLongArray2.valueAt(i10));
        }
    }

    public static final boolean remove(@NotNull SparseLongArray sparseLongArray, int i10, long j10) {
        int indexOfKey = sparseLongArray.indexOfKey(i10);
        if (indexOfKey >= 0 && j10 == sparseLongArray.valueAt(indexOfKey)) {
            sparseLongArray.removeAt(indexOfKey);
            return true;
        }
        return false;
    }

    public static final void set(@NotNull SparseLongArray sparseLongArray, int i10, long j10) {
        sparseLongArray.put(i10, j10);
    }

    @NotNull
    public static final n0 valueIterator(@NotNull final SparseLongArray sparseLongArray) {
        return new n0() { // from class: androidx.core.util.SparseLongArrayKt$valueIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.index < sparseLongArray.size()) {
                    return true;
                }
                return false;
            }

            @Override // kotlin.collections.n0
            public long nextLong() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseLongArray2.valueAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }
}
