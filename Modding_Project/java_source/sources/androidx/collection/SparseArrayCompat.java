package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SparseArrayCompat.jvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSparseArrayCompat.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n+ 2 SparseArrayCompat.kt\nandroidx/collection/SparseArrayCompatKt\n+ 3 CollectionPlatformUtils.jvm.kt\nandroidx/collection/CollectionPlatformUtils\n*L\n1#1,263:1\n250#2,9:264\n263#2,5:273\n271#2,5:278\n279#2,7:283\n294#2,9:290\n327#2,30:299\n360#2,2:329\n327#2,37:331\n367#2,3:368\n327#2,30:371\n371#2:401\n376#2,4:402\n383#2:406\n387#2,4:407\n395#2,5:411\n401#2:417\n406#2,5:418\n414#2,4:423\n422#2,9:427\n435#2:436\n440#2:437\n422#2,9:438\n445#2,8:447\n456#2,17:455\n476#2,21:472\n24#3:416\n*S KotlinDebug\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n*L\n123#1:264,9\n126#1:273,5\n135#1:278,5\n144#1:283,7\n155#1:290,9\n161#1:299,30\n168#1:329,2\n168#1:331,37\n179#1:368,3\n179#1:371,30\n179#1:401\n182#1:402,4\n198#1:406\n204#1:407,4\n210#1:411,5\n210#1:417\n216#1:418,5\n226#1:423,4\n238#1:427,9\n241#1:436\n244#1:437\n244#1:438,9\n247#1:447,8\n253#1:455,17\n261#1:472,21\n210#1:416\n*E\n"})
/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    public /* synthetic */ boolean garbage;
    public /* synthetic */ int[] keys;
    public /* synthetic */ int size;
    public /* synthetic */ Object[] values;

    public SparseArrayCompat() {
        this(0, 1, null);
    }

    public void append(int i10, E e10) {
        int i11 = this.size;
        if (i11 != 0 && i10 <= this.keys[i11 - 1]) {
            put(i10, e10);
            return;
        }
        if (this.garbage && i11 >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
        }
        int i12 = this.size;
        if (i12 >= this.keys.length) {
            int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i12 + 1);
            int[] copyOf = Arrays.copyOf(this.keys, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.values, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            this.values = copyOf2;
        }
        this.keys[i12] = i10;
        this.values[i12] = e10;
        this.size = i12 + 1;
    }

    public void clear() {
        int i10 = this.size;
        Object[] objArr = this.values;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.size = 0;
        this.garbage = false;
    }

    public boolean containsKey(int i10) {
        if (indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(E e10) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        int i10 = this.size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                if (this.values[i11] == e10) {
                    break;
                }
                i11++;
            } else {
                i11 = -1;
                break;
            }
        }
        if (i11 < 0) {
            return false;
        }
        return true;
    }

    @c
    public void delete(int i10) {
        remove(i10);
    }

    @Nullable
    public E get(int i10) {
        return (E) SparseArrayCompatKt.commonGet(this, i10);
    }

    public final boolean getIsEmpty() {
        return isEmpty();
    }

    public int indexOfKey(int i10) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return ContainerHelpersKt.binarySearch(this.keys, this.size, i10);
    }

    public int indexOfValue(E e10) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        int i10 = this.size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.values[i11] == e10) {
                return i11;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    public int keyAt(int i10) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return this.keys[i10];
    }

    public void put(int i10, E e10) {
        int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, i10);
        if (binarySearch >= 0) {
            this.values[binarySearch] = e10;
            return;
        }
        int i11 = ~binarySearch;
        if (i11 < this.size && this.values[i11] == SparseArrayCompatKt.DELETED) {
            this.keys[i11] = i10;
            this.values[i11] = e10;
            return;
        }
        if (this.garbage && this.size >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
            i11 = ~ContainerHelpersKt.binarySearch(this.keys, this.size, i10);
        }
        int i12 = this.size;
        if (i12 >= this.keys.length) {
            int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i12 + 1);
            int[] copyOf = Arrays.copyOf(this.keys, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.values, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            this.values = copyOf2;
        }
        int i13 = this.size;
        if (i13 - i11 != 0) {
            int[] iArr = this.keys;
            int i14 = i11 + 1;
            n.l(iArr, iArr, i14, i11, i13);
            Object[] objArr = this.values;
            n.n(objArr, objArr, i14, i11, this.size);
        }
        this.keys[i11] = i10;
        this.values[i11] = e10;
        this.size++;
    }

    public void putAll(@NotNull SparseArrayCompat<? extends E> other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int size = other.size();
        for (int i10 = 0; i10 < size; i10++) {
            int keyAt = other.keyAt(i10);
            E valueAt = other.valueAt(i10);
            int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, keyAt);
            if (binarySearch >= 0) {
                this.values[binarySearch] = valueAt;
            } else {
                int i11 = ~binarySearch;
                if (i11 < this.size && this.values[i11] == SparseArrayCompatKt.DELETED) {
                    this.keys[i11] = keyAt;
                    this.values[i11] = valueAt;
                } else {
                    if (this.garbage && this.size >= this.keys.length) {
                        SparseArrayCompatKt.gc(this);
                        i11 = ~ContainerHelpersKt.binarySearch(this.keys, this.size, keyAt);
                    }
                    int i12 = this.size;
                    if (i12 >= this.keys.length) {
                        int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i12 + 1);
                        int[] copyOf = Arrays.copyOf(this.keys, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                        this.keys = copyOf;
                        Object[] copyOf2 = Arrays.copyOf(this.values, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
                        this.values = copyOf2;
                    }
                    int i13 = this.size;
                    if (i13 - i11 != 0) {
                        int[] iArr = this.keys;
                        int i14 = i11 + 1;
                        n.l(iArr, iArr, i14, i11, i13);
                        Object[] objArr = this.values;
                        n.n(objArr, objArr, i14, i11, this.size);
                    }
                    this.keys[i11] = keyAt;
                    this.values[i11] = valueAt;
                    this.size++;
                }
            }
        }
    }

    @Nullable
    public E putIfAbsent(int i10, E e10) {
        E e11 = (E) SparseArrayCompatKt.commonGet(this, i10);
        if (e11 == null) {
            int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, i10);
            if (binarySearch >= 0) {
                this.values[binarySearch] = e10;
            } else {
                int i11 = ~binarySearch;
                if (i11 < this.size && this.values[i11] == SparseArrayCompatKt.DELETED) {
                    this.keys[i11] = i10;
                    this.values[i11] = e10;
                } else {
                    if (this.garbage && this.size >= this.keys.length) {
                        SparseArrayCompatKt.gc(this);
                        i11 = ~ContainerHelpersKt.binarySearch(this.keys, this.size, i10);
                    }
                    int i12 = this.size;
                    if (i12 >= this.keys.length) {
                        int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i12 + 1);
                        int[] copyOf = Arrays.copyOf(this.keys, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                        this.keys = copyOf;
                        Object[] copyOf2 = Arrays.copyOf(this.values, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
                        this.values = copyOf2;
                    }
                    int i13 = this.size;
                    if (i13 - i11 != 0) {
                        int[] iArr = this.keys;
                        int i14 = i11 + 1;
                        n.l(iArr, iArr, i14, i11, i13);
                        Object[] objArr = this.values;
                        n.n(objArr, objArr, i14, i11, this.size);
                    }
                    this.keys[i11] = i10;
                    this.values[i11] = e10;
                    this.size++;
                }
            }
        }
        return e11;
    }

    public void remove(int i10) {
        SparseArrayCompatKt.commonRemove(this, i10);
    }

    public void removeAt(int i10) {
        if (this.values[i10] != SparseArrayCompatKt.DELETED) {
            this.values[i10] = SparseArrayCompatKt.DELETED;
            this.garbage = true;
        }
    }

    public void removeAtRange(int i10, int i11) {
        int min = Math.min(i11, i10 + i11);
        while (i10 < min) {
            removeAt(i10);
            i10++;
        }
    }

    @Nullable
    public E replace(int i10, E e10) {
        int indexOfKey = indexOfKey(i10);
        if (indexOfKey >= 0) {
            Object[] objArr = this.values;
            E e11 = (E) objArr[indexOfKey];
            objArr[indexOfKey] = e10;
            return e11;
        }
        return null;
    }

    public void setValueAt(int i10, E e10) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        this.values[i10] = e10;
    }

    public int size() {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return this.size;
    }

    @NotNull
    public String toString() {
        if (size() <= 0) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder(this.size * 28);
        sb2.append('{');
        int i10 = this.size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(keyAt(i11));
            sb2.append('=');
            E valueAt = valueAt(i11);
            if (valueAt != this) {
                sb2.append(valueAt);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public E valueAt(int i10) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        Object[] objArr = this.values;
        if (i10 < objArr.length) {
            return (E) objArr[i10];
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    public SparseArrayCompat(int i10) {
        if (i10 == 0) {
            this.keys = ContainerHelpersKt.EMPTY_INTS;
            this.values = ContainerHelpersKt.EMPTY_OBJECTS;
            return;
        }
        int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i10);
        this.keys = new int[idealIntArraySize];
        this.values = new Object[idealIntArraySize];
    }

    @NotNull
    /* renamed from: clone */
    public SparseArrayCompat<E> m38clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) clone;
        sparseArrayCompat.keys = (int[]) this.keys.clone();
        sparseArrayCompat.values = (Object[]) this.values.clone();
        return sparseArrayCompat;
    }

    public E get(int i10, E e10) {
        return (E) SparseArrayCompatKt.commonGet(this, i10, e10);
    }

    public boolean remove(int i10, @Nullable Object obj) {
        int indexOfKey = indexOfKey(i10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(obj, valueAt(indexOfKey))) {
            return false;
        }
        removeAt(indexOfKey);
        return true;
    }

    public boolean replace(int i10, E e10, E e11) {
        int indexOfKey = indexOfKey(i10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(this.values[indexOfKey], e10)) {
            return false;
        }
        this.values[indexOfKey] = e11;
        return true;
    }

    public /* synthetic */ SparseArrayCompat(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }
}
