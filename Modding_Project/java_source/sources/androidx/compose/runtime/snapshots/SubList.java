package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.m0;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableList;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateList.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SubList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n*L\n1#1,511:1\n1734#2,3:512\n1863#2,2:515\n34#3,4:517\n*S KotlinDebug\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SubList\n*L\n355#1:512,3\n365#1:515,2\n498#1:517,4\n*E\n"})
/* loaded from: classes.dex */
public final class SubList<T> implements List<T>, KMutableList {
    public static final int $stable = 8;
    private final int offset;
    @NotNull
    private final SnapshotStateList<T> parentList;
    private int size;
    private int structure;

    public SubList(@NotNull SnapshotStateList<T> snapshotStateList, int i10, int i11) {
        this.parentList = snapshotStateList;
        this.offset = i10;
        this.structure = SnapshotStateListKt.getStructure(snapshotStateList);
        this.size = i11 - i10;
    }

    private final void validateModification() {
        if (SnapshotStateListKt.getStructure(this.parentList) == this.structure) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t10) {
        validateModification();
        this.parentList.add(this.offset + size(), t10);
        this.size = size() + 1;
        this.structure = SnapshotStateListKt.getStructure(this.parentList);
        return true;
    }

    @Override // java.util.List
    public boolean addAll(int i10, @NotNull Collection<? extends T> collection) {
        validateModification();
        boolean addAll = this.parentList.addAll(i10 + this.offset, collection);
        if (addAll) {
            this.size = size() + collection.size();
            this.structure = SnapshotStateListKt.getStructure(this.parentList);
        }
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        if (size() > 0) {
            validateModification();
            SnapshotStateList<T> snapshotStateList = this.parentList;
            int i10 = this.offset;
            snapshotStateList.removeRange(i10, size() + i10);
            this.size = 0;
            this.structure = SnapshotStateListKt.getStructure(this.parentList);
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection<?> collection) {
        Collection<?> collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public T get(int i10) {
        validateModification();
        SnapshotStateListKt.validateRange(i10, size());
        return this.parentList.get(this.offset + i10);
    }

    @NotNull
    public final SnapshotStateList<T> getParentList() {
        return this.parentList;
    }

    public int getSize() {
        return this.size;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        validateModification();
        int i10 = this.offset;
        Iterator<Integer> it = kotlin.ranges.e.v(i10, size() + i10).iterator();
        while (it.hasNext()) {
            int nextInt = ((m0) it).nextInt();
            if (Intrinsics.areEqual(obj, this.parentList.get(nextInt))) {
                return nextInt - this.offset;
            }
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        validateModification();
        int size = this.offset + size();
        while (true) {
            size--;
            if (size >= this.offset) {
                if (Intrinsics.areEqual(obj, this.parentList.get(size))) {
                    return size - this.offset;
                }
            } else {
                return -1;
            }
        }
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final /* bridge */ T remove(int i10) {
        return removeAt(i10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(@NotNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (true) {
            boolean z10 = false;
            while (it.hasNext()) {
                if (remove(it.next()) || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
    }

    public T removeAt(int i10) {
        validateModification();
        T remove = this.parentList.remove(this.offset + i10);
        this.size = size() - 1;
        this.structure = SnapshotStateListKt.getStructure(this.parentList);
        return remove;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(@NotNull Collection<?> collection) {
        validateModification();
        SnapshotStateList<T> snapshotStateList = this.parentList;
        int i10 = this.offset;
        int retainAllInRange$runtime = snapshotStateList.retainAllInRange$runtime(collection, i10, size() + i10);
        if (retainAllInRange$runtime > 0) {
            this.structure = SnapshotStateListKt.getStructure(this.parentList);
            this.size = size() - retainAllInRange$runtime;
        }
        if (retainAllInRange$runtime > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.List
    public T set(int i10, T t10) {
        SnapshotStateListKt.validateRange(i10, size());
        validateModification();
        T t11 = this.parentList.set(i10 + this.offset, t10);
        this.structure = SnapshotStateListKt.getStructure(this.parentList);
        return t11;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.List
    @NotNull
    public List<T> subList(int i10, int i11) {
        boolean z10;
        if (i10 >= 0 && i10 <= i11 && i11 <= size()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("fromIndex or toIndex are out of bounds");
        }
        validateModification();
        SnapshotStateList<T> snapshotStateList = this.parentList;
        int i12 = this.offset;
        return new SubList(snapshotStateList, i10 + i12, i11 + i12);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        validateModification();
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i10 - 1;
        return new SubList$listIterator$1(intRef, this);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            remove(indexOf);
            return true;
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    @Override // java.util.List
    public void add(int i10, T t10) {
        validateModification();
        this.parentList.add(this.offset + i10, t10);
        this.size = size() + 1;
        this.structure = SnapshotStateListKt.getStructure(this.parentList);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends T> collection) {
        return addAll(size(), collection);
    }
}
