package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;
import org.jetbrains.annotations.NotNull;
/* compiled from: OrderedScatterSet.kt */
@Metadata
/* loaded from: classes.dex */
final class MutableOrderedSetWrapper<E> extends OrderedSetWrapper<E> implements Set<E>, KMutableSet {
    @NotNull
    private final MutableOrderedScatterSet<E> parent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableOrderedSetWrapper(@NotNull MutableOrderedScatterSet<E> parent) {
        super(parent);
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.parent = parent;
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public boolean add(E e10) {
        return this.parent.add(e10);
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.parent.addAll(elements);
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public void clear() {
        this.parent.clear();
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<E> iterator() {
        return new MutableOrderedSetWrapper$iterator$1(this);
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return this.parent.remove(obj);
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.parent.removeAll(elements);
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.parent.retainAll(elements);
    }
}
