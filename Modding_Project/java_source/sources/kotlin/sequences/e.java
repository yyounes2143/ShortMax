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
public final class e<T> implements Sequence<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Sequence<T> f61108a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f61109b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function1<T, Boolean> f61110c;

    /* compiled from: Sequences.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<T>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<T> f61111a;

        /* renamed from: b  reason: collision with root package name */
        private int f61112b = -1;

        /* renamed from: c  reason: collision with root package name */
        private T f61113c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ e<T> f61114d;

        a(e<T> eVar) {
            this.f61114d = eVar;
            this.f61111a = ((e) eVar).f61108a.iterator();
        }

        private final void a() {
            while (this.f61111a.hasNext()) {
                T next = this.f61111a.next();
                if (((Boolean) ((e) this.f61114d).f61110c.invoke(next)).booleanValue() == ((e) this.f61114d).f61109b) {
                    this.f61113c = next;
                    this.f61112b = 1;
                    return;
                }
            }
            this.f61112b = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f61112b == -1) {
                a();
            }
            if (this.f61112b == 1) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.f61112b == -1) {
                a();
            }
            if (this.f61112b != 0) {
                T t10 = this.f61113c;
                this.f61113c = null;
                this.f61112b = -1;
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
    public e(@NotNull Sequence<? extends T> sequence, boolean z10, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        this.f61108a = sequence;
        this.f61109b = z10;
        this.f61110c = predicate;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
