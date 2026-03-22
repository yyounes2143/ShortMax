package androidx.collection;

import androidx.annotation.IntRange;
import androidx.collection.internal.RuntimeHelpersKt;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DoubleList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDoubleList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DoubleList.kt\nandroidx/collection/MutableDoubleList\n+ 2 DoubleList.kt\nandroidx/collection/DoubleList\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,983:1\n562#1:985\n367#2:984\n72#2:986\n239#2,6:989\n72#2:995\n72#2:996\n72#2:1003\n13351#3,2:987\n1699#3,6:997\n*S KotlinDebug\n*F\n+ 1 DoubleList.kt\nandroidx/collection/MutableDoubleList\n*L\n698#1:985\n634#1:984\n758#1:986\n771#1:989,6\n785#1:995\n831#1:996\n848#1:1003\n766#1:987,2\n833#1:997,6\n*E\n"})
/* loaded from: classes.dex */
public final class MutableDoubleList extends DoubleList {
    public MutableDoubleList() {
        this(0, 1, null);
    }

    public static /* synthetic */ void trim$default(MutableDoubleList mutableDoubleList, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = mutableDoubleList._size;
        }
        mutableDoubleList.trim(i10);
    }

    public final boolean add(double d10) {
        ensureCapacity(this._size + 1);
        double[] dArr = this.content;
        int i10 = this._size;
        dArr[i10] = d10;
        this._size = i10 + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = 0) int i10, @NotNull double[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (i10 < 0 || i10 > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        if (elements.length == 0) {
            return false;
        }
        ensureCapacity(this._size + elements.length);
        double[] dArr = this.content;
        int i11 = this._size;
        if (i10 != i11) {
            n.j(dArr, dArr, elements.length + i10, i10, i11);
        }
        n.q(elements, dArr, i10, 0, 0, 12, null);
        this._size += elements.length;
        return true;
    }

    public final void clear() {
        this._size = 0;
    }

    public final void ensureCapacity(int i10) {
        double[] dArr = this.content;
        if (dArr.length < i10) {
            double[] copyOf = Arrays.copyOf(dArr, Math.max(i10, (dArr.length * 3) / 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.content = copyOf;
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(double d10) {
        remove(d10);
    }

    public final void plusAssign(@NotNull DoubleList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        addAll(this._size, elements);
    }

    public final boolean remove(double d10) {
        int indexOf = indexOf(d10);
        if (indexOf >= 0) {
            removeAt(indexOf);
            return true;
        }
        return false;
    }

    public final boolean removeAll(@NotNull double[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        for (double d10 : elements) {
            remove(d10);
        }
        return i10 != this._size;
    }

    public final double removeAt(@IntRange(from = 0) int i10) {
        if (i10 < 0 || i10 >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        double[] dArr = this.content;
        double d10 = dArr[i10];
        int i11 = this._size;
        if (i10 != i11 - 1) {
            n.j(dArr, dArr, i10, i10 + 1, i11);
        }
        this._size--;
        return d10;
    }

    public final void removeRange(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11) {
        int i12;
        if (i10 < 0 || i10 > (i12 = this._size) || i11 < 0 || i11 > i12) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        if (i11 < i10) {
            RuntimeHelpersKt.throwIllegalArgumentException("The end index must be < start index");
        }
        if (i11 != i10) {
            int i13 = this._size;
            if (i11 < i13) {
                double[] dArr = this.content;
                n.j(dArr, dArr, i10, i11, i13);
            }
            this._size -= i11 - i10;
        }
    }

    public final boolean retainAll(@NotNull double[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        double[] dArr = this.content;
        int i11 = i10 - 1;
        while (true) {
            int i12 = 0;
            int i13 = -1;
            if (-1 >= i11) {
                break;
            }
            double d10 = dArr[i11];
            int length = elements.length;
            while (true) {
                if (i12 >= length) {
                    break;
                } else if (elements[i12] == d10) {
                    i13 = i12;
                    break;
                } else {
                    i12++;
                }
            }
            if (i13 < 0) {
                removeAt(i11);
            }
            i11--;
        }
        return i10 != this._size;
    }

    public final double set(@IntRange(from = 0) int i10, double d10) {
        if (i10 < 0 || i10 >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        double[] dArr = this.content;
        double d11 = dArr[i10];
        dArr[i10] = d10;
        return d11;
    }

    public final void sort() {
        int i10 = this._size;
        if (i10 == 0) {
            return;
        }
        n.N(this.content, 0, i10);
    }

    public final void sortDescending() {
        int i10 = this._size;
        if (i10 == 0) {
            return;
        }
        n.j1(this.content, 0, i10);
    }

    public final void trim(int i10) {
        int max = Math.max(i10, this._size);
        double[] dArr = this.content;
        if (dArr.length > max) {
            double[] copyOf = Arrays.copyOf(dArr, max);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.content = copyOf;
        }
    }

    public MutableDoubleList(int i10) {
        super(i10, null);
    }

    public final void minusAssign(@NotNull double[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (double d10 : elements) {
            remove(d10);
        }
    }

    public final void plusAssign(@NotNull double[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        addAll(this._size, elements);
    }

    public /* synthetic */ MutableDoubleList(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 16 : i10);
    }

    public final void plusAssign(double d10) {
        add(d10);
    }

    public final void add(@IntRange(from = 0) int i10, double d10) {
        if (i10 < 0 || i10 > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        ensureCapacity(this._size + 1);
        double[] dArr = this.content;
        int i11 = this._size;
        if (i10 != i11) {
            n.j(dArr, dArr, i10 + 1, i10, i11);
        }
        dArr[i10] = d10;
        this._size++;
    }

    public final void minusAssign(@NotNull DoubleList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        double[] dArr = elements.content;
        int i10 = elements._size;
        for (int i11 = 0; i11 < i10; i11++) {
            remove(dArr[i11]);
        }
    }

    public final boolean removeAll(@NotNull DoubleList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        int i11 = elements._size - 1;
        if (i11 >= 0) {
            int i12 = 0;
            while (true) {
                remove(elements.get(i12));
                if (i12 == i11) {
                    break;
                }
                i12++;
            }
        }
        return i10 != this._size;
    }

    public final boolean retainAll(@NotNull DoubleList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        double[] dArr = this.content;
        for (int i11 = i10 - 1; -1 < i11; i11--) {
            if (!elements.contains(dArr[i11])) {
                removeAt(i11);
            }
        }
        return i10 != this._size;
    }

    public final boolean addAll(@IntRange(from = 0) int i10, @NotNull DoubleList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (i10 < 0 || i10 > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        int i11 = elements._size;
        if (i11 == 0) {
            return false;
        }
        ensureCapacity(this._size + i11);
        double[] dArr = this.content;
        int i12 = this._size;
        if (i10 != i12) {
            n.j(dArr, dArr, elements._size + i10, i10, i12);
        }
        n.j(elements.content, dArr, i10, 0, elements._size);
        this._size += elements._size;
        return true;
    }

    public final boolean addAll(@NotNull DoubleList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return addAll(this._size, elements);
    }

    public final boolean addAll(@NotNull double[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return addAll(this._size, elements);
    }
}
