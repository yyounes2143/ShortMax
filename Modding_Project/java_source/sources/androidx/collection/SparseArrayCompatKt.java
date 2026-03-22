package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SparseArrayCompat.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSparseArrayCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseArrayCompat.kt\nandroidx/collection/SparseArrayCompatKt\n+ 2 CollectionPlatformUtils.jvm.kt\nandroidx/collection/CollectionPlatformUtils\n*L\n1#1,498:1\n217#1,6:499\n217#1,6:505\n327#1,30:511\n327#1,30:541\n422#1,9:572\n24#2:571\n*S KotlinDebug\n*F\n+ 1 SparseArrayCompat.kt\nandroidx/collection/SparseArrayCompatKt\n*L\n229#1:499,6\n235#1:505,6\n361#1:511,30\n369#1:541,30\n440#1:572,9\n399#1:571\n*E\n"})
/* loaded from: classes.dex */
public final class SparseArrayCompatKt {
    @NotNull
    private static final Object DELETED = new Object();

    public static final <E> void commonAppend(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10, E e10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int i11 = sparseArrayCompat.size;
        if (i11 != 0 && i10 <= sparseArrayCompat.keys[i11 - 1]) {
            sparseArrayCompat.put(i10, e10);
            return;
        }
        if (sparseArrayCompat.garbage && i11 >= sparseArrayCompat.keys.length) {
            gc(sparseArrayCompat);
        }
        int i12 = sparseArrayCompat.size;
        if (i12 >= sparseArrayCompat.keys.length) {
            int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i12 + 1);
            int[] copyOf = Arrays.copyOf(sparseArrayCompat.keys, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            sparseArrayCompat.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(sparseArrayCompat.values, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            sparseArrayCompat.values = copyOf2;
        }
        sparseArrayCompat.keys[i12] = i10;
        sparseArrayCompat.values[i12] = e10;
        sparseArrayCompat.size = i12 + 1;
    }

    public static final <E> void commonClear(@NotNull SparseArrayCompat<E> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int i10 = sparseArrayCompat.size;
        Object[] objArr = sparseArrayCompat.values;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        sparseArrayCompat.size = 0;
        sparseArrayCompat.garbage = false;
    }

    public static final <E> boolean commonContainsKey(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <E> boolean commonContainsValue(@NotNull SparseArrayCompat<E> sparseArrayCompat, E e10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        int i10 = sparseArrayCompat.size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                if (sparseArrayCompat.values[i11] == e10) {
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

    @Nullable
    public static final <E> E commonGet(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10) {
        E e10;
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i10);
        if (binarySearch < 0 || (e10 = (E) sparseArrayCompat.values[binarySearch]) == DELETED) {
            return null;
        }
        return e10;
    }

    public static final <E> int commonIndexOfKey(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i10);
    }

    public static final <E> int commonIndexOfValue(@NotNull SparseArrayCompat<E> sparseArrayCompat, E e10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        int i10 = sparseArrayCompat.size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (sparseArrayCompat.values[i11] == e10) {
                return i11;
            }
        }
        return -1;
    }

    public static final <E> boolean commonIsEmpty(@NotNull SparseArrayCompat<E> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.size() == 0) {
            return true;
        }
        return false;
    }

    public static final <E> int commonKeyAt(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return sparseArrayCompat.keys[i10];
    }

