package androidx.collection;

import androidx.annotation.IntRange;
import androidx.collection.internal.RuntimeHelpersKt;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.ranges.e;
import kotlin.sequences.Sequence;
import kotlin.sequences.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ObjectList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nObjectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 ObjectList.kt\nandroidx/collection/ObjectList\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1548:1\n903#1,5:1549\n903#1,5:1554\n903#1,5:1559\n903#1,5:1564\n903#1,5:1572\n903#1,5:1577\n903#1,5:1582\n919#1,2:1604\n903#1,5:1613\n903#1,5:1618\n919#1,2:1624\n919#1,2:1628\n629#1:1631\n924#1,2:1634\n924#1,2:1641\n924#1,2:1661\n924#1,2:1670\n924#1,2:1673\n924#1,2:1677\n1864#2,3:1569\n1855#2:1623\n1856#2:1626\n1855#2:1672\n1856#2:1675\n231#3,3:1587\n200#3,7:1590\n211#3,3:1598\n214#3,2:1602\n217#3,6:1606\n234#3:1612\n231#3,3:1644\n200#3,7:1647\n211#3,3:1655\n214#3,2:1659\n217#3,6:1663\n234#3:1669\n1399#4:1597\n1270#4:1601\n1399#4:1654\n1270#4:1658\n1313#5:1627\n1314#5:1630\n1313#5:1676\n1314#5:1679\n84#6:1632\n287#6,4:1637\n292#6:1643\n80#6:1680\n80#6:1681\n80#6:1682\n80#6:1683\n80#6:1684\n80#6:1685\n13309#7:1633\n13310#7:1636\n1#8:1686\n*S KotlinDebug\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList\n*L\n633#1:1549,5\n649#1:1554,5\n678#1:1559,5\n708#1:1564,5\n738#1:1572,5\n825#1:1577,5\n839#1:1582,5\n840#1:1604,2\n846#1:1613,5\n856#1:1618,5\n866#1:1624,2\n871#1:1628,2\n892#1:1631\n1020#1:1634,2\n1025#1:1641,2\n1030#1:1661,2\n1036#1:1670,2\n1042#1:1673,2\n1047#1:1677,2\n718#1:1569,3\n866#1:1623\n866#1:1626\n1042#1:1672\n1042#1:1675\n840#1:1587,3\n840#1:1590,7\n840#1:1598,3\n840#1:1602,2\n840#1:1606,6\n840#1:1612\n1030#1:1644,3\n1030#1:1647,7\n1030#1:1655,3\n1030#1:1659,2\n1030#1:1663,6\n1030#1:1669\n840#1:1597\n840#1:1601\n1030#1:1654\n1030#1:1658\n871#1:1627\n871#1:1630\n1047#1:1676\n1047#1:1679\n946#1:1632\n1025#1:1637,4\n1025#1:1643\n1061#1:1680\n1113#1:1681\n1130#1:1682\n1147#1:1683\n1164#1:1684\n1181#1:1685\n1020#1:1633\n1020#1:1636\n*E\n"})
/* loaded from: classes.dex */
public final class MutableObjectList<E> extends ObjectList<E> {
    @Nullable
    private ObjectListMutableList<E> list;

