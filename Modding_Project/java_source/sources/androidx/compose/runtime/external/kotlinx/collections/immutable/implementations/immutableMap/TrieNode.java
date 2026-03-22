package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import androidx.compose.runtime.internal.StabilityInferred;
import at.p;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.d;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TrieNode.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nTrieNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode\n+ 2 ForEachOneBit.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ForEachOneBitKt\n+ 3 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 4 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode$ModificationResult\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,899:1\n10#2,9:900\n10#2,9:913\n10#2,9:922\n58#3,4:909\n84#4:931\n1#5:932\n*S KotlinDebug\n*F\n+ 1 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode\n*L\n630#1:900,9\n648#1:913,9\n652#1:922,9\n640#1:909,4\n700#1:931\n700#1:932\n*E\n"})
/* loaded from: classes.dex */
public final class TrieNode<K, V> {
    @NotNull
    private Object[] buffer;
    private int dataMap;
    private int nodeMap;
    @Nullable
    private final MutabilityOwnership ownedBy;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private static final TrieNode EMPTY = new TrieNode(0, 0, new Object[0]);

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

    /* compiled from: TrieNode.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    @SourceDebugExtension({"SMAP\nTrieNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrieNode.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode$ModificationResult\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,899:1\n1#2:900\n*E\n"})
    /* loaded from: classes.dex */
    public static final class ModificationResult<K, V> {
        public static final int $stable = 8;
        @NotNull
        private TrieNode<K, V> node;
        private final int sizeDelta;

        public ModificationResult(@NotNull TrieNode<K, V> trieNode, int i10) {
            this.node = trieNode;
            this.sizeDelta = i10;
        }

        @NotNull
        public final TrieNode<K, V> getNode() {
            return this.node;
        }

        public final int getSizeDelta() {
            return this.sizeDelta;
        }

        @NotNull
        public final ModificationResult<K, V> replaceNode(@NotNull Function1<? super TrieNode<K, V>, TrieNode<K, V>> function1) {
            setNode(function1.invoke(getNode()));
            return this;
        }

        public final void setNode(@NotNull TrieNode<K, V> trieNode) {
            this.node = trieNode;
        }
    }

    public TrieNode(int i10, int i11, @NotNull Object[] objArr, @Nullable MutabilityOwnership mutabilityOwnership) {
        this.dataMap = i10;
        this.nodeMap = i11;
        this.ownedBy = mutabilityOwnership;
        this.buffer = objArr;
    }

    private final void accept(p<? super TrieNode<K, V>, ? super Integer, ? super Integer, ? super Integer, ? super Integer, Unit> pVar, int i10, int i11) {
        pVar.invoke(this, Integer.valueOf(i11), Integer.valueOf(i10), Integer.valueOf(this.dataMap), Integer.valueOf(this.nodeMap));
        int i12 = this.nodeMap;
        while (i12 != 0) {
            int lowestOneBit = Integer.lowestOneBit(i12);
            nodeAtIndex$runtime(nodeIndex$runtime(lowestOneBit)).accept(pVar, (Integer.numberOfTrailingZeros(lowestOneBit) << i11) + i10, i11 + 5);
            i12 -= lowestOneBit;
        }
    }

    private final ModificationResult<K, V> asInsertResult() {
        return new ModificationResult<>(this, 1);
    }

    private final ModificationResult<K, V> asUpdateResult() {
        return new ModificationResult<>(this, 0);
    }

    private final Object[] bufferMoveEntryToNode(int i10, int i11, int i12, K k10, V v10, int i13, MutabilityOwnership mutabilityOwnership) {
        int i14;
        K keyAtIndex = keyAtIndex(i10);
        if (keyAtIndex != null) {
            i14 = keyAtIndex.hashCode();
        } else {
            i14 = 0;
        }
        TrieNode<K, V> makeNode = makeNode(i14, keyAtIndex, valueAtKeyIndex(i10), i12, k10, v10, i13 + 5, mutabilityOwnership);
        return TrieNodeKt.access$replaceEntryWithNode(this.buffer, i10, nodeIndex$runtime(i11) + 1, makeNode);
    }

    private final int calculateSize() {
        if (this.nodeMap == 0) {
            return this.buffer.length / 2;
        }
        int bitCount = Integer.bitCount(this.dataMap);
        int length = this.buffer.length;
        for (int i10 = bitCount * 2; i10 < length; i10++) {
            bitCount += nodeAtIndex$runtime(i10).calculateSize();
        }
        return bitCount;
    }

