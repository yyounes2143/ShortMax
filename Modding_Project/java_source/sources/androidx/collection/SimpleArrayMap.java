package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.collection.internal.RuntimeHelpersKt;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SimpleArrayMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSimpleArrayMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleArrayMap.kt\nandroidx/collection/SimpleArrayMap\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,761:1\n299#1,5:762\n299#1,5:767\n59#2,5:772\n59#2,5:777\n59#2,5:782\n59#2,5:788\n1#3:787\n*S KotlinDebug\n*F\n+ 1 SimpleArrayMap.kt\nandroidx/collection/SimpleArrayMap\n*L\n278#1:762,5\n294#1:767,5\n315#1:772,5\n330#1:777,5\n346#1:782,5\n512#1:788,5\n*E\n"})
/* loaded from: classes.dex */
public class SimpleArrayMap<K, V> {
    @NotNull
    private Object[] array;
    @NotNull
    private int[] hashes;
    private int size;

    public SimpleArrayMap() {
        this(0, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T extends V> T getOrDefaultInternal(Object obj, T t10) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey >= 0) {
            return (T) this.array[(indexOfKey << 1) + 1];
        }
        return t10;
    }

    private final int indexOf(K k10, int i10) {
        int i11 = this.size;
        if (i11 == 0) {
            return -1;
        }
        int binarySearch = ContainerHelpersKt.binarySearch(this.hashes, i11, i10);
        if (binarySearch < 0) {
            return binarySearch;
        }
        if (Intrinsics.areEqual(k10, this.array[binarySearch << 1])) {
            return binarySearch;
        }
        int i12 = binarySearch + 1;
        while (i12 < i11 && this.hashes[i12] == i10) {
            if (Intrinsics.areEqual(k10, this.array[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = binarySearch - 1; i13 >= 0 && this.hashes[i13] == i10; i13--) {
            if (Intrinsics.areEqual(k10, this.array[i13 << 1])) {
                return i13;
            }
        }
        return ~i12;
    }

    private final int indexOfNull() {
        int i10 = this.size;
        if (i10 == 0) {
            return -1;
        }
        int binarySearch = ContainerHelpersKt.binarySearch(this.hashes, i10, 0);
        if (binarySearch < 0) {
            return binarySearch;
        }
        if (this.array[binarySearch << 1] == null) {
            return binarySearch;
        }
        int i11 = binarySearch + 1;
        while (i11 < i10 && this.hashes[i11] == 0) {
            if (this.array[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = binarySearch - 1; i12 >= 0 && this.hashes[i12] == 0; i12--) {
            if (this.array[i12 << 1] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    public final int __restricted$indexOfValue(V v10) {
        int i10 = this.size * 2;
        Object[] objArr = this.array;
        if (v10 == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (Intrinsics.areEqual(v10, objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public void clear() {
        if (this.size > 0) {
            this.hashes = ContainerHelpersKt.EMPTY_INTS;
            this.array = ContainerHelpersKt.EMPTY_OBJECTS;
            this.size = 0;
        }
        if (this.size <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public boolean containsKey(K k10) {
        if (indexOfKey(k10) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(V v10) {
        if (__restricted$indexOfValue(v10) >= 0) {
            return true;
        }
        return false;
    }

    public void ensureCapacity(int i10) {
        int i11 = this.size;
        int[] iArr = this.hashes;
        if (iArr.length < i10) {
            int[] copyOf = Arrays.copyOf(iArr, i10);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.hashes = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.array, i10 * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            this.array = copyOf2;
        }
        if (this.size == i11) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof SimpleArrayMap) {
                if (size() != ((SimpleArrayMap) obj).size()) {
                    return false;
                }
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
                int i10 = this.size;
                for (int i11 = 0; i11 < i10; i11++) {
                    K keyAt = keyAt(i11);
                    V valueAt = valueAt(i11);
                    Object obj2 = simpleArrayMap.get(keyAt);
                    if (valueAt == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(keyAt)) {
                            return false;
                        }
                    } else if (!Intrinsics.areEqual(valueAt, obj2)) {
                        return false;
                    }
                }
                return true;
            } else if (!(obj instanceof Map) || size() != ((Map) obj).size()) {
                return false;
            } else {
                int i12 = this.size;
                for (int i13 = 0; i13 < i12; i13++) {
                    K keyAt2 = keyAt(i13);
                    V valueAt2 = valueAt(i13);
                    Object obj3 = ((Map) obj).get(keyAt2);
                    if (valueAt2 == null) {
                        if (obj3 != null || !((Map) obj).containsKey(keyAt2)) {
                            return false;
                        }
                    } else if (!Intrinsics.areEqual(valueAt2, obj3)) {
                        return false;
                    }
                }
                return true;
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    @Nullable
    public V get(K k10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey >= 0) {
            return (V) this.array[(indexOfKey << 1) + 1];
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public V getOrDefault(@Nullable Object obj, V v10) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey >= 0) {
            return (V) this.array[(indexOfKey << 1) + 1];
        }
        return v10;
    }

    public int hashCode() {
        int i10;
        int[] iArr = this.hashes;
        Object[] objArr = this.array;
        int i11 = this.size;
        int i12 = 1;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11) {
            Object obj = objArr[i12];
            int i15 = iArr[i13];
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i14 += i10 ^ i15;
            i13++;
            i12 += 2;
        }
        return i14;
    }

    public int indexOfKey(K k10) {
        if (k10 == null) {
            return indexOfNull();
        }
        return indexOf(k10, k10.hashCode());
    }

    public boolean isEmpty() {
        if (this.size <= 0) {
            return true;
        }
        return false;
    }

    public K keyAt(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        return (K) this.array[i10 << 1];
    }

    @Nullable
    public V put(K k10, V v10) {
        int i10;
        int indexOfNull;
        int i11 = this.size;
        if (k10 != null) {
            i10 = k10.hashCode();
        } else {
            i10 = 0;
        }
        if (k10 != null) {
            indexOfNull = indexOf(k10, i10);
        } else {
            indexOfNull = indexOfNull();
        }
        if (indexOfNull >= 0) {
            int i12 = (indexOfNull << 1) + 1;
            Object[] objArr = this.array;
            V v11 = (V) objArr[i12];
            objArr[i12] = v10;
            return v11;
        }
        int i13 = ~indexOfNull;
        int[] iArr = this.hashes;
        if (i11 >= iArr.length) {
            int i14 = 8;
            if (i11 >= 8) {
                i14 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i14 = 4;
            }
            int[] copyOf = Arrays.copyOf(iArr, i14);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.hashes = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.array, i14 << 1);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            this.array = copyOf2;
            if (i11 != this.size) {
                throw new ConcurrentModificationException();
            }
        }
        if (i13 < i11) {
            int[] iArr2 = this.hashes;
            int i15 = i13 + 1;
            n.l(iArr2, iArr2, i15, i13, i11);
            Object[] objArr2 = this.array;
            n.n(objArr2, objArr2, i15 << 1, i13 << 1, this.size << 1);
        }
        int i16 = this.size;
        if (i11 == i16) {
            int[] iArr3 = this.hashes;
            if (i13 < iArr3.length) {
                iArr3[i13] = i10;
                Object[] objArr3 = this.array;
                int i17 = i13 << 1;
                objArr3[i17] = k10;
                objArr3[i17 + 1] = v10;
                this.size = i16 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(@NotNull SimpleArrayMap<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        int i10 = map.size;
        ensureCapacity(this.size + i10);
        if (this.size == 0) {
            if (i10 > 0) {
                n.l(map.hashes, this.hashes, 0, 0, i10);
                n.n(map.array, this.array, 0, 0, i10 << 1);
                this.size = i10;
                return;
            }
            return;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            put(map.keyAt(i11), map.valueAt(i11));
        }
    }

    @Nullable
    public V putIfAbsent(K k10, V v10) {
        V v11 = get(k10);
        if (v11 == null) {
            return put(k10, v10);
        }
        return v11;
    }

    @Nullable
    public V remove(K k10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey >= 0) {
            return removeAt(indexOfKey);
        }
        return null;
    }

    public V removeAt(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        Object[] objArr = this.array;
        int i11 = i10 << 1;
        V v10 = (V) objArr[i11 + 1];
        int i12 = this.size;
        if (i12 <= 1) {
            clear();
        } else {
            int i13 = i12 - 1;
            int[] iArr = this.hashes;
            int i14 = 8;
            if (iArr.length > 8 && i12 < iArr.length / 3) {
                if (i12 > 8) {
                    i14 = i12 + (i12 >> 1);
                }
                int[] copyOf = Arrays.copyOf(iArr, i14);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                this.hashes = copyOf;
                Object[] copyOf2 = Arrays.copyOf(this.array, i14 << 1);
                Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
                this.array = copyOf2;
                if (i12 == this.size) {
                    if (i10 > 0) {
                        n.l(iArr, this.hashes, 0, 0, i10);
                        n.n(objArr, this.array, 0, 0, i11);
                    }
                    if (i10 < i13) {
                        int i15 = i10 + 1;
                        n.l(iArr, this.hashes, i10, i15, i12);
                        n.n(objArr, this.array, i11, i15 << 1, i12 << 1);
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (i10 < i13) {
                    int i16 = i10 + 1;
                    n.l(iArr, iArr, i10, i16, i12);
                    Object[] objArr2 = this.array;
                    n.n(objArr2, objArr2, i11, i16 << 1, i12 << 1);
                }
                Object[] objArr3 = this.array;
                int i17 = i13 << 1;
                objArr3[i17] = null;
                objArr3[i17 + 1] = null;
            }
            if (i12 == this.size) {
                this.size = i13;
            } else {
                throw new ConcurrentModificationException();
            }
        }
        return v10;
    }

    @Nullable
    public V replace(K k10, V v10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey >= 0) {
            return setValueAt(indexOfKey, v10);
        }
        return null;
    }

    public V setValueAt(int i10, V v10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        int i11 = (i10 << 1) + 1;
        Object[] objArr = this.array;
        V v11 = (V) objArr[i11];
        objArr[i11] = v10;
        return v11;
    }

    public int size() {
        return this.size;
    }

    @NotNull
    public String toString() {
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder(this.size * 28);
        sb2.append('{');
        int i10 = this.size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            K keyAt = keyAt(i11);
            if (keyAt != sb2) {
                sb2.append(keyAt);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            V valueAt = valueAt(i11);
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

    public V valueAt(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        }
        if (!z10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Expected index to be within 0..size()-1, but was " + i10);
        }
        return (V) this.array[(i10 << 1) + 1];
    }

    public SimpleArrayMap(int i10) {
        int[] iArr;
        Object[] objArr;
        if (i10 == 0) {
            iArr = ContainerHelpersKt.EMPTY_INTS;
        } else {
            iArr = new int[i10];
        }
        this.hashes = iArr;
        if (i10 == 0) {
            objArr = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            objArr = new Object[i10 << 1];
        }
        this.array = objArr;
    }

    public boolean remove(K k10, V v10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(v10, valueAt(indexOfKey))) {
            return false;
        }
        removeAt(indexOfKey);
        return true;
    }

    public boolean replace(K k10, V v10, V v11) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(v10, valueAt(indexOfKey))) {
            return false;
        }
        setValueAt(indexOfKey, v11);
        return true;
    }

    public /* synthetic */ SimpleArrayMap(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }

    public SimpleArrayMap(@Nullable SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this(0, 1, null);
        if (simpleArrayMap != null) {
            putAll(simpleArrayMap);
        }
    }
}
