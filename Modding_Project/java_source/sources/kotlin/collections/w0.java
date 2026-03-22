package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReversedViews.kt */
@Metadata
/* loaded from: classes8.dex */
public class w0<T> extends d<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<T> f61026a;

    /* compiled from: ReversedViews.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements ListIterator<T>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private final ListIterator<T> f61027a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ w0<T> f61028b;

        /* JADX WARN: Multi-variable type inference failed */
        a(w0<? extends T> w0Var, int i10) {
            int b02;
            this.f61028b = w0Var;
            List list = ((w0) w0Var).f61026a;
            b02 = e0.b0(w0Var, i10);
            this.f61027a = list.listIterator(b02);
        }

        @Override // java.util.ListIterator
        public void add(T t10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f61027a.hasPrevious();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f61027a.hasNext();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public T next() {
            return this.f61027a.previous();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            int a02;
            a02 = e0.a0(this.f61028b, this.f61027a.previousIndex());
            return a02;
        }

        @Override // java.util.ListIterator
        public T previous() {
            return this.f61027a.next();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            int a02;
            a02 = e0.a0(this.f61028b, this.f61027a.nextIndex());
            return a02;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public void set(T t10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public w0(@NotNull List<? extends T> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f61026a = delegate;
    }

    @Override // kotlin.collections.d, java.util.List
    public T get(int i10) {
        int Z;
        List<T> list = this.f61026a;
        Z = e0.Z(this, i10);
        return list.get(Z);
    }

    @Override // kotlin.collections.d, kotlin.collections.b
    public int getSize() {
        return this.f61026a.size();
    }

    @Override // kotlin.collections.d, kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<T> iterator() {
        return listIterator(0);
    }

    @Override // kotlin.collections.d, java.util.List
    @NotNull
    public ListIterator<T> listIterator() {
        return listIterator(0);
    }

    @Override // kotlin.collections.d, java.util.List
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        return new a(this, i10);
    }
}
