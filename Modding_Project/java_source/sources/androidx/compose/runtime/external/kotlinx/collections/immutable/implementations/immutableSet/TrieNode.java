package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TrieNode.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nTrieNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode\n+ 2 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt\n+ 3 ForEachOneBit.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ForEachOneBitKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeKt$filterTo$1\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,851:1\n54#2,13:852\n50#2,17:865\n50#2,17:882\n50#2,10:918\n60#2,7:929\n50#2,10:945\n60#2,7:956\n10#3,5:899\n15#3,4:905\n10#3,9:909\n10#3,9:936\n10#3,9:965\n1#4:904\n53#5:928\n53#5:955\n12371#6,2:963\n*S KotlinDebug\n*F\n+ 1 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode\n*L\n297#1:852,13\n324#1:865,17\n347#1:882,17\n594#1:918,10\n594#1:929,7\n701#1:945,10\n701#1:956,7\n423#1:899,5\n423#1:905,4\n525#1:909,9\n621#1:936,9\n717#1:965,9\n594#1:928\n701#1:955\n710#1:963,2\n*E\n"})
/* loaded from: classes.dex */
public final class TrieNode<E> {
    private int bitmap;
    @NotNull
    private Object[] buffer;
    @Nullable
    private MutabilityOwnership ownedBy;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private static final TrieNode EMPTY = new TrieNode(0, new Object[0]);

