package kotlin.collections.builders;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;
import org.jetbrains.annotations.NotNull;
/* compiled from: SetBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class SetBuilder<E> extends j<E> implements Set<E>, Serializable, KMutableSet {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a f60985b = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final SetBuilder f60986c = new SetBuilder(MapBuilder.f60958n.e());
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final MapBuilder<E, ?> f60987a;

    /* compiled from: SetBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public SetBuilder(@NotNull MapBuilder<E, ?> backing) {
        Intrinsics.checkNotNullParameter(backing, "backing");
        this.f60987a = backing;
    }

    private final Object writeReplace() {
        if (this.f60987a.L()) {
            return new SerializedCollection(this, 1);
        }
        throw new NotSerializableException("The set cannot be serialized while it is being built.");
    }

    @Override // kotlin.collections.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e10) {
        if (this.f60987a.n(e10) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f60987a.s();
        return super.addAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f60987a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f60987a.containsKey(obj);
    }

    @NotNull
    public final Set<E> d() {
        this.f60987a.r();
        if (size() > 0) {
            return this;
        }
        return f60986c;
    }

    @Override // kotlin.collections.j
    public int getSize() {
        return this.f60987a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f60987a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<E> iterator() {
        return this.f60987a.M();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.f60987a.X(obj);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f60987a.s();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f60987a.s();
        return super.retainAll(elements);
    }

    public SetBuilder() {
        this(new MapBuilder());
    }

    public SetBuilder(int i10) {
        this(new MapBuilder(i10));
    }
}
