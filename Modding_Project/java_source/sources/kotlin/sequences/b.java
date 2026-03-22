package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/DropSequence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,698:1\n1#2:699\n*E\n"})
/* loaded from: classes8.dex */
public final class b<T> implements Sequence<T>, c<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Sequence<T> f61103a;

    /* renamed from: b  reason: collision with root package name */
    private final int f61104b;

    /* compiled from: Sequences.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<T>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<T> f61105a;

        /* renamed from: b  reason: collision with root package name */
        private int f61106b;

        a(b<T> bVar) {
            this.f61105a = ((b) bVar).f61103a.iterator();
            this.f61106b = ((b) bVar).f61104b;
        }

        private final void a() {
            while (this.f61106b > 0 && this.f61105a.hasNext()) {
                this.f61105a.next();
                this.f61106b--;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f61105a.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            return this.f61105a.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull Sequence<? extends T> sequence, int i10) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        this.f61103a = sequence;
        this.f61104b = i10;
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i10 + '.').toString());
    }

    @Override // kotlin.sequences.c
    @NotNull
    public Sequence<T> a(int i10) {
        int i11 = this.f61104b + i10;
        if (i11 < 0) {
            return new b(this, i10);
        }
        return new b(this.f61103a, i11);
    }

    @Override // kotlin.sequences.c
    @NotNull
    public Sequence<T> b(int i10) {
        int i11 = this.f61104b;
        int i12 = i11 + i10;
        if (i12 < 0) {
            return new t(this, i10);
        }
        return new s(this.f61103a, i11, i12);
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
