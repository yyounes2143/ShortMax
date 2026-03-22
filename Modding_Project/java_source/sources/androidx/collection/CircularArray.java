package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CircularArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCircularArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularArray.kt\nandroidx/collection/CircularArray\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 CollectionPlatformUtils.jvm.kt\nandroidx/collection/CollectionPlatformUtils\n*L\n1#1,266:1\n59#2,5:267\n59#2,5:272\n24#3:277\n24#3:278\n24#3:279\n24#3:280\n24#3:281\n24#3:282\n24#3:283\n*S KotlinDebug\n*F\n+ 1 CircularArray.kt\nandroidx/collection/CircularArray\n*L\n38#1:267,5\n39#1:272,5\n104#1:277\n121#1:278\n148#1:279\n183#1:280\n217#1:281\n231#1:282\n245#1:283\n*E\n"})
/* loaded from: classes.dex */
public final class CircularArray<E> {
    private int capacityBitmask;
    @NotNull
    private E[] elements;
    private int head;
    private int tail;

    public CircularArray() {
        this(0, 1, null);
    }

    private final void doubleCapacity() {
        E[] eArr = this.elements;
        int length = eArr.length;
        int i10 = this.head;
        int i11 = length - i10;
        int i12 = length << 1;
        if (i12 >= 0) {
            E[] eArr2 = (E[]) new Object[i12];
            n.n(eArr, eArr2, 0, i10, length);
            n.n(this.elements, eArr2, i11, 0, this.head);
            this.elements = eArr2;
            this.head = 0;
            this.tail = length;
            this.capacityBitmask = i12 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public final void addFirst(E e10) {
        int i10 = (this.head - 1) & this.capacityBitmask;
        this.head = i10;
        this.elements[i10] = e10;
        if (i10 == this.tail) {
            doubleCapacity();
        }
    }

    public final void addLast(E e10) {
        E[] eArr = this.elements;
        int i10 = this.tail;
        eArr[i10] = e10;
        int i11 = this.capacityBitmask & (i10 + 1);
        this.tail = i11;
        if (i11 == this.head) {
            doubleCapacity();
        }
    }

    public final void clear() {
        removeFromStart(size());
    }

    public final E get(int i10) {
        if (i10 >= 0 && i10 < size()) {
            E e10 = this.elements[this.capacityBitmask & (this.head + i10)];
            Intrinsics.checkNotNull(e10);
            return e10;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final E getFirst() {
        int i10 = this.head;
        if (i10 != this.tail) {
            E e10 = this.elements[i10];
            Intrinsics.checkNotNull(e10);
            return e10;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final E getLast() {
        int i10 = this.head;
        int i11 = this.tail;
        if (i10 != i11) {
            E e10 = this.elements[(i11 - 1) & this.capacityBitmask];
            Intrinsics.checkNotNull(e10);
            return e10;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final boolean isEmpty() {
        if (this.head == this.tail) {
            return true;
        }
        return false;
    }

    public final E popFirst() {
        int i10 = this.head;
        if (i10 != this.tail) {
            E[] eArr = this.elements;
            E e10 = eArr[i10];
            eArr[i10] = null;
            this.head = (i10 + 1) & this.capacityBitmask;
            return e10;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final E popLast() {
        int i10 = this.head;
        int i11 = this.tail;
        if (i10 != i11) {
            int i12 = this.capacityBitmask & (i11 - 1);
            E[] eArr = this.elements;
            E e10 = eArr[i12];
            eArr[i12] = null;
            this.tail = i12;
            return e10;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final void removeFromEnd(int i10) {
        int i11;
        if (i10 <= 0) {
            return;
        }
        if (i10 <= size()) {
            int i12 = this.tail;
            if (i10 < i12) {
                i11 = i12 - i10;
            } else {
                i11 = 0;
            }
            for (int i13 = i11; i13 < i12; i13++) {
                this.elements[i13] = null;
            }
            int i14 = this.tail;
            int i15 = i14 - i11;
            int i16 = i10 - i15;
            this.tail = i14 - i15;
            if (i16 > 0) {
                int length = this.elements.length;
                this.tail = length;
                int i17 = length - i16;
                for (int i18 = i17; i18 < length; i18++) {
                    this.elements[i18] = null;
                }
                this.tail = i17;
                return;
            }
            return;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final void removeFromStart(int i10) {
        if (i10 <= 0) {
            return;
        }
        if (i10 <= size()) {
            int length = this.elements.length;
            int i11 = this.head;
            if (i10 < length - i11) {
                length = i11 + i10;
            }
            while (i11 < length) {
                this.elements[i11] = null;
                i11++;
            }
            int i12 = this.head;
            int i13 = length - i12;
            int i14 = i10 - i13;
            this.head = this.capacityBitmask & (i12 + i13);
            if (i14 > 0) {
                for (int i15 = 0; i15 < i14; i15++) {
                    this.elements[i15] = null;
                }
                this.head = i14;
                return;
            }
            return;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int size() {
        return (this.tail - this.head) & this.capacityBitmask;
    }

    public CircularArray(int i10) {
        if (!(i10 >= 1)) {
            RuntimeHelpersKt.throwIllegalArgumentException("capacity must be >= 1");
        }
        if (!(i10 <= 1073741824)) {
            RuntimeHelpersKt.throwIllegalArgumentException("capacity must be <= 2^30");
        }
        i10 = Integer.bitCount(i10) != 1 ? Integer.highestOneBit(i10 - 1) << 1 : i10;
        this.capacityBitmask = i10 - 1;
        this.elements = (E[]) new Object[i10];
    }

    public /* synthetic */ CircularArray(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 8 : i10);
    }
}
