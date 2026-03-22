package androidx.compose.runtime.collection;

import androidx.compose.runtime.internal.StabilityInferred;
import at.n;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MutableVector.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nMutableVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 2 ArrayUtils.android.kt\nandroidx/compose/runtime/collection/ArrayUtils_androidKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1116:1\n289#1,4:1117\n289#1,4:1121\n289#1,4:1127\n289#1,4:1133\n289#1,4:1141\n289#1,4:1147\n44#1:1157\n472#1:1158\n48#1:1161\n472#1:1162\n44#1:1163\n472#1:1164\n516#1:1167\n332#1:1168\n472#1:1169\n516#1:1170\n472#1:1171\n516#1:1172\n44#1:1173\n472#1:1174\n516#1:1175\n44#1:1176\n472#1:1177\n472#1:1178\n472#1:1179\n44#1:1180\n472#1:1181\n44#1:1184\n44#1:1189\n44#1:1190\n472#1:1191\n27#2,2:1125\n27#2,2:1131\n27#2,2:1137\n27#2,2:1139\n27#2,2:1145\n27#2,2:1151\n27#2,2:1165\n27#2,2:1185\n27#2,2:1187\n1872#3,3:1153\n1863#3,2:1159\n1863#3,2:1182\n1#4:1156\n*S KotlinDebug\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n55#1:1117,4\n66#1:1121,4\n87#1:1127,4\n111#1:1133,4\n156#1:1141,4\n169#1:1147,4\n234#1:1157\n235#1:1158\n265#1:1161\n266#1:1162\n279#1:1163\n280#1:1164\n309#1:1167\n310#1:1168\n312#1:1169\n340#1:1170\n340#1:1171\n526#1:1172\n529#1:1173\n529#1:1174\n563#1:1175\n563#1:1176\n563#1:1177\n588#1:1178\n598#1:1179\n680#1:1180\n681#1:1181\n702#1:1184\n727#1:1189\n761#1:1190\n762#1:1191\n69#1:1125,2\n90#1:1131,2\n114#1:1137,2\n121#1:1139,2\n157#1:1145,2\n172#1:1151,2\n300#1:1165,2\n703#1:1185,2\n719#1:1187,2\n179#1:1153,3\n256#1:1159,2\n694#1:1182,2\n*E\n"})
/* loaded from: classes.dex */
public final class MutableVector<T> implements RandomAccess {
    public static final int $stable = 8;
    @NotNull
    public T[] content;
    @Nullable
    private List<T> list;
    private int size;

    /* compiled from: MutableVector.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMutableVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector$MutableVectorList\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,1116:1\n472#2:1117\n516#2:1118\n*S KotlinDebug\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector$MutableVectorList\n*L\n852#1:1117\n857#1:1118\n*E\n"})
    /* loaded from: classes.dex */
    private static final class MutableVectorList<T> implements List<T>, KMutableList {
        @NotNull
        private final MutableVector<T> vector;

        public MutableVectorList(@NotNull MutableVector<T> mutableVector) {
            this.vector = mutableVector;
        }

        @Override // java.util.List, java.util.Collection
        public boolean add(T t10) {
            return this.vector.add(t10);
        }

