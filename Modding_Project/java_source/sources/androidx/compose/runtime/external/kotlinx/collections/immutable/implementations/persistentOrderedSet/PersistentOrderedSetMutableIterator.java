package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentOrderedSetMutableIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentOrderedSetMutableIterator<E> extends PersistentOrderedSetIterator<E> implements Iterator<E>, KMutableIterator {
    public static final int $stable = 8;
    @NotNull
    private final PersistentOrderedSetBuilder<E> builder;
    private int expectedModCount;
    @Nullable
    private E lastIteratedElement;
    private boolean nextWasInvoked;

    public PersistentOrderedSetMutableIterator(@NotNull PersistentOrderedSetBuilder<E> persistentOrderedSetBuilder) {
        super(persistentOrderedSetBuilder.getFirstElement$runtime(), persistentOrderedSetBuilder.getHashMapBuilder$runtime());
        this.builder = persistentOrderedSetBuilder;
        this.expectedModCount = persistentOrderedSetBuilder.getHashMapBuilder$runtime().getModCount$runtime();
    }

    private final void checkForComodification() {
        if (this.builder.getHashMapBuilder$runtime().getModCount$runtime() == this.expectedModCount) {
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

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetIterator, java.util.Iterator
    public E next() {
        checkForComodification();
        E e10 = (E) super.next();
        this.lastIteratedElement = e10;
        this.nextWasInvoked = true;
        return e10;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetIterator, java.util.Iterator
    public void remove() {
        checkNextWasInvoked();
        PersistentOrderedSetBuilder<E> persistentOrderedSetBuilder = this.builder;
        TypeIntrinsics.asMutableCollection(persistentOrderedSetBuilder).remove(this.lastIteratedElement);
        this.lastIteratedElement = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.getHashMapBuilder$runtime().getModCount$runtime();
        setIndex$runtime(getIndex$runtime() - 1);
    }
}
