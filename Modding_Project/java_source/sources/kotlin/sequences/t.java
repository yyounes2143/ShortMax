package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/TakeSequence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,698:1\n1#2:699\n*E\n"})
/* loaded from: classes8.dex */
public final class t<T> implements Sequence<T>, c<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Sequence<T> f61142a;

    /* renamed from: b  reason: collision with root package name */
    private final int f61143b;

    /* compiled from: Sequences.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<T>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private int f61144a;

        /* renamed from: b  reason: collision with root package name */
        private final Iterator<T> f61145b;

        a(t<T> tVar) {
            this.f61144a = ((t) tVar).f61143b;
            this.f61145b = ((t) tVar).f61142a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f61144a > 0 && this.f61145b.hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            int i10 = this.f61144a;
            if (i10 != 0) {
                this.f61144a = i10 - 1;
                return this.f61145b.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t(@NotNull Sequence<? extends T> sequence, int i10) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        this.f61142a = sequence;
        this.f61143b = i10;
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i10 + '.').toString());
    }

    @Override // kotlin.sequences.c
    @NotNull
    public Sequence<T> a(int i10) {
        int i11 = this.f61143b;
        if (i10 >= i11) {
            return j.g();
        }
        return new s(this.f61142a, i10, i11);
    }

    @Override // kotlin.sequences.c
    @NotNull
    public Sequence<T> b(int i10) {
        if (i10 >= this.f61143b) {
            return this;
        }
        return new t(this.f61142a, i10);
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
