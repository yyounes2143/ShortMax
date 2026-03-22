package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentHashMapBuilderContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public class PersistentHashMapBuilderBaseIterator<K, V, T> extends PersistentHashMapBaseIterator<K, V, T> implements Iterator<T>, KMutableIterator {
    public static final int $stable = 8;
    @NotNull
    private final PersistentHashMapBuilder<K, V> builder;
    private int expectedModCount;
    @Nullable
    private K lastIteratedKey;
    private boolean nextWasInvoked;

    public PersistentHashMapBuilderBaseIterator(@NotNull PersistentHashMapBuilder<K, V> persistentHashMapBuilder, @NotNull TrieNodeBaseIterator<K, V, T>[] trieNodeBaseIteratorArr) {
        super(persistentHashMapBuilder.getNode$runtime(), trieNodeBaseIteratorArr);
        this.builder = persistentHashMapBuilder;
        this.expectedModCount = persistentHashMapBuilder.getModCount$runtime();
    }

    private final void checkForComodification() {
        if (this.builder.getModCount$runtime() == this.expectedModCount) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    private final void checkNextWasInvoked() {
        if (this.nextWasInvoked) {
            return;
        }
        throw new IllegalStateException();
    }

    private final void resetPath(int i10, TrieNode<?, ?> trieNode, K k10, int i11) {
        int i12 = i11 * 5;
        if (i12 > 30) {
            getPath()[i11].reset(trieNode.getBuffer$runtime(), trieNode.getBuffer$runtime().length, 0);
            while (!Intrinsics.areEqual(getPath()[i11].currentKey(), k10)) {
                getPath()[i11].moveToNextKey();
            }
            setPathLastIndex(i11);
            return;
        }
        int indexSegment = 1 << TrieNodeKt.indexSegment(i10, i12);
        if (trieNode.hasEntryAt$runtime(indexSegment)) {
            getPath()[i11].reset(trieNode.getBuffer$runtime(), trieNode.entryCount$runtime() * 2, trieNode.entryKeyIndex$runtime(indexSegment));
            setPathLastIndex(i11);
            return;
        }
        int nodeIndex$runtime = trieNode.nodeIndex$runtime(indexSegment);
        TrieNode<?, ?> nodeAtIndex$runtime = trieNode.nodeAtIndex$runtime(nodeIndex$runtime);
        getPath()[i11].reset(trieNode.getBuffer$runtime(), trieNode.entryCount$runtime() * 2, nodeIndex$runtime);
        resetPath(i10, nodeAtIndex$runtime, k10, i11 + 1);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public T next() {
        checkForComodification();
        this.lastIteratedKey = currentKey();
        this.nextWasInvoked = true;
        return (T) super.next();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public void remove() {
        int i10;
        checkNextWasInvoked();
        if (hasNext()) {
            K currentKey = currentKey();
            TypeIntrinsics.asMutableMap(this.builder).remove(this.lastIteratedKey);
            if (currentKey != null) {
                i10 = currentKey.hashCode();
            } else {
                i10 = 0;
            }
            resetPath(i10, this.builder.getNode$runtime(), currentKey, 0);
        } else {
            TypeIntrinsics.asMutableMap(this.builder).remove(this.lastIteratedKey);
        }
        this.lastIteratedKey = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.getModCount$runtime();
    }

    public final void setValue(K k10, V v10) {
        int i10;
        if (!this.builder.containsKey(k10)) {
            return;
        }
        if (hasNext()) {
            K currentKey = currentKey();
            this.builder.put(k10, v10);
            if (currentKey != null) {
                i10 = currentKey.hashCode();
            } else {
                i10 = 0;
            }
            resetPath(i10, this.builder.getNode$runtime(), currentKey, 0);
        } else {
            this.builder.put(k10, v10);
        }
        this.expectedModCount = this.builder.getModCount$runtime();
    }
}
