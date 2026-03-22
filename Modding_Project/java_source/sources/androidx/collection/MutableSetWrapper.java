package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ScatterSet.kt */
@Metadata
/* loaded from: classes.dex */
public final class MutableSetWrapper<E> extends SetWrapper<E> implements Set<E>, KMutableSet {
    @NotNull
    private final MutableScatterSet<E> parent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableSetWrapper(@NotNull MutableScatterSet<E> parent) {
        super(parent);
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.parent = parent;
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean add(E e10) {
        return this.parent.add(e10);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.parent.addAll(elements);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public void clear() {
        this.parent.clear();
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<E> iterator() {
        return new MutableSetWrapper$iterator$1(this);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return this.parent.remove(obj);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.parent.removeAll(elements);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.parent.retainAll(elements);
    }
}
