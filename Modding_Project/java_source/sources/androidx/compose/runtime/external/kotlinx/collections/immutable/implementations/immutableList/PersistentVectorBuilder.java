package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.h;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentVectorBuilder.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPersistentVectorBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentVectorBuilder.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder\n+ 2 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,995:1\n34#2,4:996\n34#2,4:1000\n34#2,4:1005\n34#2,4:1009\n34#2,4:1013\n1#3:1004\n*S KotlinDebug\n*F\n+ 1 PersistentVectorBuilder.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder\n*L\n242#1:996,4\n243#1:1000,4\n480#1:1005,4\n746#1:1009,4\n769#1:1013,4\n*E\n"})
/* loaded from: classes.dex */
public final class PersistentVectorBuilder<E> extends h<E> implements PersistentList.Builder<E> {
    public static final int $stable = 8;
    @NotNull
    private MutabilityOwnership ownership = new MutabilityOwnership();
    @Nullable
    private Object[] root;
    private int rootShift;
    private int size;
    @NotNull
    private Object[] tail;
    @NotNull
    private PersistentList<? extends E> vector;
    @Nullable
    private Object[] vectorRoot;
    @NotNull
    private Object[] vectorTail;

    public PersistentVectorBuilder(@NotNull PersistentList<? extends E> persistentList, @Nullable Object[] objArr, @NotNull Object[] objArr2, int i10) {
        this.vector = persistentList;
        this.vectorRoot = objArr;
        this.vectorTail = objArr2;
        this.rootShift = i10;
        this.root = this.vectorRoot;
        this.tail = this.vectorTail;
        this.size = this.vector.size();
    }

