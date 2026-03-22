package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentVectorMutableIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentVectorMutableIterator<T> extends AbstractListIterator<T> implements ListIterator<T>, KMutableListIterator {
    public static final int $stable = 8;
    @NotNull
    private final PersistentVectorBuilder<T> builder;
    private int expectedModCount;
    private int lastIteratedIndex;
    @Nullable
    private TrieIterator<? extends T> trieIterator;

    public PersistentVectorMutableIterator(@NotNull PersistentVectorBuilder<T> persistentVectorBuilder, int i10) {
        super(i10, persistentVectorBuilder.size());
        this.builder = persistentVectorBuilder;
        this.expectedModCount = persistentVectorBuilder.getModCount$runtime();
        this.lastIteratedIndex = -1;
        setupTrieIterator();
    }

    private final void checkForComodification() {
        if (this.expectedModCount == this.builder.getModCount$runtime()) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    private final void checkHasIterated() {
        if (this.lastIteratedIndex != -1) {
            return;
        }
        throw new IllegalStateException();
    }

    private final void reset() {
        setSize(this.builder.size());
        this.expectedModCount = this.builder.getModCount$runtime();
        this.lastIteratedIndex = -1;
        setupTrieIterator();
    }

    private final void setupTrieIterator() {
        Object[] root$runtime = this.builder.getRoot$runtime();
        if (root$runtime == null) {
            this.trieIterator = null;
            return;
        }
        int rootSize = UtilsKt.rootSize(this.builder.size());
        int j10 = e.j(getIndex(), rootSize);
        int rootShift$runtime = (this.builder.getRootShift$runtime() / 5) + 1;
        TrieIterator<? extends T> trieIterator = this.trieIterator;
        if (trieIterator == null) {
            this.trieIterator = new TrieIterator<>(root$runtime, j10, rootSize, rootShift$runtime);
            return;
        }
        Intrinsics.checkNotNull(trieIterator);
        trieIterator.reset$runtime(root$runtime, j10, rootSize, rootShift$runtime);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public void add(T t10) {
        checkForComodification();
        this.builder.add(getIndex(), t10);
        setIndex(getIndex() + 1);
        reset();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public T next() {
        checkForComodification();
        checkHasNext$runtime();
        this.lastIteratedIndex = getIndex();
        TrieIterator<? extends T> trieIterator = this.trieIterator;
        if (trieIterator == null) {
            Object[] tail$runtime = this.builder.getTail$runtime();
            int index = getIndex();
            setIndex(index + 1);
            return (T) tail$runtime[index];
        } else if (trieIterator.hasNext()) {
            setIndex(getIndex() + 1);
            return trieIterator.next();
        } else {
            Object[] tail$runtime2 = this.builder.getTail$runtime();
            int index2 = getIndex();
            setIndex(index2 + 1);
            return (T) tail$runtime2[index2 - trieIterator.getSize()];
        }
    }

    @Override // java.util.ListIterator
    public T previous() {
        checkForComodification();
        checkHasPrevious$runtime();
        this.lastIteratedIndex = getIndex() - 1;
        TrieIterator<? extends T> trieIterator = this.trieIterator;
        if (trieIterator == null) {
            Object[] tail$runtime = this.builder.getTail$runtime();
            setIndex(getIndex() - 1);
            return (T) tail$runtime[getIndex()];
        } else if (getIndex() > trieIterator.getSize()) {
            Object[] tail$runtime2 = this.builder.getTail$runtime();
            setIndex(getIndex() - 1);
            return (T) tail$runtime2[getIndex() - trieIterator.getSize()];
        } else {
            setIndex(getIndex() - 1);
            return trieIterator.previous();
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public void remove() {
        checkForComodification();
        checkHasIterated();
        this.builder.remove(this.lastIteratedIndex);
        if (this.lastIteratedIndex < getIndex()) {
            setIndex(this.lastIteratedIndex);
        }
        reset();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public void set(T t10) {
        checkForComodification();
        checkHasIterated();
        this.builder.set(this.lastIteratedIndex, t10);
        this.expectedModCount = this.builder.getModCount$runtime();
        setupTrieIterator();
    }
}