    private final boolean collisionContainsKey(K k10) {
        d u10 = e.u(e.v(0, this.buffer.length), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (!Intrinsics.areEqual(k10, this.buffer[c10])) {
                if (c10 != d10) {
                    c10 += e10;
                }
            }
            return true;
        }
        return false;
    }

    private final V collisionGet(K k10) {
        d u10 = e.u(e.v(0, this.buffer.length), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (!Intrinsics.areEqual(k10, keyAtIndex(c10))) {
                if (c10 != d10) {
                    c10 += e10;
                } else {
                    return null;
                }
            }
            return valueAtKeyIndex(c10);
        }
        return null;
    }

    private final ModificationResult<K, V> collisionPut(K k10, V v10) {
        d u10 = e.u(e.v(0, this.buffer.length), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (!Intrinsics.areEqual(k10, keyAtIndex(c10))) {
                if (c10 != d10) {
                    c10 += e10;
                }
            }
            if (v10 == valueAtKeyIndex(c10)) {
                return null;
            }
            Object[] objArr = this.buffer;
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            copyOf[c10 + 1] = v10;
            return new TrieNode(0, 0, copyOf).asUpdateResult();
        }
        return new TrieNode(0, 0, TrieNodeKt.access$insertEntryAtIndex(this.buffer, 0, k10, v10)).asInsertResult();
    }

    private final TrieNode<K, V> collisionRemove(K k10) {
        d u10 = e.u(e.v(0, this.buffer.length), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (!Intrinsics.areEqual(k10, keyAtIndex(c10))) {
                if (c10 != d10) {
                    c10 += e10;
                }
            }
            return collisionRemoveEntryAtIndex(c10);
        }
        return this;
    }

    private final TrieNode<K, V> collisionRemoveEntryAtIndex(int i10) {
        Object[] objArr = this.buffer;
        if (objArr.length == 2) {
            return null;
        }
        return new TrieNode<>(0, 0, TrieNodeKt.access$removeEntryAtIndex(objArr, i10));
    }

