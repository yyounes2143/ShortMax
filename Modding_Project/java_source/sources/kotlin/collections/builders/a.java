package kotlin.collections.builders;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MapBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a<K, V> extends ns.a<Map.Entry<K, V>, K, V> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final MapBuilder<K, V> f60988a;

    public a(@NotNull MapBuilder<K, V> backing) {
        Intrinsics.checkNotNullParameter(backing, "backing");
        this.f60988a = backing;
    }

    @Override // kotlin.collections.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return add((Map.Entry) ((Map.Entry) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(@NotNull Collection<? extends Map.Entry<K, V>> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f60988a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.f60988a.u(elements);
    }

    @Override // ns.a
    public boolean containsEntry(@NotNull Map.Entry<? extends K, ? extends V> element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.f60988a.v(element);
    }

    @Override // kotlin.collections.j
    public int getSize() {
        return this.f60988a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f60988a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<Map.Entry<K, V>> iterator() {
        return this.f60988a.B();
    }

    @Override // ns.a
    public boolean remove(@NotNull Map.Entry element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.f60988a.U(element);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f60988a.s();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f60988a.s();
        return super.retainAll(elements);
    }

    public boolean add(@NotNull Map.Entry<K, V> element) {
        Intrinsics.checkNotNullParameter(element, "element");
        throw new UnsupportedOperationException();
    }
}
