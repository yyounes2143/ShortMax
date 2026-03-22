package kotlin.collections.builders;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;
import org.jetbrains.annotations.NotNull;
/* compiled from: MapBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b<E> extends j<E> implements Set<E>, KMutableSet {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final MapBuilder<E, ?> f60989a;

    public b(@NotNull MapBuilder<E, ?> backing) {
        Intrinsics.checkNotNullParameter(backing, "backing");
        this.f60989a = backing;
    }

    @Override // kotlin.collections.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f60989a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f60989a.containsKey(obj);
    }

    @Override // kotlin.collections.j
    public int getSize() {
        return this.f60989a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f60989a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<E> iterator() {
        return this.f60989a.M();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.f60989a.X(obj);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f60989a.s();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f60989a.s();
        return super.retainAll(elements);
    }
}