    public static final <E> void commonPut(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10, E e10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i10);
        if (binarySearch >= 0) {
            sparseArrayCompat.values[binarySearch] = e10;
            return;
        }
        int i11 = ~binarySearch;
        if (i11 < sparseArrayCompat.size && sparseArrayCompat.values[i11] == DELETED) {
            sparseArrayCompat.keys[i11] = i10;
            sparseArrayCompat.values[i11] = e10;
            return;
        }
        if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
            gc(sparseArrayCompat);
            i11 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i10);
        }
        int i12 = sparseArrayCompat.size;
        if (i12 >= sparseArrayCompat.keys.length) {
            int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i12 + 1);
            int[] copyOf = Arrays.copyOf(sparseArrayCompat.keys, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            sparseArrayCompat.keys = copyOf;
            Object[] copyOf2 = Arrays.copyOf(sparseArrayCompat.values, idealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            sparseArrayCompat.values = copyOf2;
        }
        int i13 = sparseArrayCompat.size;
        if (i13 - i11 != 0) {
            int[] iArr = sparseArrayCompat.keys;
            int i14 = i11 + 1;
            n.l(iArr, iArr, i14, i11, i13);
            Object[] objArr = sparseArrayCompat.values;
            n.n(objArr, objArr, i14, i11, sparseArrayCompat.size);
        }
        sparseArrayCompat.keys[i11] = i10;
        sparseArrayCompat.values[i11] = e10;
        sparseArrayCompat.size++;
    }

    public static final <E> void commonPutAll(@NotNull SparseArrayCompat<E> sparseArrayCompat, @NotNull SparseArrayCompat<? extends E> other) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int size = other.size();
        for (int i10 = 0; i10 < size; i10++) {
            int keyAt = other.keyAt(i10);
            E valueAt = other.valueAt(i10);
            int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, keyAt);
            if (binarySearch >= 0) {
                sparseArrayCompat.values[binarySearch] = valueAt;
            } else {
                int i11 = ~binarySearch;
                if (i11 < sparseArrayCompat.size && sparseArrayCompat.values[i11] == DELETED) {
                    sparseArrayCompat.keys[i11] = keyAt;
                    sparseArrayCompat.values[i11] = valueAt;
                } else {
                    if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                        gc(sparseArrayCompat);
                        i11 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, keyAt);
                    }
                    int i12 = sparseArrayCompat.size;
                    if (i12 >= sparseArrayCompat.keys.length) {
                        int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i12 + 1);
                        int[] copyOf = Arrays.copyOf(sparseArrayCompat.keys, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                        sparseArrayCompat.keys = copyOf;
                        Object[] copyOf2 = Arrays.copyOf(sparseArrayCompat.values, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
                        sparseArrayCompat.values = copyOf2;
                    }
                    int i13 = sparseArrayCompat.size;
                    if (i13 - i11 != 0) {
                        int[] iArr = sparseArrayCompat.keys;
                        int i14 = i11 + 1;
                        n.l(iArr, iArr, i14, i11, i13);
                        Object[] objArr = sparseArrayCompat.values;
                        n.n(objArr, objArr, i14, i11, sparseArrayCompat.size);
                    }
                    sparseArrayCompat.keys[i11] = keyAt;
                    sparseArrayCompat.values[i11] = valueAt;
                    sparseArrayCompat.size++;
                }
            }
        }
    }

    @Nullable
    public static final <E> E commonPutIfAbsent(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10, E e10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        E e11 = (E) commonGet(sparseArrayCompat, i10);
        if (e11 == null) {
            int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i10);
            if (binarySearch >= 0) {
                sparseArrayCompat.values[binarySearch] = e10;
            } else {
                int i11 = ~binarySearch;
                if (i11 < sparseArrayCompat.size && sparseArrayCompat.values[i11] == DELETED) {
                    sparseArrayCompat.keys[i11] = i10;
                    sparseArrayCompat.values[i11] = e10;
                } else {
                    if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                        gc(sparseArrayCompat);
                        i11 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i10);
                    }
                    int i12 = sparseArrayCompat.size;
                    if (i12 >= sparseArrayCompat.keys.length) {
                        int idealIntArraySize = ContainerHelpersKt.idealIntArraySize(i12 + 1);
                        int[] copyOf = Arrays.copyOf(sparseArrayCompat.keys, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                        sparseArrayCompat.keys = copyOf;
                        Object[] copyOf2 = Arrays.copyOf(sparseArrayCompat.values, idealIntArraySize);
                        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
                        sparseArrayCompat.values = copyOf2;
                    }
                    int i13 = sparseArrayCompat.size;
                    if (i13 - i11 != 0) {
                        int[] iArr = sparseArrayCompat.keys;
                        int i14 = i11 + 1;
                        n.l(iArr, iArr, i14, i11, i13);
                        Object[] objArr = sparseArrayCompat.values;
                        n.n(objArr, objArr, i14, i11, sparseArrayCompat.size);
                    }
                    sparseArrayCompat.keys[i11] = i10;
                    sparseArrayCompat.values[i11] = e10;
                    sparseArrayCompat.size++;
                }
            }
        }
        return e11;
    }

    public static final <E> void commonRemove(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i10);
        if (binarySearch >= 0) {
            Object[] objArr = sparseArrayCompat.values;
            Object obj = objArr[binarySearch];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[binarySearch] = obj2;
                sparseArrayCompat.garbage = true;
            }
        }
    }

    public static final <E> void commonRemoveAt(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.values[i10] != DELETED) {
            sparseArrayCompat.values[i10] = DELETED;
            sparseArrayCompat.garbage = true;
        }
    }

    public static final <E> void commonRemoveAtRange(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10, int i11) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int min = Math.min(i11, i10 + i11);
        while (i10 < min) {
            sparseArrayCompat.removeAt(i10);
            i10++;
        }
    }

    @Nullable
    public static final <E> E commonReplace(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10, E e10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int indexOfKey = sparseArrayCompat.indexOfKey(i10);
        if (indexOfKey >= 0) {
            Object[] objArr = sparseArrayCompat.values;
            E e11 = (E) objArr[indexOfKey];
            objArr[indexOfKey] = e10;
            return e11;
        }
        return null;
    }

    public static final <E> void commonSetValueAt(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10, E e10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        sparseArrayCompat.values[i10] = e10;
    }

    public static final <E> int commonSize(@NotNull SparseArrayCompat<E> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        return sparseArrayCompat.size;
    }

    @NotNull
    public static final <E> String commonToString(@NotNull SparseArrayCompat<E> sparseArrayCompat) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.size() <= 0) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder(sparseArrayCompat.size * 28);
        sb2.append('{');
        int i10 = sparseArrayCompat.size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(sparseArrayCompat.keyAt(i11));
            sb2.append('=');
            E valueAt = sparseArrayCompat.valueAt(i11);
            if (valueAt != sparseArrayCompat) {
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

    public static final <E> E commonValueAt(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        if (sparseArrayCompat.garbage) {
            gc(sparseArrayCompat);
        }
        Object[] objArr = sparseArrayCompat.values;
        if (i10 < objArr.length) {
            return (E) objArr[i10];
        }
        CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
        throw new ArrayIndexOutOfBoundsException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> void gc(SparseArrayCompat<E> sparseArrayCompat) {
        int i10 = sparseArrayCompat.size;
        int[] iArr = sparseArrayCompat.keys;
        Object[] objArr = sparseArrayCompat.values;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != DELETED) {
                if (i12 != i11) {
                    iArr[i11] = iArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        sparseArrayCompat.garbage = false;
        sparseArrayCompat.size = i11;
    }

    private static final <E, T extends E> T internalGet(SparseArrayCompat<E> sparseArrayCompat, int i10, T t10) {
        T t11;
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i10);
        if (binarySearch >= 0 && (t11 = (T) sparseArrayCompat.values[binarySearch]) != DELETED) {
            return t11;
        }
        return t10;
    }

    public static final <E> E commonGet(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10, E e10) {
        E e11;
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i10);
        return (binarySearch < 0 || (e11 = (E) sparseArrayCompat.values[binarySearch]) == DELETED) ? e10 : e11;
    }

    public static final <E> boolean commonReplace(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10, E e10, E e11) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int indexOfKey = sparseArrayCompat.indexOfKey(i10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(sparseArrayCompat.values[indexOfKey], e10)) {
            return false;
        }
        sparseArrayCompat.values[indexOfKey] = e11;
        return true;
    }

    public static final <E> boolean commonRemove(@NotNull SparseArrayCompat<E> sparseArrayCompat, int i10, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int indexOfKey = sparseArrayCompat.indexOfKey(i10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(obj, sparseArrayCompat.valueAt(indexOfKey))) {
            return false;
        }
        sparseArrayCompat.removeAt(indexOfKey);
        return true;
    }
}
