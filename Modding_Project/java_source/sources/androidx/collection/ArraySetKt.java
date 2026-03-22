package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ArraySet.kt */
@Metadata
/* loaded from: classes.dex */
public final class ArraySetKt {
    public static final int ARRAY_SET_BASE_SIZE = 4;

    public static final <E> void addAllInternal(@NotNull ArraySet<E> arraySet, @NotNull ArraySet<? extends E> array) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(array, "array");
        int i10 = array.get_size$collection();
        arraySet.ensureCapacity(arraySet.get_size$collection() + i10);
        if (arraySet.get_size$collection() != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                arraySet.add(array.valueAt(i11));
            }
        } else if (i10 > 0) {
            n.s(array.getHashes$collection(), arraySet.getHashes$collection(), 0, 0, i10, 6, null);
            n.u(array.getArray$collection(), arraySet.getArray$collection(), 0, 0, i10, 6, null);
            if (arraySet.get_size$collection() == 0) {
                arraySet.set_size$collection(i10);
                return;
            }
            throw new ConcurrentModificationException();
        }
    }

    public static final <E> boolean addInternal(@NotNull ArraySet<E> arraySet, E e10) {
        int i10;
        int indexOf;
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int i11 = arraySet.get_size$collection();
        boolean z10 = false;
        if (e10 == null) {
            indexOf = indexOfNull(arraySet);
            i10 = 0;
        } else {
            int hashCode = e10.hashCode();
            i10 = hashCode;
            indexOf = indexOf(arraySet, e10, hashCode);
        }
        if (indexOf >= 0) {
            return false;
        }
        int i12 = ~indexOf;
        if (i11 >= arraySet.getHashes$collection().length) {
            int i13 = 8;
            if (i11 >= 8) {
                i13 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i13 = 4;
            }
            int[] hashes$collection = arraySet.getHashes$collection();
            Object[] array$collection = arraySet.getArray$collection();
            allocArrays(arraySet, i13);
            if (i11 == arraySet.get_size$collection()) {
                if (arraySet.getHashes$collection().length == 0) {
                    z10 = true;
                }
                if (!z10) {
                    n.s(hashes$collection, arraySet.getHashes$collection(), 0, 0, hashes$collection.length, 6, null);
                    n.u(array$collection, arraySet.getArray$collection(), 0, 0, array$collection.length, 6, null);
                }
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i12 < i11) {
            int i14 = i12 + 1;
            n.l(arraySet.getHashes$collection(), arraySet.getHashes$collection(), i14, i12, i11);
            n.n(arraySet.getArray$collection(), arraySet.getArray$collection(), i14, i12, i11);
        }
        if (i11 == arraySet.get_size$collection() && i12 < arraySet.getHashes$collection().length) {
            arraySet.getHashes$collection()[i12] = i10;
            arraySet.getArray$collection()[i12] = e10;
            arraySet.set_size$collection(arraySet.get_size$collection() + 1);
            return true;
        }
        throw new ConcurrentModificationException();
    }

    public static final <E> void allocArrays(@NotNull ArraySet<E> arraySet, int i10) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        arraySet.setHashes$collection(new int[i10]);
        arraySet.setArray$collection(new Object[i10]);
    }

    @NotNull
    public static final <T> ArraySet<T> arraySetOf() {
        return new ArraySet<>(0, 1, null);
    }

    public static final <E> int binarySearchInternal(@NotNull ArraySet<E> arraySet, int i10) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        try {
            return ContainerHelpersKt.binarySearch(arraySet.getHashes$collection(), arraySet.get_size$collection(), i10);
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static final <E> void clearInternal(@NotNull ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        if (arraySet.get_size$collection() != 0) {
            arraySet.setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            arraySet.setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            arraySet.set_size$collection(0);
        }
        if (arraySet.get_size$collection() == 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public static final <E> boolean containsAllInternal(@NotNull ArraySet<E> arraySet, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (E e10 : elements) {
            if (!arraySet.contains(e10)) {
                return false;
            }
        }
        return true;
    }

    public static final <E> boolean containsInternal(@NotNull ArraySet<E> arraySet, E e10) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        if (arraySet.indexOf(e10) >= 0) {
            return true;
        }
        return false;
    }

    public static final <E> void ensureCapacityInternal(@NotNull ArraySet<E> arraySet, int i10) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int i11 = arraySet.get_size$collection();
        if (arraySet.getHashes$collection().length < i10) {
            int[] hashes$collection = arraySet.getHashes$collection();
            Object[] array$collection = arraySet.getArray$collection();
            allocArrays(arraySet, i10);
            if (arraySet.get_size$collection() > 0) {
                n.s(hashes$collection, arraySet.getHashes$collection(), 0, 0, arraySet.get_size$collection(), 6, null);
                n.u(array$collection, arraySet.getArray$collection(), 0, 0, arraySet.get_size$collection(), 6, null);
            }
        }
        if (arraySet.get_size$collection() == i11) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public static final <E> boolean equalsInternal(@NotNull ArraySet<E> arraySet, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        if (arraySet == obj) {
            return true;
        }
        if (!(obj instanceof Set) || arraySet.size() != ((Set) obj).size()) {
            return false;
        }
        try {
            int i10 = arraySet.get_size$collection();
            for (int i11 = 0; i11 < i10; i11++) {
                if (!((Set) obj).contains(arraySet.valueAt(i11))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static final <E> int hashCodeInternal(@NotNull ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int[] hashes$collection = arraySet.getHashes$collection();
        int i10 = arraySet.get_size$collection();
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += hashes$collection[i12];
        }
        return i11;
    }

    public static final <E> int indexOf(@NotNull ArraySet<E> arraySet, @Nullable Object obj, int i10) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int i11 = arraySet.get_size$collection();
        if (i11 == 0) {
            return -1;
        }
        int binarySearchInternal = binarySearchInternal(arraySet, i10);
        if (binarySearchInternal < 0) {
            return binarySearchInternal;
        }
        if (Intrinsics.areEqual(obj, arraySet.getArray$collection()[binarySearchInternal])) {
            return binarySearchInternal;
        }
        int i12 = binarySearchInternal + 1;
        while (i12 < i11 && arraySet.getHashes$collection()[i12] == i10) {
            if (Intrinsics.areEqual(obj, arraySet.getArray$collection()[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = binarySearchInternal - 1; i13 >= 0 && arraySet.getHashes$collection()[i13] == i10; i13--) {
            if (Intrinsics.areEqual(obj, arraySet.getArray$collection()[i13])) {
                return i13;
            }
        }
        return ~i12;
    }

    public static final <E> int indexOfInternal(@NotNull ArraySet<E> arraySet, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        if (obj == null) {
            return indexOfNull(arraySet);
        }
        return indexOf(arraySet, obj, obj.hashCode());
    }

    public static final <E> int indexOfNull(@NotNull ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        return indexOf(arraySet, null, 0);
    }

    public static final <E> boolean isEmptyInternal(@NotNull ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        if (arraySet.get_size$collection() <= 0) {
            return true;
        }
        return false;
    }

    public static final <E> boolean removeAllInternal(@NotNull ArraySet<E> arraySet, @NotNull ArraySet<? extends E> array) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(array, "array");
        int i10 = array.get_size$collection();
        int i11 = arraySet.get_size$collection();
        for (int i12 = 0; i12 < i10; i12++) {
            arraySet.remove(array.valueAt(i12));
        }
        return i11 != arraySet.get_size$collection();
    }

    public static final <E> E removeAtInternal(@NotNull ArraySet<E> arraySet, int i10) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int i11 = arraySet.get_size$collection();
        E e10 = (E) arraySet.getArray$collection()[i10];
        if (i11 <= 1) {
            arraySet.clear();
        } else {
            int i12 = i11 - 1;
            int i13 = 8;
            if (arraySet.getHashes$collection().length > 8 && arraySet.get_size$collection() < arraySet.getHashes$collection().length / 3) {
                if (arraySet.get_size$collection() > 8) {
                    i13 = arraySet.get_size$collection() + (arraySet.get_size$collection() >> 1);
                }
                int[] hashes$collection = arraySet.getHashes$collection();
                Object[] array$collection = arraySet.getArray$collection();
                allocArrays(arraySet, i13);
                if (i10 > 0) {
                    n.s(hashes$collection, arraySet.getHashes$collection(), 0, 0, i10, 6, null);
                    n.u(array$collection, arraySet.getArray$collection(), 0, 0, i10, 6, null);
                }
                if (i10 < i12) {
                    int i14 = i10 + 1;
                    n.l(hashes$collection, arraySet.getHashes$collection(), i10, i14, i11);
                    n.n(array$collection, arraySet.getArray$collection(), i10, i14, i11);
                }
            } else {
                if (i10 < i12) {
                    int i15 = i10 + 1;
                    n.l(arraySet.getHashes$collection(), arraySet.getHashes$collection(), i10, i15, i11);
                    n.n(arraySet.getArray$collection(), arraySet.getArray$collection(), i10, i15, i11);
                }
                arraySet.getArray$collection()[i12] = null;
            }
            if (i11 == arraySet.get_size$collection()) {
                arraySet.set_size$collection(i12);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        return e10;
    }

    public static final <E> boolean removeInternal(@NotNull ArraySet<E> arraySet, E e10) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        int indexOf = arraySet.indexOf(e10);
        if (indexOf >= 0) {
            arraySet.removeAt(indexOf);
            return true;
        }
        return false;
    }

    public static final <E> boolean retainAllInternal(@NotNull ArraySet<E> arraySet, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z10 = false;
        for (int i10 = arraySet.get_size$collection() - 1; -1 < i10; i10--) {
            if (!CollectionsKt.g0(elements, arraySet.getArray$collection()[i10])) {
                arraySet.removeAt(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @NotNull
    public static final <E> String toStringInternal(@NotNull ArraySet<E> arraySet) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        if (arraySet.isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder(arraySet.get_size$collection() * 14);
        sb2.append('{');
        int i10 = arraySet.get_size$collection();
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            E valueAt = arraySet.valueAt(i11);
            if (valueAt != arraySet) {
                sb2.append(valueAt);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public static final <E> E valueAtInternal(@NotNull ArraySet<E> arraySet, int i10) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        return (E) arraySet.getArray$collection()[i10];
    }

    @NotNull
    public static final <T> ArraySet<T> arraySetOf(@NotNull T... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        ArraySet<T> arraySet = new ArraySet<>(values.length);
        for (T t10 : values) {
            arraySet.add(t10);
        }
        return arraySet;
    }

    public static final <E> boolean removeAllInternal(@NotNull ArraySet<E> arraySet, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z10 = false;
        for (E e10 : elements) {
            z10 |= arraySet.remove(e10);
        }
        return z10;
    }

    public static final <E> boolean addAllInternal(@NotNull ArraySet<E> arraySet, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(arraySet, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        arraySet.ensureCapacity(arraySet.get_size$collection() + elements.size());
        boolean z10 = false;
        for (E e10 : elements) {
            z10 |= arraySet.add(e10);
        }
        return z10;
    }
}
