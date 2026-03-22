package androidx.compose.ui.text.caches;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SimpleArrayMap.kt */
@Metadata
/* loaded from: classes.dex */
public final class SimpleArrayMap<K, V> {
    private int _size;
    @NotNull
    private int[] hashes;
    @NotNull
    private Object[] keyValues;

    public SimpleArrayMap() {
        this(0, 1, null);
    }

    public final void clear() {
        if (this._size > 0) {
            this.hashes = ContainerHelpersKt.EMPTY_INTS;
            this.keyValues = ContainerHelpersKt.EMPTY_OBJECTS;
            this._size = 0;
        }
        if (this._size <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public final boolean containsKey(K k10) {
        if (indexOfKey(k10) >= 0) {
            return true;
        }
        return false;
    }

    public final boolean containsValue(V v10) {
        if (indexOfValue$ui_text_release(v10) >= 0) {
            return true;
        }
        return false;
    }

    public final void ensureCapacity(int i10) {
        int i11 = this._size;
        int[] iArr = this.hashes;
        if (iArr.length < i10) {
            int[] copyOf = Arrays.copyOf(iArr, i10);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.hashes = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.keyValues, i10 << 1);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.keyValues = copyOf2;
        }
        if (this._size == i11) {
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
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
                int i10 = this._size;
                if (i10 != simpleArrayMap._size) {
                    return false;
                }
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
            } else if (!(obj instanceof Map) || this._size != ((Map) obj).size()) {
                return false;
            } else {
                int i12 = this._size;
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
    public final V get(K k10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey >= 0) {
            return (V) this.keyValues[(indexOfKey << 1) + 1];
        }
        return null;
    }

    public final V getOrDefault(K k10, V v10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey >= 0) {
            return (V) this.keyValues[(indexOfKey << 1) + 1];
        }
        return v10;
    }

    protected final int get_size() {
        return this._size;
    }

    public int hashCode() {
        int i10;
        int[] iArr = this.hashes;
        Object[] objArr = this.keyValues;
        int i11 = this._size;
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

    protected final int indexOf(@NotNull Object key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        int i11 = this._size;
        if (i11 == 0) {
            return -1;
        }
        int binarySearchInternal = ContainerHelpersKt.binarySearchInternal(this.hashes, i11, i10);
        if (binarySearchInternal < 0) {
            return binarySearchInternal;
        }
        if (Intrinsics.areEqual(key, this.keyValues[binarySearchInternal << 1])) {
            return binarySearchInternal;
        }
        int i12 = binarySearchInternal + 1;
        while (i12 < i11 && this.hashes[i12] == i10) {
            if (Intrinsics.areEqual(key, this.keyValues[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = binarySearchInternal - 1; i13 >= 0 && this.hashes[i13] == i10; i13--) {
            if (Intrinsics.areEqual(key, this.keyValues[i13 << 1])) {
                return i13;
            }
        }
        return ~i12;
    }

    public final int indexOfKey(@Nullable Object obj) {
        if (obj == null) {
            return indexOfNull();
        }
        return indexOf(obj, obj.hashCode());
    }

    protected final int indexOfNull() {
        int i10 = this._size;
        if (i10 == 0) {
            return -1;
        }
        int binarySearchInternal = ContainerHelpersKt.binarySearchInternal(this.hashes, i10, 0);
        if (binarySearchInternal < 0) {
            return binarySearchInternal;
        }
        if (this.keyValues[binarySearchInternal << 1] == null) {
            return binarySearchInternal;
        }
        int i11 = binarySearchInternal + 1;
        while (i11 < i10 && this.hashes[i11] == 0) {
            if (this.keyValues[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = binarySearchInternal - 1; i12 >= 0 && this.hashes[i12] == 0; i12--) {
            if (this.keyValues[i12 << 1] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    public final int indexOfValue$ui_text_release(V v10) {
        int i10 = this._size << 1;
        Object[] objArr = this.keyValues;
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

    public final boolean isEmpty() {
        if (this._size <= 0) {
            return true;
        }
        return false;
    }

    public final K keyAt(int i10) {
        return (K) this.keyValues[i10 << 1];
    }

    @Nullable
    public final V put(K k10, V v10) {
        int hashCode;
        int indexOf;
        int i10 = this._size;
        if (k10 == null) {
            indexOf = indexOfNull();
            hashCode = 0;
        } else {
            hashCode = k10.hashCode();
            indexOf = indexOf(k10, hashCode);
        }
        if (indexOf >= 0) {
            int i11 = (indexOf << 1) + 1;
            Object[] objArr = this.keyValues;
            V v11 = (V) objArr[i11];
            objArr[i11] = v10;
            return v11;
        }
        int i12 = ~indexOf;
        int[] iArr = this.hashes;
        if (i10 >= iArr.length) {
            int i13 = 8;
            if (i10 >= 8) {
                i13 = (i10 >> 1) + i10;
            } else if (i10 < 4) {
                i13 = 4;
            }
            int[] copyOf = Arrays.copyOf(iArr, i13);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.hashes = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.keyValues, i13 << 1);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.keyValues = copyOf2;
            if (i10 != this._size) {
                throw new ConcurrentModificationException();
            }
        }
        if (i12 < i10) {
            int[] iArr2 = this.hashes;
            int i14 = i12 + 1;
            n.l(iArr2, iArr2, i14, i12, i10);
            Object[] objArr2 = this.keyValues;
            n.n(objArr2, objArr2, i14 << 1, i12 << 1, this._size << 1);
        }
        int i15 = this._size;
        if (i10 == i15) {
            int[] iArr3 = this.hashes;
            if (i12 < iArr3.length) {
                iArr3[i12] = hashCode;
                Object[] objArr3 = this.keyValues;
                int i16 = i12 << 1;
                objArr3[i16] = k10;
                objArr3[i16 + 1] = v10;
                this._size = i15 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final void putAll(@NotNull SimpleArrayMap<? extends K, ? extends V> array) {
        Intrinsics.checkNotNullParameter(array, "array");
        int i10 = array._size;
        ensureCapacity(this._size + i10);
        if (this._size == 0) {
            if (i10 > 0) {
                n.l(array.hashes, this.hashes, 0, 0, i10);
                n.n(array.keyValues, this.keyValues, 0, 0, i10 << 1);
                this._size = i10;
                return;
            }
            return;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            put(array.keyAt(i11), array.valueAt(i11));
        }
    }

    @Nullable
    public final V putIfAbsent(K k10, V v10) {
        V v11 = get(k10);
        if (v11 == null) {
            return put(k10, v10);
        }
        return v11;
    }

    @Nullable
    public final V remove(K k10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey >= 0) {
            return removeAt(indexOfKey);
        }
        return null;
    }

    @Nullable
    public final V removeAt(int i10) {
        Object[] objArr = this.keyValues;
        int i11 = i10 << 1;
        V v10 = (V) objArr[i11 + 1];
        int i12 = this._size;
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
                int[] iArr2 = new int[i14];
                this.hashes = iArr2;
                this.keyValues = new Object[i14 << 1];
                if (i10 > 0) {
                    n.l(iArr, iArr2, 0, 0, i10);
                    n.n(objArr, this.keyValues, 0, 0, i11);
                }
                if (i10 < i13) {
                    int i15 = i10 + 1;
                    n.l(iArr, this.hashes, i10, i15, i12);
                    n.n(objArr, this.keyValues, i11, i15 << 1, i12 << 1);
                }
            } else {
                if (i10 < i13) {
                    int i16 = i10 + 1;
                    n.l(iArr, iArr, i10, i16, i12);
                    Object[] objArr2 = this.keyValues;
                    n.n(objArr2, objArr2, i11, i16 << 1, i12 << 1);
                }
                Object[] objArr3 = this.keyValues;
                int i17 = i13 << 1;
                objArr3[i17] = null;
                objArr3[i17 + 1] = null;
            }
            if (i12 == this._size) {
                this._size = i13;
            } else {
                throw new ConcurrentModificationException();
            }
        }
        return v10;
    }

    @Nullable
    public final V replace(K k10, V v10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey >= 0) {
            return setValueAt(indexOfKey, v10);
        }
        return null;
    }

    public final V setValueAt(int i10, V v10) {
        int i11 = (i10 << 1) + 1;
        Object[] objArr = this.keyValues;
        V v11 = (V) objArr[i11];
        objArr[i11] = v10;
        return v11;
    }

    protected final void set_size(int i10) {
        this._size = i10;
    }

    public final int size() {
        return this._size;
    }

    @NotNull
    public String toString() {
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder(this._size * 28);
        sb2.append('{');
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            K keyAt = keyAt(i11);
            if (keyAt != this) {
                sb2.append(keyAt);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            V valueAt = valueAt(i11);
            if (valueAt != this) {
                sb2.append(valueAt);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "buffer.toString()");
        return sb3;
    }

    public final V valueAt(int i10) {
        return (V) this.keyValues[(i10 << 1) + 1];
    }

    public SimpleArrayMap(int i10) {
        if (i10 == 0) {
            this.hashes = ContainerHelpersKt.EMPTY_INTS;
            this.keyValues = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            this.hashes = new int[i10];
            this.keyValues = new Object[i10 << 1];
        }
        this._size = 0;
    }

    public final boolean remove(K k10, V v10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey < 0 || !Intrinsics.areEqual(v10, valueAt(indexOfKey))) {
            return false;
        }
        removeAt(indexOfKey);
        return true;
    }

    public final boolean replace(K k10, V v10, V v11) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey < 0 || valueAt(indexOfKey) != v10) {
            return false;
        }
        setValueAt(indexOfKey, v11);
        return true;
    }

    public /* synthetic */ SimpleArrayMap(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(@Nullable SimpleArrayMap<K, V> simpleArrayMap) {
        this(0, 1, null);
        if (simpleArrayMap != 0) {
            putAll(simpleArrayMap);
        }
    }

    public static /* synthetic */ void size$annotations() {
    }
}
