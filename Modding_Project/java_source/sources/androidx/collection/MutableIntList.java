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
/* compiled from: IntList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n+ 2 IntList.kt\nandroidx/collection/IntList\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,968:1\n556#1:970\n363#2:969\n70#2:971\n237#2,6:974\n70#2:980\n70#2:981\n70#2:988\n13330#3,2:972\n1663#3,6:982\n*S KotlinDebug\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n*L\n692#1:970\n628#1:969\n749#1:971\n762#1:974,6\n776#1:980\n822#1:981\n839#1:988\n757#1:972,2\n824#1:982,6\n*E\n"})
/* loaded from: classes.dex */
public final class MutableIntList extends IntList {
    public MutableIntList() {
        this(0, 1, null);
    }

    public static /* synthetic */ void trim$default(MutableIntList mutableIntList, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = mutableIntList._size;
        }
        mutableIntList.trim(i10);
    }

    public final boolean add(int i10) {
        ensureCapacity(this._size + 1);
        int[] iArr = this.content;
        int i11 = this._size;
        iArr[i11] = i10;
        this._size = i11 + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = 0) int i10, @NotNull int[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (i10 < 0 || i10 > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        if (elements.length == 0) {
            return false;
        }
        ensureCapacity(this._size + elements.length);
        int[] iArr = this.content;
        int i11 = this._size;
        if (i10 != i11) {
            n.l(iArr, iArr, elements.length + i10, i10, i11);
        }
        n.s(elements, iArr, i10, 0, 0, 12, null);
        this._size += elements.length;
        return true;
    }

    public final void clear() {
        this._size = 0;
    }

    public final void ensureCapacity(int i10) {
        int[] iArr = this.content;
        if (iArr.length < i10) {
            int[] copyOf = Arrays.copyOf(iArr, Math.max(i10, (iArr.length * 3) / 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.content = copyOf;
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(int i10) {
        remove(i10);
    }

    public final void plusAssign(@NotNull IntList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        addAll(this._size, elements);
    }

    public final boolean remove(int i10) {
        int indexOf = indexOf(i10);
        if (indexOf >= 0) {
            removeAt(indexOf);
            return true;
        }
        return false;
    }

    public final boolean removeAll(@NotNull int[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        for (int i11 : elements) {
            remove(i11);
        }
        return i10 != this._size;
    }

    public final int removeAt(@IntRange(from = 0) int i10) {
        if (i10 < 0 || i10 >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        int[] iArr = this.content;
        int i11 = iArr[i10];
        int i12 = this._size;
        if (i10 != i12 - 1) {
            n.l(iArr, iArr, i10, i10 + 1, i12);
        }
        this._size--;
        return i11;
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
                int[] iArr = this.content;
                n.l(iArr, iArr, i10, i11, i13);
            }
            this._size -= i11 - i10;
        }
    }

    public final boolean retainAll(@NotNull int[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        int[] iArr = this.content;
        int i11 = i10 - 1;
        while (true) {
            int i12 = 0;
            int i13 = -1;
            if (-1 >= i11) {
                break;
            }
            int i14 = iArr[i11];
            int length = elements.length;
            while (true) {
                if (i12 >= length) {
                    break;
                } else if (elements[i12] == i14) {
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

    public final int set(@IntRange(from = 0) int i10, int i11) {
        if (i10 < 0 || i10 >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        int[] iArr = this.content;
        int i12 = iArr[i10];
        iArr[i10] = i11;
        return i12;
    }

    public final void sort() {
        int i10 = this._size;
        if (i10 == 0) {
            return;
        }
        n.P(this.content, 0, i10);
    }

    public final void sortDescending() {
        int i10 = this._size;
        if (i10 == 0) {
            return;
        }
        n.l1(this.content, 0, i10);
    }

    public final void trim(int i10) {
        int max = Math.max(i10, this._size);
        int[] iArr = this.content;
        if (iArr.length > max) {
            int[] copyOf = Arrays.copyOf(iArr, max);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.content = copyOf;
        }
    }

    public MutableIntList(int i10) {
        super(i10, null);
    }

    public final void minusAssign(@NotNull int[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (int i10 : elements) {
            remove(i10);
        }
    }

    public final void plusAssign(@NotNull int[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        addAll(this._size, elements);
    }

    public /* synthetic */ MutableIntList(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 16 : i10);
    }

    public final void plusAssign(int i10) {
        add(i10);
    }

    public final void add(@IntRange(from = 0) int i10, int i11) {
        if (i10 < 0 || i10 > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        ensureCapacity(this._size + 1);
        int[] iArr = this.content;
        int i12 = this._size;
        if (i10 != i12) {
            n.l(iArr, iArr, i10 + 1, i10, i12);
        }
        iArr[i10] = i11;
        this._size++;
    }

    public final void minusAssign(@NotNull IntList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int[] iArr = elements.content;
        int i10 = elements._size;
        for (int i11 = 0; i11 < i10; i11++) {
            remove(iArr[i11]);
        }
    }

    public final boolean removeAll(@NotNull IntList elements) {
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

    public final boolean retainAll(@NotNull IntList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        int[] iArr = this.content;
        for (int i11 = i10 - 1; -1 < i11; i11--) {
            if (!elements.contains(iArr[i11])) {
                removeAt(i11);
            }
        }
        return i10 != this._size;
    }

    public final boolean addAll(@IntRange(from = 0) int i10, @NotNull IntList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (i10 < 0 || i10 > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        int i11 = elements._size;
        if (i11 == 0) {
            return false;
        }
        ensureCapacity(this._size + i11);
        int[] iArr = this.content;
        int i12 = this._size;
        if (i10 != i12) {
            n.l(iArr, iArr, elements._size + i10, i10, i12);
        }
        n.l(elements.content, iArr, i10, 0, elements._size);
        this._size += elements._size;
        return true;
    }

    public final boolean addAll(@NotNull IntList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return addAll(this._size, elements);
    }

    public final boolean addAll(@NotNull int[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return addAll(this._size, elements);
    }
}
