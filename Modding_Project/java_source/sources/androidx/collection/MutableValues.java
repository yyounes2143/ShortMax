package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableCollection;
import org.jetbrains.annotations.NotNull;
/* compiled from: ScatterMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableValues\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1787:1\n329#2,6:1788\n339#2,3:1795\n342#2,9:1799\n329#2,6:1808\n339#2,3:1815\n342#2,9:1819\n329#2,6:1828\n339#2,3:1835\n342#2,9:1839\n1399#3:1794\n1270#3:1798\n1399#3:1814\n1270#3:1818\n1399#3:1834\n1270#3:1838\n1726#4,3:1848\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableValues\n*L\n1726#1:1788,6\n1726#1:1795,3\n1726#1:1799,9\n1737#1:1808,6\n1737#1:1815,3\n1737#1:1819,9\n1747#1:1828,6\n1747#1:1835,3\n1747#1:1839,9\n1726#1:1794\n1726#1:1798\n1737#1:1814\n1737#1:1818\n1747#1:1834\n1747#1:1838\n1757#1:1848,3\n*E\n"})
/* loaded from: classes.dex */
final class MutableValues<K, V> implements Collection<V>, KMutableCollection {
    @NotNull
    private final MutableScatterMap<K, V> parent;

    public MutableValues(@NotNull MutableScatterMap<K, V> parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.parent = parent;
    }

    @Override // java.util.Collection
    public boolean add(V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(@NotNull Collection<? extends V> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public void clear() {
        this.parent.clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.parent.containsValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!this.parent.containsValue(obj)) {
                return false;
            }
        }
        return true;
    }

    public int getSize() {
        return this.parent._size;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.parent.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<V> iterator() {
        return new MutableValues$iterator$1(this);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        long[] jArr = this.parent.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            if (Intrinsics.areEqual(this.parent.values[i13], obj)) {
                                this.parent.removeValueAt(i13);
                                return true;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        long[] jArr = this.parent.metadata;
        int length = jArr.length - 2;
        boolean z10 = false;
        if (length >= 0) {
            int i10 = 0;
            boolean z11 = false;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            if (CollectionsKt.g0(elements, this.parent.values[i13])) {
                                this.parent.removeValueAt(i13);
                                z11 = true;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        return z11;
                    }
                }
                if (i10 != length) {
                    i10++;
                } else {
                    z10 = z11;
                    break;
                }
            }
        }
        return z10;
    }

    @Override // java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        long[] jArr = this.parent.metadata;
        int length = jArr.length - 2;
        boolean z10 = false;
        if (length >= 0) {
            int i10 = 0;
            boolean z11 = false;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            if (!CollectionsKt.g0(elements, this.parent.values[i13])) {
                                this.parent.removeValueAt(i13);
                                z11 = true;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        return z11;
                    }
                }
                if (i10 != length) {
                    i10++;
                } else {
                    z10 = z11;
                    break;
                }
            }
        }
        return z10;
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }
}
