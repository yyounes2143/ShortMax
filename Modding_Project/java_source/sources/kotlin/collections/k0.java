package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Iterables.kt */
@Metadata
/* loaded from: classes8.dex */
public final class k0<T> implements Iterable<IndexedValue<? extends T>>, KMappedMarker {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function0<Iterator<T>> f61006a;

    /* JADX WARN: Multi-variable type inference failed */
    public k0(@NotNull Function0<? extends Iterator<? extends T>> iteratorFactory) {
        Intrinsics.checkNotNullParameter(iteratorFactory, "iteratorFactory");
        this.f61006a = iteratorFactory;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<IndexedValue<T>> iterator() {
        return new l0(this.f61006a.invoke());
    }
}