        @Override // java.util.List
        public boolean addAll(int i10, @NotNull Collection<? extends T> collection) {
            return this.vector.addAll(i10, collection);
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            this.vector.clear();
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object obj) {
            return this.vector.contains(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(@NotNull Collection<?> collection) {
            return this.vector.containsAll(collection);
        }

        @Override // java.util.List
        public T get(int i10) {
            MutableVectorKt.checkIndex(this, i10);
            return this.vector.content[i10];
        }

        public int getSize() {
            return this.vector.getSize();
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            return this.vector.indexOf(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            if (this.vector.getSize() == 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            return this.vector.lastIndexOf(obj);
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public final /* bridge */ T remove(int i10) {
            return removeAt(i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(@NotNull Collection<?> collection) {
            return this.vector.removeAll(collection);
        }

        public T removeAt(int i10) {
            MutableVectorKt.checkIndex(this, i10);
            return this.vector.removeAt(i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(@NotNull Collection<?> collection) {
            return this.vector.retainAll(collection);
        }

        @Override // java.util.List
        public T set(int i10, T t10) {
            MutableVectorKt.checkIndex(this, i10);
            return this.vector.set(i10, t10);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int i10, int i11) {
            MutableVectorKt.checkSubIndex(this, i10, i11);
            return new SubList(this, i10, i11);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return CollectionToArray.toArray(this);
        }

        @Override // java.util.List
        public void add(int i10, T t10) {
            this.vector.add(i10, t10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(@NotNull Collection<? extends T> collection) {
            return this.vector.addAll(collection);
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator(int i10) {
            return new VectorListIterator(this, i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            return this.vector.remove(obj);
        }

        @Override // java.util.List, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) CollectionToArray.toArray(this, tArr);
        }
    }

    /* compiled from: MutableVector.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMutableVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector$SubList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1116:1\n1863#2,2:1117\n1863#2,2:1119\n*S KotlinDebug\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector$SubList\n*L\n924#1:1117,2\n1008#1:1119,2\n*E\n"})
    /* loaded from: classes.dex */
    private static final class SubList<T> implements List<T>, KMutableList {
        private int end;
        @NotNull
        private final List<T> list;
        private final int start;

        public SubList(@NotNull List<T> list, int i10, int i11) {
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
        public boolean addAll(int i10, @NotNull Collection<? extends T> collection) {
            this.list.addAll(i10 + this.start, collection);
            int size = collection.size();
            this.end += size;
            return size > 0;
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
        public boolean containsAll(@NotNull Collection<?> collection) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public T get(int i10) {
            MutableVectorKt.checkIndex(this, i10);
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
            return new VectorListIterator(this, 0);
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
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public final /* bridge */ T remove(int i10) {
            return removeAt(i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(@NotNull Collection<?> collection) {
            int i10 = this.end;
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            if (i10 != this.end) {
                return true;
            }
            return false;
        }

        public T removeAt(int i10) {
            MutableVectorKt.checkIndex(this, i10);
            this.end--;
            return this.list.remove(i10 + this.start);
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(@NotNull Collection<?> collection) {
            int i10 = this.end;
            int i11 = i10 - 1;
            int i12 = this.start;
            if (i12 <= i11) {
                while (true) {
                    if (!collection.contains(this.list.get(i11))) {
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
            MutableVectorKt.checkIndex(this, i10);
            return this.list.set(i10 + this.start, t10);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int i10, int i11) {
            MutableVectorKt.checkSubIndex(this, i10, i11);
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
            return new VectorListIterator(this, i10);
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
        public <T> T[] toArray(T[] tArr) {
            return (T[]) CollectionToArray.toArray(this, tArr);
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(@NotNull Collection<? extends T> collection) {
            this.list.addAll(this.end, collection);
            int size = collection.size();
            this.end += size;
            return size > 0;
        }
    }

    /* compiled from: MutableVector.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class VectorListIterator<T> implements ListIterator<T>, KMutableListIterator {
        private int index;
        @NotNull
        private final List<T> list;

        public VectorListIterator(@NotNull List<T> list, int i10) {
            this.list = list;
            this.index = i10;
        }

        @Override // java.util.ListIterator
        public void add(T t10) {
            this.list.add(this.index, t10);
            this.index++;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            if (this.index < this.list.size()) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            if (this.index > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public T next() {
            List<T> list = this.list;
            int i10 = this.index;
            this.index = i10 + 1;
            return list.get(i10);
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.index;
        }

        @Override // java.util.ListIterator
        public T previous() {
            int i10 = this.index - 1;
            this.index = i10;
            return this.list.get(i10);
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.index - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            int i10 = this.index - 1;
            this.index = i10;
            this.list.remove(i10);
        }

        @Override // java.util.ListIterator
        public void set(T t10) {
            this.list.set(this.index, t10);
        }
    }

    public MutableVector(@NotNull T[] tArr, int i10) {
        this.content = tArr;
        this.size = i10;
    }

    public final boolean add(T t10) {
        int i10 = this.size + 1;
        if (this.content.length < i10) {
            resizeStorage(i10);
        }
        T[] tArr = this.content;
        int i11 = this.size;
        tArr[i11] = t10;
        this.size = i11 + 1;
        return true;
    }

    public final boolean addAll(int i10, @NotNull List<? extends T> list) {
        if (list.isEmpty()) {
            return false;
        }
        int size = list.size();
        int i11 = this.size + size;
        if (this.content.length < i11) {
            resizeStorage(i11);
        }
        T[] tArr = this.content;
        int i12 = this.size;
        if (i10 != i12) {
            System.arraycopy(tArr, i10, tArr, i10 + size, i12 - i10);
        }
        int size2 = list.size();
        for (int i13 = 0; i13 < size2; i13++) {
            tArr[i10 + i13] = list.get(i13);
        }
        this.size += size;
        return true;
    }

    public final boolean any(@NotNull Function1<? super T, Boolean> function1) {
        T[] tArr = this.content;
        int size = getSize();
        for (int i10 = 0; i10 < size; i10++) {
            if (function1.invoke((Object) tArr[i10]).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final List<T> asMutableList() {
        List<T> list = this.list;
        if (list == null) {
            MutableVectorList mutableVectorList = new MutableVectorList(this);
            this.list = mutableVectorList;
            return mutableVectorList;
        }
        return list;
    }

    public final void clear() {
        T[] tArr = this.content;
        int i10 = this.size;
        for (int i11 = 0; i11 < i10; i11++) {
            tArr[i11] = null;
        }
        this.size = 0;
    }

    public final boolean contains(T t10) {
        int size = getSize() - 1;
        if (size >= 0) {
            for (int i10 = 0; !Intrinsics.areEqual(this.content[i10], t10); i10++) {
                if (i10 != size) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean containsAll(@NotNull List<? extends T> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!contains(list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public final boolean contentEquals(@NotNull MutableVector<T> mutableVector) {
        if (mutableVector.size != this.size) {
            return false;
        }
        int size = getSize() - 1;
        if (size >= 0) {
            for (int i10 = 0; Intrinsics.areEqual(mutableVector.content[i10], this.content[i10]); i10++) {
                if (i10 != size) {
                }
            }
            return false;
        }
        return true;
    }

    public final void ensureCapacity(int i10) {
        if (this.content.length < i10) {
            resizeStorage(i10);
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [T, java.lang.Object] */
    public final T first(@NotNull Function1<? super T, Boolean> function1) {
        T[] tArr = this.content;
        int size = getSize();
        for (int i10 = 0; i10 < size; i10++) {
            ?? r32 = (Object) tArr[i10];
            if (function1.invoke(r32).booleanValue()) {
                return r32;
            }
        }
        throwNoSuchElementException("MutableVector contains no element matching the predicate.");
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [T, java.lang.Object] */
    @Nullable
    public final T firstOrNull(@NotNull Function1<? super T, Boolean> function1) {
        T[] tArr = this.content;
        int size = getSize();
        for (int i10 = 0; i10 < size; i10++) {
            ?? r32 = (Object) tArr[i10];
            if (function1.invoke(r32).booleanValue()) {
                return r32;
            }
        }
        return null;
    }

    public final <R> R fold(R r10, @NotNull Function2<? super R, ? super T, ? extends R> function2) {
        T[] tArr = this.content;
        int size = getSize();
        for (int i10 = 0; i10 < size; i10++) {
            r10 = function2.invoke(r10, (Object) tArr[i10]);
        }
        return r10;
    }

    public final <R> R foldIndexed(R r10, @NotNull n<? super Integer, ? super R, ? super T, ? extends R> nVar) {
        T[] tArr = this.content;
        int size = getSize();
        for (int i10 = 0; i10 < size; i10++) {
            r10 = nVar.invoke(Integer.valueOf(i10), r10, (Object) tArr[i10]);
        }
        return r10;
    }

    public final <R> R foldRight(R r10, @NotNull Function2<? super T, ? super R, ? extends R> function2) {
        int size = getSize() - 1;
        T[] tArr = this.content;
        if (size >= tArr.length) {
            return r10;
        }
        while (size >= 0) {
            r10 = function2.invoke((Object) tArr[size], r10);
            size--;
        }
        return r10;
    }

    public final <R> R foldRightIndexed(R r10, @NotNull n<? super Integer, ? super T, ? super R, ? extends R> nVar) {
        int size = getSize() - 1;
        T[] tArr = this.content;
        if (size >= tArr.length) {
            return r10;
        }
        while (size >= 0) {
            r10 = nVar.invoke(Integer.valueOf(size), (Object) tArr[size], r10);
            size--;
        }
        return r10;
    }

    public final void forEach(@NotNull Function1<? super T, Unit> function1) {
        T[] tArr = this.content;
        int size = getSize();
        for (int i10 = 0; i10 < size; i10++) {
            function1.invoke((Object) tArr[i10]);
        }
    }

    public final void forEachIndexed(@NotNull Function2<? super Integer, ? super T, Unit> function2) {
        T[] tArr = this.content;
        int size = getSize();
        for (int i10 = 0; i10 < size; i10++) {
            function2.invoke(Integer.valueOf(i10), (Object) tArr[i10]);
        }
    }

    public final void forEachReversed(@NotNull Function1<? super T, Unit> function1) {
        int size = getSize() - 1;
        T[] tArr = this.content;
        if (size >= tArr.length) {
            return;
        }
        while (size >= 0) {
            function1.invoke((Object) tArr[size]);
            size--;
        }
    }

    public final void forEachReversedIndexed(@NotNull Function2<? super Integer, ? super T, Unit> function2) {
        int size = getSize() - 1;
        T[] tArr = this.content;
        if (size >= tArr.length) {
            return;
        }
        while (size >= 0) {
            function2.invoke(Integer.valueOf(size), (Object) tArr[size]);
            size--;
        }
    }

    public final T get(int i10) {
        return this.content[i10];
    }

    @NotNull
    public final T[] getContent() {
        return this.content;
    }

    @NotNull
    public final IntRange getIndices() {
        return e.v(0, getSize());
    }

    public final int getLastIndex() {
        return getSize() - 1;
    }

    public final int getSize() {
        return this.size;
    }

    public final int indexOf(T t10) {
        T[] tArr = this.content;
        int i10 = this.size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (Intrinsics.areEqual(t10, tArr[i11])) {
                return i11;
            }
        }
        return -1;
    }

    public final int indexOfFirst(@NotNull Function1<? super T, Boolean> function1) {
        T[] tArr = this.content;
        int size = getSize();
        for (int i10 = 0; i10 < size; i10++) {
            if (function1.invoke((Object) tArr[i10]).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    public final int indexOfLast(@NotNull Function1<? super T, Boolean> function1) {
        int size = getSize() - 1;
        T[] tArr = this.content;
        if (size < tArr.length) {
            while (size >= 0) {
                if (function1.invoke((Object) tArr[size]).booleanValue()) {
                    return size;
                }
                size--;
            }
            return -1;
        }
        return -1;
    }

    public final boolean isEmpty() {
        if (getSize() == 0) {
            return true;
        }
        return false;
    }

    public final boolean isNotEmpty() {
        if (getSize() != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
    public final T last(@NotNull Function1<? super T, Boolean> function1) {
        T[] tArr = this.content;
        for (int size = getSize() - 1; size >= 0; size--) {
            ?? r22 = (Object) tArr[size];
            if (function1.invoke(r22).booleanValue()) {
                return r22;
            }
        }
        throwNoSuchElementException("MutableVector contains no element matching the predicate.");
        throw new KotlinNothingValueException();
    }

    public final int lastIndexOf(T t10) {
        T[] tArr = this.content;
        for (int i10 = this.size - 1; i10 >= 0; i10--) {
            if (Intrinsics.areEqual(t10, tArr[i10])) {
                return i10;
            }
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
    @Nullable
    public final T lastOrNull(@NotNull Function1<? super T, Boolean> function1) {
        T[] tArr = this.content;
        for (int size = getSize() - 1; size >= 0; size--) {
            ?? r22 = (Object) tArr[size];
            if (function1.invoke(r22).booleanValue()) {
                return r22;
            }
        }
        return null;
    }

    public final /* synthetic */ <R> R[] map(Function1<? super T, ? extends R> function1) {
        int size = getSize();
        Intrinsics.reifiedOperationMarker(0, "R");
        R[] rArr = (R[]) new Object[size];
        for (int i10 = 0; i10 < size; i10++) {
            rArr[i10] = function1.invoke((Object) this.content[i10]);
        }
        return rArr;
    }

    public final /* synthetic */ <R> R[] mapIndexed(Function2<? super Integer, ? super T, ? extends R> function2) {
        int size = getSize();
        Intrinsics.reifiedOperationMarker(0, "R");
        R[] rArr = (R[]) new Object[size];
        for (int i10 = 0; i10 < size; i10++) {
            rArr[i10] = function2.invoke(Integer.valueOf(i10), (Object) this.content[i10]);
        }
        return rArr;
    }

    public final /* synthetic */ <R> MutableVector<R> mapIndexedNotNull(Function2<? super Integer, ? super T, ? extends R> function2) {
        int size = getSize();
        Intrinsics.reifiedOperationMarker(0, "R?");
        Object[] objArr = new Object[size];
        T[] tArr = this.content;
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            R invoke = function2.invoke(Integer.valueOf(i11), (Object) tArr[i11]);
            if (invoke != null) {
                objArr[i10] = invoke;
                i10++;
            }
        }
        return new MutableVector<>(objArr, i10);
    }

    public final /* synthetic */ <R> MutableVector<R> mapNotNull(Function1<? super T, ? extends R> function1) {
        int size = getSize();
        Intrinsics.reifiedOperationMarker(0, "R?");
        Object[] objArr = new Object[size];
        T[] tArr = this.content;
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            R invoke = function1.invoke((Object) tArr[i11]);
            if (invoke != null) {
                objArr[i10] = invoke;
                i10++;
            }
        }
        return new MutableVector<>(objArr, i10);
    }

    public final void minusAssign(T t10) {
        remove(t10);
    }

    public final void plusAssign(T t10) {
        add(t10);
    }

    public final boolean remove(T t10) {
        int indexOf = indexOf(t10);
        if (indexOf >= 0) {
            removeAt(indexOf);
            return true;
        }
        return false;
    }

    public final boolean removeAll(@NotNull List<? extends T> list) {
        int i10 = this.size;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            remove(list.get(i11));
        }
        return i10 != this.size;
    }

    public final T removeAt(int i10) {
        T[] tArr = this.content;
        T t10 = tArr[i10];
        if (i10 != getSize() - 1) {
            int i11 = i10 + 1;
            System.arraycopy(tArr, i11, tArr, i10, this.size - i11);
        }
        int i12 = this.size - 1;
        this.size = i12;
        tArr[i12] = null;
        return t10;
    }

    public final void removeIf(@NotNull Function1<? super T, Boolean> function1) {
        int size = getSize();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            if (function1.invoke((Object) this.content[i11]).booleanValue()) {
                i10++;
            } else if (i10 > 0) {
                T[] tArr = this.content;
                tArr[i11 - i10] = tArr[i11];
            }
        }
        int i12 = size - i10;
        kotlin.collections.n.C(this.content, null, i12, size);
        setSize(i12);
    }

    public final void removeRange(int i10, int i11) {
        if (i11 > i10) {
            int i12 = this.size;
            if (i11 < i12) {
                T[] tArr = this.content;
                System.arraycopy(tArr, i11, tArr, i10, i12 - i11);
            }
            int i13 = this.size - (i11 - i10);
            int size = getSize() - 1;
            if (i13 <= size) {
                int i14 = i13;
                while (true) {
                    this.content[i14] = null;
                    if (i14 == size) {
                        break;
                    }
                    i14++;
                }
            }
            this.size = i13;
        }
    }

    public final void resizeStorage(int i10) {
        T[] tArr = this.content;
        int length = tArr.length;
        T[] tArr2 = (T[]) new Object[Math.max(i10, length * 2)];
        System.arraycopy(tArr, 0, tArr2, 0, length);
        this.content = tArr2;
    }

    public final boolean retainAll(@NotNull Collection<? extends T> collection) {
        int i10 = this.size;
        for (int size = getSize() - 1; -1 < size; size--) {
            if (!collection.contains(this.content[size])) {
                removeAt(size);
            }
        }
        if (i10 != this.size) {
            return true;
        }
        return false;
    }

    public final boolean reversedAny(@NotNull Function1<? super T, Boolean> function1) {
        T[] tArr = this.content;
        for (int size = getSize() - 1; size >= 0; size--) {
            if (function1.invoke((Object) tArr[size]).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final T set(int i10, T t10) {
        T[] tArr = this.content;
        T t11 = tArr[i10];
        tArr[i10] = t10;
        return t11;
    }

    public final void setSize(int i10) {
        this.size = i10;
    }

    public final void sortWith(@NotNull Comparator<T> comparator) {
        kotlin.collections.n.T(this.content, comparator, 0, this.size);
    }

    public final int sumBy(@NotNull Function1<? super T, Integer> function1) {
        T[] tArr = this.content;
        int i10 = 0;
        for (int i11 = 0; i11 < getSize(); i11++) {
            i10 += function1.invoke((Object) tArr[i11]).intValue();
        }
        return i10;
    }

    @NotNull
    public final Void throwNoSuchElementException() {
        throwNoSuchElementException("MutableVector is empty.");
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final Void throwNoSuchElementException(@NotNull String str) {
        throw new NoSuchElementException(str);
    }

    public final boolean containsAll(@NotNull Collection<? extends T> collection) {
        for (T t10 : collection) {
            if (!contains(t10)) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public final T firstOrNull() {
        if (getSize() == 0) {
            return null;
        }
        return this.content[0];
    }

    @Nullable
    public final T lastOrNull() {
        if (getSize() == 0) {
            return null;
        }
        return this.content[getSize() - 1];
    }

    public final boolean removeAll(@NotNull MutableVector<T> mutableVector) {
        int i10 = this.size;
        int size = mutableVector.getSize() - 1;
        if (size >= 0) {
            int i11 = 0;
            while (true) {
                remove(mutableVector.content[i11]);
                if (i11 == size) {
                    break;
                }
                i11++;
            }
        }
        return i10 != this.size;
    }

    public final void add(int i10, T t10) {
        int i11 = this.size + 1;
        if (this.content.length < i11) {
            resizeStorage(i11);
        }
        T[] tArr = this.content;
        int i12 = this.size;
        if (i10 != i12) {
            System.arraycopy(tArr, i10, tArr, i10 + 1, i12 - i10);
        }
        tArr[i10] = t10;
        this.size++;
    }

    public final boolean containsAll(@NotNull MutableVector<T> mutableVector) {
        IntRange v10 = e.v(0, mutableVector.getSize());
        int c10 = v10.c();
        int d10 = v10.d();
        if (c10 <= d10) {
            while (contains(mutableVector.content[c10])) {
                if (c10 == d10) {
                    return true;
                }
                c10++;
            }
            return false;
        }
        return true;
    }

    public final T first() {
        if (getSize() != 0) {
            return this.content[0];
        }
        throwNoSuchElementException("MutableVector is empty.");
        throw new KotlinNothingValueException();
    }

    public final T last() {
        if (getSize() != 0) {
            return this.content[getSize() - 1];
        }
        throwNoSuchElementException("MutableVector is empty.");
        throw new KotlinNothingValueException();
    }

    public final boolean removeAll(@NotNull Collection<? extends T> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int i10 = this.size;
        for (T t10 : collection) {
            remove(t10);
        }
        return i10 != this.size;
    }

    public final boolean addAll(int i10, @NotNull MutableVector<T> mutableVector) {
        int i11 = mutableVector.size;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.size + i11;
        if (this.content.length < i12) {
            resizeStorage(i12);
        }
        T[] tArr = this.content;
        int i13 = this.size;
        if (i10 != i13) {
            System.arraycopy(tArr, i10, tArr, i10 + i11, i13 - i10);
        }
        System.arraycopy(mutableVector.content, 0, tArr, i10, i11);
        this.size += i11;
        return true;
    }

    public static /* synthetic */ void getContent$annotations() {
    }

    public final boolean addAll(@NotNull List<? extends T> list) {
        return addAll(getSize(), (List) list);
    }

    public final boolean addAll(@NotNull MutableVector<T> mutableVector) {
        return addAll(getSize(), mutableVector);
    }

    public final boolean addAll(@NotNull T[] tArr) {
        int length = tArr.length;
        if (length == 0) {
            return false;
        }
        int i10 = this.size + length;
        if (this.content.length < i10) {
            resizeStorage(i10);
        }
        System.arraycopy(tArr, 0, this.content, this.size, length);
        this.size += length;
        return true;
    }

    public final boolean addAll(int i10, @NotNull Collection<? extends T> collection) {
        int i11 = 0;
        if (collection.isEmpty()) {
            return false;
        }
        int size = collection.size();
        int i12 = this.size + size;
        if (this.content.length < i12) {
            resizeStorage(i12);
        }
        T[] tArr = this.content;
        int i13 = this.size;
        if (i10 != i13) {
            System.arraycopy(tArr, i10, tArr, i10 + size, i13 - i10);
        }
        for (T t10 : collection) {
            int i14 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.y();
            }
            tArr[i11 + i10] = t10;
            i11 = i14;
        }
        this.size += size;
        return true;
    }

    public final boolean addAll(@NotNull Collection<? extends T> collection) {
        return addAll(this.size, collection);
    }
}
