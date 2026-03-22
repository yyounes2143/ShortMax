package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashSetBuilder.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentHashSetBuilder<E> extends j<E> implements PersistentSet.Builder<E> {
    public static final int $stable = 8;
    private int modCount;
    @NotNull
    private TrieNode<E> node;
    @NotNull
    private MutabilityOwnership ownership = new MutabilityOwnership();
    @NotNull
    private PersistentHashSet<E> set;
    private int size;

    public PersistentHashSetBuilder(@NotNull PersistentHashSet<E> persistentHashSet) {
        this.set = persistentHashSet;
        this.node = this.set.getNode$runtime();
        this.size = this.set.size();
    }

    @Override // kotlin.collections.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e10) {
        int i10;
        int size = size();
        TrieNode<E> trieNode = this.node;
        if (e10 != null) {
            i10 = e10.hashCode();
        } else {
            i10 = 0;
        }
        this.node = trieNode.mutableAdd(i10, e10, 0, this);
        if (size == size()) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(@NotNull Collection<? extends E> collection) {
        PersistentHashSet<E> persistentHashSet;
        PersistentHashSetBuilder persistentHashSetBuilder;
        if (collection instanceof PersistentHashSet) {
            persistentHashSet = (PersistentHashSet) collection;
        } else {
            persistentHashSet = null;
        }
        if (persistentHashSet == null) {
            if (collection instanceof PersistentHashSetBuilder) {
                persistentHashSetBuilder = (PersistentHashSetBuilder) collection;
            } else {
                persistentHashSetBuilder = null;
            }
            if (persistentHashSetBuilder != null) {
                persistentHashSet = persistentHashSetBuilder.build();
            } else {
                persistentHashSet = null;
            }
        }
        if (persistentHashSet != null) {
            DeltaCounter deltaCounter = new DeltaCounter(0, 1, null);
            int size = size();
            TrieNode<E> mutableAddAll = this.node.mutableAddAll(persistentHashSet.getNode$runtime(), 0, deltaCounter, this);
            int size2 = (collection.size() + size) - deltaCounter.getCount();
            if (size != size2) {
                this.node = mutableAddAll;
                setSize(size2);
            }
            if (size == size()) {
                return false;
            }
            return true;
        }
        return super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        TrieNode<E> eMPTY$runtime = TrieNode.Companion.getEMPTY$runtime();
        Intrinsics.checkNotNull(eMPTY$runtime, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetBuilder>");
        this.node = eMPTY$runtime;
        setSize(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        int i10;
        TrieNode<E> trieNode = this.node;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        return trieNode.contains(i10, obj, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(@NotNull Collection<?> collection) {
        if (collection instanceof PersistentHashSet) {
            return this.node.containsAll(((PersistentHashSet) collection).getNode$runtime(), 0);
        }
        if (collection instanceof PersistentHashSetBuilder) {
            return this.node.containsAll(((PersistentHashSetBuilder) collection).node, 0);
        }
        return super.containsAll(collection);
    }

    public final int getModCount$runtime() {
        return this.modCount;
    }

    @NotNull
    public final TrieNode<E> getNode$runtime() {
        return this.node;
    }

    @NotNull
    public final MutabilityOwnership getOwnership$runtime() {
        return this.ownership;
    }

    @Override // kotlin.collections.j
    public int getSize() {
        return this.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<E> iterator() {
        return new PersistentHashSetMutableIterator(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int i10;
        int size = size();
        TrieNode<E> trieNode = this.node;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        this.node = trieNode.mutableRemove(i10, obj, 0, this);
        if (size == size()) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(@NotNull Collection<?> collection) {
        PersistentHashSet<E> persistentHashSet;
        PersistentHashSetBuilder persistentHashSetBuilder;
        if (collection instanceof PersistentHashSet) {
            persistentHashSet = (PersistentHashSet) collection;
        } else {
            persistentHashSet = null;
        }
        if (persistentHashSet == null) {
            if (collection instanceof PersistentHashSetBuilder) {
                persistentHashSetBuilder = (PersistentHashSetBuilder) collection;
            } else {
                persistentHashSetBuilder = null;
            }
            if (persistentHashSetBuilder != null) {
                persistentHashSet = persistentHashSetBuilder.build();
            } else {
                persistentHashSet = null;
            }
        }
        if (persistentHashSet != null) {
            DeltaCounter deltaCounter = new DeltaCounter(0, 1, null);
            int size = size();
            Object mutableRemoveAll = this.node.mutableRemoveAll(persistentHashSet.getNode$runtime(), 0, deltaCounter, this);
            int count = size - deltaCounter.getCount();
            if (count == 0) {
                clear();
            } else if (count != size) {
                Intrinsics.checkNotNull(mutableRemoveAll, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetBuilder>");
                this.node = (TrieNode) mutableRemoveAll;
                setSize(count);
            }
            if (size == size()) {
                return false;
            }
            return true;
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(@NotNull Collection<?> collection) {
        PersistentHashSet<E> persistentHashSet;
        PersistentHashSetBuilder persistentHashSetBuilder;
        if (collection instanceof PersistentHashSet) {
            persistentHashSet = (PersistentHashSet) collection;
        } else {
            persistentHashSet = null;
        }
        if (persistentHashSet == null) {
            if (collection instanceof PersistentHashSetBuilder) {
                persistentHashSetBuilder = (PersistentHashSetBuilder) collection;
            } else {
                persistentHashSetBuilder = null;
            }
            if (persistentHashSetBuilder != null) {
                persistentHashSet = persistentHashSetBuilder.build();
            } else {
                persistentHashSet = null;
            }
        }
        if (persistentHashSet != null) {
            DeltaCounter deltaCounter = new DeltaCounter(0, 1, null);
            int size = size();
            Object mutableRetainAll = this.node.mutableRetainAll(persistentHashSet.getNode$runtime(), 0, deltaCounter, this);
            int count = deltaCounter.getCount();
            if (count == 0) {
                clear();
            } else if (count != size) {
                Intrinsics.checkNotNull(mutableRetainAll, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetBuilder>");
                this.node = (TrieNode) mutableRetainAll;
                setSize(count);
            }
            if (size == size()) {
                return false;
            }
            return true;
        }
        return super.retainAll(collection);
    }

    public void setSize(int i10) {
        this.size = i10;
        this.modCount++;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet.Builder, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection.Builder
    @NotNull
    public PersistentHashSet<E> build() {
        PersistentHashSet<E> persistentHashSet;
        if (this.node == this.set.getNode$runtime()) {
            persistentHashSet = this.set;
        } else {
            this.ownership = new MutabilityOwnership();
            persistentHashSet = new PersistentHashSet<>(this.node, size());
        }
        this.set = persistentHashSet;
        return persistentHashSet;
    }
}