    private final Object[] bufferFor(int i10) {
        if (rootSize() <= i10) {
            return this.tail;
        }
        Object[] objArr = this.root;
        Intrinsics.checkNotNull(objArr);
        for (int i11 = this.rootShift; i11 > 0; i11 -= 5) {
            Object[] objArr2 = objArr[UtilsKt.indexSegment(i10, i11)];
            Intrinsics.checkNotNull(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr = objArr2;
        }
        return objArr;
    }

    private final Object[] copyToBuffer(Object[] objArr, int i10, Iterator<? extends Object> it) {
        while (i10 < 32 && it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return objArr;
    }

    private final Object[] insertIntoRoot(Object[] objArr, int i10, int i11, Object obj, ObjectRef objectRef) {
        Object obj2;
        int indexSegment = UtilsKt.indexSegment(i11, i10);
        if (i10 == 0) {
            objectRef.setValue(objArr[31]);
            Object[] n10 = n.n(objArr, makeMutable(objArr), indexSegment + 1, indexSegment, 31);
            n10[indexSegment] = obj;
            return n10;
        }
        Object[] makeMutable = makeMutable(objArr);
        int i12 = i10 - 5;
        Object obj3 = makeMutable[indexSegment];
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        makeMutable[indexSegment] = insertIntoRoot((Object[]) obj3, i12, i11, obj, objectRef);
        while (true) {
            indexSegment++;
            if (indexSegment >= 32 || (obj2 = makeMutable[indexSegment]) == null) {
                break;
            }
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            makeMutable[indexSegment] = insertIntoRoot((Object[]) obj2, i12, 0, objectRef.getValue(), objectRef);
        }
        return makeMutable;
    }

    private final void insertIntoTail(Object[] objArr, int i10, E e10) {
        int tailSize = tailSize();
        Object[] makeMutable = makeMutable(this.tail);
        if (tailSize < 32) {
            n.n(this.tail, makeMutable, i10 + 1, i10, tailSize);
            makeMutable[i10] = e10;
            this.root = objArr;
            this.tail = makeMutable;
            this.size = size() + 1;
            return;
        }
        Object[] objArr2 = this.tail;
        Object obj = objArr2[31];
        n.n(objArr2, makeMutable, i10 + 1, i10, 31);
        makeMutable[i10] = e10;
        pushFilledTail(objArr, makeMutable, mutableBufferWith(obj));
    }

    private final boolean isMutable(Object[] objArr) {
        if (objArr.length == 33 && objArr[32] == this.ownership) {
            return true;
        }
        return false;
    }

    private final ListIterator<Object[]> leafBufferIterator(int i10) {
        Object[] objArr = this.root;
        if (objArr != null) {
            int rootSize = rootSize() >> 5;
            ListImplementation.checkPositionIndex$runtime(i10, rootSize);
            int i11 = this.rootShift;
            if (i11 == 0) {
                return new SingleElementListIterator(objArr, i10);
            }
            return new TrieIterator(objArr, i10, rootSize, i11 / 5);
        }
        throw new IllegalStateException("Invalid root");
    }

    private final Object[] makeMutable(Object[] objArr) {
        if (objArr == null) {
            return mutableBuffer();
        }
        if (isMutable(objArr)) {
            return objArr;
        }
        return n.u(objArr, mutableBuffer(), 0, 0, e.j(objArr.length, 32), 6, null);
    }

    private final Object[] makeMutableShiftingRight(Object[] objArr, int i10) {
        if (isMutable(objArr)) {
            return n.n(objArr, objArr, i10, 0, 32 - i10);
        }
        return n.n(objArr, mutableBuffer(), i10, 0, 32 - i10);
    }

    private final Object[] mutableBuffer() {
        Object[] objArr = new Object[33];
        objArr[32] = this.ownership;
        return objArr;
    }

    private final Object[] mutableBufferWith(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.ownership;
        return objArr;
    }

    private final Object[] nullifyAfter(Object[] objArr, int i10, int i11) {
        boolean z10;
        if (i11 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("shift should be positive");
        }
        if (i11 == 0) {
            return objArr;
        }
        int indexSegment = UtilsKt.indexSegment(i10, i11);
        Object obj = objArr[indexSegment];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object nullifyAfter = nullifyAfter((Object[]) obj, i10, i11 - 5);
        if (indexSegment < 31) {
            int i12 = indexSegment + 1;
            if (objArr[i12] != null) {
                if (isMutable(objArr)) {
                    n.C(objArr, null, i12, 32);
                }
                objArr = n.n(objArr, mutableBuffer(), 0, 0, i12);
            }
        }
        if (nullifyAfter != objArr[indexSegment]) {
            Object[] makeMutable = makeMutable(objArr);
            makeMutable[indexSegment] = nullifyAfter;
            return makeMutable;
        }
        return objArr;
    }

    private final Object[] pullLastBuffer(Object[] objArr, int i10, int i11, ObjectRef objectRef) {
        Object[] pullLastBuffer;
        int indexSegment = UtilsKt.indexSegment(i11 - 1, i10);
        if (i10 == 5) {
            objectRef.setValue(objArr[indexSegment]);
            pullLastBuffer = null;
        } else {
            Object obj = objArr[indexSegment];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            pullLastBuffer = pullLastBuffer((Object[]) obj, i10 - 5, i11, objectRef);
        }
        if (pullLastBuffer == null && indexSegment == 0) {
            return null;
        }
        Object[] makeMutable = makeMutable(objArr);
        makeMutable[indexSegment] = pullLastBuffer;
        return makeMutable;
    }

    private final void pullLastBufferFromRoot(Object[] objArr, int i10, int i11) {
        if (i11 == 0) {
            this.root = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.tail = objArr;
            this.size = i10;
            this.rootShift = i11;
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Intrinsics.checkNotNull(objArr);
        Object[] pullLastBuffer = pullLastBuffer(objArr, i11, i10, objectRef);
        Intrinsics.checkNotNull(pullLastBuffer);
        Object value = objectRef.getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        this.tail = (Object[]) value;
        this.size = i10;
        if (pullLastBuffer[1] == null) {
            this.root = (Object[]) pullLastBuffer[0];
            this.rootShift = i11 - 5;
            return;
        }
        this.root = pullLastBuffer;
        this.rootShift = i11;
    }

    private final Object[] pushBuffers(Object[] objArr, int i10, int i11, Iterator<Object[]> it) {
        boolean z10;
        if (!it.hasNext()) {
            PreconditionsKt.throwIllegalArgumentException("invalid buffersIterator");
        }
        if (i11 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("negative shift");
        }
        if (i11 == 0) {
            return it.next();
        }
        Object[] makeMutable = makeMutable(objArr);
        int indexSegment = UtilsKt.indexSegment(i10, i11);
        int i12 = i11 - 5;
        makeMutable[indexSegment] = pushBuffers((Object[]) makeMutable[indexSegment], i10, i12, it);
        while (true) {
            indexSegment++;
            if (indexSegment >= 32 || !it.hasNext()) {
                break;
            }
            makeMutable[indexSegment] = pushBuffers((Object[]) makeMutable[indexSegment], 0, i12, it);
        }
        return makeMutable;
    }

    private final Object[] pushBuffersIncreasingHeightIfNeeded(Object[] objArr, int i10, Object[][] objArr2) {
        Object[] makeMutable;
        Iterator<Object[]> it = ArrayIteratorKt.iterator(objArr2);
        int i11 = i10 >> 5;
        int i12 = this.rootShift;
        if (i11 < (1 << i12)) {
            makeMutable = pushBuffers(objArr, i10, i12, it);
        } else {
            makeMutable = makeMutable(objArr);
        }
        while (it.hasNext()) {
            this.rootShift += 5;
            makeMutable = mutableBufferWith(makeMutable);
            int i13 = this.rootShift;
            pushBuffers(makeMutable, 1 << i13, i13, it);
        }
        return makeMutable;
    }

    private final void pushFilledTail(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int size = size() >> 5;
        int i10 = this.rootShift;
        if (size > (1 << i10)) {
            this.root = pushTail(mutableBufferWith(objArr), objArr2, this.rootShift + 5);
            this.tail = objArr3;
            this.rootShift += 5;
            this.size = size() + 1;
        } else if (objArr == null) {
            this.root = objArr2;
            this.tail = objArr3;
            this.size = size() + 1;
        } else {
            this.root = pushTail(objArr, objArr2, i10);
            this.tail = objArr3;
            this.size = size() + 1;
        }
    }

    private final Object[] pushTail(Object[] objArr, Object[] objArr2, int i10) {
        int indexSegment = UtilsKt.indexSegment(size() - 1, i10);
        Object[] makeMutable = makeMutable(objArr);
        if (i10 == 5) {
            makeMutable[indexSegment] = objArr2;
        } else {
            makeMutable[indexSegment] = pushTail((Object[]) makeMutable[indexSegment], objArr2, i10 - 5);
        }
        return makeMutable;
    }

    private final int recyclableRemoveAll(Function1<? super E, Boolean> function1, Object[] objArr, int i10, int i11, ObjectRef objectRef, List<Object[]> list, List<Object[]> list2) {
        Object[] mutableBuffer;
        if (isMutable(objArr)) {
            list.add(objArr);
        }
        Object value = objectRef.getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr2 = (Object[]) value;
        Object[] objArr3 = objArr2;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (!function1.invoke(obj).booleanValue()) {
                if (i11 == 32) {
                    if (!list.isEmpty()) {
                        mutableBuffer = list.remove(list.size() - 1);
                    } else {
                        mutableBuffer = mutableBuffer();
                    }
                    objArr3 = mutableBuffer;
                    i11 = 0;
                }
                objArr3[i11] = obj;
                i11++;
            }
        }
        objectRef.setValue(objArr3);
        if (objArr2 != objectRef.getValue()) {
            list2.add(objArr2);
        }
        return i11;
    }

    private final int removeAllFromTail(Function1<? super E, Boolean> function1, int i10, ObjectRef objectRef) {
        boolean z10;
        int removeAll = removeAll(function1, this.tail, i10, objectRef);
        if (removeAll == i10) {
            if (objectRef.getValue() == this.tail) {
                z10 = true;
            } else {
                z10 = false;
            }
            CommonFunctionsKt.m1490assert(z10);
            return i10;
        }
        Object value = objectRef.getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr = (Object[]) value;
        n.C(objArr, null, removeAll, i10);
        this.tail = objArr;
        this.size = size() - (i10 - removeAll);
        return removeAll;
    }

    private final Object[] removeFromRootAt(Object[] objArr, int i10, int i11, ObjectRef objectRef) {
        int indexSegment = UtilsKt.indexSegment(i11, i10);
        int i12 = 31;
        if (i10 == 0) {
            Object obj = objArr[indexSegment];
            Object[] n10 = n.n(objArr, makeMutable(objArr), indexSegment, indexSegment + 1, 32);
            n10[31] = objectRef.getValue();
            objectRef.setValue(obj);
            return n10;
        }
        if (objArr[31] == null) {
            i12 = UtilsKt.indexSegment(rootSize() - 1, i10);
        }
        Object[] makeMutable = makeMutable(objArr);
        int i13 = i10 - 5;
        int i14 = indexSegment + 1;
        if (i14 <= i12) {
            while (true) {
                Object obj2 = makeMutable[i12];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                makeMutable[i12] = removeFromRootAt((Object[]) obj2, i13, 0, objectRef);
                if (i12 == i14) {
                    break;
                }
                i12--;
            }
        }
        Object obj3 = makeMutable[indexSegment];
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        makeMutable[indexSegment] = removeFromRootAt((Object[]) obj3, i13, i11, objectRef);
        return makeMutable;
    }

    private final Object removeFromTailAt(Object[] objArr, int i10, int i11, int i12) {
        boolean z10;
        int size = size() - i10;
        if (i12 < size) {
            z10 = true;
        } else {
            z10 = false;
        }
        CommonFunctionsKt.m1490assert(z10);
        if (size == 1) {
            Object obj = this.tail[0];
            pullLastBufferFromRoot(objArr, i10, i11);
            return obj;
        }
        Object[] objArr2 = this.tail;
        Object obj2 = objArr2[i12];
        Object[] n10 = n.n(objArr2, makeMutable(objArr2), i12, i12 + 1, size);
        n10[size - 1] = null;
        this.root = objArr;
        this.tail = n10;
        this.size = (i10 + size) - 1;
        this.rootShift = i11;
        return obj2;
    }

    private final Object[] retainFirst(Object[] objArr, int i10) {
        boolean z10;
        if ((i10 & 31) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("invalid size");
        }
        if (i10 == 0) {
            this.rootShift = 0;
            return null;
        }
        int i11 = i10 - 1;
        while (true) {
            int i12 = this.rootShift;
            if ((i11 >> i12) == 0) {
                this.rootShift = i12 - 5;
                Object[] objArr2 = objArr[0];
                Intrinsics.checkNotNull(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                objArr = objArr2;
            } else {
                return nullifyAfter(objArr, i11, i12);
            }
        }
    }

    private final int rootSize() {
        if (size() <= 32) {
            return 0;
        }
        return UtilsKt.rootSize(size());
    }

    private final Object[] setInRoot(Object[] objArr, int i10, int i11, E e10, ObjectRef objectRef) {
        int indexSegment = UtilsKt.indexSegment(i11, i10);
        Object[] makeMutable = makeMutable(objArr);
        if (i10 == 0) {
            if (makeMutable != objArr) {
                ((AbstractList) this).modCount++;
            }
            objectRef.setValue(makeMutable[indexSegment]);
            makeMutable[indexSegment] = e10;
            return makeMutable;
        }
        Object obj = makeMutable[indexSegment];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        makeMutable[indexSegment] = setInRoot((Object[]) obj, i10 - 5, i11, e10, objectRef);
        return makeMutable;
    }

    private final Object[] shiftLeafBuffers(int i10, int i11, Object[][] objArr, int i12, Object[] objArr2) {
        if (this.root != null) {
            ListIterator<Object[]> leafBufferIterator = leafBufferIterator(rootSize() >> 5);
            while (leafBufferIterator.previousIndex() != i10) {
                Object[] previous = leafBufferIterator.previous();
                n.n(previous, objArr2, 0, 32 - i11, 32);
                objArr2 = makeMutableShiftingRight(previous, i11);
                i12--;
                objArr[i12] = objArr2;
            }
            return leafBufferIterator.previous();
        }
        throw new IllegalStateException("root is null");
    }

    private final void splitToBuffers(Collection<? extends E> collection, int i10, Object[] objArr, int i11, Object[][] objArr2, int i12, Object[] objArr3) {
        boolean z10;
        Object[] mutableBuffer;
        if (i12 >= 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("requires at least one nullBuffer");
        }
        Object[] makeMutable = makeMutable(objArr);
        objArr2[0] = makeMutable;
        int i13 = i10 & 31;
        int size = ((i10 + collection.size()) - 1) & 31;
        int i14 = (i11 - i13) + size;
        if (i14 < 32) {
            n.n(makeMutable, objArr3, size + 1, i13, i11);
        } else {
            int i15 = i14 - 31;
            if (i12 == 1) {
                mutableBuffer = makeMutable;
            } else {
                mutableBuffer = mutableBuffer();
                i12--;
                objArr2[i12] = mutableBuffer;
            }
            int i16 = i11 - i15;
            n.n(makeMutable, objArr3, 0, i16, i11);
            n.n(makeMutable, mutableBuffer, size + 1, i13, i16);
            objArr3 = mutableBuffer;
        }
        Iterator<? extends E> it = collection.iterator();
        copyToBuffer(makeMutable, i13, it);
        for (int i17 = 1; i17 < i12; i17++) {
            objArr2[i17] = copyToBuffer(mutableBuffer(), 0, it);
        }
        copyToBuffer(objArr3, 0, it);
    }

    private final int tailSize(int i10) {
        return i10 <= 32 ? i10 : i10 - UtilsKt.rootSize(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e10) {
        ((AbstractList) this).modCount++;
        int tailSize = tailSize();
        if (tailSize < 32) {
            Object[] makeMutable = makeMutable(this.tail);
            makeMutable[tailSize] = e10;
            this.tail = makeMutable;
            this.size = size() + 1;
        } else {
            pushFilledTail(this.root, this.tail, mutableBufferWith(e10));
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int tailSize = tailSize();
        Iterator<? extends E> it = collection.iterator();
        if (32 - tailSize >= collection.size()) {
            this.tail = copyToBuffer(makeMutable(this.tail), tailSize, it);
            this.size = size() + collection.size();
        } else {
            int size = ((collection.size() + tailSize) - 1) / 32;
            Object[][] objArr = new Object[size];
            objArr[0] = copyToBuffer(makeMutable(this.tail), tailSize, it);
            for (int i10 = 1; i10 < size; i10++) {
                objArr[i10] = copyToBuffer(mutableBuffer(), 0, it);
            }
            this.root = pushBuffersIncreasingHeightIfNeeded(this.root, rootSize(), objArr);
            this.tail = copyToBuffer(mutableBuffer(), 0, it);
            this.size = size() + collection.size();
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        ListImplementation.checkElementIndex$runtime(i10, size());
        return (E) bufferFor(i10)[i10 & 31];
    }

    public final int getModCount$runtime() {
        return ((AbstractList) this).modCount;
    }

    @Nullable
    public final Object[] getRoot$runtime() {
        return this.root;
    }

    public final int getRootShift$runtime() {
        return this.rootShift;
    }

    @Override // kotlin.collections.h
    public int getSize() {
        return this.size;
    }

    @NotNull
    public final Object[] getTail$runtime() {
        return this.tail;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull final Collection<?> collection) {
        return removeAllWithPredicate(new Function1() { // from class: k.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean contains;
                contains = collection.contains(obj);
                return Boolean.valueOf(contains);
            }
        });
    }

    public final boolean removeAllWithPredicate(@NotNull Function1<? super E, Boolean> function1) {
        boolean removeAll = removeAll(function1);
        if (removeAll) {
            ((AbstractList) this).modCount++;
        }
        return removeAll;
    }

    @Override // kotlin.collections.h
    public E removeAt(int i10) {
        ListImplementation.checkElementIndex$runtime(i10, size());
        ((AbstractList) this).modCount++;
        int rootSize = rootSize();
        if (i10 >= rootSize) {
            return (E) removeFromTailAt(this.root, rootSize, this.rootShift, i10 - rootSize);
        }
        ObjectRef objectRef = new ObjectRef(this.tail[0]);
        Object[] objArr = this.root;
        Intrinsics.checkNotNull(objArr);
        removeFromTailAt(removeFromRootAt(objArr, this.rootShift, i10, objectRef), rootSize, this.rootShift, 0);
        return (E) objectRef.getValue();
    }

    @Override // kotlin.collections.h, java.util.AbstractList, java.util.List
    public E set(int i10, E e10) {
        ListImplementation.checkElementIndex$runtime(i10, size());
        if (rootSize() <= i10) {
            Object[] makeMutable = makeMutable(this.tail);
            if (makeMutable != this.tail) {
                ((AbstractList) this).modCount++;
            }
            int i11 = i10 & 31;
            E e11 = (E) makeMutable[i11];
            makeMutable[i11] = e10;
            this.tail = makeMutable;
            return e11;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.root;
        Intrinsics.checkNotNull(objArr);
        this.root = setInRoot(objArr, this.rootShift, i10, e10, objectRef);
        return (E) objectRef.getValue();
    }

    public final void setRootShift$runtime(int i10) {
        this.rootShift = i10;
    }

    private final boolean removeAll(Function1<? super E, Boolean> function1) {
        Object[] pushBuffers;
        int tailSize = tailSize();
        ObjectRef objectRef = new ObjectRef(null);
        if (this.root == null) {
            return removeAllFromTail(function1, tailSize, objectRef) != tailSize;
        }
        ListIterator<Object[]> leafBufferIterator = leafBufferIterator(0);
        int i10 = 32;
        while (i10 == 32 && leafBufferIterator.hasNext()) {
            i10 = removeAll(function1, leafBufferIterator.next(), 32, objectRef);
        }
        if (i10 == 32) {
            CommonFunctionsKt.m1490assert(!leafBufferIterator.hasNext());
            int removeAllFromTail = removeAllFromTail(function1, tailSize, objectRef);
            if (removeAllFromTail == 0) {
                pullLastBufferFromRoot(this.root, size(), this.rootShift);
            }
            return removeAllFromTail != tailSize;
        }
        int previousIndex = leafBufferIterator.previousIndex() << 5;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i11 = i10;
        while (leafBufferIterator.hasNext()) {
            i11 = recyclableRemoveAll(function1, leafBufferIterator.next(), 32, i11, objectRef, arrayList2, arrayList);
            previousIndex = previousIndex;
        }
        int i12 = previousIndex;
        int recyclableRemoveAll = recyclableRemoveAll(function1, this.tail, tailSize, i11, objectRef, arrayList2, arrayList);
        Object value = objectRef.getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr = (Object[]) value;
        n.C(objArr, null, recyclableRemoveAll, 32);
        if (arrayList.isEmpty()) {
            pushBuffers = this.root;
            Intrinsics.checkNotNull(pushBuffers);
        } else {
            pushBuffers = pushBuffers(this.root, i12, this.rootShift, arrayList.iterator());
        }
        int size = i12 + (arrayList.size() << 5);
        this.root = retainFirst(pushBuffers, size);
        this.tail = objArr;
        this.size = size + recyclableRemoveAll;
        return true;
    }

    private final int tailSize() {
        return tailSize(size());
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection.Builder
    @NotNull
    public PersistentList<E> build() {
        PersistentVector persistentVector;
        if (this.root == this.vectorRoot && this.tail == this.vectorTail) {
            persistentVector = this.vector;
        } else {
            this.ownership = new MutabilityOwnership();
            Object[] objArr = this.root;
            this.vectorRoot = objArr;
            Object[] objArr2 = this.tail;
            this.vectorTail = objArr2;
            if (objArr == null) {
                if (objArr2.length == 0) {
                    persistentVector = UtilsKt.persistentVectorOf();
                } else {
                    Object[] copyOf = Arrays.copyOf(this.tail, size());
                    Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                    persistentVector = new SmallPersistentVector(copyOf);
                }
            } else {
                Object[] objArr3 = this.root;
                Intrinsics.checkNotNull(objArr3);
                persistentVector = new PersistentVector(objArr3, this.tail, size(), this.rootShift);
            }
        }
        this.vector = persistentVector;
        return (PersistentList<E>) persistentVector;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        ListImplementation.checkPositionIndex$runtime(i10, size());
        return new PersistentVectorMutableIterator(this, i10);
    }

    private final void insertIntoRoot(Collection<? extends E> collection, int i10, int i11, Object[][] objArr, int i12, Object[] objArr2) {
        if (this.root != null) {
            int i13 = i10 >> 5;
            Object[] shiftLeafBuffers = shiftLeafBuffers(i13, i11, objArr, i12, objArr2);
            int rootSize = i12 - (((rootSize() >> 5) - 1) - i13);
            if (rootSize < i12) {
                objArr2 = objArr[rootSize];
                Intrinsics.checkNotNull(objArr2);
            }
            splitToBuffers(collection, i10, shiftLeafBuffers, 32, objArr, rootSize, objArr2);
            return;
        }
        throw new IllegalStateException("root is null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.h, java.util.AbstractList, java.util.List
    public void add(int i10, E e10) {
        ListImplementation.checkPositionIndex$runtime(i10, size());
        if (i10 == size()) {
            add(e10);
            return;
        }
        ((AbstractList) this).modCount++;
        int rootSize = rootSize();
        if (i10 >= rootSize) {
            insertIntoTail(this.root, i10 - rootSize, e10);
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.root;
        Intrinsics.checkNotNull(objArr);
        insertIntoTail(insertIntoRoot(objArr, this.rootShift, i10, e10, objectRef), 0, objectRef.getValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i10, @NotNull Collection<? extends E> collection) {
        Object[] n10;
        ListImplementation.checkPositionIndex$runtime(i10, size());
        if (i10 == size()) {
            return addAll(collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i11 = (i10 >> 5) << 5;
        int size = (((size() - i11) + collection.size()) - 1) / 32;
        if (size == 0) {
            CommonFunctionsKt.m1490assert(i10 >= rootSize());
            int i12 = i10 & 31;
            Object[] objArr = this.tail;
            Object[] n11 = n.n(objArr, makeMutable(objArr), (((i10 + collection.size()) - 1) & 31) + 1, i12, tailSize());
            copyToBuffer(n11, i12, collection.iterator());
            this.tail = n11;
            this.size = size() + collection.size();
            return true;
        }
        Object[][] objArr2 = new Object[size];
        int tailSize = tailSize();
        int tailSize2 = tailSize(size() + collection.size());
        if (i10 >= rootSize()) {
            n10 = mutableBuffer();
            splitToBuffers(collection, i10, this.tail, tailSize, objArr2, size, n10);
        } else if (tailSize2 > tailSize) {
            int i13 = tailSize2 - tailSize;
            n10 = makeMutableShiftingRight(this.tail, i13);
            insertIntoRoot(collection, i10, i13, objArr2, size, n10);
        } else {
            int i14 = tailSize - tailSize2;
            n10 = n.n(this.tail, mutableBuffer(), 0, i14, tailSize);
            int i15 = 32 - i14;
            Object[] makeMutableShiftingRight = makeMutableShiftingRight(this.tail, i15);
            int i16 = size - 1;
            objArr2[i16] = makeMutableShiftingRight;
            insertIntoRoot(collection, i10, i15, objArr2, i16, makeMutableShiftingRight);
        }
        this.root = pushBuffersIncreasingHeightIfNeeded(this.root, i11, objArr2);
        this.tail = n10;
        this.size = size() + collection.size();
        return true;
    }

    private final int removeAll(Function1<? super E, Boolean> function1, Object[] objArr, int i10, ObjectRef objectRef) {
        Object[] objArr2 = objArr;
        int i11 = i10;
        boolean z10 = false;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (function1.invoke(obj).booleanValue()) {
                if (!z10) {
                    objArr2 = makeMutable(objArr);
                    z10 = true;
                    i11 = i12;
                }
            } else if (z10) {
                objArr2[i11] = obj;
                i11++;
            }
        }
        objectRef.setValue(objArr2);
        return i11;
    }
}