    /* compiled from: ObjectList.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class MutableObjectListIterator<T> implements ListIterator<T>, KMutableListIterator {
        @NotNull
        private final List<T> list;
        private int prevIndex;

        public MutableObjectListIterator(@NotNull List<T> list, int i10) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.list = list;
            this.prevIndex = i10 - 1;
        }

        @Override // java.util.ListIterator
        public void add(T t10) {
            List<T> list = this.list;
            int i10 = this.prevIndex + 1;
            this.prevIndex = i10;
            list.add(i10, t10);
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            if (this.prevIndex < this.list.size() - 1) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            if (this.prevIndex >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public T next() {
            List<T> list = this.list;
            int i10 = this.prevIndex + 1;
            this.prevIndex = i10;
            return list.get(i10);
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.prevIndex + 1;
        }

        @Override // java.util.ListIterator
        public T previous() {
            List<T> list = this.list;
            int i10 = this.prevIndex;
            this.prevIndex = i10 - 1;
            return list.get(i10);
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.prevIndex;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            this.list.remove(this.prevIndex);
            this.prevIndex--;
        }

        @Override // java.util.ListIterator
        public void set(T t10) {
            this.list.set(this.prevIndex, t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ObjectList.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class ObjectListMutableList<T> implements List<T>, KMutableList {
        @NotNull
        private final MutableObjectList<T> objectList;

        public ObjectListMutableList(@NotNull MutableObjectList<T> objectList) {
            Intrinsics.checkNotNullParameter(objectList, "objectList");
            this.objectList = objectList;
        }

        @Override // java.util.List, java.util.Collection
        public boolean add(T t10) {
            return this.objectList.add(t10);
        }

        @Override // java.util.List
        public boolean addAll(int i10, @NotNull Collection<? extends T> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            return this.objectList.addAll(i10, elements);
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            this.objectList.clear();
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object obj) {
            return this.objectList.contains(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            return this.objectList.containsAll(elements);
        }

        @Override // java.util.List
        public T get(int i10) {
            ObjectListKt.checkIndex(this, i10);
            return this.objectList.get(i10);
        }

        public int getSize() {
            return this.objectList.getSize();
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            return this.objectList.indexOf(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            return this.objectList.isEmpty();
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            return this.objectList.lastIndexOf(obj);
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public final /* bridge */ T remove(int i10) {
            return removeAt(i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            return this.objectList.removeAll(elements);
        }

        public T removeAt(int i10) {
            ObjectListKt.checkIndex(this, i10);
            return this.objectList.removeAt(i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            return this.objectList.retainAll((Collection<? extends T>) elements);
        }

        @Override // java.util.List
        public T set(int i10, T t10) {
            ObjectListKt.checkIndex(this, i10);
            return this.objectList.set(i10, t10);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int i10, int i11) {
            ObjectListKt.checkSubIndex(this, i10, i11);
            return new SubList(this, i10, i11);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return CollectionToArray.toArray(this);
        }

        @Override // java.util.List
        public void add(int i10, T t10) {
            this.objectList.add(i10, t10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(@NotNull Collection<? extends T> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            return this.objectList.addAll(elements);
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator(int i10) {
            return new MutableObjectListIterator(this, i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            return this.objectList.remove(obj);
        }

        @Override // java.util.List, java.util.Collection
        public <T> T[] toArray(T[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return (T[]) CollectionToArray.toArray(this, array);
        }
    }

    /* compiled from: ObjectList.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nObjectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList$SubList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1548:1\n1855#2,2:1549\n1855#2,2:1551\n*S KotlinDebug\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList$SubList\n*L\n1345#1:1549,2\n1427#1:1551,2\n*E\n"})
    /* loaded from: classes.dex */
    private static final class SubList<T> implements List<T>, KMutableList {
        private int end;
        @NotNull
        private final List<T> list;
        private final int start;

        public SubList(@NotNull List<T> list, int i10, int i11) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.list = list;
            this.start = i10;
            this.end = i11;
        }

        @Override // java.util.List, java.util.Collection
        public boolean add(T t10) {
            List<T> list = this.list;
            int i10 = this.end;
            this.end = i10 + 1;
            list.add(i10, t10);
            return true;
        }

        @Override // java.util.List
        public boolean addAll(int i10, @NotNull Collection<? extends T> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            this.list.addAll(i10 + this.start, elements);
            this.end += elements.size();
            return elements.size() > 0;
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            int i10 = this.end - 1;
            int i11 = this.start;
            if (i11 <= i10) {
                while (true) {
                    this.list.remove(i10);
                    if (i10 == i11) {
                        break;
                    }
                    i10--;
                }
            }
            this.end = this.start;
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object obj) {
            int i10 = this.end;
            for (int i11 = this.start; i11 < i10; i11++) {
                if (Intrinsics.areEqual(this.list.get(i11), obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public T get(int i10) {
            ObjectListKt.checkIndex(this, i10);
            return this.list.get(i10 + this.start);
        }

        public int getSize() {
            return this.end - this.start;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int i10 = this.end;
            for (int i11 = this.start; i11 < i10; i11++) {
                if (Intrinsics.areEqual(this.list.get(i11), obj)) {
                    return i11 - this.start;
                }
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            if (this.end == this.start) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int i10 = this.end - 1;
            int i11 = this.start;
            if (i11 <= i10) {
                while (!Intrinsics.areEqual(this.list.get(i10), obj)) {
                    if (i10 != i11) {
                        i10--;
                    } else {
                        return -1;
                    }
                }
                return i10 - this.start;
            }
            return -1;
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public final /* bridge */ T remove(int i10) {
            return removeAt(i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            int i10 = this.end;
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            if (i10 != this.end) {
                return true;
            }
            return false;
        }

        public T removeAt(int i10) {
            ObjectListKt.checkIndex(this, i10);
            this.end--;
            return this.list.remove(i10 + this.start);
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            int i10 = this.end;
            int i11 = i10 - 1;
            int i12 = this.start;
            if (i12 <= i11) {
                while (true) {
                    if (!elements.contains(this.list.get(i11))) {
                        this.list.remove(i11);
                        this.end--;
                    }
                    if (i11 == i12) {
                        break;
                    }
                    i11--;
                }
            }
            if (i10 != this.end) {
                return true;
            }
            return false;
        }

        @Override // java.util.List
        public T set(int i10, T t10) {
            ObjectListKt.checkIndex(this, i10);
            return this.list.set(i10 + this.start, t10);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int i10, int i11) {
            ObjectListKt.checkSubIndex(this, i10, i11);
            return new SubList(this, i10, i11);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return CollectionToArray.toArray(this);
        }

        @Override // java.util.List
        public void add(int i10, T t10) {
            this.list.add(i10 + this.start, t10);
            this.end++;
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator(int i10) {
            return new MutableObjectListIterator(this, i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            int i10 = this.end;
            for (int i11 = this.start; i11 < i10; i11++) {
                if (Intrinsics.areEqual(this.list.get(i11), obj)) {
                    this.list.remove(i11);
                    this.end--;
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public <T> T[] toArray(T[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return (T[]) CollectionToArray.toArray(this, array);
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(@NotNull Collection<? extends T> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            this.list.addAll(this.end, elements);
            this.end += elements.size();
            return elements.size() > 0;
        }
    }

    public MutableObjectList() {
        this(0, 1, null);
    }

    private final void throwIndexOutOfBoundsInclusiveException(int i10) {
        RuntimeHelpersKt.throwIndexOutOfBoundsException("Index " + i10 + " must be in 0.." + this._size);
    }

    public static /* synthetic */ void trim$default(MutableObjectList mutableObjectList, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = mutableObjectList._size;
        }
        mutableObjectList.trim(i10);
    }

    public final boolean add(E e10) {
        int i10 = this._size + 1;
        Object[] objArr = this.content;
        if (objArr.length < i10) {
            resizeStorage(i10, objArr);
        }
        Object[] objArr2 = this.content;
        int i11 = this._size;
        objArr2[i11] = e10;
        this._size = i11 + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = 0) int i10, @NotNull E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (i10 < 0 || i10 > this._size) {
            throwIndexOutOfBoundsInclusiveException(i10);
        }
        if (elements.length == 0) {
            return false;
        }
        int length = this._size + elements.length;
        Object[] objArr = this.content;
        if (objArr.length < length) {
            resizeStorage(length, objArr);
        }
        Object[] objArr2 = this.content;
        int i11 = this._size;
        if (i10 != i11) {
            n.n(objArr2, objArr2, elements.length + i10, i10, i11);
        }
        n.u(elements, objArr2, i10, 0, 0, 12, null);
        this._size += elements.length;
        return true;
    }

    @Override // androidx.collection.ObjectList
    @NotNull
    public List<E> asList() {
        return asMutableList();
    }

    @NotNull
    public final List<E> asMutableList() {
        ObjectListMutableList<E> objectListMutableList = this.list;
        if (objectListMutableList == null) {
            ObjectListMutableList<E> objectListMutableList2 = new ObjectListMutableList<>(this);
            this.list = objectListMutableList2;
            return objectListMutableList2;
        }
        return objectListMutableList;
    }

    public final void clear() {
        n.C(this.content, null, 0, this._size);
        this._size = 0;
    }

    public final void ensureCapacity(int i10) {
        Object[] objArr = this.content;
        if (objArr.length < i10) {
            resizeStorage(i10, objArr);
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(E e10) {
        remove(e10);
    }

    public final void plusAssign(@NotNull ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return;
        }
        int i10 = this._size + elements._size;
        Object[] objArr = this.content;
        if (objArr.length < i10) {
            resizeStorage(i10, objArr);
        }
        n.n(elements.content, this.content, this._size, 0, elements._size);
        this._size += elements._size;
    }

    public final boolean remove(E e10) {
        int indexOf = indexOf(e10);
        if (indexOf >= 0) {
            removeAt(indexOf);
            return true;
        }
        return false;
    }

    public final boolean removeAll(@NotNull E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        for (E e10 : elements) {
            remove(e10);
        }
        return i10 != this._size;
    }

    public final E removeAt(@IntRange(from = 0) int i10) {
        if (i10 < 0 || i10 >= this._size) {
            throwIndexOutOfBoundsExclusiveException$collection(i10);
        }
        Object[] objArr = this.content;
        E e10 = (E) objArr[i10];
        int i11 = this._size;
        if (i10 != i11 - 1) {
            n.n(objArr, objArr, i10, i10 + 1, i11);
        }
        int i12 = this._size - 1;
        this._size = i12;
        objArr[i12] = null;
        return e10;
    }

    public final void removeIf(@NotNull Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int i10 = this._size;
        Object[] objArr = this.content;
        int i11 = 0;
        kotlin.ranges.IntRange v10 = e.v(0, i10);
        int c10 = v10.c();
        int d10 = v10.d();
        if (c10 <= d10) {
            while (true) {
                objArr[c10 - i11] = objArr[c10];
                if (predicate.invoke(objArr[c10]).booleanValue()) {
                    i11++;
                }
                if (c10 == d10) {
                    break;
                }
                c10++;
            }
        }
        n.C(objArr, null, i10 - i11, i10);
        this._size -= i11;
    }

    public final void removeRange(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11) {
        int i12;
        if (i10 < 0 || i10 > (i12 = this._size) || i11 < 0 || i11 > i12) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Start (" + i10 + ") and end (" + i11 + ") must be in 0.." + this._size);
        }
        if (i11 < i10) {
            RuntimeHelpersKt.throwIllegalArgumentException("Start (" + i10 + ") is more than end (" + i11 + ')');
        }
        if (i11 != i10) {
            int i13 = this._size;
            if (i11 < i13) {
                Object[] objArr = this.content;
                n.n(objArr, objArr, i10, i11, i13);
            }
            int i14 = this._size;
            int i15 = i14 - (i11 - i10);
            n.C(this.content, null, i15, i14);
            this._size = i15;
        }
    }

    public final void resizeStorage(int i10, @NotNull Object[] oldContent) {
        Intrinsics.checkNotNullParameter(oldContent, "oldContent");
        int length = oldContent.length;
        this.content = n.n(oldContent, new Object[Math.max(i10, (length * 3) / 2)], 0, 0, length);
    }

    public final boolean retainAll(@NotNull E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        Object[] objArr = this.content;
        for (int i11 = i10 - 1; -1 < i11; i11--) {
            if (n.y0(elements, objArr[i11]) < 0) {
                removeAt(i11);
            }
        }
        return i10 != this._size;
    }

    public final E set(@IntRange(from = 0) int i10, E e10) {
        if (i10 < 0 || i10 >= this._size) {
            throwIndexOutOfBoundsExclusiveException$collection(i10);
        }
        Object[] objArr = this.content;
        E e11 = (E) objArr[i10];
        objArr[i10] = e10;
        return e11;
    }

    public final void trim(int i10) {
        int max = Math.max(i10, this._size);
        Object[] objArr = this.content;
        if (objArr.length > max) {
            Object[] copyOf = Arrays.copyOf(objArr, max);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.content = copyOf;
        }
    }

    public MutableObjectList(int i10) {
        super(i10, null);
    }

    public final void minusAssign(@NotNull List<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int size = elements.size();
        for (int i10 = 0; i10 < size; i10++) {
            remove(elements.get(i10));
        }
    }

    public /* synthetic */ MutableObjectList(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 16 : i10);
    }

    public final void minusAssign(@NotNull E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (E e10 : elements) {
            remove(e10);
        }
    }

    public final boolean removeAll(@NotNull ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        minusAssign((ObjectList) elements);
        return i10 != this._size;
    }

    public final void add(@IntRange(from = 0) int i10, E e10) {
        if (i10 < 0 || i10 > this._size) {
            throwIndexOutOfBoundsInclusiveException(i10);
        }
        int i11 = this._size + 1;
        Object[] objArr = this.content;
        if (objArr.length < i11) {
            resizeStorage(i11, objArr);
        }
        Object[] objArr2 = this.content;
        int i12 = this._size;
        if (i10 != i12) {
            n.n(objArr2, objArr2, i10 + 1, i10, i12);
        }
        objArr2[i10] = e10;
        this._size++;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] objArr = elements.content;
        int i10 = elements._size;
        for (int i11 = 0; i11 < i10; i11++) {
            remove(objArr[i11]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean retainAll(@NotNull ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        Object[] objArr = this.content;
        for (int i11 = i10 - 1; -1 < i11; i11--) {
            if (!elements.contains(objArr[i11])) {
                removeAt(i11);
            }
        }
        return i10 != this._size;
    }

    public final boolean removeAll(@NotNull ScatterSet<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        minusAssign((ScatterSet) elements);
        return i10 != this._size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull ScatterSet<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] objArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        remove(objArr[(i10 << 3) + i12]);
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            }
            i10++;
        }
    }

    public final boolean removeAll(@NotNull List<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        minusAssign((List) elements);
        return i10 != this._size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(@NotNull ScatterSet<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return;
        }
        int size = this._size + elements.getSize();
        Object[] objArr = this.content;
        if (objArr.length < size) {
            resizeStorage(size, objArr);
        }
        Object[] objArr2 = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        add(objArr2[(i10 << 3) + i12]);
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            }
            i10++;
        }
    }

    public final boolean retainAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        Object[] objArr = this.content;
        for (int i11 = i10 - 1; -1 < i11; i11--) {
            if (!elements.contains(objArr[i11])) {
                removeAt(i11);
            }
        }
        return i10 != this._size;
    }

    public final boolean addAll(@IntRange(from = 0) int i10, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (i10 < 0 || i10 > this._size) {
            throwIndexOutOfBoundsInclusiveException(i10);
        }
        int i11 = 0;
        if (elements.isEmpty()) {
            return false;
        }
        int size = this._size + elements.size();
        Object[] objArr = this.content;
        if (objArr.length < size) {
            resizeStorage(size, objArr);
        }
        Object[] objArr2 = this.content;
        if (i10 != this._size) {
            n.n(objArr2, objArr2, elements.size() + i10, i10, this._size);
        }
        for (Object obj : elements) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.y();
            }
            objArr2[i11 + i10] = obj;
            i11 = i12;
        }
        this._size += elements.size();
        return true;
    }

    public final boolean removeAll(@NotNull Iterable<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        minusAssign((Iterable) elements);
        return i10 != this._size;
    }

    public final void minusAssign(@NotNull Iterable<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (E e10 : elements) {
            remove(e10);
        }
    }

    public final boolean removeAll(@NotNull Sequence<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        minusAssign((Sequence) elements);
        return i10 != this._size;
    }

    public final void minusAssign(@NotNull Sequence<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (E e10 : elements) {
            remove(e10);
        }
    }

    public final boolean retainAll(@NotNull Iterable<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        Object[] objArr = this.content;
        for (int i11 = i10 - 1; -1 < i11; i11--) {
            if (!CollectionsKt.g0(elements, objArr[i11])) {
                removeAt(i11);
            }
        }
        return i10 != this._size;
    }

    public final void plusAssign(@NotNull E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length == 0) {
            return;
        }
        int length = this._size + elements.length;
        Object[] objArr = this.content;
        if (objArr.length < length) {
            resizeStorage(length, objArr);
        }
        n.u(elements, this.content, this._size, 0, 0, 12, null);
        this._size += elements.length;
    }

    public final boolean retainAll(@NotNull Sequence<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        Object[] objArr = this.content;
        for (int i11 = i10 - 1; -1 < i11; i11--) {
            if (!j.q(elements, objArr[i11])) {
                removeAt(i11);
            }
        }
        return i10 != this._size;
    }

    public final boolean addAll(@IntRange(from = 0) int i10, @NotNull ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (i10 < 0 || i10 > this._size) {
            throwIndexOutOfBoundsInclusiveException(i10);
        }
        if (elements.isEmpty()) {
            return false;
        }
        int i11 = this._size + elements._size;
        Object[] objArr = this.content;
        if (objArr.length < i11) {
            resizeStorage(i11, objArr);
        }
        Object[] objArr2 = this.content;
        int i12 = this._size;
        if (i10 != i12) {
            n.n(objArr2, objArr2, elements._size + i10, i10, i12);
        }
        n.n(elements.content, objArr2, i10, 0, elements._size);
        this._size += elements._size;
        return true;
    }

    public final void plusAssign(@NotNull List<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return;
        }
        int i10 = this._size;
        int size = elements.size() + i10;
        Object[] objArr = this.content;
        if (objArr.length < size) {
            resizeStorage(size, objArr);
        }
        Object[] objArr2 = this.content;
        int size2 = elements.size();
        for (int i11 = 0; i11 < size2; i11++) {
            objArr2[i11 + i10] = elements.get(i11);
        }
        this._size += elements.size();
    }

    public final void plusAssign(E e10) {
        add(e10);
    }

    public final void plusAssign(@NotNull Iterable<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (E e10 : elements) {
            add(e10);
        }
    }

    public final void plusAssign(@NotNull Sequence<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (E e10 : elements) {
            add(e10);
        }
    }

    public final boolean addAll(@NotNull ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        plusAssign((ObjectList) elements);
        return i10 != this._size;
    }

    public final boolean addAll(@NotNull ScatterSet<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        plusAssign((ScatterSet) elements);
        return i10 != this._size;
    }

    public final boolean addAll(@NotNull E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        plusAssign((Object[]) elements);
        return i10 != this._size;
    }

    public final boolean addAll(@NotNull List<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        plusAssign((List) elements);
        return i10 != this._size;
    }

    public final boolean addAll(@NotNull Iterable<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        plusAssign((Iterable) elements);
        return i10 != this._size;
    }

    public final boolean addAll(@NotNull Sequence<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i10 = this._size;
        plusAssign((Sequence) elements);
        return i10 != this._size;
    }
}
