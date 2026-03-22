package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashSetIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public class PersistentHashSetIterator<E> implements Iterator<E>, KMappedMarker {
    public static final int $stable = 8;
    private boolean hasNext;
    @NotNull
    private final List<TrieNodeIterator<E>> path;
    private int pathLastIndex;

    public PersistentHashSetIterator(@NotNull TrieNode<E> trieNode) {
        List<TrieNodeIterator<E>> t10 = CollectionsKt.t(new TrieNodeIterator());
        this.path = t10;
        this.hasNext = true;
        TrieNodeIterator.reset$default(t10.get(0), trieNode.getBuffer(), 0, 2, null);
        this.pathLastIndex = 0;
        ensureNextElementIsReady();
    }

    private final void ensureNextElementIsReady() {
        if (this.path.get(this.pathLastIndex).hasNextElement()) {
            return;
        }
        for (int i10 = this.pathLastIndex; -1 < i10; i10--) {
            int moveToNextNodeWithData = moveToNextNodeWithData(i10);
            if (moveToNextNodeWithData == -1 && this.path.get(i10).hasNextCell()) {
                this.path.get(i10).moveToNextCell();
                moveToNextNodeWithData = moveToNextNodeWithData(i10);
            }
            if (moveToNextNodeWithData != -1) {
                this.pathLastIndex = moveToNextNodeWithData;
                return;
            }
            if (i10 > 0) {
                this.path.get(i10 - 1).moveToNextCell();
            }
            this.path.get(i10).reset(TrieNode.Companion.getEMPTY$runtime().getBuffer(), 0);
        }
        this.hasNext = false;
    }

    private final int moveToNextNodeWithData(int i10) {
        if (this.path.get(i10).hasNextElement()) {
            return i10;
        }
        if (this.path.get(i10).hasNextNode()) {
            TrieNode<? extends E> currentNode = this.path.get(i10).currentNode();
            int i11 = i10 + 1;
            if (i11 == this.path.size()) {
                this.path.add(new TrieNodeIterator<>());
            }
            TrieNodeIterator.reset$default(this.path.get(i11), currentNode.getBuffer(), 0, 2, null);
            return moveToNextNodeWithData(i11);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final E currentElement() {
        CommonFunctionsKt.m1490assert(hasNext());
        return this.path.get(this.pathLastIndex).currentElement();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final List<TrieNodeIterator<E>> getPath() {
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
    public E next() {
        if (this.hasNext) {
            E nextElement = this.path.get(this.pathLastIndex).nextElement();
            ensureNextElementIsReady();
            return nextElement;
        }
        throw new NoSuchElementException();
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
