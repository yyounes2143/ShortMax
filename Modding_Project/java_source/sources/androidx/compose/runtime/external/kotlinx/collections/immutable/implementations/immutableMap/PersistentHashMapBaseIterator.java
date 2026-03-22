package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class PersistentHashMapBaseIterator<K, V, T> implements Iterator<T>, KMappedMarker {
    public static final int $stable = 8;
    private boolean hasNext = true;
    @NotNull
    private final TrieNodeBaseIterator<K, V, T>[] path;
    private int pathLastIndex;

    public PersistentHashMapBaseIterator(@NotNull TrieNode<K, V> trieNode, @NotNull TrieNodeBaseIterator<K, V, T>[] trieNodeBaseIteratorArr) {
        this.path = trieNodeBaseIteratorArr;
        trieNodeBaseIteratorArr[0].reset(trieNode.getBuffer$runtime(), trieNode.entryCount$runtime() * 2);
        this.pathLastIndex = 0;
        ensureNextEntryIsReady();
    }

    private final void checkHasNext() {
        if (hasNext()) {
            return;
        }
        throw new NoSuchElementException();
    }

    private final void ensureNextEntryIsReady() {
        if (this.path[this.pathLastIndex].hasNextKey()) {
            return;
        }
        for (int i10 = this.pathLastIndex; -1 < i10; i10--) {
            int moveToNextNodeWithData = moveToNextNodeWithData(i10);
            if (moveToNextNodeWithData == -1 && this.path[i10].hasNextNode()) {
                this.path[i10].moveToNextNode();
                moveToNextNodeWithData = moveToNextNodeWithData(i10);
            }
            if (moveToNextNodeWithData != -1) {
                this.pathLastIndex = moveToNextNodeWithData;
                return;
            }
            if (i10 > 0) {
                this.path[i10 - 1].moveToNextNode();
            }
            this.path[i10].reset(TrieNode.Companion.getEMPTY$runtime().getBuffer$runtime(), 0);
        }
        this.hasNext = false;
    }

    private final int moveToNextNodeWithData(int i10) {
        if (this.path[i10].hasNextKey()) {
            return i10;
        }
        if (this.path[i10].hasNextNode()) {
            TrieNode<? extends K, ? extends V> currentNode = this.path[i10].currentNode();
            if (i10 == 6) {
                this.path[i10 + 1].reset(currentNode.getBuffer$runtime(), currentNode.getBuffer$runtime().length);
            } else {
                this.path[i10 + 1].reset(currentNode.getBuffer$runtime(), currentNode.entryCount$runtime() * 2);
            }
            return moveToNextNodeWithData(i10 + 1);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final K currentKey() {
        checkHasNext();
        return this.path[this.pathLastIndex].currentKey();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final TrieNodeBaseIterator<K, V, T>[] getPath() {
        return this.path;
    }

    protected final int getPathLastIndex() {
        return this.pathLastIndex;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // java.util.Iterator
    public T next() {
        checkHasNext();
        T next = this.path[this.pathLastIndex].next();
        ensureNextEntryIsReady();
        return next;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setPathLastIndex(int i10) {
        this.pathLastIndex = i10;
    }

    private static /* synthetic */ void getHasNext$annotations() {
    }
}
