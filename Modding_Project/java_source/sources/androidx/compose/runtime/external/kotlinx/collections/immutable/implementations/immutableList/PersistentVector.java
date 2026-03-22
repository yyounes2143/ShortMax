package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Arrays;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentVector.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPersistentVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentVector.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVector\n+ 2 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,328:1\n34#2,4:329\n1#3:333\n*S KotlinDebug\n*F\n+ 1 PersistentVector.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVector\n*L\n30#1:329,4\n*E\n"})
/* loaded from: classes.dex */
public final class PersistentVector<E> extends AbstractPersistentList<E> implements PersistentList<E> {
    public static final int $stable = 8;
    @NotNull
    private final Object[] root;
    private final int rootShift;
    private final int size;
    @NotNull
    private final Object[] tail;

    public PersistentVector(@NotNull Object[] objArr, @NotNull Object[] objArr2, int i10, int i11) {
        boolean z10;
        this.root = objArr;
        this.tail = objArr2;
        this.size = i10;
        this.rootShift = i11;
        if (size() > 32) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("Trie-based persistent vector should have at least 33 elements, got " + size());
        }
        CommonFunctionsKt.m1490assert(size() - UtilsKt.rootSize(size()) <= e.j(objArr2.length, 32));
    }

    private final Object[] bufferFor(int i10) {
        if (rootSize() <= i10) {
            return this.tail;
        }
        Object[] objArr = this.root;
        for (int i11 = this.rootShift; i11 > 0; i11 -= 5) {
            Object[] objArr2 = objArr[UtilsKt.indexSegment(i10, i11)];
            Intrinsics.checkNotNull(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr = objArr2;
        }
        return objArr;
    }

    private final Object[] insertIntoRoot(Object[] objArr, int i10, int i11, Object obj, ObjectRef objectRef) {
        Object[] copyOf;
        int indexSegment = UtilsKt.indexSegment(i11, i10);
        if (i10 == 0) {
            if (indexSegment == 0) {
                copyOf = new Object[32];
            } else {
                copyOf = Arrays.copyOf(objArr, 32);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            }
            n.n(objArr, copyOf, indexSegment + 1, indexSegment, 31);
            objectRef.setValue(objArr[31]);
            copyOf[indexSegment] = obj;
            return copyOf;
        }
        Object[] copyOf2 = Arrays.copyOf(objArr, 32);
        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
        int i12 = i10 - 5;
        Object obj2 = objArr[indexSegment];
        String str = "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>";
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        copyOf2[indexSegment] = insertIntoRoot((Object[]) obj2, i12, i11, obj, objectRef);
        int i13 = indexSegment + 1;
        while (i13 < 32 && copyOf2[i13] != null) {
            Object obj3 = objArr[i13];
            Intrinsics.checkNotNull(obj3, str);
            Object[] objArr2 = copyOf2;
            objArr2[i13] = insertIntoRoot((Object[]) obj3, i12, 0, objectRef.getValue(), objectRef);
            i13++;
            copyOf2 = objArr2;
            str = str;
        }
        return copyOf2;
    }

    private final PersistentVector<E> insertIntoTail(Object[] objArr, int i10, Object obj) {
        int size = size() - rootSize();
        Object[] copyOf = Arrays.copyOf(this.tail, 32);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        if (size < 32) {
            n.n(this.tail, copyOf, i10 + 1, i10, size);
            copyOf[i10] = obj;
            return new PersistentVector<>(objArr, copyOf, size() + 1, this.rootShift);
        }
        Object[] objArr2 = this.tail;
        Object obj2 = objArr2[31];
        n.n(objArr2, copyOf, i10 + 1, i10, size - 1);
        copyOf[i10] = obj;
        return pushFilledTail(objArr, copyOf, UtilsKt.presizedBufferWith(obj2));
    }

    private final Object[] pullLastBuffer(Object[] objArr, int i10, int i11, ObjectRef objectRef) {
        Object[] pullLastBuffer;
        int indexSegment = UtilsKt.indexSegment(i11, i10);
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
        Object[] copyOf = Arrays.copyOf(objArr, 32);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        copyOf[indexSegment] = pullLastBuffer;
        return copyOf;
    }

    private final PersistentList<E> pullLastBufferFromRoot(Object[] objArr, int i10, int i11) {
        if (i11 == 0) {
            if (objArr.length == 33) {
                objArr = Arrays.copyOf(objArr, 32);
                Intrinsics.checkNotNullExpressionValue(objArr, "copyOf(...)");
            }
            return new SmallPersistentVector(objArr);
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] pullLastBuffer = pullLastBuffer(objArr, i11, i10 - 1, objectRef);
        Intrinsics.checkNotNull(pullLastBuffer);
        Object value = objectRef.getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr2 = (Object[]) value;
        if (pullLastBuffer[1] == null) {
            Object obj = pullLastBuffer[0];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            return new PersistentVector((Object[]) obj, objArr2, i10, i11 - 5);
        }
        return new PersistentVector(pullLastBuffer, objArr2, i10, i11);
    }

    private final PersistentVector<E> pushFilledTail(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int size = size() >> 5;
        int i10 = this.rootShift;
        if (size > (1 << i10)) {
            Object[] presizedBufferWith = UtilsKt.presizedBufferWith(objArr);
            int i11 = this.rootShift + 5;
            return new PersistentVector<>(pushTail(presizedBufferWith, i11, objArr2), objArr3, size() + 1, i11);
        }
        return new PersistentVector<>(pushTail(objArr, i10, objArr2), objArr3, size() + 1, this.rootShift);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r4 == null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object[] pushTail(java.lang.Object[] r4, int r5, java.lang.Object[] r6) {
        /*
            r3 = this;
            int r0 = r3.size()
            int r0 = r0 + (-1)
            int r0 = androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.UtilsKt.indexSegment(r0, r5)
            r1 = 32
            if (r4 == 0) goto L19
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r1)
            java.lang.String r2 = "copyOf(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r2)
            if (r4 != 0) goto L1b
        L19:
            java.lang.Object[] r4 = new java.lang.Object[r1]
        L1b:
            r1 = 5
            if (r5 != r1) goto L21
            r4[r0] = r6
            goto L2c
        L21:
            r2 = r4[r0]
            java.lang.Object[] r2 = (java.lang.Object[]) r2
            int r5 = r5 - r1
            java.lang.Object[] r5 = r3.pushTail(r2, r5, r6)
            r4[r0] = r5
        L2c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVector.pushTail(java.lang.Object[], int, java.lang.Object[]):java.lang.Object[]");
    }

    private final Object[] removeFromRootAt(Object[] objArr, int i10, int i11, ObjectRef objectRef) {
        Object[] copyOf;
        int indexSegment = UtilsKt.indexSegment(i11, i10);
        int i12 = 31;
        if (i10 == 0) {
            if (indexSegment == 0) {
                copyOf = new Object[32];
            } else {
                copyOf = Arrays.copyOf(objArr, 32);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            }
            n.n(objArr, copyOf, indexSegment, indexSegment + 1, 32);
            copyOf[31] = objectRef.getValue();
            objectRef.setValue(objArr[indexSegment]);
            return copyOf;
        }
        if (objArr[31] == null) {
            i12 = UtilsKt.indexSegment(rootSize() - 1, i10);
        }
        Object[] copyOf2 = Arrays.copyOf(objArr, 32);
        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
        int i13 = i10 - 5;
        int i14 = indexSegment + 1;
        if (i14 <= i12) {
            while (true) {
                Object obj = copyOf2[i12];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                copyOf2[i12] = removeFromRootAt((Object[]) obj, i13, 0, objectRef);
                if (i12 == i14) {
                    break;
                }
                i12--;
            }
        }
        Object obj2 = copyOf2[indexSegment];
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        copyOf2[indexSegment] = removeFromRootAt((Object[]) obj2, i13, i11, objectRef);
        return copyOf2;
    }

    private final PersistentList<E> removeFromTailAt(Object[] objArr, int i10, int i11, int i12) {
        boolean z10;
        int size = size() - i10;
        if (i12 < size) {
            z10 = true;
        } else {
            z10 = false;
        }
        CommonFunctionsKt.m1490assert(z10);
        if (size == 1) {
            return pullLastBufferFromRoot(objArr, i10, i11);
        }
        Object[] copyOf = Arrays.copyOf(this.tail, 32);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        int i13 = size - 1;
        if (i12 < i13) {
            n.n(this.tail, copyOf, i12, i12 + 1, size);
        }
        copyOf[i13] = null;
        return new PersistentVector(objArr, copyOf, (i10 + size) - 1, i11);
    }

    private final int rootSize() {
        return UtilsKt.rootSize(size());
    }

    private final Object[] setInRoot(Object[] objArr, int i10, int i11, Object obj) {
        int indexSegment = UtilsKt.indexSegment(i11, i10);
        Object[] copyOf = Arrays.copyOf(objArr, 32);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        if (i10 == 0) {
            copyOf[indexSegment] = obj;
        } else {
            Object obj2 = copyOf[indexSegment];
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            copyOf[indexSegment] = setInRoot((Object[]) obj2, i10 - 5, i11, obj);
        }
        return copyOf;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    public /* bridge */ /* synthetic */ PersistentCollection add(Object obj) {
        return add((PersistentVector<E>) obj);
    }

    @Override // kotlin.collections.d, java.util.List
    public E get(int i10) {
        ListImplementation.checkElementIndex$runtime(i10, size());
        return (E) bufferFor(i10)[i10 & 31];
    }

    @Override // kotlin.collections.d, kotlin.collections.b
    public int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.d, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        ListImplementation.checkPositionIndex$runtime(i10, size());
        return new PersistentVectorIterator(this.root, this.tail, i10, size(), (this.rootShift / 5) + 1);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> removeAt(int i10) {
        ListImplementation.checkElementIndex$runtime(i10, size());
        int rootSize = rootSize();
        if (i10 >= rootSize) {
            return removeFromTailAt(this.root, rootSize, this.rootShift, i10 - rootSize);
        }
        return removeFromTailAt(removeFromRootAt(this.root, this.rootShift, i10, new ObjectRef(this.tail[0])), rootSize, this.rootShift, 0);
    }

    @Override // kotlin.collections.d, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> set(int i10, E e10) {
        ListImplementation.checkElementIndex$runtime(i10, size());
        if (rootSize() <= i10) {
            Object[] copyOf = Arrays.copyOf(this.tail, 32);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            copyOf[i10 & 31] = e10;
            return new PersistentVector(this.root, copyOf, size(), this.rootShift);
        }
        return new PersistentVector(setInRoot(this.root, this.rootShift, i10, e10), this.tail, size(), this.rootShift);
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> add(E e10) {
        int size = size() - rootSize();
        if (size < 32) {
            Object[] copyOf = Arrays.copyOf(this.tail, 32);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            copyOf[size] = e10;
            return new PersistentVector(this.root, copyOf, size() + 1, this.rootShift);
        }
        return pushFilledTail(this.root, this.tail, UtilsKt.presizedBufferWith(e10));
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> removeAll(@NotNull Function1<? super E, Boolean> function1) {
        PersistentVectorBuilder<E> builder = builder();
        builder.removeAllWithPredicate(function1);
        return builder.build();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentVectorBuilder<E> builder() {
        return new PersistentVectorBuilder<>(this, this.root, this.tail, this.rootShift);
    }

    @Override // java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> add(int i10, E e10) {
        ListImplementation.checkPositionIndex$runtime(i10, size());
        if (i10 == size()) {
            return add((PersistentVector<E>) e10);
        }
        int rootSize = rootSize();
        if (i10 >= rootSize) {
            return insertIntoTail(this.root, i10 - rootSize, e10);
        }
        ObjectRef objectRef = new ObjectRef(null);
        return insertIntoTail(insertIntoRoot(this.root, this.rootShift, i10, e10, objectRef), 0, objectRef.getValue());
    }
}