    /* compiled from: TrieNode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TrieNode getEMPTY$runtime() {
            return TrieNode.EMPTY;
        }

        private Companion() {
        }
    }

    public TrieNode(int i10, @NotNull Object[] objArr, @Nullable MutabilityOwnership mutabilityOwnership) {
        this.bitmap = i10;
        this.buffer = objArr;
        this.ownedBy = mutabilityOwnership;
    }

    private final TrieNode<E> addElementAt(int i10, E e10) {
        Object[] addElementAtIndex;
        addElementAtIndex = TrieNodeKt.addElementAtIndex(this.buffer, indexOfCellAt$runtime(i10), e10);
        return new TrieNode<>(i10 | this.bitmap, addElementAtIndex);
    }

    private final int calculateSize() {
        Object[] objArr;
        int i10;
        if (this.bitmap == 0) {
            return this.buffer.length;
        }
        int i11 = 0;
        for (Object obj : this.buffer) {
            if (obj instanceof TrieNode) {
                i10 = ((TrieNode) obj).calculateSize();
            } else {
                i10 = 1;
            }
            i11 += i10;
        }
        return i11;
    }

    private final TrieNode<E> collisionAdd(E e10) {
        Object[] addElementAtIndex;
        if (!collisionContainsElement(e10)) {
            addElementAtIndex = TrieNodeKt.addElementAtIndex(this.buffer, 0, e10);
            return new TrieNode<>(0, addElementAtIndex);
        }
        return this;
    }

    private final boolean collisionContainsElement(E e10) {
        return n.f0(this.buffer, e10);
    }

    private final TrieNode<E> collisionRemove(E e10) {
        int y02 = n.y0(this.buffer, e10);
        if (y02 != -1) {
            return collisionRemoveElementAtIndex(y02);
        }
        return this;
    }

    private final TrieNode<E> collisionRemoveElementAtIndex(int i10) {
        Object[] removeCellAtIndex;
        removeCellAtIndex = TrieNodeKt.removeCellAtIndex(this.buffer, i10);
        return new TrieNode<>(0, removeCellAtIndex);
    }

    private final E elementAtIndex(int i10) {
        return (E) this.buffer[i10];
    }

    private final boolean elementsIdentityEquals(TrieNode<E> trieNode) {
        if (this == trieNode) {
            return true;
        }
        if (this.bitmap != trieNode.bitmap) {
            return false;
        }
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.buffer[i10] != trieNode.buffer[i10]) {
                return false;
            }
        }
        return true;
    }

    private final boolean hasNoCellAt(int i10) {
        if ((i10 & this.bitmap) == 0) {
            return true;
        }
        return false;
    }

    private final TrieNode<E> makeNode(int i10, E e10, int i11, E e11, int i12, MutabilityOwnership mutabilityOwnership) {
        if (i12 > 30) {
            return new TrieNode<>(0, new Object[]{e10, e11}, mutabilityOwnership);
        }
        int indexSegment = TrieNodeKt.indexSegment(i10, i12);
        int indexSegment2 = TrieNodeKt.indexSegment(i11, i12);
        if (indexSegment != indexSegment2) {
            return new TrieNode<>((1 << indexSegment) | (1 << indexSegment2), indexSegment < indexSegment2 ? new Object[]{e10, e11} : new Object[]{e11, e10}, mutabilityOwnership);
        }
        return new TrieNode<>(1 << indexSegment, new Object[]{makeNode(i10, e10, i11, e11, i12 + 5, mutabilityOwnership)}, mutabilityOwnership);
    }

    private final TrieNode<E> makeNodeAtIndex(int i10, int i11, E e10, int i12, MutabilityOwnership mutabilityOwnership) {
        int i13;
        E elementAtIndex = elementAtIndex(i10);
        if (elementAtIndex != null) {
            i13 = elementAtIndex.hashCode();
        } else {
            i13 = 0;
        }
        return makeNode(i13, elementAtIndex, i11, e10, i12 + 5, mutabilityOwnership);
    }

    private final TrieNode<E> moveElementToNode(int i10, int i11, E e10, int i12) {
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        copyOf[i10] = makeNodeAtIndex(i10, i11, e10, i12, null);
        return new TrieNode<>(this.bitmap, copyOf);
    }

    private final TrieNode<E> mutableAddElementAt(int i10, E e10, MutabilityOwnership mutabilityOwnership) {
        Object[] addElementAtIndex;
        Object[] addElementAtIndex2;
        int indexOfCellAt$runtime = indexOfCellAt$runtime(i10);
        if (this.ownedBy == mutabilityOwnership) {
            addElementAtIndex2 = TrieNodeKt.addElementAtIndex(this.buffer, indexOfCellAt$runtime, e10);
            this.buffer = addElementAtIndex2;
            this.bitmap = i10 | this.bitmap;
            return this;
        }
        addElementAtIndex = TrieNodeKt.addElementAtIndex(this.buffer, indexOfCellAt$runtime, e10);
        return new TrieNode<>(i10 | this.bitmap, addElementAtIndex, mutabilityOwnership);
    }

    private final TrieNode<E> mutableCollisionAdd(E e10, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        Object[] addElementAtIndex;
        Object[] addElementAtIndex2;
        if (collisionContainsElement(e10)) {
            return this;
        }
        persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() + 1);
        if (this.ownedBy == persistentHashSetBuilder.getOwnership$runtime()) {
            addElementAtIndex2 = TrieNodeKt.addElementAtIndex(this.buffer, 0, e10);
            this.buffer = addElementAtIndex2;
            return this;
        }
        addElementAtIndex = TrieNodeKt.addElementAtIndex(this.buffer, 0, e10);
        return new TrieNode<>(0, addElementAtIndex, persistentHashSetBuilder.getOwnership$runtime());
    }

    private final TrieNode<E> mutableCollisionAddAll(TrieNode<E> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        boolean z10;
        if (this == trieNode) {
            deltaCounter.plusAssign(this.buffer.length);
            return this;
        }
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length + trieNode.buffer.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        Object[] objArr2 = trieNode.buffer;
        int length = this.buffer.length;
        int i10 = 0;
        for (int i11 = 0; i11 < objArr2.length; i11++) {
            boolean z11 = true;
            if (i10 <= i11) {
                z10 = true;
            } else {
                z10 = false;
            }
            CommonFunctionsKt.m1490assert(z10);
            if (!collisionContainsElement((E) objArr2[i11])) {
                copyOf[length + i10] = objArr2[i11];
                i10++;
                if (length + i10 > copyOf.length) {
                    z11 = false;
                }
                CommonFunctionsKt.m1490assert(z11);
            }
        }
        int length2 = i10 + this.buffer.length;
        deltaCounter.plusAssign(copyOf.length - length2);
        if (length2 == this.buffer.length) {
            return this;
        }
        if (length2 == trieNode.buffer.length) {
            return trieNode;
        }
        if (length2 != copyOf.length) {
            copyOf = Arrays.copyOf(copyOf, length2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        }
        if (Intrinsics.areEqual(this.ownedBy, mutabilityOwnership)) {
            this.buffer = copyOf;
            return this;
        }
        return new TrieNode<>(0, copyOf, mutabilityOwnership);
    }

    private final TrieNode<E> mutableCollisionRemove(E e10, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        int y02 = n.y0(this.buffer, e10);
        if (y02 != -1) {
            persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() - 1);
            return mutableCollisionRemoveElementAtIndex(y02, persistentHashSetBuilder.getOwnership$runtime());
        }
        return this;
    }

    private final Object mutableCollisionRemoveAll(TrieNode<E> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr;
        boolean z10;
        if (this == trieNode) {
            deltaCounter.plusAssign(this.buffer.length);
            return EMPTY;
        }
        if (Intrinsics.areEqual(mutabilityOwnership, this.ownedBy)) {
            objArr = this.buffer;
        } else {
            objArr = new Object[this.buffer.length];
        }
        Object[] objArr2 = this.buffer;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            boolean z11 = true;
            if (i10 >= objArr2.length) {
                break;
            }
            if (i11 <= i10) {
                z10 = true;
            } else {
                z10 = false;
            }
            CommonFunctionsKt.m1490assert(z10);
            if (!trieNode.collisionContainsElement((E) objArr2[i10])) {
                objArr[i11] = objArr2[i10];
                i11++;
                if (i11 > objArr.length) {
                    z11 = false;
                }
                CommonFunctionsKt.m1490assert(z11);
            }
            i10++;
        }
        deltaCounter.plusAssign(this.buffer.length - i11);
        if (i11 == 0) {
            return EMPTY;
        }
        if (i11 == 1) {
            return objArr[0];
        }
        if (i11 == this.buffer.length) {
            return this;
        }
        if (i11 == objArr.length) {
            return new TrieNode(0, objArr, mutabilityOwnership);
        }
        Object[] copyOf = Arrays.copyOf(objArr, i11);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return new TrieNode(0, copyOf, mutabilityOwnership);
    }

    private final TrieNode<E> mutableCollisionRemoveElementAtIndex(int i10, MutabilityOwnership mutabilityOwnership) {
        Object[] removeCellAtIndex;
        Object[] removeCellAtIndex2;
        if (this.ownedBy == mutabilityOwnership) {
            removeCellAtIndex2 = TrieNodeKt.removeCellAtIndex(this.buffer, i10);
            this.buffer = removeCellAtIndex2;
            return this;
        }
        removeCellAtIndex = TrieNodeKt.removeCellAtIndex(this.buffer, i10);
        return new TrieNode<>(0, removeCellAtIndex, mutabilityOwnership);
    }

    private final Object mutableCollisionRetainAll(TrieNode<E> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr;
        boolean z10;
        if (this == trieNode) {
            deltaCounter.plusAssign(this.buffer.length);
            return this;
        }
        if (Intrinsics.areEqual(mutabilityOwnership, this.ownedBy)) {
            objArr = this.buffer;
        } else {
            objArr = new Object[Math.min(this.buffer.length, trieNode.buffer.length)];
        }
        Object[] objArr2 = this.buffer;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            boolean z11 = true;
            if (i10 >= objArr2.length) {
                break;
            }
            if (i11 <= i10) {
                z10 = true;
            } else {
                z10 = false;
            }
            CommonFunctionsKt.m1490assert(z10);
            if (trieNode.collisionContainsElement((E) objArr2[i10])) {
                objArr[i11] = objArr2[i10];
                i11++;
                if (i11 > objArr.length) {
                    z11 = false;
                }
                CommonFunctionsKt.m1490assert(z11);
            }
            i10++;
        }
        deltaCounter.plusAssign(i11);
        if (i11 == 0) {
            return EMPTY;
        }
        if (i11 == 1) {
            return objArr[0];
        }
        if (i11 == this.buffer.length) {
            return this;
        }
        if (i11 != trieNode.buffer.length) {
            if (i11 == objArr.length) {
                return new TrieNode(0, objArr, mutabilityOwnership);
            }
            Object[] copyOf = Arrays.copyOf(objArr, i11);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            return new TrieNode(0, copyOf, mutabilityOwnership);
        }
        return trieNode;
    }

    private final TrieNode<E> mutableMoveElementToNode(int i10, int i11, E e10, int i12, MutabilityOwnership mutabilityOwnership) {
        if (this.ownedBy == mutabilityOwnership) {
            this.buffer[i10] = makeNodeAtIndex(i10, i11, e10, i12, mutabilityOwnership);
            return this;
        }
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        copyOf[i10] = makeNodeAtIndex(i10, i11, e10, i12, mutabilityOwnership);
        return new TrieNode<>(this.bitmap, copyOf, mutabilityOwnership);
    }

    private final TrieNode<E> mutableRemoveCellAtIndex(int i10, int i11, MutabilityOwnership mutabilityOwnership) {
        Object[] removeCellAtIndex;
        Object[] removeCellAtIndex2;
        if (this.ownedBy == mutabilityOwnership) {
            removeCellAtIndex2 = TrieNodeKt.removeCellAtIndex(this.buffer, i10);
            this.buffer = removeCellAtIndex2;
            this.bitmap ^= i11;
            return this;
        }
        removeCellAtIndex = TrieNodeKt.removeCellAtIndex(this.buffer, i10);
        return new TrieNode<>(i11 ^ this.bitmap, removeCellAtIndex, mutabilityOwnership);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v4 */
    private final TrieNode<E> mutableUpdateNodeAtIndex(int i10, TrieNode<E> trieNode, MutabilityOwnership mutabilityOwnership) {
        ?? r02 = trieNode.buffer;
        if (r02.length == 1) {
            ?? r03 = r02[0];
            if (!(r03 instanceof TrieNode)) {
                if (this.buffer.length == 1) {
                    trieNode.bitmap = this.bitmap;
                    return trieNode;
                }
                trieNode = r03;
            }
        }
        if (this.ownedBy == mutabilityOwnership) {
            this.buffer[i10] = trieNode;
            return this;
        }
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        copyOf[i10] = trieNode;
        return new TrieNode<>(this.bitmap, copyOf, mutabilityOwnership);
    }

