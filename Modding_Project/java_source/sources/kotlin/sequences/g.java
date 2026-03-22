package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Sequences.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g<T> implements Sequence<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function0<T> f61122a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function1<T, T> f61123b;

    /* compiled from: Sequences.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<T>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private T f61124a;

        /* renamed from: b  reason: collision with root package name */
        private int f61125b = -2;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g<T> f61126c;

        a(g<T> gVar) {
            this.f61126c = gVar;
        }

        private final void a() {
            T t10;
            int i10;
            if (this.f61125b != -2) {
                Function1 function1 = ((g) this.f61126c).f61123b;
                T t11 = this.f61124a;
                Intrinsics.checkNotNull(t11);
                t10 = (T) function1.invoke(t11);
            } else {
                t10 = (T) ((g) this.f61126c).f61122a.invoke();
            }
            this.f61124a = t10;
            if (t10 == null) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            this.f61125b = i10;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f61125b < 0) {
                a();
            }
            if (this.f61125b == 1) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.f61125b < 0) {
                a();
            }
            if (this.f61125b != 0) {
                T t10 = this.f61124a;
                Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
                this.f61125b = -1;
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
    public g(@NotNull Function0<? extends T> getInitialValue, @NotNull Function1<? super T, ? extends T> getNextValue) {
        Intrinsics.checkNotNullParameter(getInitialValue, "getInitialValue");
        Intrinsics.checkNotNullParameter(getNextValue, "getNextValue");
        this.f61122a = getInitialValue;
        this.f61123b = getNextValue;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
