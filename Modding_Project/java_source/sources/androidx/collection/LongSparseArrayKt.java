package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.collection.internal.RuntimeHelpersKt;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.collections.n0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LongSparseArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongSparseArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongSparseArray.kt\nandroidx/collection/LongSparseArrayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n*L\n1#1,573:1\n229#1,5:574\n229#1,5:579\n299#1,18:584\n299#1,18:603\n299#1,18:626\n299#1,18:649\n299#1,18:672\n299#1,18:690\n299#1,18:708\n299#1,18:726\n1#2:602\n59#3,5:621\n59#3,5:644\n59#3,5:667\n*S KotlinDebug\n*F\n+ 1 LongSparseArray.kt\nandroidx/collection/LongSparseArrayKt\n*L\n218#1:574,5\n223#1:579,5\n331#1:584,18\n374#1:603,18\n389#1:626,18\n401#1:649,18\n414#1:672,18\n422#1:690,18\n430#1:708,18\n468#1:726,18\n384#1:621,5\n396#1:644,5\n409#1:667,5\n*E\n"})
/* loaded from: classes.dex */
public final class LongSparseArrayKt {
    @NotNull
    private static final Object DELETED = new Object();

    public static final <E> void commonAppend(@NotNull LongSparseArray<E> longSparseArray, long j10, E e10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int i10 = longSparseArray.size;
        if (i10 != 0 && j10 <= longSparseArray.keys[i10 - 1]) {
            longSparseArray.put(j10, e10);
            return;
        }
        if (longSparseArray.garbage) {
            long[] jArr = longSparseArray.keys;
            if (i10 >= jArr.length) {
                Object[] objArr = longSparseArray.values;
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    Object obj = objArr[i12];
                    if (obj != DELETED) {
                        if (i12 != i11) {
                            jArr[i11] = jArr[i12];
                            objArr[i11] = obj;
                            objArr[i12] = null;
                        }
                        i11++;
                    }
                }
                longSparseArray.garbage = false;
                longSparseArray.size = i11;
            }
        }
        int i13 = longSparseArray.size;
        if (i13 >= longSparseArray.keys.length) {
            int idealLongArraySize = ContainerHelpersKt.idealLongArraySize(i13 + 1);
            long[] copyOf = Arrays.copyOf(longSparseArray.keys, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            longSparseArray.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(longSparseArray.values, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            longSparseArray.values = copyOf2;
        }
        longSparseArray.keys[i13] = j10;
        longSparseArray.values[i13] = e10;
        longSparseArray.size = i13 + 1;
    }

    public static final <E> void commonClear(@NotNull LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int i10 = longSparseArray.size;
        Object[] objArr = longSparseArray.values;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        longSparseArray.size = 0;
        longSparseArray.garbage = false;
    }

    public static final <E> boolean commonContainsKey(@NotNull LongSparseArray<E> longSparseArray, long j10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.indexOfKey(j10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <E> boolean commonContainsValue(@NotNull LongSparseArray<E> longSparseArray, E e10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.indexOfValue(e10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <E> void commonGc(@NotNull LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int i10 = longSparseArray.size;
        long[] jArr = longSparseArray.keys;
        Object[] objArr = longSparseArray.values;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != DELETED) {
                if (i12 != i11) {
                    jArr[i11] = jArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        longSparseArray.garbage = false;
        longSparseArray.size = i11;
    }

    @Nullable
    public static final <E> E commonGet(@NotNull LongSparseArray<E> longSparseArray, long j10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j10);
        if (binarySearch < 0 || longSparseArray.values[binarySearch] == DELETED) {
            return null;
        }
        return (E) longSparseArray.values[binarySearch];
    }

    @Nullable
    public static final Object commonGetInternal(@NotNull LongSparseArray<?> longSparseArray, long j10, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j10);
        if (binarySearch >= 0 && longSparseArray.values[binarySearch] != DELETED) {
            return longSparseArray.values[binarySearch];
        }
        return obj;
    }

    public static final <E> int commonIndexOfKey(@NotNull LongSparseArray<E> longSparseArray, long j10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.garbage) {
            int i10 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != DELETED) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i11;
        }
        return ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j10);
    }

    public static final <E> int commonIndexOfValue(@NotNull LongSparseArray<E> longSparseArray, E e10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.garbage) {
            int i10 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != DELETED) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i11;
        }
        int i13 = longSparseArray.size;
        for (int i14 = 0; i14 < i13; i14++) {
            if (longSparseArray.values[i14] == e10) {
                return i14;
            }
        }
        return -1;
    }

    public static final <E> boolean commonIsEmpty(@NotNull LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.size() == 0) {
            return true;
        }
        return false;
    }

    public static final <E> long commonKeyAt(@NotNull LongSparseArray<E> longSparseArray, int i10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (i10 >= 0 && i10 < longSparseArray.size) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        if (longSparseArray.garbage) {
            int i11 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != DELETED) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i12;
        }
        return longSparseArray.keys[i10];
    }

    public static final <E> void commonPut(@NotNull LongSparseArray<E> longSparseArray, long j10, E e10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j10);
        if (binarySearch >= 0) {
            longSparseArray.values[binarySearch] = e10;
            return;
        }
        int i10 = ~binarySearch;
        if (i10 < longSparseArray.size && longSparseArray.values[i10] == DELETED) {
            longSparseArray.keys[i10] = j10;
            longSparseArray.values[i10] = e10;
            return;
        }
        if (longSparseArray.garbage) {
            int i11 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            if (i11 >= jArr.length) {
                Object[] objArr = longSparseArray.values;
                int i12 = 0;
                for (int i13 = 0; i13 < i11; i13++) {
                    Object obj = objArr[i13];
                    if (obj != DELETED) {
                        if (i13 != i12) {
                            jArr[i12] = jArr[i13];
                            objArr[i12] = obj;
                            objArr[i13] = null;
                        }
                        i12++;
                    }
                }
                longSparseArray.garbage = false;
                longSparseArray.size = i12;
                i10 = ~ContainerHelpersKt.binarySearch(longSparseArray.keys, i12, j10);
            }
        }
        int i14 = longSparseArray.size;
        if (i14 >= longSparseArray.keys.length) {
            int idealLongArraySize = ContainerHelpersKt.idealLongArraySize(i14 + 1);
            long[] copyOf = Arrays.copyOf(longSparseArray.keys, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            longSparseArray.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(longSparseArray.values, idealLongArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            longSparseArray.values = copyOf2;
        }
        int i15 = longSparseArray.size;
        if (i15 - i10 != 0) {
            long[] jArr2 = longSparseArray.keys;
            int i16 = i10 + 1;
            n.m(jArr2, jArr2, i16, i10, i15);
            Object[] objArr2 = longSparseArray.values;
            n.n(objArr2, objArr2, i16, i10, longSparseArray.size);
        }
        longSparseArray.keys[i10] = j10;
        longSparseArray.values[i10] = e10;
        longSparseArray.size++;
    }

    public static final <E> void commonPutAll(@NotNull LongSparseArray<E> longSparseArray, @NotNull LongSparseArray<? extends E> other) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int size = other.size();
        for (int i10 = 0; i10 < size; i10++) {
            longSparseArray.put(other.keyAt(i10), other.valueAt(i10));
        }
    }

    @Nullable
    public static final <E> E commonPutIfAbsent(@NotNull LongSparseArray<E> longSparseArray, long j10, E e10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        E e11 = longSparseArray.get(j10);
        if (e11 == null) {
            longSparseArray.put(j10, e10);
        }
        return e11;
    }

    public static final <E> void commonRemove(@NotNull LongSparseArray<E> longSparseArray, long j10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j10);
        if (binarySearch < 0 || longSparseArray.values[binarySearch] == DELETED) {
            return;
        }
        longSparseArray.values[binarySearch] = DELETED;
        longSparseArray.garbage = true;
    }

    public static final <E> void commonRemoveAt(@NotNull LongSparseArray<E> longSparseArray, int i10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.values[i10] != DELETED) {
            longSparseArray.values[i10] = DELETED;
            longSparseArray.garbage = true;
        }
    }

    @Nullable
    public static final <E> E commonReplace(@NotNull LongSparseArray<E> longSparseArray, long j10, E e10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int indexOfKey = longSparseArray.indexOfKey(j10);
        if (indexOfKey >= 0) {
            Object[] objArr = longSparseArray.values;
            E e11 = (E) objArr[indexOfKey];
            objArr[indexOfKey] = e10;
            return e11;
        }
        return null;
    }

    public static final <E> void commonSetValueAt(@NotNull LongSparseArray<E> longSparseArray, int i10, E e10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (i10 >= 0 && i10 < longSparseArray.size) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        if (longSparseArray.garbage) {
            int i11 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != DELETED) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i12;
        }
        longSparseArray.values[i10] = e10;
    }

    public static final <E> int commonSize(@NotNull LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.garbage) {
            int i10 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != DELETED) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i11;
        }
        return longSparseArray.size;
    }

    @NotNull
    public static final <E> String commonToString(@NotNull LongSparseArray<E> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (longSparseArray.size() <= 0) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder(longSparseArray.size * 28);
        sb2.append('{');
        int i10 = longSparseArray.size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(longSparseArray.keyAt(i11));
            sb2.append('=');
            E valueAt = longSparseArray.valueAt(i11);
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

    public static final <E> E commonValueAt(@NotNull LongSparseArray<E> longSparseArray, int i10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        if (i10 >= 0 && i10 < longSparseArray.size) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        if (longSparseArray.garbage) {
            int i11 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != DELETED) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i12;
        }
        return (E) longSparseArray.values[i10];
    }

    public static final <T> boolean contains(@NotNull LongSparseArray<T> longSparseArray, long j10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.containsKey(j10);
    }

    public static final <T> void forEach(@NotNull LongSparseArray<T> longSparseArray, @NotNull Function2<? super Long, ? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = longSparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            action.invoke(Long.valueOf(longSparseArray.keyAt(i10)), longSparseArray.valueAt(i10));
        }
    }

    public static final <T> T getOrDefault(@NotNull LongSparseArray<T> longSparseArray, long j10, T t10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.get(j10, t10);
    }

    public static final <T> T getOrElse(@NotNull LongSparseArray<T> longSparseArray, long j10, @NotNull Function0<? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        T t10 = longSparseArray.get(j10);
        if (t10 == null) {
            return defaultValue.invoke();
        }
        return t10;
    }

    public static final <T> int getSize(@NotNull LongSparseArray<T> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.size();
    }

    public static final <T> boolean isNotEmpty(@NotNull LongSparseArray<T> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return !longSparseArray.isEmpty();
    }

    @NotNull
    public static final <T> n0 keyIterator(@NotNull final LongSparseArray<T> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return new n0() { // from class: androidx.collection.LongSparseArrayKt$keyIterator$1
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
    public static final <T> LongSparseArray<T> plus(@NotNull LongSparseArray<T> longSparseArray, @NotNull LongSparseArray<T> other) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        LongSparseArray<T> longSparseArray2 = new LongSparseArray<>(longSparseArray.size() + other.size());
        longSparseArray2.putAll(longSparseArray);
        longSparseArray2.putAll(other);
        return longSparseArray2;
    }

    @c
    public static final /* synthetic */ boolean remove(LongSparseArray longSparseArray, long j10, Object obj) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return longSparseArray.remove(j10, obj);
    }

    public static final <T> void set(@NotNull LongSparseArray<T> longSparseArray, long j10, T t10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        longSparseArray.put(j10, t10);
    }

    @NotNull
    public static final <T> Iterator<T> valueIterator(@NotNull LongSparseArray<T> longSparseArray) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        return new LongSparseArrayKt$valueIterator$1(longSparseArray);
    }

    public static final <E> E commonGet(@NotNull LongSparseArray<E> longSparseArray, long j10, E e10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j10);
        return (binarySearch < 0 || longSparseArray.values[binarySearch] == DELETED) ? e10 : (E) longSparseArray.values[binarySearch];
    }

    public static final <E> boolean commonReplace(@NotNull LongSparseArray<E> longSparseArray, long j10, E e10, E e11) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int indexOfKey = longSparseArray.indexOfKey(j10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(longSparseArray.values[indexOfKey], e10)) {
            return false;
        }
        longSparseArray.values[indexOfKey] = e11;
        return true;
    }

    public static final <E> boolean commonRemove(@NotNull LongSparseArray<E> longSparseArray, long j10, E e10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        int indexOfKey = longSparseArray.indexOfKey(j10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(e10, longSparseArray.valueAt(indexOfKey))) {
            return false;
        }
        longSparseArray.removeAt(indexOfKey);
        return true;
    }

    public static /* synthetic */ void getSize$annotations(LongSparseArray longSparseArray) {
    }
}
