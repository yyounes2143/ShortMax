package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CircularIntArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCircularIntArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularIntArray.kt\nandroidx/collection/CircularIntArray\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 CollectionPlatformUtils.jvm.kt\nandroidx/collection/CollectionPlatformUtils\n*L\n1#1,212:1\n59#2,5:213\n59#2,5:218\n24#3:223\n24#3:224\n24#3:225\n24#3:226\n24#3:227\n24#3:228\n24#3:229\n*S KotlinDebug\n*F\n+ 1 CircularIntArray.kt\nandroidx/collection/CircularIntArray\n*L\n37#1:213,5\n38#1:218,5\n101#1:223\n114#1:224\n138#1:225\n155#1:226\n168#1:227\n180#1:228\n192#1:229\n*E\n"})
/* loaded from: classes.dex */
public final class CircularIntArray {
    private int capacityBitmask;
    @NotNull
    private int[] elements;
    private int head;
    private int tail;

    public CircularIntArray() {
        this(0, 1, null);
    }

    private final void doubleCapacity() {
        int[] iArr = this.elements;
        int length = iArr.length;
        int i10 = this.head;
        int i11 = length - i10;
        int i12 = length << 1;
        if (i12 >= 0) {
            int[] iArr2 = new int[i12];
            n.l(iArr, iArr2, 0, i10, length);
            n.l(this.elements, iArr2, i11, 0, this.head);
            this.elements = iArr2;
            this.head = 0;
            this.tail = length;
            this.capacityBitmask = i12 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public final void addFirst(int i10) {
        int i11 = (this.head - 1) & this.capacityBitmask;
        this.head = i11;
        this.elements[i11] = i10;
        if (i11 == this.tail) {
            doubleCapacity();
        }
    }

    public final void addLast(int i10) {
        int[] iArr = this.elements;
        int i11 = this.tail;
        iArr[i11] = i10;
        int i12 = this.capacityBitmask & (i11 + 1);
        this.tail = i12;
        if (i12 == this.head) {
            doubleCapacity();
        }
    }

    public final void clear() {
        this.tail = this.head;
    }

    public final int get(int i10) {
        if (i10 >= 0 && i10 < size()) {
            return this.elements[this.capacityBitmask & (this.head + i10)];
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int getFirst() {
        int i10 = this.head;
        if (i10 != this.tail) {
            return this.elements[i10];
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int getLast() {
        int i10 = this.head;
        int i11 = this.tail;
        if (i10 != i11) {
            return this.elements[(i11 - 1) & this.capacityBitmask];
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

    public final int popFirst() {
        int i10 = this.head;
        if (i10 != this.tail) {
            int i11 = this.elements[i10];
            this.head = (i10 + 1) & this.capacityBitmask;
            return i11;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int popLast() {
        int i10 = this.head;
        int i11 = this.tail;
        if (i10 != i11) {
            int i12 = this.capacityBitmask & (i11 - 1);
            int i13 = this.elements[i12];
            this.tail = i12;
            return i13;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final void removeFromEnd(int i10) {
        if (i10 <= 0) {
            return;
        }
        if (i10 <= size()) {
            this.tail = this.capacityBitmask & (this.tail - i10);
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
            this.head = this.capacityBitmask & (this.head + i10);
            return;
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int size() {
        return (this.tail - this.head) & this.capacityBitmask;
    }

    public CircularIntArray(int i10) {
        if (!(i10 >= 1)) {
            RuntimeHelpersKt.throwIllegalArgumentException("capacity must be >= 1");
        }
        if (!(i10 <= 1073741824)) {
            RuntimeHelpersKt.throwIllegalArgumentException("capacity must be <= 2^30");
        }
        i10 = Integer.bitCount(i10) != 1 ? Integer.highestOneBit(i10 - 1) << 1 : i10;
        this.capacityBitmask = i10 - 1;
        this.elements = new int[i10];
    }

    public /* synthetic */ CircularIntArray(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 8 : i10);
    }
}
