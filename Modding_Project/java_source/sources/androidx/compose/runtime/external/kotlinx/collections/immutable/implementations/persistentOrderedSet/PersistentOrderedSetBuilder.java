package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentOrderedSetBuilder.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentOrderedSetBuilder<E> extends j<E> implements PersistentSet.Builder<E> {
    public static final int $stable = 8;
    @Nullable
    private Object firstElement;
    @NotNull
    private final PersistentHashMapBuilder<E, Links> hashMapBuilder;
    @Nullable
    private Object lastElement;
    @NotNull
    private PersistentOrderedSet<E> set;

    public PersistentOrderedSetBuilder(@NotNull PersistentOrderedSet<E> persistentOrderedSet) {
        this.set = persistentOrderedSet;
        this.firstElement = persistentOrderedSet.getFirstElement$runtime();
        this.lastElement = this.set.getLastElement$runtime();
        this.hashMapBuilder = this.set.getHashMap$runtime().builder();
    }

    @Override // kotlin.collections.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e10) {
        if (this.hashMapBuilder.containsKey(e10)) {
            return false;
        }
        if (isEmpty()) {
            this.firstElement = e10;
            this.lastElement = e10;
            this.hashMapBuilder.put(e10, new Links());
            return true;
        }
        Links links = this.hashMapBuilder.get(this.lastElement);
        Intrinsics.checkNotNull(links);
        ((PersistentHashMapBuilder<E, Links>) this.hashMapBuilder).put(this.lastElement, links.withNext(e10));
        this.hashMapBuilder.put(e10, new Links(this.lastElement));
        this.lastElement = e10;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.hashMapBuilder.clear();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        this.firstElement = endOfChain;
        this.lastElement = endOfChain;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.hashMapBuilder.containsKey(obj);
    }

    @Nullable
    public final Object getFirstElement$runtime() {
        return this.firstElement;
    }

    @NotNull
    public final PersistentHashMapBuilder<E, Links> getHashMapBuilder$runtime() {
        return this.hashMapBuilder;
    }

    @Override // kotlin.collections.j
    public int getSize() {
        return this.hashMapBuilder.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<E> iterator() {
        return new PersistentOrderedSetMutableIterator(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        Links remove = this.hashMapBuilder.remove(obj);
        if (remove == null) {
            return false;
        }
        if (remove.getHasPrevious()) {
            Links links = this.hashMapBuilder.get(remove.getPrevious());
            Intrinsics.checkNotNull(links);
            ((PersistentHashMapBuilder<E, Links>) this.hashMapBuilder).put(remove.getPrevious(), links.withNext(remove.getNext()));
        } else {
            this.firstElement = remove.getNext();
        }
        if (remove.getHasNext()) {
            Links links2 = this.hashMapBuilder.get(remove.getNext());
            Intrinsics.checkNotNull(links2);
            ((PersistentHashMapBuilder<E, Links>) this.hashMapBuilder).put(remove.getNext(), links2.withPrevious(remove.getPrevious()));
            return true;
        }
        this.lastElement = remove.getPrevious();
        return true;
    }

    public final void setFirstElement$runtime(@Nullable Object obj) {
        this.firstElement = obj;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection.Builder
    @NotNull
    public PersistentSet<E> build() {
        PersistentOrderedSet<E> persistentOrderedSet;
        PersistentHashMap<E, Links> build = this.hashMapBuilder.build();
        if (build == this.set.getHashMap$runtime()) {
            CommonFunctionsKt.m1490assert(this.firstElement == this.set.getFirstElement$runtime());
            CommonFunctionsKt.m1490assert(this.lastElement == this.set.getLastElement$runtime());
            persistentOrderedSet = this.set;
        } else {
            persistentOrderedSet = new PersistentOrderedSet<>(this.firstElement, this.lastElement, build);
        }
        this.set = persistentOrderedSet;
        return persistentOrderedSet;
    }
}
