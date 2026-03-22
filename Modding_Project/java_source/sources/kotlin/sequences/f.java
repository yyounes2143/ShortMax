package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f<T, R, E> implements Sequence<E> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Sequence<T> f61115a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function1<T, R> f61116b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function1<R, Iterator<E>> f61117c;

    /* compiled from: Sequences.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<E>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<T> f61118a;

        /* renamed from: b  reason: collision with root package name */
        private Iterator<? extends E> f61119b;

        /* renamed from: c  reason: collision with root package name */
        private int f61120c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f<T, R, E> f61121d;

        a(f<T, R, E> fVar) {
            this.f61121d = fVar;
            this.f61118a = ((f) fVar).f61115a.iterator();
        }

        private final boolean a() {
            Iterator<? extends E> it = this.f61119b;
            if (it != null && it.hasNext()) {
                this.f61120c = 1;
                return true;
            }
            while (this.f61118a.hasNext()) {
                Iterator<? extends E> it2 = (Iterator) ((f) this.f61121d).f61117c.invoke(((f) this.f61121d).f61116b.invoke(this.f61118a.next()));
                if (it2.hasNext()) {
                    this.f61119b = it2;
                    this.f61120c = 1;
                    return true;
                }
            }
            this.f61120c = 2;
            this.f61119b = null;
            return false;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i10 = this.f61120c;
            if (i10 == 1) {
                return true;
            }
            if (i10 == 2) {
                return false;
            }
            return a();
        }

        @Override // java.util.Iterator
        public E next() {
            int i10 = this.f61120c;
            if (i10 != 2) {
                if (i10 == 0 && !a()) {
                    throw new NoSuchElementException();
                }
                this.f61120c = 0;
                Iterator<? extends E> it = this.f61119b;
                Intrinsics.checkNotNull(it);
                return it.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, ? extends R> transformer, @NotNull Function1<? super R, ? extends Iterator<? extends E>> iterator) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        this.f61115a = sequence;
        this.f61116b = transformer;
        this.f61117c = iterator;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<E> iterator() {
        return new a(this);
    }
}