    private final boolean elementsIdentityEquals(TrieNode<K, V> trieNode) {
        if (this == trieNode) {
            return true;
        }
        if (this.nodeMap != trieNode.nodeMap || this.dataMap != trieNode.dataMap) {
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

    private final boolean hasNodeAt(int i10) {
        if ((i10 & this.nodeMap) != 0) {
            return true;
        }
        return false;
    }

    private final TrieNode<K, V> insertEntryAt(int i10, K k10, V v10) {
        return new TrieNode<>(i10 | this.dataMap, this.nodeMap, TrieNodeKt.access$insertEntryAtIndex(this.buffer, entryKeyIndex$runtime(i10), k10, v10));
    }

    private final K keyAtIndex(int i10) {
        return (K) this.buffer[i10];
    }

    private final TrieNode<K, V> makeNode(int i10, K k10, V v10, int i11, K k11, V v11, int i12, MutabilityOwnership mutabilityOwnership) {
        if (i12 > 30) {
            return new TrieNode<>(0, 0, new Object[]{k10, v10, k11, v11}, mutabilityOwnership);
        }
        int indexSegment = TrieNodeKt.indexSegment(i10, i12);
        int indexSegment2 = TrieNodeKt.indexSegment(i11, i12);
        if (indexSegment != indexSegment2) {
            return new TrieNode<>((1 << indexSegment) | (1 << indexSegment2), 0, indexSegment < indexSegment2 ? new Object[]{k10, v10, k11, v11} : new Object[]{k11, v11, k10, v10}, mutabilityOwnership);
        }
        return new TrieNode<>(0, 1 << indexSegment, new Object[]{makeNode(i10, k10, v10, i11, k11, v11, i12 + 5, mutabilityOwnership)}, mutabilityOwnership);
    }

    private final TrieNode<K, V> moveEntryToNode(int i10, int i11, int i12, K k10, V v10, int i13) {
        return new TrieNode<>(this.dataMap ^ i11, i11 | this.nodeMap, bufferMoveEntryToNode(i10, i11, i12, k10, v10, i13, null));
    }

    private final TrieNode<K, V> mutableCollisionPut(K k10, V v10, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        d u10 = e.u(e.v(0, this.buffer.length), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (!Intrinsics.areEqual(k10, keyAtIndex(c10))) {
                if (c10 != d10) {
                    c10 += e10;
                }
            }
            persistentHashMapBuilder.setOperationResult$runtime(valueAtKeyIndex(c10));
            if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
                this.buffer[c10 + 1] = v10;
                return this;
            }
            persistentHashMapBuilder.setModCount$runtime(persistentHashMapBuilder.getModCount$runtime() + 1);
            Object[] objArr = this.buffer;
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            copyOf[c10 + 1] = v10;
            return new TrieNode<>(0, 0, copyOf, persistentHashMapBuilder.getOwnership());
        }
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() + 1);
        return new TrieNode<>(0, 0, TrieNodeKt.access$insertEntryAtIndex(this.buffer, 0, k10, v10), persistentHashMapBuilder.getOwnership());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final TrieNode<K, V> mutableCollisionPutAll(TrieNode<K, V> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (this.nodeMap == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        CommonFunctionsKt.m1490assert(z10);
        if (this.dataMap == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        CommonFunctionsKt.m1490assert(z11);
        if (trieNode.nodeMap == 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        CommonFunctionsKt.m1490assert(z12);
        if (trieNode.dataMap == 0) {
            z13 = true;
        } else {
            z13 = false;
        }
        CommonFunctionsKt.m1490assert(z13);
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length + trieNode.buffer.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        int length = this.buffer.length;
        d u10 = e.u(e.v(0, trieNode.buffer.length), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (true) {
                if (!collisionContainsKey(trieNode.buffer[c10])) {
                    Object[] objArr2 = trieNode.buffer;
                    copyOf[length] = objArr2[c10];
                    copyOf[length + 1] = objArr2[c10 + 1];
                    length += 2;
                } else {
                    deltaCounter.setCount(deltaCounter.getCount() + 1);
                }
                if (c10 == d10) {
                    break;
                }
                c10 += e10;
            }
        }
        if (length == this.buffer.length) {
            return this;
        }
        if (length != trieNode.buffer.length) {
            if (length == copyOf.length) {
                return new TrieNode<>(0, 0, copyOf, mutabilityOwnership);
            }
            Object[] copyOf2 = Arrays.copyOf(copyOf, length);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
            return new TrieNode<>(0, 0, copyOf2, mutabilityOwnership);
        }
        return trieNode;
    }

    private final TrieNode<K, V> mutableCollisionRemove(K k10, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        d u10 = e.u(e.v(0, this.buffer.length), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (!Intrinsics.areEqual(k10, keyAtIndex(c10))) {
                if (c10 != d10) {
                    c10 += e10;
                }
            }
            return mutableCollisionRemoveEntryAtIndex(c10, persistentHashMapBuilder);
        }
        return this;
    }

    private final TrieNode<K, V> mutableCollisionRemoveEntryAtIndex(int i10, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() - 1);
        persistentHashMapBuilder.setOperationResult$runtime(valueAtKeyIndex(i10));
        if (this.buffer.length == 2) {
            return null;
        }
        if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
            this.buffer = TrieNodeKt.access$removeEntryAtIndex(this.buffer, i10);
            return this;
        }
        return new TrieNode<>(0, 0, TrieNodeKt.access$removeEntryAtIndex(this.buffer, i10), persistentHashMapBuilder.getOwnership());
    }

    private final TrieNode<K, V> mutableInsertEntryAt(int i10, K k10, V v10, MutabilityOwnership mutabilityOwnership) {
        int entryKeyIndex$runtime = entryKeyIndex$runtime(i10);
        if (this.ownedBy == mutabilityOwnership) {
            this.buffer = TrieNodeKt.access$insertEntryAtIndex(this.buffer, entryKeyIndex$runtime, k10, v10);
            this.dataMap = i10 | this.dataMap;
            return this;
        }
        return new TrieNode<>(i10 | this.dataMap, this.nodeMap, TrieNodeKt.access$insertEntryAtIndex(this.buffer, entryKeyIndex$runtime, k10, v10), mutabilityOwnership);
    }

    private final TrieNode<K, V> mutableMoveEntryToNode(int i10, int i11, int i12, K k10, V v10, int i13, MutabilityOwnership mutabilityOwnership) {
        if (this.ownedBy == mutabilityOwnership) {
            this.buffer = bufferMoveEntryToNode(i10, i11, i12, k10, v10, i13, mutabilityOwnership);
            this.dataMap ^= i11;
            this.nodeMap |= i11;
            return this;
        }
        return new TrieNode<>(this.dataMap ^ i11, i11 | this.nodeMap, bufferMoveEntryToNode(i10, i11, i12, k10, v10, i13, mutabilityOwnership), mutabilityOwnership);
    }

    private final TrieNode<K, V> mutablePutAllFromOtherNodeCell(TrieNode<K, V> trieNode, int i10, int i11, DeltaCounter deltaCounter, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        int i12;
        int i13;
        int i14 = 0;
        if (hasNodeAt(i10)) {
            TrieNode<K, V> nodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime(i10));
            if (trieNode.hasNodeAt(i10)) {
                return nodeAtIndex$runtime.mutablePutAll(trieNode.nodeAtIndex$runtime(trieNode.nodeIndex$runtime(i10)), i11 + 5, deltaCounter, persistentHashMapBuilder);
            }
            if (trieNode.hasEntryAt$runtime(i10)) {
                int entryKeyIndex$runtime = trieNode.entryKeyIndex$runtime(i10);
                K keyAtIndex = trieNode.keyAtIndex(entryKeyIndex$runtime);
                V valueAtKeyIndex = trieNode.valueAtKeyIndex(entryKeyIndex$runtime);
                int size = persistentHashMapBuilder.size();
                if (keyAtIndex != null) {
                    i14 = keyAtIndex.hashCode();
                }
                TrieNode<K, V> mutablePut = nodeAtIndex$runtime.mutablePut(i14, keyAtIndex, valueAtKeyIndex, i11 + 5, persistentHashMapBuilder);
                if (persistentHashMapBuilder.size() == size) {
                    deltaCounter.setCount(deltaCounter.getCount() + 1);
                    return mutablePut;
                }
                return mutablePut;
            }
            return nodeAtIndex$runtime;
        } else if (trieNode.hasNodeAt(i10)) {
            TrieNode<K, V> nodeAtIndex$runtime2 = trieNode.nodeAtIndex$runtime(trieNode.nodeIndex$runtime(i10));
            if (hasEntryAt$runtime(i10)) {
                int entryKeyIndex$runtime2 = entryKeyIndex$runtime(i10);
                K keyAtIndex2 = keyAtIndex(entryKeyIndex$runtime2);
                if (keyAtIndex2 != null) {
                    i13 = keyAtIndex2.hashCode();
                } else {
                    i13 = 0;
                }
                int i15 = i11 + 5;
                if (nodeAtIndex$runtime2.containsKey(i13, keyAtIndex2, i15)) {
                    deltaCounter.setCount(deltaCounter.getCount() + 1);
                } else {
                    V valueAtKeyIndex2 = valueAtKeyIndex(entryKeyIndex$runtime2);
                    if (keyAtIndex2 != null) {
                        i14 = keyAtIndex2.hashCode();
                    }
                    return nodeAtIndex$runtime2.mutablePut(i14, keyAtIndex2, valueAtKeyIndex2, i15, persistentHashMapBuilder);
                }
            }
            return nodeAtIndex$runtime2;
        } else {
            int entryKeyIndex$runtime3 = entryKeyIndex$runtime(i10);
            K keyAtIndex3 = keyAtIndex(entryKeyIndex$runtime3);
            V valueAtKeyIndex3 = valueAtKeyIndex(entryKeyIndex$runtime3);
            int entryKeyIndex$runtime4 = trieNode.entryKeyIndex$runtime(i10);
            K keyAtIndex4 = trieNode.keyAtIndex(entryKeyIndex$runtime4);
            V valueAtKeyIndex4 = trieNode.valueAtKeyIndex(entryKeyIndex$runtime4);
            if (keyAtIndex3 != null) {
                i12 = keyAtIndex3.hashCode();
            } else {
                i12 = 0;
            }
            if (keyAtIndex4 != null) {
                i14 = keyAtIndex4.hashCode();
            }
            return makeNode(i12, keyAtIndex3, valueAtKeyIndex3, i14, keyAtIndex4, valueAtKeyIndex4, i11 + 5, persistentHashMapBuilder.getOwnership());
        }
    }

    private final TrieNode<K, V> mutableRemoveEntryAtIndex(int i10, int i11, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() - 1);
        persistentHashMapBuilder.setOperationResult$runtime(valueAtKeyIndex(i10));
        if (this.buffer.length == 2) {
            return null;
        }
        if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
            this.buffer = TrieNodeKt.access$removeEntryAtIndex(this.buffer, i10);
            this.dataMap ^= i11;
            return this;
        }
        return new TrieNode<>(i11 ^ this.dataMap, this.nodeMap, TrieNodeKt.access$removeEntryAtIndex(this.buffer, i10), persistentHashMapBuilder.getOwnership());
    }

    private final TrieNode<K, V> mutableRemoveNodeAtIndex(int i10, int i11, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1) {
            return null;
        }
        if (this.ownedBy == mutabilityOwnership) {
            this.buffer = TrieNodeKt.access$removeNodeAtIndex(objArr, i10);
            this.nodeMap ^= i11;
            return this;
        }
        return new TrieNode<>(this.dataMap, i11 ^ this.nodeMap, TrieNodeKt.access$removeNodeAtIndex(objArr, i10), mutabilityOwnership);
    }

    private final TrieNode<K, V> mutableReplaceNode(TrieNode<K, V> trieNode, TrieNode<K, V> trieNode2, int i10, int i11, MutabilityOwnership mutabilityOwnership) {
        if (trieNode2 == null) {
            return mutableRemoveNodeAtIndex(i10, i11, mutabilityOwnership);
        }
        if (this.ownedBy != mutabilityOwnership && trieNode == trieNode2) {
            return this;
        }
        return mutableUpdateNodeAtIndex(i10, trieNode2, mutabilityOwnership);
    }

    private final TrieNode<K, V> mutableUpdateNodeAtIndex(int i10, TrieNode<K, V> trieNode, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1 && trieNode.buffer.length == 2 && trieNode.nodeMap == 0) {
            trieNode.dataMap = this.nodeMap;
            return trieNode;
        } else if (this.ownedBy == mutabilityOwnership) {
            objArr[i10] = trieNode;
            return this;
        } else {
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            copyOf[i10] = trieNode;
            return new TrieNode<>(this.dataMap, this.nodeMap, copyOf, mutabilityOwnership);
        }
    }

    private final TrieNode<K, V> mutableUpdateValueAtIndex(int i10, V v10, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
            this.buffer[i10 + 1] = v10;
            return this;
        }
        persistentHashMapBuilder.setModCount$runtime(persistentHashMapBuilder.getModCount$runtime() + 1);
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        copyOf[i10 + 1] = v10;
        return new TrieNode<>(this.dataMap, this.nodeMap, copyOf, persistentHashMapBuilder.getOwnership());
    }

    private final TrieNode<K, V> removeEntryAtIndex(int i10, int i11) {
        Object[] objArr = this.buffer;
        if (objArr.length == 2) {
            return null;
        }
        return new TrieNode<>(i11 ^ this.dataMap, this.nodeMap, TrieNodeKt.access$removeEntryAtIndex(objArr, i10));
    }

    private final TrieNode<K, V> removeNodeAtIndex(int i10, int i11) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1) {
            return null;
        }
        return new TrieNode<>(this.dataMap, i11 ^ this.nodeMap, TrieNodeKt.access$removeNodeAtIndex(objArr, i10));
    }

    private final TrieNode<K, V> replaceNode(TrieNode<K, V> trieNode, TrieNode<K, V> trieNode2, int i10, int i11) {
        if (trieNode2 == null) {
            return removeNodeAtIndex(i10, i11);
        }
        if (trieNode != trieNode2) {
            return updateNodeAtIndex(i10, i11, trieNode2);
        }
        return this;
    }

    private final TrieNode<K, V> updateNodeAtIndex(int i10, int i11, TrieNode<K, V> trieNode) {
        Object[] objArr = trieNode.buffer;
        if (objArr.length == 2 && trieNode.nodeMap == 0) {
            if (this.buffer.length == 1) {
                trieNode.dataMap = this.nodeMap;
                return trieNode;
            }
            return new TrieNode<>(this.dataMap ^ i11, i11 ^ this.nodeMap, TrieNodeKt.access$replaceNodeWithEntry(this.buffer, i10, entryKeyIndex$runtime(i11), objArr[0], objArr[1]));
        }
        Object[] objArr2 = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr2, objArr2.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        copyOf[i10] = trieNode;
        return new TrieNode<>(this.dataMap, this.nodeMap, copyOf);
    }

    private final TrieNode<K, V> updateValueAtIndex(int i10, V v10) {
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        copyOf[i10 + 1] = v10;
        return new TrieNode<>(this.dataMap, this.nodeMap, copyOf);
    }

    private final V valueAtKeyIndex(int i10) {
        return (V) this.buffer[i10 + 1];
    }

    public final void accept$runtime(@NotNull p<? super TrieNode<K, V>, ? super Integer, ? super Integer, ? super Integer, ? super Integer, Unit> pVar) {
        accept(pVar, 0, 0);
    }

    public final boolean containsKey(int i10, K k10, int i11) {
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasEntryAt$runtime(indexSegment)) {
            return Intrinsics.areEqual(k10, keyAtIndex(entryKeyIndex$runtime(indexSegment)));
        }
        if (hasNodeAt(indexSegment)) {
            TrieNode<K, V> nodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime(indexSegment));
            if (i11 == 30) {
                return nodeAtIndex$runtime.collisionContainsKey(k10);
            }
            return nodeAtIndex$runtime.containsKey(i10, k10, i11 + 5);
        }
        return false;
    }

    public final int entryCount$runtime() {
        return Integer.bitCount(this.dataMap);
    }

    public final int entryKeyIndex$runtime(int i10) {
        return Integer.bitCount((i10 - 1) & this.dataMap) * 2;
    }

    @Nullable
    public final V get(int i10, K k10, int i11) {
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasEntryAt$runtime(indexSegment)) {
            int entryKeyIndex$runtime = entryKeyIndex$runtime(indexSegment);
            if (!Intrinsics.areEqual(k10, keyAtIndex(entryKeyIndex$runtime))) {
                return null;
            }
            return valueAtKeyIndex(entryKeyIndex$runtime);
        } else if (!hasNodeAt(indexSegment)) {
            return null;
        } else {
            TrieNode<K, V> nodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime(indexSegment));
            if (i11 == 30) {
                return nodeAtIndex$runtime.collisionGet(k10);
            }
            return nodeAtIndex$runtime.get(i10, k10, i11 + 5);
        }
    }

    @NotNull
    public final Object[] getBuffer$runtime() {
        return this.buffer;
    }

    public final boolean hasEntryAt$runtime(int i10) {
        if ((i10 & this.dataMap) != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final TrieNode<K, V> mutablePut(int i10, K k10, V v10, int i11, @NotNull PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        TrieNode<K, V> mutablePut;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasEntryAt$runtime(indexSegment)) {
            int entryKeyIndex$runtime = entryKeyIndex$runtime(indexSegment);
            if (Intrinsics.areEqual(k10, keyAtIndex(entryKeyIndex$runtime))) {
                persistentHashMapBuilder.setOperationResult$runtime(valueAtKeyIndex(entryKeyIndex$runtime));
                if (valueAtKeyIndex(entryKeyIndex$runtime) == v10) {
                    return this;
                }
                return mutableUpdateValueAtIndex(entryKeyIndex$runtime, v10, persistentHashMapBuilder);
            }
            persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() + 1);
            return mutableMoveEntryToNode(entryKeyIndex$runtime, indexSegment, i10, k10, v10, i11, persistentHashMapBuilder.getOwnership());
        } else if (hasNodeAt(indexSegment)) {
            int nodeIndex$runtime = nodeIndex$runtime(indexSegment);
            TrieNode<K, V> nodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime);
            if (i11 == 30) {
                mutablePut = nodeAtIndex$runtime.mutableCollisionPut(k10, v10, persistentHashMapBuilder);
            } else {
                mutablePut = nodeAtIndex$runtime.mutablePut(i10, k10, v10, i11 + 5, persistentHashMapBuilder);
            }
            if (nodeAtIndex$runtime == mutablePut) {
                return this;
            }
            return mutableUpdateNodeAtIndex(nodeIndex$runtime, mutablePut, persistentHashMapBuilder.getOwnership());
        } else {
            persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() + 1);
            return mutableInsertEntryAt(indexSegment, k10, v10, persistentHashMapBuilder.getOwnership());
        }
    }

    @NotNull
    public final TrieNode<K, V> mutablePutAll(@NotNull TrieNode<K, V> trieNode, int i10, @NotNull DeltaCounter deltaCounter, @NotNull PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        boolean z10;
        TrieNode<K, V> trieNode2;
        if (this == trieNode) {
            deltaCounter.plusAssign(calculateSize());
            return this;
        } else if (i10 > 30) {
            return mutableCollisionPutAll(trieNode, deltaCounter, persistentHashMapBuilder.getOwnership());
        } else {
            int i11 = this.nodeMap | trieNode.nodeMap;
            int i12 = this.dataMap;
            int i13 = trieNode.dataMap;
            int i14 = i12 & i13;
            int i15 = (i12 ^ i13) & (~i11);
            while (i14 != 0) {
                int lowestOneBit = Integer.lowestOneBit(i14);
                if (Intrinsics.areEqual(keyAtIndex(entryKeyIndex$runtime(lowestOneBit)), trieNode.keyAtIndex(trieNode.entryKeyIndex$runtime(lowestOneBit)))) {
                    i15 |= lowestOneBit;
                } else {
                    i11 |= lowestOneBit;
                }
                i14 ^= lowestOneBit;
            }
            int i16 = 0;
            if ((i11 & i15) == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                PreconditionsKt.throwIllegalStateException("Check failed.");
            }
            if (Intrinsics.areEqual(this.ownedBy, persistentHashMapBuilder.getOwnership()) && this.dataMap == i15 && this.nodeMap == i11) {
                trieNode2 = this;
            } else {
                trieNode2 = new TrieNode<>(i15, i11, new Object[(Integer.bitCount(i15) * 2) + Integer.bitCount(i11)]);
            }
            int i17 = i11;
            int i18 = 0;
            while (i17 != 0) {
                int lowestOneBit2 = Integer.lowestOneBit(i17);
                Object[] objArr = trieNode2.buffer;
                objArr[(objArr.length - 1) - i18] = mutablePutAllFromOtherNodeCell(trieNode, lowestOneBit2, i10, deltaCounter, persistentHashMapBuilder);
                i18++;
                i17 ^= lowestOneBit2;
            }
            while (i15 != 0) {
                int lowestOneBit3 = Integer.lowestOneBit(i15);
                int i19 = i16 * 2;
                if (!trieNode.hasEntryAt$runtime(lowestOneBit3)) {
                    int entryKeyIndex$runtime = entryKeyIndex$runtime(lowestOneBit3);
                    trieNode2.buffer[i19] = keyAtIndex(entryKeyIndex$runtime);
                    trieNode2.buffer[i19 + 1] = valueAtKeyIndex(entryKeyIndex$runtime);
                } else {
                    int entryKeyIndex$runtime2 = trieNode.entryKeyIndex$runtime(lowestOneBit3);
                    trieNode2.buffer[i19] = trieNode.keyAtIndex(entryKeyIndex$runtime2);
                    trieNode2.buffer[i19 + 1] = trieNode.valueAtKeyIndex(entryKeyIndex$runtime2);
                    if (hasEntryAt$runtime(lowestOneBit3)) {
                        deltaCounter.setCount(deltaCounter.getCount() + 1);
                    }
                }
                i16++;
                i15 ^= lowestOneBit3;
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

    @Nullable
    public final TrieNode<K, V> mutableRemove(int i10, K k10, int i11, @NotNull PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        TrieNode<K, V> mutableRemove;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasEntryAt$runtime(indexSegment)) {
            int entryKeyIndex$runtime = entryKeyIndex$runtime(indexSegment);
            return Intrinsics.areEqual(k10, keyAtIndex(entryKeyIndex$runtime)) ? mutableRemoveEntryAtIndex(entryKeyIndex$runtime, indexSegment, persistentHashMapBuilder) : this;
        } else if (hasNodeAt(indexSegment)) {
            int nodeIndex$runtime = nodeIndex$runtime(indexSegment);
            TrieNode<K, V> nodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime);
            if (i11 == 30) {
                mutableRemove = nodeAtIndex$runtime.mutableCollisionRemove(k10, persistentHashMapBuilder);
            } else {
                mutableRemove = nodeAtIndex$runtime.mutableRemove(i10, k10, i11 + 5, persistentHashMapBuilder);
            }
            return mutableReplaceNode(nodeAtIndex$runtime, mutableRemove, nodeIndex$runtime, indexSegment, persistentHashMapBuilder.getOwnership());
        } else {
            return this;
        }
    }

    @NotNull
    public final TrieNode<K, V> nodeAtIndex$runtime(int i10) {
        Object obj = this.buffer[i10];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode>");
        return (TrieNode) obj;
    }

    public final int nodeIndex$runtime(int i10) {
        return (this.buffer.length - 1) - Integer.bitCount((i10 - 1) & this.nodeMap);
    }

    @Nullable
    public final ModificationResult<K, V> put(int i10, K k10, V v10, int i11) {
        ModificationResult<K, V> put;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasEntryAt$runtime(indexSegment)) {
            int entryKeyIndex$runtime = entryKeyIndex$runtime(indexSegment);
            if (Intrinsics.areEqual(k10, keyAtIndex(entryKeyIndex$runtime))) {
                if (valueAtKeyIndex(entryKeyIndex$runtime) == v10) {
                    return null;
                }
                return updateValueAtIndex(entryKeyIndex$runtime, v10).asUpdateResult();
            }
            return moveEntryToNode(entryKeyIndex$runtime, indexSegment, i10, k10, v10, i11).asInsertResult();
        } else if (hasNodeAt(indexSegment)) {
            int nodeIndex$runtime = nodeIndex$runtime(indexSegment);
            TrieNode<K, V> nodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime);
            if (i11 == 30) {
                put = nodeAtIndex$runtime.collisionPut(k10, v10);
                if (put == null) {
                    return null;
                }
            } else {
                put = nodeAtIndex$runtime.put(i10, k10, v10, i11 + 5);
                if (put == null) {
                    return null;
                }
            }
            put.setNode(updateNodeAtIndex(nodeIndex$runtime, indexSegment, put.getNode()));
            return put;
        } else {
            return insertEntryAt(indexSegment, k10, v10).asInsertResult();
        }
    }

    @Nullable
    public final TrieNode<K, V> remove(int i10, K k10, int i11) {
        TrieNode<K, V> remove;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasEntryAt$runtime(indexSegment)) {
            int entryKeyIndex$runtime = entryKeyIndex$runtime(indexSegment);
            return Intrinsics.areEqual(k10, keyAtIndex(entryKeyIndex$runtime)) ? removeEntryAtIndex(entryKeyIndex$runtime, indexSegment) : this;
        } else if (hasNodeAt(indexSegment)) {
            int nodeIndex$runtime = nodeIndex$runtime(indexSegment);
            TrieNode<K, V> nodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime);
            if (i11 == 30) {
                remove = nodeAtIndex$runtime.collisionRemove(k10);
            } else {
                remove = nodeAtIndex$runtime.remove(i10, k10, i11 + 5);
            }
            return replaceNode(nodeAtIndex$runtime, remove, nodeIndex$runtime, indexSegment);
        } else {
            return this;
        }
    }

    private final TrieNode<K, V> collisionRemove(K k10, V v10) {
        d u10 = e.u(e.v(0, this.buffer.length), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (true) {
                if (!Intrinsics.areEqual(k10, keyAtIndex(c10)) || !Intrinsics.areEqual(v10, valueAtKeyIndex(c10))) {
                    if (c10 == d10) {
                        break;
                    }
                    c10 += e10;
                } else {
                    return collisionRemoveEntryAtIndex(c10);
                }
            }
        }
        return this;
    }

    private final TrieNode<K, V> mutableCollisionRemove(K k10, V v10, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        d u10 = e.u(e.v(0, this.buffer.length), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (true) {
                if (!Intrinsics.areEqual(k10, keyAtIndex(c10)) || !Intrinsics.areEqual(v10, valueAtKeyIndex(c10))) {
                    if (c10 == d10) {
                        break;
                    }
                    c10 += e10;
                } else {
                    return mutableCollisionRemoveEntryAtIndex(c10, persistentHashMapBuilder);
                }
            }
        }
        return this;
    }

    public TrieNode(int i10, int i11, @NotNull Object[] objArr) {
        this(i10, i11, objArr, null);
    }

    @Nullable
    public final TrieNode<K, V> mutableRemove(int i10, K k10, V v10, int i11, @NotNull PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        TrieNode<K, V> mutableRemove;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasEntryAt$runtime(indexSegment)) {
            int entryKeyIndex$runtime = entryKeyIndex$runtime(indexSegment);
            return (Intrinsics.areEqual(k10, keyAtIndex(entryKeyIndex$runtime)) && Intrinsics.areEqual(v10, valueAtKeyIndex(entryKeyIndex$runtime))) ? mutableRemoveEntryAtIndex(entryKeyIndex$runtime, indexSegment, persistentHashMapBuilder) : this;
        } else if (hasNodeAt(indexSegment)) {
            int nodeIndex$runtime = nodeIndex$runtime(indexSegment);
            TrieNode<K, V> nodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime);
            if (i11 == 30) {
                mutableRemove = nodeAtIndex$runtime.mutableCollisionRemove(k10, v10, persistentHashMapBuilder);
            } else {
                mutableRemove = nodeAtIndex$runtime.mutableRemove(i10, k10, v10, i11 + 5, persistentHashMapBuilder);
            }
            return mutableReplaceNode(nodeAtIndex$runtime, mutableRemove, nodeIndex$runtime, indexSegment, persistentHashMapBuilder.getOwnership());
        } else {
            return this;
        }
    }

    @Nullable
    public final TrieNode<K, V> remove(int i10, K k10, V v10, int i11) {
        TrieNode<K, V> remove;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i11);
        if (hasEntryAt$runtime(indexSegment)) {
            int entryKeyIndex$runtime = entryKeyIndex$runtime(indexSegment);
            return (Intrinsics.areEqual(k10, keyAtIndex(entryKeyIndex$runtime)) && Intrinsics.areEqual(v10, valueAtKeyIndex(entryKeyIndex$runtime))) ? removeEntryAtIndex(entryKeyIndex$runtime, indexSegment) : this;
        } else if (hasNodeAt(indexSegment)) {
            int nodeIndex$runtime = nodeIndex$runtime(indexSegment);
            TrieNode<K, V> nodeAtIndex$runtime = nodeAtIndex$runtime(nodeIndex$runtime);
            if (i11 == 30) {
                remove = nodeAtIndex$runtime.collisionRemove(k10, v10);
            } else {
                remove = nodeAtIndex$runtime.remove(i10, k10, v10, i11 + 5);
            }
            return replaceNode(nodeAtIndex$runtime, remove, nodeIndex$runtime, indexSegment);
        } else {
            return this;
        }
    }
}
