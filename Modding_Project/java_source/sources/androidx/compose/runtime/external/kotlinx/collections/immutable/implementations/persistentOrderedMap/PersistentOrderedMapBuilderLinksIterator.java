package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentOrderedMapBuilderContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public class PersistentOrderedMapBuilderLinksIterator<K, V> implements Iterator<LinkedValue<V>>, KMutableIterator {
    public static final int $stable = 8;
    @NotNull
    private final PersistentOrderedMapBuilder<K, V> builder;
    private int expectedModCount;
    private int index;
    @Nullable
    private Object lastIteratedKey = EndOfChain.INSTANCE;
    @Nullable
    private Object nextKey;
    private boolean nextWasInvoked;

    public PersistentOrderedMapBuilderLinksIterator(@Nullable Object obj, @NotNull PersistentOrderedMapBuilder<K, V> persistentOrderedMapBuilder) {
        this.nextKey = obj;
        this.builder = persistentOrderedMapBuilder;
        this.expectedModCount = persistentOrderedMapBuilder.getHashMapBuilder$runtime().getModCount$runtime();
    }

    private final void checkForComodification() {
        if (this.builder.getHashMapBuilder$runtime().getModCount$runtime() == this.expectedModCount) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    private final void checkHasNext() {
        if (hasNext()) {
            return;
        }
        throw new NoSuchElementException();
    }

    private final void checkNextWasInvoked() {
        if (this.nextWasInvoked) {
            return;
        }
        throw new IllegalStateException();
    }

    @NotNull
    public final PersistentOrderedMapBuilder<K, V> getBuilder$runtime() {
        return this.builder;
    }

    public final int getIndex$runtime() {
        return this.index;
    }

    @Nullable
    public final Object getLastIteratedKey$runtime() {
        return this.lastIteratedKey;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.index < this.builder.size()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public void remove() {
        checkNextWasInvoked();
        TypeIntrinsics.asMutableMap(this.builder).remove(this.lastIteratedKey);
        this.lastIteratedKey = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.getHashMapBuilder$runtime().getModCount$runtime();
        this.index--;
    }

    public final void setIndex$runtime(int i10) {
        this.index = i10;
    }

    public final void setLastIteratedKey$runtime(@Nullable Object obj) {
        this.lastIteratedKey = obj;
    }

    @Override // java.util.Iterator
    @NotNull
    public LinkedValue<V> next() {
        checkForComodification();
        checkHasNext();
        this.lastIteratedKey = this.nextKey;
        this.nextWasInvoked = true;
        this.index++;
        LinkedValue<V> linkedValue = this.builder.getHashMapBuilder$runtime().get(this.nextKey);
        if (linkedValue != null) {
            LinkedValue<V> linkedValue2 = linkedValue;
            this.nextKey = linkedValue2.getNext();
            return linkedValue2;
        }
        throw new ConcurrentModificationException("Hash code of a key (" + this.nextKey + ") has changed after it was added to the persistent map.");
    }
}
