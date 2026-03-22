package androidx.core.util;

import android.util.LongSparseArray;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LongSparseArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongSparseArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,99:1\n77#1,4:100\n*S KotlinDebug\n*F\n+ 1 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n73#1:100,4\n*E\n"})
/* loaded from: classes.dex */
public final class LongSparseArrayKt {
    public static final <T> boolean contains(@NotNull LongSparseArray<T> longSparseArray, long j10) {
        if (longSparseArray.indexOfKey(j10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <T> boolean containsKey(@NotNull LongSparseArray<T> longSparseArray, long j10) {
        if (longSparseArray.indexOfKey(j10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <T> boolean containsValue(@NotNull LongSparseArray<T> longSparseArray, T t10) {
        if (longSparseArray.indexOfValue(t10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <T> void forEach(@NotNull LongSparseArray<T> longSparseArray, @NotNull Function2<? super Long, ? super T, Unit> function2) {
        int size = longSparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            function2.invoke(Long.valueOf(longSparseArray.keyAt(i10)), longSparseArray.valueAt(i10));
        }
    }

    public static final <T> T getOrDefault(@NotNull LongSparseArray<T> longSparseArray, long j10, T t10) {
        T t11 = longSparseArray.get(j10);
        if (t11 != null) {
            return t11;
        }
        return t10;
    }

    public static final <T> T getOrElse(@NotNull LongSparseArray<T> longSparseArray, long j10, @NotNull Function0<? extends T> function0) {
        T t10 = longSparseArray.get(j10);
        if (t10 == null) {
            return function0.invoke();
        }
        return t10;
    }

    public static final <T> int getSize(@NotNull LongSparseArray<T> longSparseArray) {
        return longSparseArray.size();
    }

    public static final <T> boolean isEmpty(@NotNull LongSparseArray<T> longSparseArray) {
        if (longSparseArray.size() == 0) {
            return true;
        }
        return false;
    }

    public static final <T> boolean isNotEmpty(@NotNull LongSparseArray<T> longSparseArray) {
        if (longSparseArray.size() != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final <T> n0 keyIterator(@NotNull final LongSparseArray<T> longSparseArray) {
        return new n0() { // from class: androidx.core.util.LongSparseArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.index < longSparseArray.size()) {
                    return true;
                }
                return false;
            }

            @Override // kotlin.collections.n0
            public long nextLong() {
                LongSparseArray<T> longSparseArray2 = longSparseArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return longSparseArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    @NotNull
    public static final <T> LongSparseArray<T> plus(@NotNull LongSparseArray<T> longSparseArray, @NotNull LongSparseArray<T> longSparseArray2) {
        LongSparseArray<T> longSparseArray3 = new LongSparseArray<>(longSparseArray.size() + longSparseArray2.size());
        putAll(longSparseArray3, longSparseArray);
        putAll(longSparseArray3, longSparseArray2);
        return longSparseArray3;
    }

    public static final <T> void putAll(@NotNull LongSparseArray<T> longSparseArray, @NotNull LongSparseArray<T> longSparseArray2) {
        int size = longSparseArray2.size();
        for (int i10 = 0; i10 < size; i10++) {
            longSparseArray.put(longSparseArray2.keyAt(i10), longSparseArray2.valueAt(i10));
        }
    }

    public static final <T> boolean remove(@NotNull LongSparseArray<T> longSparseArray, long j10, T t10) {
        int indexOfKey = longSparseArray.indexOfKey(j10);
        if (indexOfKey >= 0 && Intrinsics.areEqual(t10, longSparseArray.valueAt(indexOfKey))) {
            longSparseArray.removeAt(indexOfKey);
            return true;
        }
        return false;
    }

    public static final <T> void set(@NotNull LongSparseArray<T> longSparseArray, long j10, T t10) {
        longSparseArray.put(j10, t10);
    }

    @NotNull
    public static final <T> Iterator<T> valueIterator(@NotNull LongSparseArray<T> longSparseArray) {
        return new LongSparseArrayKt$valueIterator$1(longSparseArray);
    }
}