    private final TrieNode<E> nodeAtIndex(int i10) {
        Object obj = this.buffer[i10];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
        return (TrieNode) obj;
    }

    private final TrieNode<E> removeCellAtIndex(int i10, int i11) {
        Object[] removeCellAtIndex;
        removeCellAtIndex = TrieNodeKt.removeCellAtIndex(this.buffer, i10);
        return new TrieNode<>(i11 ^ this.bitmap, removeCellAtIndex);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v3 */
    private final TrieNode<E> updateNodeAtIndex(int i10, TrieNode<E> trieNode) {
        ?? r02 = trieNode.buffer;
        if (r02.length == 1) {
            ?? r03 = r02[0];
            if (!(r03 instanceof TrieNode)) {
                if (this.buffer.length == 1) {
                    trieNode.bitmap = this.bitmap;
                    return trieNode;
                }
                trieNode = r03;
            }
        }
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        copyOf[i10] = trieNode;
        return new TrieNode<>(this.bitmap, copyOf);
    }

    @NotNull
    public final TrieNode<E> add(int i10, E e10, int i11) {
        TrieNode<E> add;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasNoCellAt(indexSegment)) {
            return addElementAt(indexSegment, e10);
        }
        int indexOfCellAt$runtime = indexOfCellAt$runtime(indexSegment);
        Object obj = this.buffer[indexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            TrieNode<E> nodeAtIndex = nodeAtIndex(indexOfCellAt$runtime);
            if (i11 == 30) {
                add = nodeAtIndex.collisionAdd(e10);
            } else {
                add = nodeAtIndex.add(i10, e10, i11 + 5);
            }
            if (nodeAtIndex == add) {
                return this;
            }
            return updateNodeAtIndex(indexOfCellAt$runtime, add);
        } else if (Intrinsics.areEqual(e10, obj)) {
            return this;
        } else {
            return moveElementToNode(indexOfCellAt$runtime, i10, e10, i11);
        }
    }

