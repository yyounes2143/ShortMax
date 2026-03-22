package kotlin.collections.builders;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.g;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableCollection;
import org.jetbrains.annotations.NotNull;
/* compiled from: MapBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c<V> extends g<V> implements Collection<V>, KMutableCollection {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final MapBuilder<?, V> f60990a;

    public c(@NotNull MapBuilder<?, V> backing) {
        Intrinsics.checkNotNullParameter(backing, "backing");
        this.f60990a = backing;
    }

    @Override // kotlin.collections.g, java.util.AbstractCollection, java.util.Collection
    public boolean add(V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends V> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f60990a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f60990a.containsValue(obj);
    }

    @Override // kotlin.collections.g
    public int getSize() {
        return this.f60990a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f60990a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<V> iterator() {
        return this.f60990a.a0();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        return this.f60990a.Y(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f60990a.s();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f60990a.s();
        return super.retainAll(elements);
    }
}
