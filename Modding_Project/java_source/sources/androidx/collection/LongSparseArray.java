package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.collection.internal.RuntimeHelpersKt;
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
/* compiled from: LongSparseArray.jvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongSparseArray.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongSparseArray.jvm.kt\nandroidx/collection/LongSparseArray\n+ 2 LongSparseArray.kt\nandroidx/collection/LongSparseArrayKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n*L\n1#1,243:1\n218#2:244\n229#2,5:245\n223#2,11:250\n239#2,8:261\n239#2,8:269\n250#2,9:277\n263#2,5:286\n271#2,7:291\n286#2,9:298\n320#2,12:307\n299#2,18:319\n334#2,21:337\n358#2,2:358\n360#2:361\n364#2,5:362\n373#2,2:367\n299#2,18:369\n376#2:387\n380#2:388\n384#2:389\n385#2:393\n388#2,2:395\n299#2,18:397\n391#2:415\n396#2:416\n397#2:420\n400#2,2:422\n299#2,18:424\n404#2:442\n409#2:443\n410#2:447\n413#2,2:449\n299#2,18:451\n416#2,2:469\n421#2,2:471\n299#2,18:473\n424#2:491\n429#2,2:492\n299#2,18:494\n432#2,6:512\n442#2:518\n447#2:519\n452#2,8:520\n463#2,6:528\n299#2,18:534\n470#2,10:552\n483#2,21:562\n1#3:360\n59#4,3:390\n63#4:394\n59#4,3:417\n63#4:421\n59#4,3:444\n63#4:448\n*S KotlinDebug\n*F\n+ 1 LongSparseArray.jvm.kt\nandroidx/collection/LongSparseArray\n*L\n92#1:244\n92#1:245,5\n99#1:250,11\n103#1:261,8\n106#1:269,8\n115#1:277,9\n118#1:286,5\n127#1:291,7\n138#1:298,9\n144#1:307,12\n144#1:319,18\n144#1:337,21\n150#1:358,2\n150#1:361\n161#1:362,5\n164#1:367,2\n164#1:369,18\n164#1:387\n171#1:388\n183#1:389\n183#1:393\n183#1:395,2\n183#1:397,18\n183#1:415\n195#1:416\n195#1:420\n195#1:422,2\n195#1:424,18\n195#1:442\n203#1:443\n203#1:447\n203#1:449,2\n203#1:451,18\n203#1:469,2\n209#1:471,2\n209#1:473,18\n209#1:491\n218#1:492,2\n218#1:494,18\n218#1:512,6\n221#1:518\n224#1:519\n227#1:520,8\n233#1:528,6\n233#1:534,18\n233#1:552,10\n241#1:562,21\n150#1:360\n183#1:390,3\n183#1:394\n195#1:417,3\n195#1:421\n203#1:444,3\n203#1:448\n*E\n"})
/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {
    public /* synthetic */ boolean garbage;
    public /* synthetic */ long[] keys;
    public /* synthetic */ int size;
    public /* synthetic */ Object[] values;

    public LongSparseArray() {
        this(0, 1, null);
    }

    public void append(long j10, E e10) {
        int i10 = this.size;
        if (i10 != 0 && j10 <= this.keys[i10 - 1]) {
            put(j10, e10);
            return;
        }
        if (this.garbage) {
            long[] jArr = this.keys;
            if (i10 >= jArr.length) {
                Object[] objArr = this.values;
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    Object obj = objArr[i12];
                    if (obj != LongSparseArrayKt.DELETED) {
                        if (i12 != i11) {
                            jArr[i11] = jArr[i12];
                            objArr[i11] = obj;
                            objArr[i12] = null;
                        }
                        i11++;
                    }
                }
                this.garbage = false;
                this.size = i11;
            }
        }
        int i13 = this.size;
        if (i13 >= this.keys.length) {
            int idealLongArraySize = ContainerHelpersKt.idealLongArraySize(i13 + 1);
            long[] copyOf = Arrays.copyOf(this.keys, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.values, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            this.values = copyOf2;
        }
        this.keys[i13] = j10;
        this.values[i13] = e10;
        this.size = i13 + 1;
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

    public boolean containsKey(long j10) {
        if (indexOfKey(j10) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(E e10) {
        if (indexOfValue(e10) >= 0) {
            return true;
        }
        return false;
    }

    @c
    public void delete(long j10) {
        int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, j10);
        if (binarySearch >= 0 && this.values[binarySearch] != LongSparseArrayKt.DELETED) {
            this.values[binarySearch] = LongSparseArrayKt.DELETED;
            this.garbage = true;
        }
    }

    @Nullable
    public E get(long j10) {
        int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, j10);
        if (binarySearch < 0 || this.values[binarySearch] == LongSparseArrayKt.DELETED) {
            return null;
        }
        return (E) this.values[binarySearch];
    }

    public int indexOfKey(long j10) {
        if (this.garbage) {
            int i10 = this.size;
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.garbage = false;
            this.size = i11;
        }
        return ContainerHelpersKt.binarySearch(this.keys, this.size, j10);
    }

    public int indexOfValue(E e10) {
        if (this.garbage) {
            int i10 = this.size;
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.garbage = false;
            this.size = i11;
        }
        int i13 = this.size;
        for (int i14 = 0; i14 < i13; i14++) {
            if (this.values[i14] == e10) {
                return i14;
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

    public long keyAt(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        if (this.garbage) {
            int i11 = this.size;
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.garbage = false;
            this.size = i12;
        }
        return this.keys[i10];
    }

    public void put(long j10, E e10) {
        int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, j10);
        if (binarySearch >= 0) {
            this.values[binarySearch] = e10;
            return;
        }
        int i10 = ~binarySearch;
        if (i10 < this.size && this.values[i10] == LongSparseArrayKt.DELETED) {
            this.keys[i10] = j10;
            this.values[i10] = e10;
            return;
        }
        if (this.garbage) {
            int i11 = this.size;
            long[] jArr = this.keys;
            if (i11 >= jArr.length) {
                Object[] objArr = this.values;
                int i12 = 0;
                for (int i13 = 0; i13 < i11; i13++) {
                    Object obj = objArr[i13];
                    if (obj != LongSparseArrayKt.DELETED) {
                        if (i13 != i12) {
                            jArr[i12] = jArr[i13];
                            objArr[i12] = obj;
                            objArr[i13] = null;
                        }
                        i12++;
                    }
                }
                this.garbage = false;
                this.size = i12;
                i10 = ~ContainerHelpersKt.binarySearch(this.keys, i12, j10);
            }
        }
        int i14 = this.size;
        if (i14 >= this.keys.length) {
            int idealLongArraySize = ContainerHelpersKt.idealLongArraySize(i14 + 1);
            long[] copyOf = Arrays.copyOf(this.keys, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.values, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            this.values = copyOf2;
        }
        int i15 = this.size;
        if (i15 - i10 != 0) {
            long[] jArr2 = this.keys;
            int i16 = i10 + 1;
            n.m(jArr2, jArr2, i16, i10, i15);
            Object[] objArr2 = this.values;
            n.n(objArr2, objArr2, i16, i10, this.size);
        }
        this.keys[i10] = j10;
        this.values[i10] = e10;
        this.size++;
    }

    public void putAll(@NotNull LongSparseArray<? extends E> other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int size = other.size();
        for (int i10 = 0; i10 < size; i10++) {
            put(other.keyAt(i10), other.valueAt(i10));
        }
    }

    @Nullable
    public E putIfAbsent(long j10, E e10) {
        E e11 = get(j10);
        if (e11 == null) {
            put(j10, e10);
        }
        return e11;
    }

    public void remove(long j10) {
        int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, j10);
        if (binarySearch < 0 || this.values[binarySearch] == LongSparseArrayKt.DELETED) {
            return;
        }
        this.values[binarySearch] = LongSparseArrayKt.DELETED;
        this.garbage = true;
    }

    public void removeAt(int i10) {
        if (this.values[i10] != LongSparseArrayKt.DELETED) {
            this.values[i10] = LongSparseArrayKt.DELETED;
            this.garbage = true;
        }
    }

    @Nullable
    public E replace(long j10, E e10) {
        int indexOfKey = indexOfKey(j10);
        if (indexOfKey >= 0) {
            Object[] objArr = this.values;
            E e11 = (E) objArr[indexOfKey];
            objArr[indexOfKey] = e10;
            return e11;
        }
        return null;
    }

    public void setValueAt(int i10, E e10) {
        boolean z10;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        if (this.garbage) {
            int i11 = this.size;
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.garbage = false;
            this.size = i12;
        }
        this.values[i10] = e10;
    }

    public int size() {
        if (this.garbage) {
            int i10 = this.size;
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.garbage = false;
            this.size = i11;
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
            if (valueAt != sb2) {
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
        boolean z10;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        if (this.garbage) {
            int i11 = this.size;
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.garbage = false;
            this.size = i12;
        }
        return (E) this.values[i10];
    }

    public LongSparseArray(int i10) {
        if (i10 == 0) {
            this.keys = ContainerHelpersKt.EMPTY_LONGS;
            this.values = ContainerHelpersKt.EMPTY_OBJECTS;
            return;
        }
        int idealLongArraySize = ContainerHelpersKt.idealLongArraySize(i10);
        this.keys = new long[idealLongArraySize];
        this.values = new Object[idealLongArraySize];
    }

    @NotNull
    /* renamed from: clone */
    public LongSparseArray<E> m37clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        LongSparseArray<E> longSparseArray = (LongSparseArray) clone;
        longSparseArray.keys = (long[]) this.keys.clone();
        longSparseArray.values = (Object[]) this.values.clone();
        return longSparseArray;
    }

    public E get(long j10, E e10) {
        int binarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, j10);
        return (binarySearch < 0 || this.values[binarySearch] == LongSparseArrayKt.DELETED) ? e10 : (E) this.values[binarySearch];
    }

    public boolean replace(long j10, E e10, E e11) {
        int indexOfKey = indexOfKey(j10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(this.values[indexOfKey], e10)) {
            return false;
        }
        this.values[indexOfKey] = e11;
        return true;
    }

    public boolean remove(long j10, E e10) {
        int indexOfKey = indexOfKey(j10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(e10, valueAt(indexOfKey))) {
            return false;
        }
        removeAt(indexOfKey);
        return true;
    }

    public /* synthetic */ LongSparseArray(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }
}