    public final boolean contains(int i10, E e10, int i11) {
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasNoCellAt(indexSegment)) {
            return false;
        }
        int indexOfCellAt$runtime = indexOfCellAt$runtime(indexSegment);
        Object obj = this.buffer[indexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            TrieNode<E> nodeAtIndex = nodeAtIndex(indexOfCellAt$runtime);
            if (i11 == 30) {
                return nodeAtIndex.collisionContainsElement(e10);
            }
            return nodeAtIndex.contains(i10, e10, i11 + 5);
        }
        return Intrinsics.areEqual(e10, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean containsAll(@NotNull TrieNode<E> trieNode, int i10) {
        int i11;
        if (this == trieNode) {
            return true;
        }
        if (i10 > 30) {
            for (Object obj : trieNode.buffer) {
                if (!n.f0(this.buffer, obj)) {
                    return false;
                }
            }
            return true;
        }
        int i12 = this.bitmap;
        int i13 = trieNode.bitmap;
        int i14 = i12 & i13;
        if (i14 != i13) {
            return false;
        }
        while (i14 != 0) {
            int lowestOneBit = Integer.lowestOneBit(i14);
            int indexOfCellAt$runtime = indexOfCellAt$runtime(lowestOneBit);
            int indexOfCellAt$runtime2 = trieNode.indexOfCellAt$runtime(lowestOneBit);
            Object obj2 = this.buffer[indexOfCellAt$runtime];
            Object obj3 = trieNode.buffer[indexOfCellAt$runtime2];
            boolean z10 = obj2 instanceof TrieNode;
            boolean z11 = obj3 instanceof TrieNode;
            if (z10 && z11) {
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                if (!((TrieNode) obj2).containsAll((TrieNode) obj3, i10 + 5)) {
                    return false;
                }
            } else if (z10) {
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                TrieNode trieNode2 = (TrieNode) obj2;
                if (obj3 != null) {
                    i11 = obj3.hashCode();
                } else {
                    i11 = 0;
                }
                if (!trieNode2.contains(i11, obj3, i10 + 5)) {
                    return false;
                }
            } else if (z11 || !Intrinsics.areEqual(obj2, obj3)) {
                return false;
            }
            i14 ^= lowestOneBit;
        }
        return true;
    }

    public final int getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final Object[] getBuffer() {
        return this.buffer;
    }

    @Nullable
    public final MutabilityOwnership getOwnedBy() {
        return this.ownedBy;
    }

    public final int indexOfCellAt$runtime(int i10) {
        return Integer.bitCount((i10 - 1) & this.bitmap);
    }

    @NotNull
    public final TrieNode<E> mutableAdd(int i10, E e10, int i11, @NotNull PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        TrieNode<E> mutableAdd;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasNoCellAt(indexSegment)) {
            persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() + 1);
            return mutableAddElementAt(indexSegment, e10, persistentHashSetBuilder.getOwnership$runtime());
        }
        int indexOfCellAt$runtime = indexOfCellAt$runtime(indexSegment);
        Object obj = this.buffer[indexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            TrieNode<E> nodeAtIndex = nodeAtIndex(indexOfCellAt$runtime);
            if (i11 == 30) {
                mutableAdd = nodeAtIndex.mutableCollisionAdd(e10, persistentHashSetBuilder);
            } else {
                mutableAdd = nodeAtIndex.mutableAdd(i10, e10, i11 + 5, persistentHashSetBuilder);
            }
            if (nodeAtIndex == mutableAdd) {
                return this;
            }
            return mutableUpdateNodeAtIndex(indexOfCellAt$runtime, mutableAdd, persistentHashSetBuilder.getOwnership$runtime());
        } else if (Intrinsics.areEqual(e10, obj)) {
            return this;
        } else {
            persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() + 1);
            return mutableMoveElementToNode(indexOfCellAt$runtime, i10, e10, i11, persistentHashSetBuilder.getOwnership$runtime());
        }
    }

    @NotNull
    public final TrieNode<E> mutableAddAll(@NotNull TrieNode<E> trieNode, int i10, @NotNull DeltaCounter deltaCounter, @NotNull PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        TrieNode<E> trieNode2;
        int i11;
        int i12;
        Object[] objArr;
        int i13;
        Object makeNode;
        int i14;
        Object mutableAdd;
        int i15;
        if (this == trieNode) {
            deltaCounter.setCount(deltaCounter.getCount() + calculateSize());
            return this;
        } else if (i10 > 30) {
            return mutableCollisionAddAll(trieNode, deltaCounter, persistentHashSetBuilder.getOwnership$runtime());
        } else {
            int i16 = this.bitmap;
            int i17 = trieNode.bitmap | i16;
            if (i17 == i16 && Intrinsics.areEqual(this.ownedBy, persistentHashSetBuilder.getOwnership$runtime())) {
                trieNode2 = this;
            } else {
                trieNode2 = new TrieNode<>(i17, new Object[Integer.bitCount(i17)], persistentHashSetBuilder.getOwnership$runtime());
            }
            int i18 = i17;
            int i19 = 0;
            while (i18 != 0) {
                int lowestOneBit = Integer.lowestOneBit(i18);
                int indexOfCellAt$runtime = indexOfCellAt$runtime(lowestOneBit);
                int indexOfCellAt$runtime2 = trieNode.indexOfCellAt$runtime(lowestOneBit);
                Object[] objArr2 = trieNode2.buffer;
                if (hasNoCellAt(lowestOneBit)) {
                    makeNode = (TrieNode<E>) trieNode.buffer[indexOfCellAt$runtime2];
                } else if (trieNode.hasNoCellAt(lowestOneBit)) {
                    makeNode = this.buffer[indexOfCellAt$runtime];
                } else {
                    E e10 = (E) this.buffer[indexOfCellAt$runtime];
                    E e11 = (E) trieNode.buffer[indexOfCellAt$runtime2];
                    boolean z10 = e10 instanceof TrieNode;
                    boolean z11 = e11 instanceof TrieNode;
                    if (z10 && z11) {
                        Intrinsics.checkNotNull(e10, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                        Intrinsics.checkNotNull(e11, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                        makeNode = ((TrieNode) e10).mutableAddAll((TrieNode) e11, i10 + 5, deltaCounter, persistentHashSetBuilder);
                    } else {
                        if (z10) {
                            Intrinsics.checkNotNull(e10, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                            TrieNode trieNode3 = (TrieNode) e10;
                            int size = persistentHashSetBuilder.size();
                            if (e11 != null) {
                                i15 = e11.hashCode();
                            } else {
                                i15 = 0;
                            }
                            mutableAdd = trieNode3.mutableAdd(i15, e11, i10 + 5, persistentHashSetBuilder);
                            if (persistentHashSetBuilder.size() == size) {
                                deltaCounter.setCount(deltaCounter.getCount() + 1);
                            }
                            Unit unit = Unit.f60915a;
                        } else if (z11) {
                            Intrinsics.checkNotNull(e11, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                            TrieNode trieNode4 = (TrieNode) e11;
                            int size2 = persistentHashSetBuilder.size();
                            if (e10 != null) {
                                i14 = e10.hashCode();
                            } else {
                                i14 = 0;
                            }
                            mutableAdd = trieNode4.mutableAdd(i14, e10, i10 + 5, persistentHashSetBuilder);
                            if (persistentHashSetBuilder.size() == size2) {
                                deltaCounter.setCount(deltaCounter.getCount() + 1);
                            }
                            Unit unit2 = Unit.f60915a;
                        } else if (Intrinsics.areEqual(e10, e11)) {
                            deltaCounter.setCount(deltaCounter.getCount() + 1);
                            Unit unit3 = Unit.f60915a;
                            makeNode = e10;
                        } else {
                            if (e10 != null) {
                                i11 = e10.hashCode();
                            } else {
                                i11 = 0;
                            }
                            if (e11 != null) {
                                i12 = e11.hashCode();
                            } else {
                                i12 = 0;
                            }
                            objArr = objArr2;
                            i13 = lowestOneBit;
                            makeNode = makeNode(i11, e10, i12, e11, i10 + 5, persistentHashSetBuilder.getOwnership$runtime());
                            objArr[i19] = makeNode;
                            i19++;
                            i18 ^= i13;
                        }
                        makeNode = mutableAdd;
                    }
                }
                objArr = objArr2;
                i13 = lowestOneBit;
                objArr[i19] = makeNode;
                i19++;
                i18 ^= i13;
            }
            if (elementsIdentityEquals(trieNode2)) {
                return this;
            }
            if (trieNode.elementsIdentityEquals(trieNode2)) {
                return trieNode;
            }
            return trieNode2;
        }
    }

    @NotNull
    public final TrieNode<E> mutableRemove(int i10, E e10, int i11, @NotNull PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        TrieNode<E> mutableRemove;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasNoCellAt(indexSegment)) {
            return this;
        }
        int indexOfCellAt$runtime = indexOfCellAt$runtime(indexSegment);
        Object obj = this.buffer[indexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            TrieNode<E> nodeAtIndex = nodeAtIndex(indexOfCellAt$runtime);
            if (i11 == 30) {
                mutableRemove = nodeAtIndex.mutableCollisionRemove(e10, persistentHashSetBuilder);
            } else {
                mutableRemove = nodeAtIndex.mutableRemove(i10, e10, i11 + 5, persistentHashSetBuilder);
            }
            if (this.ownedBy != persistentHashSetBuilder.getOwnership$runtime() && nodeAtIndex == mutableRemove) {
                return this;
            }
            return mutableUpdateNodeAtIndex(indexOfCellAt$runtime, mutableRemove, persistentHashSetBuilder.getOwnership$runtime());
        } else if (Intrinsics.areEqual(e10, obj)) {
            persistentHashSetBuilder.setSize(persistentHashSetBuilder.size() - 1);
            return mutableRemoveCellAtIndex(indexOfCellAt$runtime, indexSegment, persistentHashSetBuilder.getOwnership$runtime());
        } else {
            return this;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b1, code lost:
        if ((r13 instanceof androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode) == false) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mutableRemoveAll(@org.jetbrains.annotations.NotNull androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E> r17, int r18, @org.jetbrains.annotations.NotNull androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter r19, @org.jetbrains.annotations.NotNull androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetBuilder<?> r20) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRemoveAll(androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode, int, androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter, androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetBuilder):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Object mutableRetainAll(@NotNull TrieNode<E> trieNode, int i10, @NotNull DeltaCounter deltaCounter, @NotNull PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        TrieNode<E> trieNode2;
        TrieNode trieNode3;
        boolean z10;
        boolean z11;
        int i11;
        int i12;
        if (this == trieNode) {
            deltaCounter.plusAssign(calculateSize());
            return this;
        } else if (i10 > 30) {
            return mutableCollisionRetainAll(trieNode, deltaCounter, persistentHashSetBuilder.getOwnership$runtime());
        } else {
            int i13 = this.bitmap & trieNode.bitmap;
            if (i13 == 0) {
                return EMPTY;
            }
            if (Intrinsics.areEqual(this.ownedBy, persistentHashSetBuilder.getOwnership$runtime()) && i13 == this.bitmap) {
                trieNode2 = this;
            } else {
                trieNode2 = new TrieNode<>(i13, new Object[Integer.bitCount(i13)], persistentHashSetBuilder.getOwnership$runtime());
            }
            int i14 = i13;
            int i15 = 0;
            int i16 = 0;
            while (i14 != 0) {
                int lowestOneBit = Integer.lowestOneBit(i14);
                int indexOfCellAt$runtime = indexOfCellAt$runtime(lowestOneBit);
                int indexOfCellAt$runtime2 = trieNode.indexOfCellAt$runtime(lowestOneBit);
                Object obj = this.buffer[indexOfCellAt$runtime];
                Object obj2 = trieNode.buffer[indexOfCellAt$runtime2];
                boolean z12 = obj instanceof TrieNode;
                boolean z13 = obj2 instanceof TrieNode;
                if (z12 && z13) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                    obj = ((TrieNode) obj).mutableRetainAll((TrieNode) obj2, i10 + 5, deltaCounter, persistentHashSetBuilder);
                } else if (z12) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                    TrieNode trieNode4 = (TrieNode) obj;
                    if (obj2 != null) {
                        i12 = obj2.hashCode();
                    } else {
                        i12 = 0;
                    }
                    if (trieNode4.contains(i12, obj2, i10 + 5)) {
                        deltaCounter.plusAssign(1);
                        obj = obj2;
                    } else {
                        obj = EMPTY;
                    }
                } else if (z13) {
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
                    TrieNode trieNode5 = (TrieNode) obj2;
                    if (obj != null) {
                        i11 = obj.hashCode();
                    } else {
                        i11 = 0;
                    }
                    if (trieNode5.contains(i11, obj, i10 + 5)) {
                        deltaCounter.plusAssign(1);
                    } else {
                        obj = EMPTY;
                    }
                } else if (Intrinsics.areEqual(obj, obj2)) {
                    deltaCounter.plusAssign(1);
                } else {
                    obj = EMPTY;
                }
                if (obj != EMPTY) {
                    i15 |= lowestOneBit;
                }
                trieNode2.buffer[i16] = obj;
                i16++;
                i14 ^= lowestOneBit;
            }
            int bitCount = Integer.bitCount(i15);
            if (i15 == 0) {
                return EMPTY;
            }
            if (i15 == i13) {
                if (trieNode2.elementsIdentityEquals(this)) {
                    return this;
                }
                if (trieNode2.elementsIdentityEquals(trieNode)) {
                    return trieNode;
                }
                return trieNode2;
            }
            if (bitCount == 1 && i10 != 0) {
                Object obj3 = trieNode2.buffer[trieNode2.indexOfCellAt$runtime(i15)];
                if (obj3 instanceof TrieNode) {
                    trieNode3 = new TrieNode(i15, new Object[]{obj3}, persistentHashSetBuilder.getOwnership$runtime());
                } else {
                    return obj3;
                }
            } else {
                Object[] objArr = new Object[bitCount];
                Object[] objArr2 = trieNode2.buffer;
                int i17 = 0;
                for (int i18 = 0; i18 < objArr2.length; i18++) {
                    if (i17 <= i18) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    CommonFunctionsKt.m1490assert(z10);
                    if (objArr2[i18] != Companion.getEMPTY$runtime()) {
                        objArr[i17] = objArr2[i18];
                        i17++;
                        if (i17 <= bitCount) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        CommonFunctionsKt.m1490assert(z11);
                    }
                }
                trieNode3 = new TrieNode(i15, objArr, persistentHashSetBuilder.getOwnership$runtime());
            }
            return trieNode3;
        }
    }

    @NotNull
    public final TrieNode<E> remove(int i10, E e10, int i11) {
        TrieNode<E> remove;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasNoCellAt(indexSegment)) {
            return this;
        }
        int indexOfCellAt$runtime = indexOfCellAt$runtime(indexSegment);
        Object obj = this.buffer[indexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            TrieNode<E> nodeAtIndex = nodeAtIndex(indexOfCellAt$runtime);
            if (i11 == 30) {
                remove = nodeAtIndex.collisionRemove(e10);
            } else {
                remove = nodeAtIndex.remove(i10, e10, i11 + 5);
            }
            if (nodeAtIndex == remove) {
                return this;
            }
            return updateNodeAtIndex(indexOfCellAt$runtime, remove);
        } else if (Intrinsics.areEqual(e10, obj)) {
            return removeCellAtIndex(indexOfCellAt$runtime, indexSegment);
        } else {
            return this;
        }
    }

    public final void setBitmap(int i10) {
        this.bitmap = i10;
    }

    public final void setBuffer(@NotNull Object[] objArr) {
        this.buffer = objArr;
    }

    public final void setOwnedBy(@Nullable MutabilityOwnership mutabilityOwnership) {
        this.ownedBy = mutabilityOwnership;
    }

    public TrieNode(int i10, @NotNull Object[] objArr) {
        this(i10, objArr, null);
    }
}
