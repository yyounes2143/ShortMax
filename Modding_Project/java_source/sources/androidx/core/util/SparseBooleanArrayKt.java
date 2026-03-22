package androidx.core.util;

import android.util.SparseBooleanArray;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.m0;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SparseBooleanArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSparseBooleanArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseBooleanArray.kt\nandroidx/core/util/SparseBooleanArrayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n77#1,4:97\n1#2:96\n*S KotlinDebug\n*F\n+ 1 SparseBooleanArray.kt\nandroidx/core/util/SparseBooleanArrayKt\n*L\n73#1:97,4\n*E\n"})
/* loaded from: classes.dex */
public final class SparseBooleanArrayKt {
    public static final boolean contains(@NotNull SparseBooleanArray sparseBooleanArray, int i10) {
        if (sparseBooleanArray.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final boolean containsKey(@NotNull SparseBooleanArray sparseBooleanArray, int i10) {
        if (sparseBooleanArray.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final boolean containsValue(@NotNull SparseBooleanArray sparseBooleanArray, boolean z10) {
        if (sparseBooleanArray.indexOfValue(z10) >= 0) {
            return true;
        }
        return false;
    }

    public static final void forEach(@NotNull SparseBooleanArray sparseBooleanArray, @NotNull Function2<? super Integer, ? super Boolean, Unit> function2) {
        int size = sparseBooleanArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            function2.invoke(Integer.valueOf(sparseBooleanArray.keyAt(i10)), Boolean.valueOf(sparseBooleanArray.valueAt(i10)));
        }
    }

    public static final boolean getOrDefault(@NotNull SparseBooleanArray sparseBooleanArray, int i10, boolean z10) {
        return sparseBooleanArray.get(i10, z10);
    }

    public static final boolean getOrElse(@NotNull SparseBooleanArray sparseBooleanArray, int i10, @NotNull Function0<Boolean> function0) {
        int indexOfKey = sparseBooleanArray.indexOfKey(i10);
        if (indexOfKey >= 0) {
            return sparseBooleanArray.valueAt(indexOfKey);
        }
        return function0.invoke().booleanValue();
    }

    public static final int getSize(@NotNull SparseBooleanArray sparseBooleanArray) {
        return sparseBooleanArray.size();
    }

    public static final boolean isEmpty(@NotNull SparseBooleanArray sparseBooleanArray) {
        if (sparseBooleanArray.size() == 0) {
            return true;
        }
        return false;
    }

    public static final boolean isNotEmpty(@NotNull SparseBooleanArray sparseBooleanArray) {
        if (sparseBooleanArray.size() != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final m0 keyIterator(@NotNull final SparseBooleanArray sparseBooleanArray) {
        return new m0() { // from class: androidx.core.util.SparseBooleanArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.index < sparseBooleanArray.size()) {
                    return true;
                }
                return false;
            }

            @Override // kotlin.collections.m0
            public int nextInt() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseBooleanArray2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    @NotNull
    public static final SparseBooleanArray plus(@NotNull SparseBooleanArray sparseBooleanArray, @NotNull SparseBooleanArray sparseBooleanArray2) {
        SparseBooleanArray sparseBooleanArray3 = new SparseBooleanArray(sparseBooleanArray.size() + sparseBooleanArray2.size());
        putAll(sparseBooleanArray3, sparseBooleanArray);
        putAll(sparseBooleanArray3, sparseBooleanArray2);
        return sparseBooleanArray3;
    }

    public static final void putAll(@NotNull SparseBooleanArray sparseBooleanArray, @NotNull SparseBooleanArray sparseBooleanArray2) {
        int size = sparseBooleanArray2.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseBooleanArray.put(sparseBooleanArray2.keyAt(i10), sparseBooleanArray2.valueAt(i10));
        }
    }

    public static final boolean remove(@NotNull SparseBooleanArray sparseBooleanArray, int i10, boolean z10) {
        int indexOfKey = sparseBooleanArray.indexOfKey(i10);
        if (indexOfKey >= 0 && z10 == sparseBooleanArray.valueAt(indexOfKey)) {
            sparseBooleanArray.delete(i10);
            return true;
        }
        return false;
    }

    public static final void set(@NotNull SparseBooleanArray sparseBooleanArray, int i10, boolean z10) {
        sparseBooleanArray.put(i10, z10);
    }

    @NotNull
    public static final u valueIterator(@NotNull final SparseBooleanArray sparseBooleanArray) {
        return new u() { // from class: androidx.core.util.SparseBooleanArrayKt$valueIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.index < sparseBooleanArray.size()) {
                    return true;
                }
                return false;
            }

            @Override // kotlin.collections.u
            public boolean nextBoolean() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseBooleanArray2.valueAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }
}
