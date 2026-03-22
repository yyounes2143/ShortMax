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
@SourceDebugExtension({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SubSequence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,698:1\n1#2:699\n*E\n"})
/* loaded from: classes8.dex */
public final class s<T> implements Sequence<T>, c<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Sequence<T> f61136a;

    /* renamed from: b  reason: collision with root package name */
    private final int f61137b;

    /* renamed from: c  reason: collision with root package name */
    private final int f61138c;

    /* compiled from: Sequences.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<T>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<T> f61139a;

        /* renamed from: b  reason: collision with root package name */
        private int f61140b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ s<T> f61141c;

        a(s<T> sVar) {
            this.f61141c = sVar;
            this.f61139a = ((s) sVar).f61136a.iterator();
        }

        private final void a() {
            while (this.f61140b < ((s) this.f61141c).f61137b && this.f61139a.hasNext()) {
                this.f61139a.next();
                this.f61140b++;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            if (this.f61140b < ((s) this.f61141c).f61138c && this.f61139a.hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            if (this.f61140b < ((s) this.f61141c).f61138c) {
                this.f61140b++;
                return this.f61139a.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s(@NotNull Sequence<? extends T> sequence, int i10, int i11) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        this.f61136a = sequence;
        this.f61137b = i10;
        this.f61138c = i11;
        if (i10 >= 0) {
            if (i11 >= 0) {
                if (i11 >= i10) {
                    return;
                }
                throw new IllegalArgumentException(("endIndex should be not less than startIndex, but was " + i11 + " < " + i10).toString());
            }
            throw new IllegalArgumentException(("endIndex should be non-negative, but is " + i11).toString());
        }
        throw new IllegalArgumentException(("startIndex should be non-negative, but is " + i10).toString());
    }

    private final int f() {
        return this.f61138c - this.f61137b;
    }

    @Override // kotlin.sequences.c
    @NotNull
    public Sequence<T> a(int i10) {
        if (i10 >= f()) {
            return j.g();
        }
        return new s(this.f61136a, this.f61137b + i10, this.f61138c);
    }

    @Override // kotlin.sequences.c
    @NotNull
    public Sequence<T> b(int i10) {
        if (i10 >= f()) {
            return this;
        }
        Sequence<T> sequence = this.f61136a;
        int i11 = this.f61137b;
        return new s(sequence, i11, i10 + i11);
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
