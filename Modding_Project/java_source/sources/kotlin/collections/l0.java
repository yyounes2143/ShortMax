package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Iterators.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l0<T> implements Iterator<IndexedValue<? extends T>>, KMappedMarker {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Iterator<T> f61009a;

    /* renamed from: b  reason: collision with root package name */
    private int f61010b;

    /* JADX WARN: Multi-variable type inference failed */
    public l0(@NotNull Iterator<? extends T> iterator) {
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        this.f61009a = iterator;
    }

    @Override // java.util.Iterator
    @NotNull
    /* renamed from: a */
    public final IndexedValue<T> next() {
        int i10 = this.f61010b;
        this.f61010b = i10 + 1;
        if (i10 < 0) {
            CollectionsKt.y();
        }
        return new IndexedValue<>(i10, this.f61009a.next());
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f61009a.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
