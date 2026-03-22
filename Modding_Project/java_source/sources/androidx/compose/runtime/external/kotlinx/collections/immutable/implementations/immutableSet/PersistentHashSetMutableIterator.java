package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentHashSetMutableIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentHashSetMutableIterator<E> extends PersistentHashSetIterator<E> implements Iterator<E>, KMutableIterator {
    public static final int $stable = 8;
    @NotNull
    private final PersistentHashSetBuilder<E> builder;
    private int expectedModCount;
    @Nullable
    private E lastIteratedElement;
    private boolean nextWasInvoked;

    public PersistentHashSetMutableIterator(@NotNull PersistentHashSetBuilder<E> persistentHashSetBuilder) {
        super(persistentHashSetBuilder.getNode$runtime());
        this.builder = persistentHashSetBuilder;
        this.expectedModCount = persistentHashSetBuilder.getModCount$runtime();
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

    private final boolean isCollision(TrieNode<?> trieNode) {
        if (trieNode.getBitmap() == 0) {
            return true;
        }
        return false;
    }

    private final void resetPath(int i10, TrieNode<?> trieNode, E e10, int i11) {
        boolean z10 = true;
        if (isCollision(trieNode)) {
            int y02 = n.y0(trieNode.getBuffer(), e10);
            if (y02 == -1) {
                z10 = false;
            }
            CommonFunctionsKt.m1490assert(z10);
            getPath().get(i11).reset(trieNode.getBuffer(), y02);
            setPathLastIndex(i11);
            return;
        }
        int indexOfCellAt$runtime = trieNode.indexOfCellAt$runtime(1 << TrieNodeKt.indexSegment(i10, i11 * 5));
        getPath().get(i11).reset(trieNode.getBuffer(), indexOfCellAt$runtime);
        Object obj = trieNode.getBuffer()[indexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            resetPath(i10, (TrieNode) obj, e10, i11 + 1);
        } else {
            setPathLastIndex(i11);
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetIterator, java.util.Iterator
    public E next() {
        checkForComodification();
        E e10 = (E) super.next();
        this.lastIteratedElement = e10;
        this.nextWasInvoked = true;
        return e10;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetIterator, java.util.Iterator
    public void remove() {
        int i10;
        checkNextWasInvoked();
        if (hasNext()) {
            E currentElement = currentElement();
            TypeIntrinsics.asMutableCollection(this.builder).remove(this.lastIteratedElement);
            if (currentElement != null) {
                i10 = currentElement.hashCode();
            } else {
                i10 = 0;
            }
            resetPath(i10, this.builder.getNode$runtime(), currentElement, 0);
        } else {
            TypeIntrinsics.asMutableCollection(this.builder).remove(this.lastIteratedElement);
        }
        this.lastIteratedElement = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.getModCount$runtime();
    }
}
