package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata
/* loaded from: classes8.dex */
public final class v<T, R> implements Sequence<R> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Sequence<T> f61152a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function1<T, R> f61153b;

    /* compiled from: Sequences.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<R>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<T> f61154a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ v<T, R> f61155b;

        a(v<T, R> vVar) {
            this.f61155b = vVar;
            this.f61154a = ((v) vVar).f61152a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f61154a.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) ((v) this.f61155b).f61153b.invoke(this.f61154a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, ? extends R> transformer) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        this.f61152a = sequence;
        this.f61153b = transformer;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<R> iterator() {
        return new a(this);
    }
}
