package androidx.collection;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.m0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: SparseArray.kt */
@Metadata
/* loaded from: classes.dex */
public final class SparseArrayKt {
    public static final <T> boolean contains(@NotNull SparseArrayCompat<T> sparseArrayCompat, int i10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        return sparseArrayCompat.containsKey(i10);
    }

    public static final <T> void forEach(@NotNull SparseArrayCompat<T> sparseArrayCompat, @NotNull Function2<? super Integer, ? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = sparseArrayCompat.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Integer.valueOf(sparseArrayCompat.keyAt(i10)), sparseArrayCompat.valueAt(i10));
        }
    }

    public static final <T> T getOrDefault(@NotNull SparseArrayCompat<T> sparseArrayCompat, int i10, T t10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        return sparseArrayCompat.get(i10, t10);
    }

    public static final <T> T getOrElse(@NotNull SparseArrayCompat<T> sparseArrayCompat, int i10, @NotNull Function0<? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        T t10 = sparseArrayCompat.get(i10);
        if (t10 == null) {
            return defaultValue.invoke();
        }
        return t10;
    }

    public static final <T> int getSize(@NotNull SparseArrayCompat<T> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        return sparseArrayCompat.size();
    }

    public static final <T> boolean isNotEmpty(@NotNull SparseArrayCompat<T> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        return !sparseArrayCompat.isEmpty();
    }

    @NotNull
    public static final <T> m0 keyIterator(@NotNull final SparseArrayCompat<T> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        return new m0() { // from class: androidx.collection.SparseArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.index < sparseArrayCompat.size()) {
                    return true;
                }
                return false;
            }

            @Override // kotlin.collections.m0
            public int nextInt() {
                SparseArrayCompat<T> sparseArrayCompat2 = sparseArrayCompat;
                int i10 = this.index;
                this.index = i10 + 1;
                return sparseArrayCompat2.keyAt(i10);
            }

            public final void setIndex(int i10) {
                this.index = i10;
            }
        };
    }

    @NotNull
    public static final <T> SparseArrayCompat<T> plus(@NotNull SparseArrayCompat<T> sparseArrayCompat, @NotNull SparseArrayCompat<T> other) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        SparseArrayCompat<T> sparseArrayCompat2 = new SparseArrayCompat<>(sparseArrayCompat.size() + other.size());
        sparseArrayCompat2.putAll(sparseArrayCompat);
        sparseArrayCompat2.putAll(other);
        return sparseArrayCompat2;
    }

    @c
    public static final /* synthetic */ boolean remove(SparseArrayCompat sparseArrayCompat, int i10, Object obj) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        return sparseArrayCompat.remove(i10, obj);
    }

    public static final <T> void set(@NotNull SparseArrayCompat<T> sparseArrayCompat, int i10, T t10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        sparseArrayCompat.put(i10, t10);
    }

    @NotNull
    public static final <T> Iterator<T> valueIterator(@NotNull SparseArrayCompat<T> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        return new SparseArrayKt$valueIterator$1(sparseArrayCompat);
    }
}
