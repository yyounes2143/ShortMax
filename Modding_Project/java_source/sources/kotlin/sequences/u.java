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
public final class u<T> implements Sequence<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Sequence<T> f61146a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function1<T, Boolean> f61147b;

    /* compiled from: Sequences.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<T>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<T> f61148a;

        /* renamed from: b  reason: collision with root package name */
        private int f61149b = -1;

        /* renamed from: c  reason: collision with root package name */
        private T f61150c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ u<T> f61151d;

        a(u<T> uVar) {
            this.f61151d = uVar;
            this.f61148a = ((u) uVar).f61146a.iterator();
        }

        private final void a() {
            if (this.f61148a.hasNext()) {
                T next = this.f61148a.next();
                if (((Boolean) ((u) this.f61151d).f61147b.invoke(next)).booleanValue()) {
                    this.f61149b = 1;
                    this.f61150c = next;
                    return;
                }
            }
            this.f61149b = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f61149b == -1) {
                a();
            }
            if (this.f61149b == 1) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.f61149b == -1) {
                a();
            }
            if (this.f61149b != 0) {
                T t10 = this.f61150c;
                this.f61150c = null;
                this.f61149b = -1;
                return t10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public u(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        this.f61146a = sequence;
        this.f61147b = predicate;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
